uint64_t sub_1000C07B4()
{
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1912);
  if ((sub_10019D93C() & 1) == 0)
  {
    v22 = *(v0 + 1912);
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v4);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276FE0);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error occurred in rewriting: %@", v26, 0xCu);
      sub_10000F500(v27, &unk_10025D580, &qword_1001CFA60);
    }

    v29 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v29;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v29 + v30, v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
    if (*(v0 + 544))
    {
      v31 = *(v0 + 1912);
      sub_100028458(v0 + 520, v0 + 280);
      sub_10000F500(v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
      v32 = sub_100027874((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v31;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(v31 + 96);
      if (v33 != 255)
      {
        v34 = *(v0 + 2304);
        v35 = *(v0 + 1912);
        v37 = v35[10];
        v36 = v35[11];
        v38 = v35[9];
        sub_10000F3F4(v38, v37, v36, v33);

        v39 = *v32;
        sub_10000DB64(v4, v38, v37, v36, v33);

        sub_1000278C0(v38, v37, v36, v33);

        v21 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v42 = *(v0 + 2304);

    v41 = v0 + 520;
LABEL_15:
    sub_10000F500(v41, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v6 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v6;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v6 + v7, v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  if (!*(v0 + 384))
  {
    v40 = *(v0 + 2304);

    v41 = v0 + 360;
    goto LABEL_15;
  }

  v8 = *(v0 + 1912);
  sub_100028458(v0 + 360, v0 + 440);
  sub_10000F500(v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  v9 = sub_100027874((v0 + 440), *(v0 + 464));
  v10 = sub_1000971C0();
  v12 = v11;
  swift_getKeyPath();
  *(v0 + 1568) = v8;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v8 + 96);
  if (v14 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v0 + 2304);
  v16 = *(v0 + 1912);
  v18 = v16[10];
  v17 = v16[11];
  v19 = v16[9];
  sub_10000F3F4(v19, v18, v17, v14);

  v20 = *v9;
  sub_10000E808(v10, v12, v19, v18, v17, v14);

  sub_1000278C0(v19, v18, v17, v14);

  v21 = (v0 + 440);
LABEL_12:
  sub_10000F4B4(v21);
LABEL_16:
  v43 = *(v0 + 2288);
  v44 = *(v0 + 2280);
  v45 = *(v0 + 2256);
  v46 = *(v0 + 2248);
  v47 = *(v0 + 2224);
  v48 = *(v0 + 2200);
  v49 = *(v0 + 2176);
  v50 = *(v0 + 2152);
  v51 = *(v0 + 2128);
  v52 = *(v0 + 2120);
  v54 = *(v0 + 2112);
  v55 = *(v0 + 2104);
  v56 = *(v0 + 2080);
  v57 = *(v0 + 2056);
  v58 = *(v0 + 2032);
  v59 = *(v0 + 2008);
  v60 = *(v0 + 2000);
  v61 = *(v0 + 1992);
  v62 = *(v0 + 1968);
  v63 = *(v0 + 1960);
  v64 = *(v0 + 1952);
  v65 = *(v0 + 1944);
  v66 = *(v0 + 1936);
  v67 = *(v0 + 1928);
  v68 = *(v0 + 1920);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1000C0F0C()
{
  (*(v0[262] + 8))(v0[263], v0[261]);
  v1 = v0[172];
  v2 = v0[239];
  if ((sub_10019D93C() & 1) == 0)
  {
    v19 = v0[239];
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v1);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276FE0);
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
      _os_log_impl(&_mh_execute_header, v21, v22, "Error occurred in rewriting: %@", v23, 0xCu);
      sub_10000F500(v24, &unk_10025D580, &qword_1001CFA60);
    }

    v26 = v0[239];

    swift_getKeyPath();
    v0[227] = v26;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v26 + v27, (v0 + 65), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[68])
    {
      v28 = v0[239];
      sub_100028458((v0 + 65), (v0 + 35));
      sub_10000F500((v0 + 65), &unk_10025B1C0, &unk_1001CFA90);
      v29 = sub_100027874(v0 + 35, v0[38]);
      swift_getKeyPath();
      v0[209] = v28;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = *(v28 + 96);
      if (v30 != 255)
      {
        v31 = v0[288];
        v32 = v0[239];
        v34 = v32[10];
        v33 = v32[11];
        v35 = v32[9];
        sub_10000F3F4(v35, v34, v33, v30);

        v36 = *v29;
        sub_10000DB64(v1, v35, v34, v33, v30);

        sub_1000278C0(v35, v34, v33, v30);

        v18 = v0 + 35;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v39 = v0[288];

    v38 = (v0 + 65);
LABEL_15:
    sub_10000F500(v38, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v3 = v0[239];
  swift_getKeyPath();
  v0[205] = v3;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v3 + v4, (v0 + 45), &unk_10025B1C0, &unk_1001CFA90);
  if (!v0[48])
  {
    v37 = v0[288];

    v38 = (v0 + 45);
    goto LABEL_15;
  }

  v5 = v0[239];
  sub_100028458((v0 + 45), (v0 + 55));
  sub_10000F500((v0 + 45), &unk_10025B1C0, &unk_1001CFA90);
  v6 = sub_100027874(v0 + 55, v0[58]);
  v7 = sub_1000971C0();
  v9 = v8;
  swift_getKeyPath();
  v0[196] = v5;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v5 + 96);
  if (v11 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[288];
  v13 = v0[239];
  v15 = v13[10];
  v14 = v13[11];
  v16 = v13[9];
  sub_10000F3F4(v16, v15, v14, v11);

  v17 = *v6;
  sub_10000E808(v7, v9, v16, v15, v14, v11);

  sub_1000278C0(v16, v15, v14, v11);

  v18 = v0 + 55;
LABEL_12:
  sub_10000F4B4(v18);
LABEL_16:
  v40 = v0[286];
  v41 = v0[285];
  v42 = v0[282];
  v43 = v0[281];
  v44 = v0[278];
  v45 = v0[275];
  v46 = v0[272];
  v47 = v0[269];
  v48 = v0[266];
  v49 = v0[265];
  v51 = v0[264];
  v52 = v0[263];
  v53 = v0[260];
  v54 = v0[257];
  v55 = v0[254];
  v56 = v0[251];
  v57 = v0[250];
  v58 = v0[249];
  v59 = v0[246];
  v60 = v0[245];
  v61 = v0[244];
  v62 = v0[243];
  v63 = v0[242];
  v64 = v0[241];
  v65 = v0[240];

  v50 = v0[1];

  return v50();
}

uint64_t sub_1000C1654()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2384);
  v3 = *(v0 + 2256);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 1648);
  v7 = *(v0 + 1912);
  if ((sub_10019D93C() & 1) == 0)
  {
    v24 = *(v0 + 1912);
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v6);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F34C(v25, qword_100276FE0);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error occurred in rewriting: %@", v28, 0xCu);
      sub_10000F500(v29, &unk_10025D580, &qword_1001CFA60);
    }

    v31 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v31;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v31 + v32, v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
    if (*(v0 + 544))
    {
      v33 = *(v0 + 1912);
      sub_100028458(v0 + 520, v0 + 280);
      sub_10000F500(v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
      v34 = sub_100027874((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v33;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v33 + 96);
      if (v35 != 255)
      {
        v36 = *(v0 + 2304);
        v37 = *(v0 + 1912);
        v39 = v37[10];
        v38 = v37[11];
        v40 = v37[9];
        sub_10000F3F4(v40, v39, v38, v35);

        v41 = *v34;
        sub_10000DB64(v6, v40, v39, v38, v35);

        sub_1000278C0(v40, v39, v38, v35);

        v23 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v44 = *(v0 + 2304);

    v43 = v0 + 520;
LABEL_15:
    sub_10000F500(v43, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v8 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v8;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v8 + v9, v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  if (!*(v0 + 384))
  {
    v42 = *(v0 + 2304);

    v43 = v0 + 360;
    goto LABEL_15;
  }

  v10 = *(v0 + 1912);
  sub_100028458(v0 + 360, v0 + 440);
  sub_10000F500(v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  v11 = sub_100027874((v0 + 440), *(v0 + 464));
  v12 = sub_1000971C0();
  v14 = v13;
  swift_getKeyPath();
  *(v0 + 1568) = v10;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v10 + 96);
  if (v16 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v0 + 2304);
  v18 = *(v0 + 1912);
  v20 = v18[10];
  v19 = v18[11];
  v21 = v18[9];
  sub_10000F3F4(v21, v20, v19, v16);

  v22 = *v11;
  sub_10000E808(v12, v14, v21, v20, v19, v16);

  sub_1000278C0(v21, v20, v19, v16);

  v23 = (v0 + 440);
LABEL_12:
  sub_10000F4B4(v23);
LABEL_16:
  v45 = *(v0 + 2288);
  v46 = *(v0 + 2280);
  v47 = *(v0 + 2256);
  v48 = *(v0 + 2248);
  v49 = *(v0 + 2224);
  v50 = *(v0 + 2200);
  v51 = *(v0 + 2176);
  v52 = *(v0 + 2152);
  v53 = *(v0 + 2128);
  v54 = *(v0 + 2120);
  v56 = *(v0 + 2112);
  v57 = *(v0 + 2104);
  v58 = *(v0 + 2080);
  v59 = *(v0 + 2056);
  v60 = *(v0 + 2032);
  v61 = *(v0 + 2008);
  v62 = *(v0 + 2000);
  v63 = *(v0 + 1992);
  v64 = *(v0 + 1968);
  v65 = *(v0 + 1960);
  v66 = *(v0 + 1952);
  v67 = *(v0 + 1944);
  v68 = *(v0 + 1936);
  v69 = *(v0 + 1928);
  v70 = *(v0 + 1920);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1000C1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 312) = a4;
  *(v6 + 320) = v5;
  *(v6 + 400) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 328) = v7;
  v8 = *(v7 - 8);
  *(v6 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 392) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C1EFC, v11, v10);
}

uint64_t sub_1000C1EFC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = *(v0 + 384);
  v7 = *(v2 + v4);

  v8 = sub_100005044(v6);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = *(*(v0 + 336) + 8);
    (v11)(*(v0 + 384), *(v0 + 328));
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v5 + 56) + v8);
  v11 = *(*(v0 + 336) + 8);
  (v11)(*(v0 + 384), *(v0 + 328));

LABEL_6:
  v12 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 168) = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v13 || (v14 = *(v0 + 320), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v21 = *(v0 + 392);
LABEL_14:

    goto LABEL_15;
  }

  v16 = Strong;
  v17 = *(v0 + 320);
  v18 = v13;
  if (sub_1000B1594() & 1) == 0 || (v19 = *(v0 + 320), (sub_100037954()) || (v10)
  {
    v20 = *(v0 + 392);

LABEL_12:
    swift_unknownObjectRelease();
LABEL_15:
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v27 = *(v0 + 344);
    v26 = *(v0 + 352);

    v28 = *(v0 + 8);

    return v28();
  }

  v30 = *(v0 + 376);
  v31 = v18;
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  v34 = *(v0 + 400);
  v35 = *(v0 + 288);
  v116 = v31;
  v110 = *(v0 + 296);
  v113 = *(v0 + 304);
  [v16 compositionSession:? didReceiveText:? replacementRange:? inContext:? finished:?];
  v36 = [v33 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 176) = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v0 + 376);
  v39 = *(v0 + 328);
  v38 = *(v0 + 336);
  if (*(*(v2 + v4) + 16))
  {
    v40 = *(v2 + v4);

    sub_100005044(v37);
    v42 = v41;
    (v11)(v37, v39);

    if (v42)
    {
      if (*(v0 + 400) == 1)
      {
        v104 = *(v0 + 368);
        v43 = *(v0 + 320);
        v106 = *(v0 + 328);
        v44 = [*(v0 + 312) uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        *(v0 + 264) = v43;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 272) = v43;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        v45 = *(v2 + v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(v2 + v4);
        *(v2 + v4) = 0x8000000000000000;
        sub_1001AA314(1, v104, isUniquelyReferenced_nonNull_native);
        (v11)(v104, v106);
        *(v2 + v4) = v118;
        swift_endAccess();
        *(v0 + 280) = v43;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        goto LABEL_24;
      }

LABEL_27:
      v64 = *(v0 + 392);

      goto LABEL_12;
    }
  }

  else
  {
    (v11)(v37, v39);
  }

  v100 = *(v0 + 368);
  v47 = *(v0 + 320);
  v107 = *(v0 + 328);
  v105 = *(v0 + 400);
  v48 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 184) = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 192) = v47;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v49 = *(v2 + v4);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_1001AA314(v105, v100, v50);
  (v11)(v100, v107);
  *(v2 + v4) = v118;
  swift_endAccess();
  *(v0 + 200) = v47;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (v105 != 1)
  {
    goto LABEL_27;
  }

LABEL_24:
  v51 = *(v0 + 360);
  v52 = *(v0 + 320);
  v53 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 208) = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v115 = v52;
  v103 = v54;
  v55 = *(v52 + v54);
  if (*(v55 + 16))
  {
    v56 = *(v0 + 360);

    v57 = sub_100005044(v56);
    if (v58)
    {
      v59 = *(v0 + 360);
      v60 = *(v0 + 328);
      v61 = *(*(v55 + 56) + 8 * v57);
      v62 = *(v0 + 336) + 8;

      (v11)(v59, v60);

      v63 = v103;
      goto LABEL_30;
    }
  }

  v97 = *(v0 + 368);
  v108 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 320);
  v95 = v66;
  v101 = *(v0 + 336) + 8;
  v11(*(v0 + 360));
  v67 = [v65 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 216) = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 224) = v66;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v63 = v103;
  swift_beginAccess();
  v68 = *(v52 + v103);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v52 + v103);
  *(v52 + v103) = 0x8000000000000000;
  sub_1001AA148(_swiftEmptyArrayStorage, v97, v69);
  (v11)(v97, v108);
  *(v52 + v103) = v118;
  swift_endAccess();
  *(v0 + 232) = v95;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_30:
  v109 = *(v0 + 352);
  v70 = *(v0 + 336);
  v98 = v70;
  v99 = *(v0 + 344);
  v102 = *(v0 + 328);
  v71 = *(v0 + 312);
  v72 = *(v0 + 320);
  v73 = *(v0 + 288);
  v74 = [v71 attributedText];
  v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v74];

  [v75 replaceCharactersInRange:v110 withAttributedString:{v113, v73}];
  v114 = v75;
  v111 = [objc_allocWithZone(WTContext) initWithAttributedText:v75 range:{objc_msgSend(v71, "range"), objc_msgSend(v73, "length")}];
  v96 = [v71 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  *(v0 + 240) = v72;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 248) = v72;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v76 = *(v115 + v63);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v99;
  (*(v98 + 16))(v99, v109, v102);
  v79 = *(v115 + v63);
  v117 = v79;
  *(v115 + v63) = 0x8000000000000000;
  v81 = sub_100005044(v99);
  v82 = *(v79 + 16);
  v83 = (v80 & 1) == 0;
  v84 = v82 + v83;
  if (__OFADD__(v82, v83))
  {
    __break(1u);
    goto LABEL_46;
  }

  v78 = v80;
  if (*(v79 + 24) >= v84)
  {
    if ((v77 & 1) == 0)
    {
      sub_1000F2E14();
    }

LABEL_39:
    if (v78)
    {
      v89 = *(v0 + 392);
      v77 = v117;
      v109 = v81;
      v90 = *(*(v117 + 56) + 8 * v81);

      v118 = v90;
      v78 = v111;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_41:
        v112 = v78;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v92 = *(v0 + 344);
        v91 = *(v0 + 352);
        v93 = *(v0 + 328);
        if (v118)
        {
          *(*(v77 + 56) + 8 * v109) = v118;

          (v11)(v92, v93);
          (v11)(v91, v93);
        }

        else
        {
          (v11)(*(v77 + 48) + *(*(v0 + 336) + 72) * v109, *(v0 + 328));
          sub_1001A9604(v109, v77);
          (v11)(v92, v93);
          (v11)(v91, v93);
        }

        v94 = *(v0 + 320);
        *(v115 + v103) = v77;
        swift_endAccess();
        *(v0 + 256) = v94;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_47:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v85 = *(v0 + 344);
  sub_1000F0E84(v84, v77);
  v86 = sub_100005044(v85);
  if ((v78 & 1) == (v87 & 1))
  {
    v81 = v86;
    goto LABEL_39;
  }

  v88 = *(v0 + 328);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1000C2BCC(char a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
    {
      v9 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

      Task.cancel()();
    }

    if (a2)
    {
      swift_errorRetain();
      v10 = _convertErrorToNSError(_:)();
      [v8 endWritingToolsWithError:v10];
    }

    else
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
      if (v11)
      {
        v12 = v11;
        if (sub_1000B1594())
        {
          if (a1 == 2)
          {
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            a1 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) ^ 1;
          }

          [v8 didEndWritingToolsSession:v12 accepted:a1 & 1];
        }
      }
    }

    sub_1000B2528(0);
    if (a3)
    {
      a3();
    }

    return swift_unknownObjectRelease();
  }

  else if (a3)
  {
    return (a3)();
  }

  return result;
}

void *sub_1000C2E14()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = *(v0 + v2);
    v4 = v3 != 0;
    v5 = v3 - 1;
    if (!v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    *(v0 + v2) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);
    v4 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v4)
    {
      goto LABEL_10;
    }

    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = v7;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      if ([result respondsToSelector:"undo"])
      {
        [v8 undo];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1000C3060()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = *(v0 + v2);
    v4 = v3 != 0;
    v5 = v3 - 1;
    if (!v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    *(v0 + v2) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);
    v4 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v4)
    {
      goto LABEL_10;
    }

    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = v7;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      if ([result respondsToSelector:"redo"])
      {
        [v8 redo];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000C32AC()
{
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = sub_100006A74(&off_100249F90);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = 0;
  v1 = v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = 0;
  v5 = v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100005B00(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID) = sub_100005CE8(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID) = sub_100005D0C(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000C348C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID);

  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID);

  v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  v11 = *(*(v10 - 8) + 8);

  return v11(v0 + v9, v10);
}

uint64_t RewritingModel.deinit()
{
  v0 = ToolModel.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID);

  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID);

  v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t RewritingModel.__deallocating_deinit()
{
  v0 = *RewritingModel.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RewritingModel()
{
  result = qword_100260230;
  if (!qword_100260230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C37DC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C38DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000C3A4C, 0, 0);
}

uint64_t sub_1000C3A4C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000C4F1C(&qword_100260BD8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000C4F1C(&qword_100260BE0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000C3BDC;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000C3BDC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000C3D98, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000C3D98()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void (*sub_1000C3E04(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1000C4288(v6);
  v6[12] = sub_1000C3FD8(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1000C3F40;
}

void sub_1000C3F40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000C3FD8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100005044(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1000F2E14();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1000F0E84(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_100005044(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_1000C4188;
}

void sub_1000C4188(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_1000F1FDC(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_1001A9604(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_1000C4288(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000C42B0;
}

unint64_t sub_1000C42BC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C434C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000B2880(v4);
}

void sub_1000C43A0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B2528(v2);
}

uint64_t sub_1000C4420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C4460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1000B4D3C(a1, v4, v5, v6);
}

uint64_t sub_1000C4668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000B34C8(v2, v3);
}

void sub_1000C46D0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B371C(v2);
}

void sub_1000C4728(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B3758(v2);
}

uint64_t sub_1000C4758(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = 1;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = 1;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = sub_100006A74(&off_10024A8E8);
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = 0;
  v9 = v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  *v12 = 0;
  v12[1] = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = 0;
  v13 = v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100005B00(_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID) = sub_100005CE8(_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID) = sub_100005D0C(_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v4 + 49) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = -1;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  ObservationRegistrar.init()();
  sub_100036534(a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1000C4984(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    goto LABEL_16;
  }

  if (a1 > 7u)
  {
    if (a1 == 8)
    {
      result = 0x6C2E61742E6D675FLL;
      strcpy(v7, "_gm.ta.list");
      HIDWORD(v7[1]) = -352321536;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    if (a1 == 9)
    {
      result = 0x742E61742E6D675FLL;
      strcpy(v7, "_gm.ta.table");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      result = 0xD000000000000010;
      v7[0] = 0xD000000000000010;
      v7[1] = 0x80000001001E5CA0;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  result = 0x732E61742E6D675FLL;
  strcpy(v7, "_gm.ta.summary");
  HIBYTE(v7[1]) = -18;
  if ((a5 & 1) == 0)
  {
    return result;
  }

LABEL_14:
  v6._countAndFlagsBits = 7889198;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  return v7[0];
}

__n128 sub_1000C4B74()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_1000C4BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_1000C4C64(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1000C4CBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002B2A0;

  return sub_1000B7F50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C4DF8(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  v6 = v2[5];

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1000C4E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000B6378(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C4F1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000C508C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = v2;
  v4 = v2;
}

void sub_1000C50CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = v2;
  v4 = v2;
}

uint64_t sub_1000C510C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000C5158(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  v4 = v3[1];
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1000C51A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = *(v0 + 24);
}

void sub_1000C51E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = v1;
  v4 = v1;
  sub_1000B1D58(v3);
}

uint64_t sub_1000C529C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = *(v0 + 24);
}

uint64_t getEnumTagSinglePayload for InputDashboardSolariumButtonStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000C54A0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000C5670(uint64_t a1)
{
  v24 = sub_100003E34(&qword_100260D00, &qword_1001D6188);
  v25 = sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  v3 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  v22 = *(a1 + 24);
  v4 = v22;
  v23 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v26 = type metadata accessor for ModifiedContent();
  v27 = v25;
  v28 = sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v21 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v5 = type metadata accessor for _GlassEffectContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v17 = v3;
  v18 = v4;
  v19 = v1;
  _GlassEffectContainer.init(smoothness:content:)();
  v13 = swift_getWitnessTable();
  sub_10014DE78(v10, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  sub_10014DE78(v12, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_1000C598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a1;
  v26 = a4;
  v34 = sub_100003E34(&qword_100260D00, &qword_1001D6188);
  v35 = sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  type metadata accessor for ModifiedContent();
  v32 = a3;
  v33 = &protocol witness table for _FlexFrameLayout;
  v25 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v36 = type metadata accessor for ModifiedContent();
  v37 = v35;
  v38 = sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v27 = a2;
  v28 = v23;
  v29 = v24;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v10, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _FrameLayout;
  v20 = swift_getWitnessTable();
  sub_10014DE78(v16, v11, v20);
  v21 = *(v12 + 8);
  v21(v16, v11);
  sub_10014DE78(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t sub_1000C5D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a1;
  v115 = a4;
  v111 = type metadata accessor for GlassProminentButtonStyle();
  v113 = *(v111 - 8);
  v6 = *(v113 + 64);
  __chkstk_darwin(v111);
  v110 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10000341C(&qword_100260D08, &qword_1001D6198);
  v8 = *(*(v112 - 8) + 64);
  v9 = __chkstk_darwin(v112);
  v114 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v78 - v11;
  v102 = type metadata accessor for ModifiedContent();
  v161[9] = a3;
  v116 = a3;
  v161[10] = &protocol witness table for _FlexFrameLayout;
  v107 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v99 = type metadata accessor for HStack();
  v103 = *(v99 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v99);
  v98 = &v78 - v13;
  v100 = type metadata accessor for ModifiedContent();
  v106 = *(v100 - 8);
  v14 = *(v106 + 64);
  __chkstk_darwin(v100);
  v97 = &v78 - v15;
  v104 = type metadata accessor for ModifiedContent();
  v118 = *(v104 - 8);
  v16 = *(v118 + 64);
  v17 = __chkstk_darwin(v104);
  v125 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v78 - v19;
  v117 = type metadata accessor for GlassButtonStyle();
  v20 = *(v117 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v117);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v24 = type metadata accessor for InputDashboardBar();
  v25 = *(v24 - 8);
  v94 = *(v25 + 64);
  __chkstk_darwin(v24);
  v27 = &v78 - v26;
  v82 = &v78 - v26;
  v124 = sub_10000341C(&qword_100260D10, &qword_1001D61A0);
  v28 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v78 = &v78 - v29;
  v108 = sub_10000341C(&qword_100260D00, &qword_1001D6188);
  v123 = *(v108 - 8);
  v30 = *(v123 + 64);
  v31 = __chkstk_darwin(v108);
  v120 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v121 = &v78 - v33;
  v95 = *(v25 + 16);
  v96 = v25 + 16;
  v83 = v24;
  v95(v27, v119, v24);
  v93 = *(v25 + 80);
  v34 = (v93 + 32) & ~v93;
  v87 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  v36 = v116;
  *(v35 + 24) = v116;
  v37 = *(v25 + 32);
  v91 = v25 + 32;
  v92 = v37;
  v37(v35 + v34, v27, v24);
  v86 = sub_10000341C(&qword_100260D18, &qword_1001D61A8);
  v85 = sub_1000C8D80();
  v38 = v78;
  Button.init(action:label:)();
  v39 = (v38 + *(v124 + 36));
  v81 = sub_10000341C(&qword_100260D80, &qword_1001D61D8);
  v40 = v39 + *(v81 + 28);
  static ButtonBorderShape.circle.getter();
  *v39 = swift_getKeyPath();
  GlassButtonStyle.init()();
  v80 = sub_1000C9348();
  v105 = sub_1000C9C54(&qword_100260DB8, &type metadata accessor for GlassButtonStyle);
  v41 = v117;
  View.buttonStyle<A>(_:)();
  (*(v20 + 8))(v23, v41);
  sub_10000F500(v38, &qword_100260D10, &qword_1001D61A0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v84 = v161[11];
  v90 = v165;
  v88 = v163;
  v89 = v166;
  v178 = 1;
  v176 = v162;
  v174 = v164;
  v42 = v79;
  v126 = v79;
  v127 = v36;
  v43 = v119;
  v128 = v119;
  static VerticalAlignment.center.getter();
  v44 = v98;
  HStack.init(alignment:spacing:content:)();
  v150 = 0;
  v45 = v99;
  v46 = swift_getWitnessTable();
  v47 = v97;
  View.modifier<A>(_:)();
  (*(v103 + 8))(v44, v45);
  static Alignment.center.getter();
  v48 = sub_1000C94C4();
  v161[7] = v46;
  v161[8] = v48;
  v76 = v100;
  v77 = swift_getWitnessTable();
  v49 = v125;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v106 + 8))(v47, v76);
  v161[5] = v77;
  v161[6] = &protocol witness table for _FlexFrameLayout;
  v50 = v104;
  v106 = swift_getWitnessTable();
  sub_10014DE78(v49, v50, v106);
  v107 = *(v118 + 8);
  v107(v49, v50);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v100 = v167;
  WitnessTable = v169;
  v102 = v172;
  v103 = v171;
  v184 = 1;
  v182 = v168;
  v180 = v170;
  v51 = v82;
  v52 = v43;
  v53 = v83;
  v95(v82, v52, v83);
  v54 = v87;
  v55 = swift_allocObject();
  v56 = v116;
  *(v55 + 16) = v42;
  *(v55 + 24) = v56;
  v92(v55 + v54, v51, v53);
  Button.init(action:label:)();
  v57 = (v38 + *(v124 + 36));
  v58 = v57 + *(v81 + 28);
  static ButtonBorderShape.circle.getter();
  *v57 = swift_getKeyPath();
  v59 = v110;
  GlassProminentButtonStyle.init()();
  sub_1000C9C54(&qword_100260DC8, &type metadata accessor for GlassProminentButtonStyle);
  v60 = v109;
  v61 = v111;
  v62 = v80;
  View.buttonStyle<A>(_:)();
  (*(v113 + 8))(v59, v61);
  sub_10000F500(v38, &qword_100260D10, &qword_1001D61A0);
  v63 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v65 = v112;
  v66 = (v60 + *(v112 + 36));
  *v66 = KeyPath;
  v66[1] = v63;
  v67 = v120;
  v68 = v108;
  (*(v123 + 16))(v120, v121, v108);
  v150 = 0;
  v151 = v178;
  *v152 = *v177;
  *&v152[3] = *&v177[3];
  v153 = v84;
  v154 = v176;
  *v155 = *v175;
  *&v155[3] = *&v175[3];
  v156 = v88;
  v157 = v174;
  *v158 = *v173;
  *&v158[3] = *&v173[3];
  v159 = v90;
  v160 = v89;
  v161[0] = v67;
  v161[1] = &v150;
  v69 = v125;
  v70 = v122;
  (*(v118 + 16))(v125, v122, v50);
  v139 = 0;
  v140 = v184;
  *v141 = *v183;
  *&v141[3] = *&v183[3];
  v142 = v100;
  v143 = v182;
  *v144 = *v181;
  *&v144[3] = *&v181[3];
  v145 = WitnessTable;
  v146 = v180;
  *v147 = *v179;
  *&v147[3] = *&v179[3];
  v148 = v103;
  v149 = v102;
  v161[2] = v69;
  v161[3] = &v139;
  v71 = v114;
  sub_1000C9678(v60, v114);
  v161[4] = v71;
  v134 = v68;
  v135 = sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
  v136 = v50;
  v137 = v135;
  v138 = v65;
  OpaqueTypeConformance2 = v124;
  v130 = v117;
  v131 = v62;
  v132 = v105;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v130 = sub_10002AF84();
  v131 = v106;
  v132 = v130;
  v133 = sub_1000C96E8();
  sub_1000C54A0(v161, 5uLL, &v134);
  sub_10000F500(v60, &qword_100260D08, &qword_1001D6198);
  v72 = v70;
  v73 = v107;
  v107(v72, v50);
  v74 = *(v123 + 8);
  v74(v121, v68);
  sub_10000F500(v71, &qword_100260D08, &qword_1001D6198);
  v73(v125, v50);
  return (v74)(v120, v68);
}

uint64_t sub_1000C6AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v16 - v10;
  v12 = *(type metadata accessor for InputDashboardBar() + 40);
  static Alignment.center.getter();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16[0] = a3;
  v16[1] = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10014DE78(v9, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v9, v4);
  sub_10014DE78(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

uint64_t sub_1000C6CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v75 = a1;
  v76 = a2;
  v72 = a4;
  v71 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  v4 = *(*(v71 - 8) + 64);
  v5 = __chkstk_darwin(v71);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v66 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v78 = *(v8 - 8);
  v9 = v78[8];
  v10 = __chkstk_darwin(v8);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v66 - v12;
  v68 = sub_10000341C(&qword_100260D40, &qword_1001D61C0);
  v13 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v67 = &v66 - v14;
  v15 = type metadata accessor for IconOnlyLabelStyle();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v73 = sub_10000341C(&qword_100260D50, &qword_1001D61C8);
  v24 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v26 = &v66 - v25;
  v27 = sub_10000341C(&qword_100260D38, &qword_1001D61B8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v66 - v29;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_1000C9C54(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v31 = v78;
  View.labelStyle<A>(_:)();
  (*(v74 + 8))(v18, v15);
  (*(v20 + 8))(v23, v19);
  v32 = v77;
  LODWORD(v23) = static HierarchicalShapeStyle.primary.getter();
  *&v26[*(sub_10000341C(&qword_100260D68, &qword_1001D61D0) + 36)] = v23;
  v33 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v35 = &v26[*(v73 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  static Font.Weight.medium.getter();
  sub_1000C9028();
  View.fontWeight(_:)();
  sub_10000F500(v26, &qword_100260D50, &qword_1001D61C8);
  v76 = v27;
  v36 = *(v27 + 36);
  v79 = v30;
  v37 = &v30[v36];
  v38 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v39 = enum case for Image.Scale.large(_:);
  v40 = type metadata accessor for Image.Scale();
  v41 = v37 + v38;
  v42 = v80;
  (*(*(v40 - 8) + 104))(v41, v39, v40);
  *v37 = swift_getKeyPath();
  v43 = v31[13];
  v43(v32, enum case for DynamicTypeSize.medium(_:), v8);
  v43(v42, enum case for DynamicTypeSize.accessibility1(_:), v8);
  sub_1000C9C54(&qword_100260DE0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v45 = v31[4];
    v46 = v69;
    v45(v69, v32, v8);
    v47 = v71;
    v45((v46 + *(v71 + 48)), v42, v8);
    v48 = v70;
    sub_1000C983C(v46, v70);
    v49 = *(v47 + 48);
    v50 = v67;
    v45(v67, v48, v8);
    v51 = v31[1];
    v51(v48 + v49, v8);
    sub_1000C98AC(v46, v48);
    v45((v50 + *(v68 + 36)), (v48 + *(v47 + 48)), v8);
    v51(v48, v8);
    sub_1000C8F34();
    sub_100007120(&qword_100260D78, &qword_100260D40, &qword_1001D61C0);
    v52 = v72;
    v53 = v79;
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v50, &qword_100260D40, &qword_1001D61C0);
    sub_10000F500(v53, &qword_100260D38, &qword_1001D61B8);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v54 = (v52 + *(sub_10000341C(&qword_100260D30, &qword_1001D61B0) + 36));
    v55 = v82;
    *v54 = v81;
    v54[1] = v55;
    v54[2] = v83;
    v56 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    result = sub_10000341C(&qword_100260D18, &qword_1001D61A8);
    v65 = v52 + *(result + 36);
    *v65 = v56;
    *(v65 + 8) = v58;
    *(v65 + 16) = v60;
    *(v65 + 24) = v62;
    *(v65 + 32) = v64;
    *(v65 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v45 = a3;
  v42 = sub_10000341C(&qword_100260E08, &qword_1001D6330);
  v4 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v40 = v38 - v5;
  v44 = type metadata accessor for Capsule();
  v6 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _Glass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v38 - v15;
  v17 = sub_10000341C(&qword_100260E10, &qword_1001D6338);
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  __chkstk_darwin(v17);
  v46 = v38 - v19;
  if (a2)
  {

    static _Glass.regular.getter();

    _Glass.tintColor(_:)();

    v20 = *(v10 + 8);
    v38[1] = v10 + 8;
    v20(v14, v9);
    v21 = enum case for RoundedCornerStyle.continuous(_:);
    v22 = type metadata accessor for RoundedCornerStyle();
    (*(*(v22 - 8) + 104))(v8, v21, v22);
    v23 = sub_10000341C(&qword_100260E18, &qword_1001D6340);
    v38[0] = v9;
    v24 = v23;
    v25 = sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340);
    v26 = sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule);
    v39 = a2;
    v27 = v26;
    v28 = v46;
    v29 = v44;
    View._glassEffect<A>(_:in:)();
    sub_1000C9C9C(v8);
    v20(v16, v38[0]);
    v30 = v43;
    (*(v43 + 16))(v40, v28, v17);
    swift_storeEnumTagMultiPayload();
    v47 = v24;
    v48 = v29;
    v49 = v25;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static _Glass.regular.getter();
    v31 = enum case for RoundedCornerStyle.continuous(_:);
    v32 = type metadata accessor for RoundedCornerStyle();
    (*(*(v32 - 8) + 104))(v8, v31, v32);
    v39 = sub_10000341C(&qword_100260E18, &qword_1001D6340);
    v33 = sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340);
    v34 = sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule);
    v35 = v46;
    v36 = v44;
    View._glassEffect<A>(_:in:)();
    sub_1000C9C9C(v8);
    (*(v10 + 8))(v16, v9);
    v30 = v43;
    (*(v43 + 16))(v40, v35, v17);
    swift_storeEnumTagMultiPayload();
    v47 = v39;
    v48 = v36;
    v49 = v33;
    v50 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  return (*(v30 + 8))(v46, v17);
}

uint64_t sub_1000C7AE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BorderlessButtonStyle.init()();
  sub_10000341C(&qword_100260BE8, &qword_1001D5F50);
  sub_100007120(&qword_100260BF0, &qword_100260BE8, &qword_1001D5F50);
  sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  v7 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10000341C(&qword_100260C00, &qword_1001D5F88);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_1000C7C8C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BorderlessButtonStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_100260C08, &qword_1001D5F90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  ButtonStyleConfiguration.label.getter();
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = &v12[*(v9 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  BorderlessButtonStyle.init()();
  sub_1000C8184();
  sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v8, v4);
  sub_10000F500(v12, &qword_100260C08, &qword_1001D5F90);
  v19 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v21 = (a2 + *(sub_10000341C(&qword_100260C10, &qword_1001D5F98) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  result = sub_10000341C(&qword_100260C18, &unk_1001D5FD0);
  v25 = (a2 + *(result + 36));
  *v25 = v22;
  v25[1] = sub_10002AAC0;
  v25[2] = v23;
  return result;
}

double sub_1000C7F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = sub_10000341C(&qword_100260C60, &qword_1001D6080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(qword_100260C68, &qword_1001D6088) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1000C7FE8@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_100260DE8, &qword_1001D6288);
  sub_100007120(&qword_100260DF0, &qword_100260DE8, &qword_1001D6288);
  View.bold(_:)();
  v2 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_10000341C(&qword_100260DF8, &qword_1001D6290);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1000C80D4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C8100@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C812C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_1000C8158(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

unint64_t sub_1000C8184()
{
  result = qword_100263AA0;
  if (!qword_100263AA0)
  {
    sub_100003E34(&qword_100260C08, &qword_1001D5F90);
    sub_1000C9C54(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AA0);
  }

  return result;
}

unint64_t sub_1000C82AC()
{
  result = qword_100260C30;
  if (!qword_100260C30)
  {
    sub_100003E34(&qword_100260C00, &qword_1001D5F88);
    sub_100003E34(&qword_100260BE8, &qword_1001D5F50);
    type metadata accessor for BorderlessButtonStyle();
    sub_100007120(&qword_100260BF0, &qword_100260BE8, &qword_1001D5F50);
    sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C30);
  }

  return result;
}

unint64_t sub_1000C8424()
{
  result = qword_100260C38;
  if (!qword_100260C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C38);
  }

  return result;
}

unint64_t sub_1000C847C()
{
  result = qword_100260C40;
  if (!qword_100260C40)
  {
    sub_100003E34(&qword_100260C18, &unk_1001D5FD0);
    sub_1000C8560(&qword_100260C48, &qword_100260C50, &unk_1001D6020, sub_1000C85E4);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C40);
  }

  return result;
}

uint64_t sub_1000C8560(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1000C8424();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C85E4()
{
  result = qword_100260C58;
  if (!qword_100260C58)
  {
    sub_100003E34(&qword_100260C10, &qword_1001D5F98);
    sub_100003E34(&qword_100260C08, &qword_1001D5F90);
    type metadata accessor for BorderlessButtonStyle();
    sub_1000C8184();
    sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C58);
  }

  return result;
}

unint64_t sub_1000C875C(uint64_t a1)
{
  result = sub_1000596F4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C87E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000C8970(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_1000C8BE4()
{
  result = qword_100260CF0;
  if (!qword_100260CF0)
  {
    sub_100003E34(qword_100260C68, &qword_1001D6088);
    sub_100007120(&qword_100260CF8, &qword_100260C60, &qword_1001D6080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260CF0);
  }

  return result;
}

uint64_t sub_1000C8D18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for InputDashboardBar() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + 8);
  return (*v4)();
}

unint64_t sub_1000C8D80()
{
  result = qword_100260D20;
  if (!qword_100260D20)
  {
    sub_100003E34(&qword_100260D18, &qword_1001D61A8);
    sub_1000C8E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D20);
  }

  return result;
}

unint64_t sub_1000C8E0C()
{
  result = qword_100260D28;
  if (!qword_100260D28)
  {
    sub_100003E34(&qword_100260D30, &qword_1001D61B0);
    sub_100003E34(&qword_100260D38, &qword_1001D61B8);
    sub_100003E34(&qword_100260D40, &qword_1001D61C0);
    sub_1000C8F34();
    sub_100007120(&qword_100260D78, &qword_100260D40, &qword_1001D61C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D28);
  }

  return result;
}

unint64_t sub_1000C8F34()
{
  result = qword_100260D48;
  if (!qword_100260D48)
  {
    sub_100003E34(&qword_100260D38, &qword_1001D61B8);
    sub_100003E34(&qword_100260D50, &qword_1001D61C8);
    sub_1000C9028();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_100260D70, &qword_100263550, &qword_1001D1F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D48);
  }

  return result;
}

unint64_t sub_1000C9028()
{
  result = qword_100260D58;
  if (!qword_100260D58)
  {
    sub_100003E34(&qword_100260D50, &qword_1001D61C8);
    sub_1000C90E0();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D58);
  }

  return result;
}

unint64_t sub_1000C90E0()
{
  result = qword_100260D60;
  if (!qword_100260D60)
  {
    sub_100003E34(&qword_100260D68, &qword_1001D61D0);
    sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    sub_1000C9C54(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D60);
  }

  return result;
}

uint64_t sub_1000C927C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t sub_1000C9348()
{
  result = qword_100260D88;
  if (!qword_100260D88)
  {
    sub_100003E34(&qword_100260D10, &qword_1001D61A0);
    sub_1000C9400();
    sub_100007120(&qword_100260DB0, &qword_100260D80, &qword_1001D61D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D88);
  }

  return result;
}

unint64_t sub_1000C9400()
{
  result = qword_100260D90;
  if (!qword_100260D90)
  {
    sub_100003E34(&qword_100260D98, &qword_1001D6210);
    sub_100007120(&qword_100260DA0, &qword_100260DA8, &qword_1001D6218);
    sub_1000C8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D90);
  }

  return result;
}

unint64_t sub_1000C94C4()
{
  result = qword_100260DC0;
  if (!qword_100260DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DC0);
  }

  return result;
}

uint64_t sub_1000C9518()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for InputDashboardBar() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 24);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[12], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_1000C9610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for InputDashboardBar() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + 24);
  return (*(v4 + 16))();
}

uint64_t sub_1000C9678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260D08, &qword_1001D6198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C96E8()
{
  result = qword_100260DD0;
  if (!qword_100260DD0)
  {
    sub_100003E34(&qword_100260D08, &qword_1001D6198);
    sub_100003E34(&qword_100260D10, &qword_1001D61A0);
    type metadata accessor for GlassProminentButtonStyle();
    sub_1000C9348();
    sub_1000C9C54(&qword_100260DC8, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DD0);
  }

  return result;
}

uint64_t sub_1000C983C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C98AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C995C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003E34(&qword_100260D00, &qword_1001D6188);
  sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _GlassEffectContainer();
  return swift_getWitnessTable();
}

unint64_t sub_1000C9B3C()
{
  result = qword_100260E00;
  if (!qword_100260E00)
  {
    sub_100003E34(&qword_100260DF8, &qword_1001D6290);
    sub_100003E34(&qword_100260DE8, &qword_1001D6288);
    sub_100007120(&qword_100260DF0, &qword_100260DE8, &qword_1001D6288);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260E00);
  }

  return result;
}

uint64_t sub_1000C9C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C9C9C(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C9CFC()
{
  result = qword_100260E30;
  if (!qword_100260E30)
  {
    sub_100003E34(&qword_100260E38, &qword_1001D6348);
    sub_100003E34(&qword_100260E18, &qword_1001D6340);
    type metadata accessor for Capsule();
    sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340);
    sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260E30);
  }

  return result;
}

uint64_t sub_1000C9E44(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  v4 = sub_10000341C(&qword_100260EE0, &qword_1001D6380);
  v3[66] = v4;
  v5 = *(v4 - 8);
  v3[67] = v5;
  v6 = *(v5 + 64) + 15;
  v3[68] = swift_task_alloc();
  v7 = type metadata accessor for AppIntentPerformOptions();
  v3[69] = v7;
  v8 = *(v7 - 8);
  v3[70] = v8;
  v9 = *(v8 + 64) + 15;
  v3[71] = swift_task_alloc();
  v10 = sub_10000341C(&qword_100260EE8, &unk_1001D6388);
  v3[72] = v10;
  v11 = *(v10 - 8);
  v3[73] = v11;
  v12 = *(v11 + 64) + 15;
  v3[74] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9FD8, 0, 0);
}

uint64_t sub_1000C9FD8()
{
  v57 = v0;
  *(v0 + 296) = &type metadata for WritingTools;
  *(v0 + 304) = sub_10002AC88();
  *(v0 + 272) = 5;
  v1 = isFeatureEnabled(_:)();
  sub_10000F4B4((v0 + 272));
  if (v1)
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 512);
    v3 = type metadata accessor for Logger();
    *(v0 + 600) = sub_10000F34C(v3, qword_100276F98);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 504);
      v6 = *(v0 + 512);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v56 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10002510C(v7, v6, &v56);
      _os_log_impl(&_mh_execute_header, v4, v5, "searching for user info using query: %s", v8, 0xCu);
      sub_10000F4B4(v9);
    }

    v55 = *(v0 + 568);
    v10 = *(v0 + 520);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    type metadata accessor for StructuredQueryEntity(0);
    sub_1000CCB18(&qword_100260EF0, type metadata accessor for StructuredQueryEntity);
    v13 = _TransientAppEntityRepresentation<>.init()();
    *(v0 + 608) = v13;
    v14 = *(v13 + qword_100260F98);
    *(v0 + 676) = 1;

    EntityProperty.wrappedValue.setter();

    v15 = *(v13 + qword_100260FA0);
    *(v0 + 675) = 1;

    EntityProperty.wrappedValue.setter();

    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001CF9D0;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    v17 = *(v13 + qword_100260FA8);
    *(v0 + 456) = v16;

    EntityProperty.wrappedValue.setter();

    v18 = *(v10 + 16);
    v19 = *(v10 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 344) = v12;
    *(v0 + 352) = v11;
    v21 = sub_10000341C(&qword_100260EF8, &qword_1001D6398);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v24 = IntentParameter.init(wrappedValue:)();
    *(v0 + 616) = v24;
    *(v0 + 440) = v13;
    v25 = sub_10000341C(&qword_100260F00, &qword_1001D63A0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = IntentParameter.init(wrappedValue:)();
    *(v0 + 624) = v28;
    *(v0 + 672) = 1;
    v29 = sub_10000341C(&qword_100260F08, &qword_1001D63A8);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = IntentParameter.init(wrappedValue:)();
    *(v0 + 632) = v32;
    *(v0 + 673) = 1;
    v33 = *(v29 + 48);
    v34 = *(v29 + 52);
    swift_allocObject();
    v35 = IntentParameter.init(wrappedValue:)();
    *(v0 + 640) = v35;
    *(v0 + 312) = v24;
    *(v0 + 320) = v28;
    *(v0 + 328) = v32;
    *(v0 + 336) = v35;
    v36 = sub_1000CCA10();
    v37 = sub_1000CCA64();
    sub_1000CBADC();
    v38 = type metadata accessor for DefaultPerformAppIntentDelegate();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = DefaultPerformAppIntentDelegate.init()();
    *(v0 + 648) = v41;
    v42 = async function pointer to AppIntentDispatching.perform<A>(_:options:delegate:)[1];
    v43 = swift_task_alloc();
    *(v0 + 656) = v43;
    *v43 = v0;
    v43[1] = sub_1000CA584;
    v44 = *(v0 + 592);
    v45 = *(v0 + 568);
    v59 = v36;
    v60 = v37;

    return AppIntentDispatching.perform<A>(_:options:delegate:)(v44, v0 + 312, v45, v41, &protocol witness table for DefaultPerformAppIntentDelegate, ObjectType, &type metadata for SearchTool, v19);
  }

  else
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000F34C(v46, qword_100276F98);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "personal info search is disabled", v49, 2u);
    }

    v50 = *(v0 + 592);
    v51 = *(v0 + 568);
    v52 = *(v0 + 544);

    v53 = *(v0 + 8);

    return v53(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CA584()
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 640);
  v5 = *(*v1 + 632);
  v6 = *(*v1 + 624);
  v7 = *(*v1 + 616);
  v8 = *(*v1 + 568);
  v9 = *(*v1 + 560);
  v10 = *(*v1 + 552);
  v13 = *v1;
  *(*v1 + 664) = v0;

  (*(v9 + 8))(v8, v10);

  if (v0)
  {
    v11 = sub_1000CB480;
  }

  else
  {
    v11 = sub_1000CA798;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000CA798()
{
  v113 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  AppIntentSuccessResult.output.getter();
  (*(v2 + 8))(v1, v3);
  IntentOutput.value.getter();
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 448);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
LABEL_83:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v10 = 0;
      v111 = v7 & 0xC000000000000001;
      v108 = v7 + 32;
      v109 = v8;
      v11 = _swiftEmptyArrayStorage;
      v110 = v9;
      while (1)
      {
        if (v111)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = __OFADD__(v10++, 1);
          if (v13)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v10 >= *(v109 + 16))
          {
            goto LABEL_82;
          }

          v12 = *(v108 + 8 * v10);

          v13 = __OFADD__(v10++, 1);
          if (v13)
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        v14 = *(v0 + 600);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v112[0] = v18;
          *v17 = 136642819;

          v20 = sub_1000CDAF0(v19);
          v22 = v21;

          v23 = sub_10002510C(v20, v22, v112);

          *(v17 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v15, v16, "processing %{sensitive}s", v17, 0xCu);
          sub_10000F4B4(v18);
          v9 = v110;
        }

        v24 = qword_100261008;
        v25 = *(v12 + qword_100261008);

        EntityProperty.wrappedValue.getter();

        if (*(v0 + 674) <= 3u)
        {
          if (*(v0 + 674) <= 1u && *(v0 + 674))
          {

            goto LABEL_25;
          }
        }

        else if (*(v0 + 674) >= 8u)
        {
          goto LABEL_22;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
LABEL_22:
          v7 = *(v0 + 600);

          v27 = Logger.logObject.getter();
          v8 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v8))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v112[0] = v29;
            *v28 = 136315138;
            v30 = *(v12 + v24);

            EntityProperty.wrappedValue.getter();

            *(v0 + 678) = *(v0 + 677);
            sub_10000341C(&qword_100260F30, &unk_1001D63B8);
            v31 = String.init<A>(describing:)();
            v7 = v32;
            v33 = sub_10002510C(v31, v32, v112);

            *(v28 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v8, "unhandled result type: %s", v28, 0xCu);
            sub_10000F4B4(v29);
            v9 = v110;
          }

          else
          {
          }

          goto LABEL_7;
        }

LABEL_25:
        v34 = *(v12 + qword_100261018);

        EntityProperty.wrappedValue.getter();

        v35 = *(v0 + 464);
        if (!v35)
        {
          v49 = *(v0 + 600);
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v7, v8, "no answer", v50, 2u);
          }

          goto LABEL_50;
        }

        v36 = *(v35 + qword_100261158);

        EntityProperty.wrappedValue.getter();

        v37 = *(v0 + 368);
        if (v37)
        {
          v38 = *(v0 + 360);
          v39 = *(v35 + qword_100261170);

          EntityProperty.wrappedValue.getter();

          if (*(v0 + 472))
          {
            v106 = *(v0 + 472);
            v40 = *(v35 + qword_100261168);

            EntityProperty.wrappedValue.getter();

            v42 = *(v0 + 480);
            if (v42)
            {
              v104 = v38;
              v107 = v11;
              v105 = v37;
              if (v42 >> 62)
              {
                result = _CocoaArrayWrapper.endIndex.getter();
                v43 = result;
                if (result)
                {
LABEL_31:
                  if (v43 < 1)
                  {
                    __break(1u);
                    return result;
                  }

                  if ((v42 & 0xC000000000000001) != 0)
                  {
                    for (i = 0; i != v43; ++i)
                    {
                      v45 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + qword_100261010);

                      EntityProperty.wrappedValue.getter();

                      v46 = *(v0 + 488);
                      if (v46 && (v47 = *(v46 + qword_100261078), , EntityProperty.wrappedValue.getter(), , , (v48 = *(v0 + 384)) != 0))
                      {
                        sub_1000CBF08(v112, *(v0 + 376), v48);
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                      }
                    }
                  }

                  else
                  {
                    v58 = (v42 + 32);
                    do
                    {
                      v59 = *(*v58 + qword_100261010);

                      EntityProperty.wrappedValue.getter();

                      v60 = *(v0 + 496);
                      if (v60 && (v61 = *(v60 + qword_100261078), , EntityProperty.wrappedValue.getter(), , , (v62 = *(v0 + 432)) != 0))
                      {
                        sub_1000CBF08(v112, *(v0 + 424), v62);
                      }

                      else
                      {
                      }

                      ++v58;
                      --v43;
                    }

                    while (v43);
                  }
                }
              }

              else
              {
                v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v43)
                {
                  goto LABEL_31;
                }
              }

              v63 = *(v35 + qword_100261178);

              EntityProperty.wrappedValue.getter();

              v65 = *(v0 + 392);
              v64 = *(v0 + 400);
              v66 = *(v35 + qword_100261160);

              EntityProperty.wrappedValue.getter();

              v67 = *(v0 + 408);
              v103 = *(v0 + 416);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v107 = sub_10017E10C(0, *(v107 + 2) + 1, 1, v107);
              }

              v8 = *(v107 + 2);
              v68 = *(v107 + 3);
              v7 = v8 + 1;
              if (v8 >= v68 >> 1)
              {
                v107 = sub_10017E10C((v68 > 1), v8 + 1, 1, v107);
              }

              *(v107 + 2) = v7;
              v69 = &v107[64 * v8];
              *(v69 + 4) = v104;
              *(v69 + 5) = v105;
              *&v70 = v65;
              *(&v70 + 1) = v64;
              *(v69 + 6) = v106;
              *(v69 + 7) = &_swiftEmptySetSingleton;
              *&v71 = v67;
              v11 = v107;
              *(&v71 + 1) = v103;
              *(v69 + 4) = v70;
              *(v69 + 5) = v71;
              v9 = v110;
              goto LABEL_7;
            }

            v57 = *(v0 + 600);

            v7 = Logger.logObject.getter();
            v8 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v7, v8))
            {
              goto LABEL_49;
            }

            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = v8;
            v54 = v7;
            v55 = "sources property for answerEntity is nil, this shouldn't happen and is unexpected";
            goto LABEL_48;
          }

          v56 = *(v0 + 600);

          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = v8;
            v54 = v7;
            v55 = "documentSource property for answerEntity is nil, this shouldn't happen and is unexpected";
            goto LABEL_48;
          }
        }

        else
        {
          v51 = *(v0 + 600);
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = v8;
            v54 = v7;
            v55 = "Answer property for answerEntity is nil, this shouldn't happen and is unexpected";
LABEL_48:
            _os_log_impl(&_mh_execute_header, v54, v53, v55, v52, 2u);
          }
        }

LABEL_49:

LABEL_50:

LABEL_7:
        if (v10 == v9)
        {
          goto LABEL_67;
        }
      }
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_67:
    v78 = *(v0 + 600);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      *(v81 + 4) = *(v11 + 2);

      _os_log_impl(&_mh_execute_header, v79, v80, "found %ld results:", v81, 0xCu);
    }

    else
    {
    }

    v82 = *(v11 + 2);
    if (v82)
    {
      v83 = v82 - 1;
      for (j = 32; ; j += 64)
      {
        v85 = *(v0 + 600);
        v86 = *&v11[j + 48];
        v88 = *&v11[j];
        v87 = *&v11[j + 16];
        *(v0 + 48) = *&v11[j + 32];
        *(v0 + 64) = v86;
        *(v0 + 16) = v88;
        *(v0 + 32) = v87;
        sub_10004CBCC(v0 + 16, v0 + 208);
        sub_10004CBCC(v0 + 16, v0 + 144);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        sub_1000CCB60(v0 + 16);
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v112[0] = v92;
          *v91 = 136642819;
          v93 = *(v0 + 32);
          *(v0 + 80) = *(v0 + 16);
          *(v0 + 96) = v93;
          v94 = *(v0 + 64);
          *(v0 + 112) = *(v0 + 48);
          *(v0 + 128) = v94;
          v95 = String.init<A>(describing:)();
          v97 = sub_10002510C(v95, v96, v112);

          *(v91 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v89, v90, "%{sensitive}s", v91, 0xCu);
          sub_10000F4B4(v92);

          if (!v83)
          {
            break;
          }
        }

        else
        {

          sub_1000CCB60(v0 + 16);
          if (!v83)
          {
            break;
          }
        }

        --v83;
      }
    }

    v98 = *(v0 + 608);
  }

  else
  {
    v72 = *(v0 + 600);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 608);
    if (v75)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "user info search returned no results", v77, 2u);
    }

    v11 = _swiftEmptyArrayStorage;
  }

  v99 = *(v0 + 592);
  v100 = *(v0 + 568);
  v101 = *(v0 + 544);

  v102 = *(v0 + 8);

  return v102(v11);
}

uint64_t sub_1000CB480()
{
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[68];

  v5 = v0[1];
  v6 = v0[83];

  return v5();
}

uint64_t sub_1000CB510(void *a1)
{
  v3 = v1;
  v5 = sub_10000341C(&qword_100260F58, &unk_1001D64C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_1000CCC44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v19 = v3[2];
    HIBYTE(v18) = 1;
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_1000CCC98(&qword_100260F68, &qword_10025CC10, &qword_1001D1FB0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v3[3];
    HIBYTE(v18) = 2;
    sub_10000341C(&qword_100260F70, &qword_1001D64D8);
    sub_1000CCC98(&qword_100260F78, &qword_100260F70, &qword_1001D64D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v19) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000CB79C(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      String.hash(into:)();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_1000CC7CC(a1, v2[3]);
  if (!v2[5])
  {
    Hasher._combine(_:)(0);
    if (v2[7])
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  v11 = v2[4];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2[7])
  {
    goto LABEL_10;
  }

LABEL_6:
  v12 = v2[6];
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_1000CB8AC()
{
  v1 = *v0;
  v2 = 0x736E4174726F6873;
  v3 = 0x4449656372756F73;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x676F6C616964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CB94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000CCF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000CB980(uint64_t a1)
{
  v2 = sub_1000CCC44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CB9BC(uint64_t a1)
{
  v2 = sub_1000CCC44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBA10(_OWORD *a1, _OWORD *a2)
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
  return sub_1000CC928(v7, v8) & 1;
}

Swift::Int sub_1000CBA5C()
{
  Hasher.init(_seed:)();
  sub_1000CB79C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CBAA0()
{
  Hasher.init(_seed:)();
  sub_1000CB79C(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000CBADC()
{
  v0 = sub_10000341C(&qword_100260F38, &unk_1001D63C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for UTType();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for SnippetEnvironment();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  return AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
}

uint64_t sub_1000CBC5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CBCB8()
{
  v1 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_10000341C(&qword_100260F40, &qword_1001D63D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = type metadata accessor for IntentsServices.DispatcherOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultEnvironment];
  v18[3] = sub_1000CCB90();
  v18[4] = &protocol witness table for LNEnvironment;
  v18[0] = v12;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v2 + 104))(v5, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v13 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  sub_10000F4B4(v18);
  *(v0 + 16) = v13;
  *(v0 + 24) = v15;
  return v0;
}

uint64_t sub_1000CBF08(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000CC2B8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000CC058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000CC2B8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000CC058(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000CC438();
      goto LABEL_16;
    }

    sub_1000CC594(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000CC438()
{
  v1 = v0;
  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000CC594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_1000CC7CC(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000CC928(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10017BA1C(a1[2], a2[2]) & 1) == 0 || (sub_10017CBE0(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  if (v5)
  {
    if (!v6 || (a1[4] != a2[4] || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a2[7];
  if (v7)
  {
    if (v8 && (a1[6] == a2[6] && v7 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1000CCA10()
{
  result = qword_100260F10;
  if (!qword_100260F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F10);
  }

  return result;
}

unint64_t sub_1000CCA64()
{
  result = qword_100260F18;
  if (!qword_100260F18)
  {
    sub_100003E34(&qword_100260F20, &qword_1001D63B0);
    sub_1000CCB18(&qword_100260F28, type metadata accessor for SearchEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F18);
  }

  return result;
}

uint64_t sub_1000CCB18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CCB90()
{
  result = qword_100260F48;
  if (!qword_100260F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100260F48);
  }

  return result;
}

unint64_t sub_1000CCBF0()
{
  result = qword_100260F50;
  if (!qword_100260F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F50);
  }

  return result;
}

unint64_t sub_1000CCC44()
{
  result = qword_100260F60;
  if (!qword_100260F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F60);
  }

  return result;
}

uint64_t sub_1000CCC98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CCE4C()
{
  result = qword_100260F80;
  if (!qword_100260F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F80);
  }

  return result;
}

unint64_t sub_1000CCEA4()
{
  result = qword_100260F88;
  if (!qword_100260F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F88);
  }

  return result;
}

unint64_t sub_1000CCEFC()
{
  result = qword_100260F90;
  if (!qword_100260F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260F90);
  }

  return result;
}

uint64_t sub_1000CCF50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E4174726F6873 && a2 == 0xEB00000000726577;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000CD178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7469746E45707061;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (a1 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x6C61626F6C67;
  if (a1 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  v12 = 0x726577736E61;
  if (!a1)
  {
    v12 = 0x7469746E45707061;
    v10 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v11 = v12;
    v2 = v10;
  }

  if (a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v5 <= 3)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v4 = 0xE500000000000000;
        if (v13 != 0x616964656DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0xE800000000000000;
        if (v13 != 0x6E65657263536E6FLL)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x647261436469)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE600000000000000;
        if (v13 != 0x6C61626F6C67)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6867696C746F7073;
      v4 = 0xE900000000000074;
    }

    else if (a2)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x726577736E61)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v4)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_1000CD6AC(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_100260F98;
  v12 = sub_10000341C(&qword_1002613E0, &qword_1001D7440);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = EntityProperty.init(identifier:)();
  v15 = qword_100260FA0;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = EntityProperty.init(identifier:)();
  v18 = qword_100260FA8;
  v19 = sub_10000341C(&qword_1002613B0, &qword_1001D7410);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v10 + v18) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v7, a1, v3);
  v22 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v22;
}

uint64_t sub_1000CD868()
{
  v1 = *(v0 + qword_100260F98);

  v2 = *(v0 + qword_100260FA0);

  v3 = *(v0 + qword_100260FA8);
}

uint64_t sub_1000CD8B8()
{
  v0 = CustomAppEntityRepresentationBase.deinit();
  v1 = *(v0 + qword_100260F98);

  v2 = *(v0 + qword_100260FA0);

  v3 = *(v0 + qword_100260FA8);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CD9B0(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261378, type metadata accessor for StructuredQueryEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CDA20()
{
  v1 = sub_1000D076C(&qword_100261368, type metadata accessor for StructuredQueryEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CDA80(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261378, type metadata accessor for StructuredQueryEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CDEA4(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100261000;
  v9 = sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v12 = qword_100261008;
  v13 = sub_10000341C(&qword_1002613C0, &qword_1001D7420);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = EntityProperty.init(identifier:)();
  v16 = qword_100261010;
  v17 = sub_10000341C(&qword_1002613C8, &qword_1001D7428);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = EntityProperty.init(identifier:)();
  v20 = qword_100261018;
  v21 = sub_10000341C(&qword_1002613D0, &qword_1001D7430);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = EntityProperty.init(identifier:)();
  v24 = qword_100261020;
  v25 = sub_10000341C(&qword_1002613D8, &qword_1001D7438);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v1 + v24) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v7, a1, v3);
  v28 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v28;
}

uint64_t sub_1000CE0D4()
{
  v1 = *(v0 + qword_100261000);

  v2 = *(v0 + qword_100261008);

  v3 = *(v0 + qword_100261010);

  v4 = *(v0 + qword_100261018);

  v5 = *(v0 + qword_100261020);
}

uint64_t sub_1000CE144()
{
  v0 = CustomAppEntityRepresentationBase.deinit();
  v1 = *(v0 + qword_100261000);

  v2 = *(v0 + qword_100261008);

  v3 = *(v0 + qword_100261010);

  v4 = *(v0 + qword_100261018);

  v5 = *(v0 + qword_100261020);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE2F4(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261330, type metadata accessor for SearchEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CE364()
{
  v1 = sub_1000D076C(&qword_100261320, type metadata accessor for SearchEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CE3E8(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261330, type metadata accessor for SearchEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CE458@<X0>(uint64_t *a1@<X8>)
{
  result = static CustomAppEntityRepresentationBase.from(_:context:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE4F0()
{
  String.hash(into:)();
}

Swift::Int sub_1000CE614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CE748@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D1434(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CE778@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x7469746E45707061;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (v3 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  result = 0x647261436469;
  if (v3 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61626F6C67;
  if (v3 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  if (*v1)
  {
    v5 = 0x726577736E61;
    v4 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1000CE890(uint64_t a1)
{
  v2 = sub_1000D1480();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_1000CE8CC(uint64_t a1)
{
  v2 = sub_1000D1480();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_1000CE908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D03F4();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_1000CE954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1480();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_1000CE9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D03F4();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_1000CEC34(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100261078;
  v9 = sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v12 = qword_100261080;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = EntityProperty.init(identifier:)();
  v15 = qword_100261088;
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v15) = EntityProperty.init(identifier:)();
  v18 = qword_100261090;
  v19 = *(v9 + 48);
  v20 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v18) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v7, a1, v3);
  v21 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v21;
}

uint64_t sub_1000CEF10(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612F0, type metadata accessor for SearchAppEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CEF80()
{
  v1 = sub_1000D076C(&qword_1002612E0, type metadata accessor for SearchAppEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CEFE0(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612F0, type metadata accessor for SearchAppEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CF51C(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1002610E8;
  v9 = sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v12 = qword_1002610F0;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = EntityProperty.init(identifier:)();
  v15 = qword_1002610F8;
  v16 = sub_10000341C(&qword_1002613B8, &qword_1001D7418);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = EntityProperty.init(identifier:)();
  v19 = qword_100261100;
  v20 = *(v16 + 48);
  v21 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v19) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v7, a1, v3);
  v22 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v22;
}

uint64_t sub_1000CF71C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *(v4 + *a1);

  v9 = *(v4 + *a2);

  v10 = *(v4 + *a3);

  v11 = *(v4 + *a4);
}

uint64_t sub_1000CF7AC(void *a1, void *a2, void *a3, void *a4)
{
  v8 = CustomAppEntityRepresentationBase.deinit();
  v9 = *(v8 + *a1);

  v10 = *(v8 + *a2);

  v11 = *(v8 + *a3);

  v12 = *(v8 + *a4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CF918(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612A8, type metadata accessor for SearchSpotlightEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000CF988()
{
  v1 = sub_1000D076C(&qword_100261298, type metadata accessor for SearchSpotlightEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000CF9E8(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_1002612A8, type metadata accessor for SearchSpotlightEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000CFD5C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return a2(a1);
}

uint64_t sub_1000CFDA8(uint64_t a1)
{
  v3 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100261158;
  v9 = sub_10000341C(&qword_1002613A0, &qword_1001D7400);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = EntityProperty.init(identifier:)();
  v12 = qword_100261160;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = EntityProperty.init(identifier:)();
  v15 = qword_100261168;
  v16 = sub_10000341C(&qword_1002613A8, &qword_1001D7408);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = EntityProperty.init(identifier:)();
  v19 = qword_100261170;
  v20 = sub_10000341C(&qword_1002613B0, &qword_1001D7410);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v19) = EntityProperty.init(identifier:)();
  v23 = qword_100261178;
  v24 = *(v9 + 48);
  v25 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v23) = EntityProperty.init(identifier:)();
  (*(v4 + 16))(v7, a1, v3);
  v26 = CustomAppEntityRepresentationBase.init(_:)();
  (*(v4 + 8))(a1, v3);
  return v26;
}

uint64_t sub_1000CFFBC()
{
  v1 = *(v0 + qword_100261158);

  v2 = *(v0 + qword_100261160);

  v3 = *(v0 + qword_100261168);

  v4 = *(v0 + qword_100261170);

  v5 = *(v0 + qword_100261178);
}

uint64_t sub_1000D002C()
{
  v0 = CustomAppEntityRepresentationBase.deinit();
  v1 = *(v0 + qword_100261158);

  v2 = *(v0 + qword_100261160);

  v3 = *(v0 + qword_100261168);

  v4 = *(v0 + qword_100261170);

  v5 = *(v0 + qword_100261178);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SearchResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D022C()
{
  result = qword_1002611D0;
  if (!qword_1002611D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611D0);
  }

  return result;
}

unint64_t sub_1000D0284()
{
  result = qword_1002611D8;
  if (!qword_1002611D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611D8);
  }

  return result;
}

unint64_t sub_1000D02DC()
{
  result = qword_1002611E0;
  if (!qword_1002611E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611E0);
  }

  return result;
}

unint64_t sub_1000D0334()
{
  result = qword_1002611E8;
  if (!qword_1002611E8)
  {
    sub_100003E34(&qword_1002611F0, &qword_1001D67E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611E8);
  }

  return result;
}

unint64_t sub_1000D039C()
{
  result = qword_1002611F8;
  if (!qword_1002611F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002611F8);
  }

  return result;
}

unint64_t sub_1000D03F4()
{
  result = qword_100261200;
  if (!qword_100261200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261200);
  }

  return result;
}

unint64_t sub_1000D044C()
{
  result = qword_100261208;
  if (!qword_100261208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261208);
  }

  return result;
}

unint64_t sub_1000D04A4()
{
  result = qword_100261210;
  if (!qword_100261210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261210);
  }

  return result;
}

unint64_t sub_1000D0508()
{
  result = qword_100261218;
  if (!qword_100261218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261218);
  }

  return result;
}

uint64_t sub_1000D059C(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261260, type metadata accessor for SearchAnswerEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_1000D060C()
{
  v1 = sub_1000D076C(&qword_100261250, type metadata accessor for SearchAnswerEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_1000D066C(uint64_t a1)
{
  v3 = sub_1000D076C(&qword_100261260, type metadata accessor for SearchAnswerEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_1000D076C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D13CC(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100261380, &qword_1001D73F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D1434(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024A9D8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D1480()
{
  result = qword_100261398;
  if (!qword_100261398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261398);
  }

  return result;
}

id sub_1000D1524(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (v48 - v10);
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v17._object = 0x80000001001E60A0;
  v17._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000022;
  v19._object = 0x80000001001E60C0;
  String.append(_:)(v19);
  v20 = type metadata accessor for JSONDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v13 + 8))(v16, v12);
  if (v26 >> 60 == 15)
  {
    v27 = 0x80000001001E60F0;
    sub_100099280();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    v28[1] = 0x80000001001E60F0;
    swift_willThrow();
LABEL_5:

    return v27;
  }

  sub_10009A06C();
  v29 = v24;
  v27 = v23;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    sub_10009A0C0(v29, v26);
    goto LABEL_5;
  }

  v50 = v23;
  v51 = v29;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v57 = &type metadata for WritingTools;
  v58 = sub_10002AC88();
  LOBYTE(v54) = 15;
  v34 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v54);
  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

  v48[1] = v33;
  v49 = v31;
  swift_getKeyPath();
  v35 = v53;
  v54 = v53;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000B11B4(v35 + v36, v11);
  v37 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v37 - 8) + 48))(v11, 1, v37) == 1)
  {
    sub_1000B1224(v11);
    v31 = v49;
LABEL_10:

    sub_100039044(v31, v32, v52);

    sub_1000D1B30();
    v38 = NSAttributedString.init(_:)();
LABEL_13:
    swift_getKeyPath();
    v45 = v53;
    v59 = v53;
    sub_1000637F0();
    v46 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v45 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == 1)
    {
      v47 = [v46 string];
      if (!v47)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = String._bridgeToObjectiveC()();
      }

      v27 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v47];

      v46 = v47;
    }

    else
    {
      v27 = v46;
    }

    sub_10009A0C0(v51, v26);

    return v27;
  }

  v39 = v11[1];
  sub_100099074(v11);
  v40 = [v39 attributedText];
  v41 = sub_10007A450();
  v42 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v40 formatOptions:v41];

  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 digestedAttributedStringFromFormattedString:v43];

  result = [v44 mutableCopy];
  if (result)
  {
    v38 = result;

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D1B30()
{
  result = qword_10025F378;
  if (!qword_10025F378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F378);
  }

  return result;
}

unint64_t sub_1000D1BA0()
{
  result = qword_1002613E8;
  if (!qword_1002613E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613E8);
  }

  return result;
}

unint64_t sub_1000D1BF8()
{
  result = qword_1002613F0;
  if (!qword_1002613F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613F0);
  }

  return result;
}

unint64_t sub_1000D1C50()
{
  result = qword_1002613F8;
  if (!qword_1002613F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002613F8);
  }

  return result;
}

unint64_t sub_1000D1CA8()
{
  result = qword_100261400;
  if (!qword_100261400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261400);
  }

  return result;
}

uint64_t sub_1000D1CFC()
{
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000D1D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

void sub_1000D1DE4(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
    v3 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    sub_1000D2224();
    v4 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v1 + 32);
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v9];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000D2224();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000D1F64(uint64_t a1, char a2)
{
  *(a1 + 32) = a2;
  v3 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1000D2224();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 32);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = String._bridgeToObjectiveC()();
  [v3 setValue:isa forKey:v8];
}

uint64_t sub_1000D203C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC21WritingToolsUIService25CompositionEducationModel___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionEducationModel()
{
  result = qword_100261438;
  if (!qword_100261438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D2134()
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

unint64_t sub_1000D2224()
{
  result = qword_100261538;
  if (!qword_100261538)
  {
    type metadata accessor for CompositionEducationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261538);
  }

  return result;
}

uint64_t sub_1000D227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
  return swift_errorRetain();
}

uint64_t sub_1000D2328(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1000D23F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  *a2 = v4;

  return v4;
}

void sub_1000D24B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B2ACC(v2);
}

uint64_t sub_1000D24E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000D25BC(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v5, &unk_10025B1C0, &unk_1001CFA90);
  v3 = *a2;
  swift_getKeyPath();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v5, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000D26F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t sub_1000D2734@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ModelResponseView(0) + 28));
  v6 = *v3;
  v7 = v3[1];
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v4 = sub_100037954();

  *a2 = (v4 & 1) == 0;
  return result;
}

uint64_t ModelResponseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v23 = type metadata accessor for ContainerBackgroundPlacement();
  v22[0] = *(v23 - 8);
  v3 = *(v22[0] + 64);
  __chkstk_darwin(v23);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_100261560, &qword_1001D7790);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  v15 = sub_10000341C(&qword_100261568, &qword_1001D7798);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v22 - v18;
  sub_1000D2AF0(v2, v14);
  (*(v7 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v6);
  v20 = sub_1000D3048();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v7 + 8))(v10, v6);
  sub_10000F500(v14, &qword_100261560, &qword_1001D7790);
  v26 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v24 = v11;
  v25 = v20;
  swift_getOpaqueTypeConformance2();
  View.containerBackground<A>(_:for:)();
  (*(v22[0] + 8))(v5, v23);

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1000D2AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10000341C(&qword_100261888, &qword_1001D7C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_10000341C(&qword_100261890, &qword_1001D7C38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v38 = sub_10000341C(&qword_100261590, &qword_1001D77A8);
  v12 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v14 = &v37 - v13;
  v15 = (a1 + *(type metadata accessor for ModelResponseView(0) + 28));
  v17 = *v15;
  v16 = v15[1];
  v40 = v17;
  v41 = v16;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v18 = v44;
  swift_getKeyPath();
  v40 = v18;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v19 == 1)
  {
    sub_1000D3544(v14);
    sub_1000081F8(v14, v11, &qword_100261590, &qword_1001D77A8);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1000D3288();
    v20 = sub_100003E34(&qword_100261598, &qword_1001D77B8);
    v21 = sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    v22 = sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    v23 = sub_1000D33B4();
    v40 = v22;
    v41 = &type metadata for Bool;
    v42 = v23;
    v43 = &protocol witness table for Bool;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    v26 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0);
    v40 = v25;
    v41 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v40 = v20;
    v41 = v21;
    v42 = OpaqueTypeConformance2;
    v43 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v14, &qword_100261590, &qword_1001D77A8);
  }

  else
  {
    sub_1000D38BC(v7);
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1000D3288();
    v29 = sub_100003E34(&qword_100261598, &qword_1001D77B8);
    v30 = sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    v31 = sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    v32 = sub_1000D33B4();
    v40 = v31;
    v41 = &type metadata for Bool;
    v42 = v32;
    v43 = &protocol witness table for Bool;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    v35 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0);
    v40 = v34;
    v41 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v40 = v29;
    v41 = v30;
    v42 = v33;
    v43 = v36;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_1000D3048()
{
  result = qword_100261570;
  if (!qword_100261570)
  {
    sub_100003E34(&qword_100261560, &qword_1001D7790);
    sub_1000D30CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261570);
  }

  return result;
}

unint64_t sub_1000D30CC()
{
  result = qword_100261578;
  if (!qword_100261578)
  {
    sub_100003E34(&qword_100261580, &qword_1001D77A0);
    sub_1000D3288();
    sub_100003E34(&qword_100261598, &qword_1001D77B8);
    sub_100003E34(&qword_1002615A0, &qword_1001D77C0);
    sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    sub_1000D33B4();
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
    sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261578);
  }

  return result;
}

unint64_t sub_1000D3288()
{
  result = qword_100261588;
  if (!qword_100261588)
  {
    sub_100003E34(&qword_100261590, &qword_1001D77A8);
    sub_100003E34(&qword_10025C4B0, &qword_1001D77B0);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0);
    swift_getOpaqueTypeConformance2();
    sub_1000DDA04(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261588);
  }

  return result;
}

unint64_t sub_1000D33B4()
{
  result = qword_1002615B0;
  if (!qword_1002615B0)
  {
    sub_100003E34(&qword_1002615A8, &qword_1001D77C8);
    sub_1000D3470();
    sub_1000DDA04(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002615B0);
  }

  return result;
}

unint64_t sub_1000D3470()
{
  result = qword_1002615B8;
  if (!qword_1002615B8)
  {
    sub_100003E34(&qword_1002615C0, &qword_1001D77D0);
    sub_100007120(&qword_1002615C8, &qword_1002615D0, &qword_1001D77D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002615B8);
  }

  return result;
}

uint64_t sub_1000D3544@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_10025C4B0, &qword_1001D77B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v34 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
  sub_1000D44C0(v1, v6 + *(v8 + 44));
  sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0);
  View.navigationBarBackButtonHidden(_:)();
  sub_10000F500(v6, &qword_10025C4B0, &qword_1001D77B0);
  v9 = type metadata accessor for ModelResponseView(0);
  v10 = (v1 + *(v9 + 28));
  v12 = *v10;
  v11 = v10[1];
  *&v36 = v12;
  *(&v36 + 1) = v11;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v13 = *(v9 + 40);
  v14 = a1 + *(sub_10000341C(&qword_100261590, &qword_1001D77A8) + 36);
  v15 = type metadata accessor for PreferredContentSizeModifier(0);
  v16 = v15[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v36) = 0;
  static Binding.constant(_:)();
  v17 = v38;
  v18 = v39;
  v19 = v40;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v14 + 8) = 1;
  v20 = v14 + v15[8];
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19;
  v21 = (v14 + v15[9]);
  *v21 = 0xD00000000000001DLL;
  v21[1] = 0x80000001001E6270;
  v22 = v14 + v15[10];
  type metadata accessor for CGSize(0);
  v34 = 0;
  v35 = 0;
  State.init(wrappedValue:)();
  v23 = v37;
  *v22 = v36;
  *(v22 + 16) = v23;
  v24 = v14 + v15[11];
  LOBYTE(v34) = 0;
  State.init(wrappedValue:)();
  v25 = *(&v36 + 1);
  *v24 = v36;
  *(v24 + 8) = v25;
  v26 = v14 + v15[12];
  v34 = 0;
  LOBYTE(v35) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v27 = BYTE8(v36);
  v28 = v37;
  *v26 = v36;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28;
  v29 = v14 + v15[13];
  LOBYTE(v34) = 0;
  State.init(wrappedValue:)();
  v30 = *(&v36 + 1);
  *v29 = v36;
  *(v29 + 8) = v30;
  v31 = v14 + v15[14];
  type metadata accessor for PresentationModel();
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel);
  result = Environment.init<A>(_:)();
  *v31 = result;
  *(v31 + 8) = v33 & 1;
  return result;
}

uint64_t sub_1000D38BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for ModelResponseView(0);
  v4 = v3 - 8;
  v68 = *(v3 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v3);
  v69 = v6;
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_1002615D0, &qword_1001D77D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_10000341C(&qword_1002615C0, &qword_1001D77D0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = sub_10000341C(&qword_1002615A8, &qword_1001D77C8);
  v76 = v16;
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v66 - v18;
  v67 = &v66 - v18;
  v78 = sub_10000341C(&qword_100261598, &qword_1001D77B8);
  v79 = *(v78 - 8);
  v20 = *(v79 + 64);
  __chkstk_darwin(v78);
  v77 = &v66 - v21;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = sub_10000341C(&qword_1002618A0, &qword_1001D7D48);
  sub_1000D6058(v1, &v10[*(v22 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = v15;
  sub_10002A894(v10, v15, &qword_1002615D0, &qword_1001D77D8);
  v23 = &v15[*(v12 + 44)];
  v24 = v93;
  *(v23 + 4) = v92;
  *(v23 + 5) = v24;
  *(v23 + 6) = v94;
  v25 = v89;
  *v23 = v88;
  *(v23 + 1) = v25;
  v26 = v91;
  *(v23 + 2) = v90;
  *(v23 + 3) = v26;
  v27 = (v1 + *(v4 + 36));
  v29 = *v27;
  v28 = v27[1];
  v74 = v29;
  v73 = v28;
  *&v83 = v29;
  *(&v83 + 1) = v28;
  v70 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v30 = *(v4 + 48);
  v31 = &v19[*(v16 + 36)];
  v32 = type metadata accessor for PreferredContentSizeModifier(0);
  v33 = v32[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v71 = v2;
  Binding.projectedValue.getter();
  v72 = type metadata accessor for ModelResponseView;
  v34 = v81;
  sub_1000DDF2C(v2, v81, type metadata accessor for ModelResponseView);
  type metadata accessor for MainActor();
  v35 = static MainActor.shared.getter();
  v36 = *(v68 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = &protocol witness table for MainActor;
  sub_1000DDF94(v34, v37 + ((v36 + 32) & ~v36), type metadata accessor for ModelResponseView);
  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v40 = v83;
  LOBYTE(v33) = v84;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v31 + 4) = 1;
  v41 = &v31[v32[8]];
  *v41 = v40;
  v41[16] = v33;
  v42 = &v31[v32[9]];
  *v42 = 0xD000000000000011;
  *(v42 + 1) = 0x80000001001D7830;
  v43 = &v31[v32[10]];
  type metadata accessor for CGSize(0);
  v86 = 0;
  v87 = 0;
  State.init(wrappedValue:)();
  v44 = v84;
  *v43 = v83;
  *(v43 + 2) = v44;
  v45 = &v31[v32[11]];
  LOBYTE(v86) = 0;
  State.init(wrappedValue:)();
  v46 = *(&v83 + 1);
  *v45 = v83;
  *(v45 + 1) = v46;
  v47 = &v31[v32[12]];
  v86 = 0;
  LOBYTE(v87) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v48 = BYTE8(v83);
  v49 = v84;
  *v47 = v83;
  v47[8] = v48;
  *(v47 + 2) = v49;
  v50 = &v31[v32[13]];
  LOBYTE(v86) = 0;
  State.init(wrappedValue:)();
  v51 = *(&v83 + 1);
  *v50 = v83;
  *(v50 + 1) = v51;
  v52 = &v31[v32[14]];
  type metadata accessor for PresentationModel();
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel);
  *v52 = Environment.init<A>(_:)();
  v52[8] = v53 & 1;
  v54 = v67;
  sub_10002A894(v75, v67, &qword_1002615C0, &qword_1001D77D0);
  *&v83 = v74;
  *(&v83 + 1) = v73;
  State.wrappedValue.getter();
  v55 = v86;
  swift_getKeyPath();
  *&v83 = v55;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v50) = *(v55 + 112);

  LOBYTE(v83) = v50;
  v56 = v71;
  v57 = v81;
  sub_1000DDF2C(v71, v81, v72);
  v58 = swift_allocObject();
  sub_1000DDF94(v57, v58 + ((v36 + 16) & ~v36), type metadata accessor for ModelResponseView);
  v59 = sub_1000D33B4();
  v60 = v77;
  v61 = v76;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v54, &qword_1002615A8, &qword_1001D77C8);
  v82 = v56;
  sub_10000341C(&qword_1002615A0, &qword_1001D77C0);
  *&v83 = v61;
  *(&v83 + 1) = &type metadata for Bool;
  v84 = v59;
  v85 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v62 = sub_100003E34(&qword_1002615D8, &qword_1001D77E0);
  v63 = sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0);
  *&v83 = v62;
  *(&v83 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v78;
  View.toolbar<A>(content:)();
  return (*(v79 + 8))(v60, v64);
}

uint64_t sub_1000D4208(char a1)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelResponseView(0);
  v9 = *(v8 + 28);
  v19[0] = v1;
  v10 = (v1 + v9);
  v12 = *v10;
  v11 = v10[1];
  v20 = *v10;
  v21 = v11;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  if (a1)
  {
    v20 = v12;
    v21 = v11;
    State.wrappedValue.getter();
    v13 = v19[1];
    swift_getKeyPath();
    v20 = v13;
    sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);

    sub_1000C2BCC((v14 & 1) == 0, 0, 0);
  }

  else
  {
    sub_1000C2BCC(0, 0, 0);

    v15 = *(v8 + 40);
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v16 = NavigationPath.count.getter();
    (*(v4 + 8))(v7, v3);
    if (v16 >= 1)
    {
      Binding.wrappedValue.getter();
      NavigationPath.removeLast(_:)(1);
      return Binding.wrappedValue.setter();
    }
  }

  v20 = v12;
  v21 = v11;
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  v4 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v6 = &v21 - v5;
  v7 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v23 = static Color.clear.getter();
  v22 = static Edge.Set.vertical.getter();
  v21 = static SafeAreaRegions.all.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_1000D47B8(&v6[*(v15 + 44)]);
  v25 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780);
  View.toolbar<A>(content:)();
  sub_10000F500(v6, &qword_10025C6D8, &unk_1001D7C80);
  v16 = v8[2];
  v16(v12, v14, v7);
  v17 = v21;
  *a2 = v23;
  *(a2 + 8) = v17;
  *(a2 + 16) = v22;
  v18 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v16((a2 + *(v18 + 48)), v12, v7);
  v19 = v8[1];

  v19(v14, v7);
  v19(v12, v7);
}

uint64_t sub_1000D47B8@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v89 = v1;
  v90 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v87 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000341C(&qword_10025C760, &unk_1001D1830);
  v12 = *(v11 - 8);
  v88 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v84 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v83 = v81 - v17;
  v18 = __chkstk_darwin(v16);
  v82 = v81 - v19;
  __chkstk_darwin(v18);
  v86 = v81 - v20;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x2065736F706D6F43;
  v21._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  v22._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v91 = String.init(localized:table:bundle:locale:comment:)();
  v92 = v24;
  v81[3] = sub_10002AC34();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v30 = Text.bold()();
  v32 = v31;
  v34 = v33;
  sub_10002A984(v25, v27, v29 & 1);

  LODWORD(v91) = static HierarchicalShapeStyle.primary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_10002A984(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v91 = v35;
  v92 = v37;
  v93 = v25 & 1;
  v94 = v40;
  v95 = KeyPath;
  v96 = 1;
  v42 = v87;
  static ParagraphTypesetting.balanced.getter();
  v81[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v81[1] = sub_10004882C();
  v43 = v86;
  View.paragraphTypesetting(_:isEnabled:)();
  v44 = *(v90 + 8);
  v90 += 8;
  v44(v42, v89);
  sub_10002A984(v35, v37, v25 & 1);

  LOBYTE(v32) = static Edge.Set.bottom.getter();
  v45 = EdgeInsets.init(_all:)();
  v46 = v43 + *(v88 + 44);
  *v46 = v32;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v91 = sub_100149E4C(v45);
  v92 = v51;
  v52 = Text.init<A>(_:)();
  v54 = v53;
  v56 = v55;
  LODWORD(v91) = static HierarchicalShapeStyle.secondary.getter();
  v57 = Text.foregroundStyle<A>(_:)();
  v59 = v58;
  LOBYTE(v37) = v60;
  sub_10002A984(v52, v54, v56 & 1);

  static Font.callout.getter();
  v61 = Text.font(_:)();
  v63 = v62;
  LOBYTE(v54) = v64;
  v66 = v65;

  sub_10002A984(v57, v59, v37 & 1);

  v67 = swift_getKeyPath();
  v91 = v61;
  v92 = v63;
  v93 = v54 & 1;
  v94 = v66;
  v95 = v67;
  v96 = 1;
  v68 = v87;
  static ParagraphTypesetting.balanced.getter();
  v69 = v82;
  View.paragraphTypesetting(_:isEnabled:)();
  v44(v68, v89);
  sub_10002A984(v61, v63, v54 & 1);

  LOBYTE(v52) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v70 = v69 + *(v88 + 44);
  *v70 = v52;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = v86;
  v76 = v83;
  sub_1000081F8(v86, v83, &qword_10025C760, &unk_1001D1830);
  v77 = v84;
  sub_1000081F8(v69, v84, &qword_10025C760, &unk_1001D1830);
  v78 = v85;
  sub_1000081F8(v76, v85, &qword_10025C760, &unk_1001D1830);
  v79 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v77, v78 + *(v79 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v69, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v75, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v77, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v76, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_1000D4E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v25 = &v23 - v4;
  v26 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v24 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v23 - v13;
  static ToolbarItemPlacement.cancellationAction.getter();
  v30 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v29 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v15 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v16 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v17 = *(v27 + 48);
  v19 = v24;
  v18 = v25;
  (*(v11 + 16))(v25, v14, v24);
  v20 = &v18[v17];
  v21 = v26;
  (*(v5 + 16))(v20, v8, v26);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v8, v21);
  return (*(v11 + 8))(v14, v19);
}

uint64_t sub_1000D522C(uint64_t a1)
{
  v2 = type metadata accessor for ModelResponseView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000DDF2C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ModelResponseView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000DDF94(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ModelResponseView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

__n128 sub_1000D539C@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(type metadata accessor for ModelResponseView(0) + 40);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v8 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v9 = Text.init(_:tableName:bundle:comment:)();
    v28 = v10 & 1;
    v16[8] = 1;
    v20 = v9;
    v21 = v11;
    v22 = v10 & 1;
    *v23 = v19[0];
    *&v23[3] = *(v19 + 3);
    v24 = v12;
    v25 = v17;
    v26 = v18;
    v27 = 1;
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
    sub_1000405A4(v29);
    LOBYTE(v19[0]) = 1;
    v28 = v29[24];
    LOBYTE(v17) = 0;
    v20 = v13;
    v21 = 0;
    v22 = 1;
    v24 = *v29;
    v25 = *&v29[8];
    LOBYTE(v26) = v29[24];
    *(&v26 + 1) = v30;
    v27 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800);
  _ConditionalContent<>.init(storage:)();
  v14 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v14;
  *(a1 + 64) = v32;
  result = *&v29[16];
  *a1 = *v29;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000D5604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 543519573;
  v9._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  v12 = LocalizedStringKey.init(stringInterpolation:)();
  v45 = v13;
  v46 = v12;
  LODWORD(v47) = v14;
  v44 = v15;
  v16 = type metadata accessor for ModelResponseView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1000DDF2C(a1, &v44 - v19, type metadata accessor for ModelResponseView);
  v20 = *(v17 + 80);
  v21 = swift_allocObject();
  sub_1000DDF94(&v44 - v19, v21 + ((v20 + 16) & ~v20), type metadata accessor for ModelResponseView);
  v47 = v6;
  v22 = Button<>.init(_:action:)();
  __chkstk_darwin(v22);
  v23 = &v44 - v19;
  sub_1000DDF2C(a1, &v44 - v19, type metadata accessor for ModelResponseView);
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  v25 = (v20 + 32) & ~v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_1000DDF94(v23, v26 + v25, type metadata accessor for ModelResponseView);
  v27 = type metadata accessor for TaskPriority();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v44 - v30;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v45 = type metadata accessor for _TaskModifier2();
    v46 = &v44;
    v44 = *(v45 - 8);
    v32 = *(v44 + 64);
    __chkstk_darwin(v45);
    v34 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v52 = 0xD00000000000003ALL;
    v53 = 0x80000001001E6290;
    v51 = 149;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    __chkstk_darwin(v36);
    (*(v28 + 16))(&v44 - v30, v31, v27);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v28 + 8))(v31, v27);
    v37 = v50;
    (*(v48 + 32))(v50, v47, v49);
    v38 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v44 + 32))(v37 + *(v38 + 36), v34, v45);
  }

  else
  {
    v40 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v41 = v50;
    v42 = (v50 + *(v40 + 36));
    v43 = type metadata accessor for _TaskModifier();
    (*(v28 + 32))(&v42[*(v43 + 20)], &v44 - v30, v27);
    *v42 = &unk_1001D7CE8;
    *(v42 + 1) = v26;
    return (*(v48 + 32))(v41, v47, v49);
  }
}

uint64_t sub_1000D5BE0(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModelResponseView(0);
  v8 = (a1 + v7[7]);
  v9 = v8[1];
  v21[0] = *v8;
  v22 = v21[0];
  v23 = v9;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(0, 0, 0);

  v10 = v7[10];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v11 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v6, v2);
  if ((v11 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v13 = a1 + v7[11];
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);
    v22 = v21[0];
    v23 = v9;
    State.wrappedValue.getter();
    v16 = v21[1];
    swift_getKeyPath();
    v22 = v16;
    sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v16 + 96);
    if (v17 == 255)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v19 = *(v16 + 72);
      v18 = *(v16 + 80);
      v20 = *(v16 + 88);
      sub_10000F3F4(v19, v18, v20, *(v16 + 96));

      if (v17)
      {
        sub_1000278C0(v19, v18, v20, v17);
        v18 = 0;
        v20 = 0;
      }

      v14(v18, v20);
    }
  }

  return result;
}

uint64_t sub_1000D5EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D5F74, v5, v4);
}

uint64_t sub_1000D5F74()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = (v2 + *(type metadata accessor for ModelResponseView(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v6 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [Strong resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D6058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for ModelResponseView(0);
  v91 = *(v3 - 8);
  v4 = *(v91 + 64);
  __chkstk_darwin(v3);
  *&v92 = v5;
  *&v93 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10000341C(&qword_1002618D0, &qword_1001D7DC8);
  v88 = *(v89 - 8);
  v6 = *(v88 + 64);
  __chkstk_darwin(v89);
  v8 = &v76 - v7;
  v86 = sub_10000341C(&qword_1002618D8, &qword_1001D7DD0);
  v9 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = &v76 - v10;
  v90 = sub_10000341C(&qword_1002618E0, &qword_1001D7DD8);
  v11 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v13 = &v76 - v12;
  v81 = sub_10000341C(&qword_1002618E8, &qword_1001D7DE0);
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v76 - v15;
  v78 = sub_10000341C(&qword_1002618F0, &qword_1001D7DE8);
  v16 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v77 = &v76 - v17;
  v96 = sub_10000341C(&qword_1002618F8, &qword_1001D7DF0);
  v18 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v82 = &v76 - v19;
  v97 = sub_10000341C(&qword_100261900, &qword_1001D7DF8);
  v84 = *(v97 - 8);
  v20 = *(v84 + 64);
  __chkstk_darwin(v97);
  v83 = &v76 - v21;
  v94 = sub_10000341C(&qword_100261908, &qword_1001D7E00);
  v22 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v24 = &v76 - v23;
  v95 = type metadata accessor for InputWarningView(0);
  v25 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v3;
  v28 = (a1 + *(v3 + 28));
  v30 = *v28;
  v29 = v28[1];
  *&v104 = *v28;
  *(&v104 + 1) = v29;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v31 = sub_100037954();

  if (v31)
  {
    if (qword_10025A810 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for LocalizedStringResource();
    v34 = sub_10000F34C(v33, qword_1002771D0);
    (*(*(v33 - 8) + 16))(v27, v34, v33);
    sub_1000DDF2C(v27, v24, type metadata accessor for InputWarningView);
    swift_storeEnumTagMultiPayload();
    sub_1000DDA04(&qword_100261960, type metadata accessor for InputWarningView);
    v35 = sub_1000DEAE8();
    *&v104 = v96;
    *(&v104 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_1000DEC58(v27, type metadata accessor for InputWarningView);
  }

  v76 = v24;
  __chkstk_darwin(v32);
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_100261910, &qword_1001D7E08);
  sub_1000DE86C();
  ScrollView.init(_:showsIndicators:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v87;
  (*(v88 + 32))(v87, v8, v89);
  v38 = (v37 + *(v86 + 36));
  v39 = v109;
  v38[4] = v108;
  v38[5] = v39;
  v38[6] = v110;
  v40 = v105;
  *v38 = v104;
  v38[1] = v40;
  v41 = v107;
  v38[2] = v106;
  v38[3] = v41;
  v89 = a1;
  v42 = v93;
  sub_1000DDF2C(a1, v93, type metadata accessor for ModelResponseView);
  v43 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v44 = swift_allocObject();
  sub_1000DDF94(v42, v44 + v43, type metadata accessor for ModelResponseView);
  sub_10002A894(v37, v13, &qword_1002618D8, &qword_1001D7DD0);
  v45 = v13;
  v46 = &v13[*(v90 + 36)];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v46 + 2) = sub_1000DE978;
  *(v46 + 3) = v44;
  v99 = v30;
  v100 = v29;
  State.wrappedValue.getter();
  v47 = v102;
  swift_getKeyPath();
  v99 = v47;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v47 + 72);
  v48 = *(v47 + 80);
  v50 = *(v47 + 88);
  v51 = *(v47 + 96);
  sub_10002879C(v49, v48, v50, *(v47 + 96));

  if (v51 == 255)
  {
    __break(1u);
    return result;
  }

  v52 = v76;
  if (v51 || v49 != 5)
  {
    goto LABEL_11;
  }

  if (!v50)
  {
    sub_10000F3F4(v49, v48, 0, 0);
LABEL_11:
    v53 = v52;
    v55 = sub_100106A3C();
    v54 = v56;
    sub_1000278C0(v49, v48, v50, v51);
    v48 = v55;
    goto LABEL_12;
  }

  v53 = v76;
  v54 = v50;
LABEL_12:
  v99 = v48;
  v100 = v54;
  sub_1000DE9A4();
  sub_10002AC34();
  v57 = v79;
  View.navigationTitle<A>(_:)();

  sub_10000F500(v45, &qword_1002618E0, &qword_1001D7DD8);
  v58 = static Edge.Set.top.getter();
  if (qword_10025A798 != -1)
  {
    swift_once();
  }

  v59 = byte_100261558;
  v60 = 0uLL;
  v61 = 0uLL;
  if ((byte_100261558 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v61 + 1) = v62;
    *(&v60 + 1) = v63;
  }

  v92 = v61;
  v93 = v60;
  v64 = v77;
  (*(v80 + 32))(v77, v57, v81);
  v65 = v64 + *(v78 + 36);
  *v65 = v58;
  *(v65 + 24) = v92;
  *(v65 + 8) = v93;
  *(v65 + 40) = v59;
  v66 = v82;
  sub_10002A894(v64, v82, &qword_1002618F0, &qword_1001D7DE8);
  v67 = (v89 + *(v85 + 36));
  v69 = *v67;
  v68 = v67[1];
  v102 = v69;
  v103 = v68;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v70 = v101;
  v71 = sub_1000DEAE8();
  v72 = v83;
  v73 = v96;
  View.inlineFeedback(controller:completion:)();

  sub_10000F500(v66, &qword_1002618F8, &qword_1001D7DF0);
  v74 = v84;
  v75 = v97;
  (*(v84 + 16))(v53, v72, v97);
  swift_storeEnumTagMultiPayload();
  sub_1000DDA04(&qword_100261960, type metadata accessor for InputWarningView);
  v99 = v73;
  v100 = v71;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v74 + 8))(v72, v75);
}

uint64_t sub_1000D6CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10000341C(&qword_100261968, &unk_1001D7E20);
  return sub_1000D6D18(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1000D6D18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v155 = a2;
  v3 = type metadata accessor for FeedbackView();
  v152 = *(v3 - 8);
  v153 = v3;
  v4 = *(v152 + 64);
  v5 = __chkstk_darwin(v3);
  v139 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v132 - v7;
  v8 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v154 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v161 = &v132 - v12;
  v145 = sub_10000341C(&qword_100261970, &qword_1001D7E30);
  v13 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v147 = (&v132 - v14);
  v134 = type metadata accessor for ScrollBounceBehavior();
  v133 = *(v134 - 8);
  v15 = *(v133 + 64);
  __chkstk_darwin(v134);
  *&v137 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10000341C(&qword_100261978, &qword_1001D7E38);
  v132 = *(v144 - 8);
  v17 = *(v132 + 64);
  __chkstk_darwin(v144);
  v136 = &v132 - v18;
  v146 = sub_10000341C(&qword_100261980, &qword_1001D7E40);
  v135 = *(v146 - 8);
  v19 = *(v135 + 64);
  __chkstk_darwin(v146);
  *(&v137 + 1) = &v132 - v20;
  v21 = sub_10000341C(&qword_100261988, &qword_1001D7E48);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v151 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v160 = &v132 - v25;
  v143 = type metadata accessor for Divider();
  *(&v142 + 1) = *(v143 - 8);
  v26 = *(*(&v142 + 1) + 64);
  __chkstk_darwin(v143);
  *&v142 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v159 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v162 = &v132 - v32;
  v33 = type metadata accessor for ActionButtonView(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000341C(&qword_100261990, &qword_1001D7E58);
  v149 = *(v37 - 8);
  v150 = v37;
  v38 = *(v149 + 64);
  v39 = __chkstk_darwin(v37);
  v158 = &v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v132 - v41;
  sub_1000D81D8(v36);
  v138 = type metadata accessor for ModelResponseView(0);
  v43 = *(v138 + 28);
  v141 = a1;
  v44 = (a1 + v43);
  v45 = v44[1];
  v163 = *v44;
  v46 = v163;
  v164 = v45;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  type metadata accessor for RewritingModel();
  sub_1000DDA04(&qword_100261998, type metadata accessor for ActionButtonView);
  v156 = sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  v157 = v42;
  v47 = v45;
  View.environment<A>(_:)();

  sub_1000DEC58(v36, type metadata accessor for ActionButtonView);
  v163 = v46;
  v164 = v45;
  State.wrappedValue.getter();
  v48 = v167;
  swift_getKeyPath();
  v163 = v48;
  v49 = sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v148 = *(v48 + 136);

  v50 = v142;
  Divider.init()();
  v51 = *(&v142 + 1);
  v52 = v162;
  v53 = v50;
  v54 = v143;
  (*(*(&v142 + 1) + 32))(v162, v53, v143);
  (*(v51 + 56))(v52, 0, 1, v54);
  v163 = v46;
  v164 = v45;
  State.wrappedValue.getter();
  v55 = v167;
  swift_getKeyPath();
  v163 = v55;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = &qword_100260000;
  if (*(v55 + 96))
  {

LABEL_7:
    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v68 = v167;
    swift_getKeyPath();
    v163 = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *(v68 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    v70 = v69;

    type metadata accessor for CommonUIManager();
    sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    v71 = Environment.init<A>(_:)();
    v72 = v147;
    *v147 = v71;
    *(v72 + 8) = v73 & 1;
    v72[2] = v69;
    *(v72 + 24) = 0;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_1002619A0, &qword_1001D7E88);
    v74 = sub_100007120(&qword_1002619A8, &qword_100261978, &qword_1001D7E38);
    v163 = v144;
    v164 = v74;
    swift_getOpaqueTypeConformance2();
    sub_1000DECC0();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v57 = v136;
  v58 = v137;
  v59 = *(v55 + 72);

  if (v59 != 9)
  {
    goto LABEL_7;
  }

  v143 = v49;
  v60 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v60);
  *(&v132 - 2) = v141;
  sub_10000341C(&qword_1002619C8, &qword_1001D7F98);
  sub_1000DEDD8();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v61 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v61)
  {
    Axis.Set.init(rawValue:)();
  }

  v62 = sub_100007120(&qword_1002619A8, &qword_100261978, &qword_1001D7E38);
  v63 = *(&v137 + 1);
  v64 = v144;
  View.scrollBounceBehavior(_:axes:)();
  (*(v133 + 8))(v58, v134);
  (*(v132 + 8))(v57, v64);
  v65 = v135;
  v66 = v63;
  v67 = v146;
  (*(v135 + 16))(v147, v66, v146);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_1002619A0, &qword_1001D7E88);
  v163 = v64;
  v164 = v62;
  swift_getOpaqueTypeConformance2();
  sub_1000DECC0();
  _ConditionalContent<>.init(storage:)();
  (*(v65 + 8))(*(&v137 + 1), v67);
  v49 = v143;
  v56 = &qword_100260000;
LABEL_8:
  v75 = type metadata accessor for FeedbackFeatureFlags();
  v165 = v75;
  v166 = sub_1000DDA04(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v76 = sub_10002DB6C(&v163);
  (*(*(v75 - 8) + 104))(v76, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v75);
  LOBYTE(v75) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v163);
  if (v75)
  {
    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v77 = v167;
    swift_getKeyPath();
    v163 = v77;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v78 = *(v77 + 80);
    v79 = *(v77 + 88);
    v80 = *(v77 + 96);
    v146 = *(v77 + 72);
    v145 = v78;
    v144 = v79;
    LODWORD(v147) = v80;
    sub_10002879C(v146, v78, v79, v80);

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v81 = v167;
    swift_getKeyPath();
    v163 = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v82 = *(v81 + 40);
    *&v142 = *(v81 + 32);
    *(&v142 + 1) = v82;

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v83 = v167;
    swift_getKeyPath();
    v163 = v83;
    v143 = v49;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v84 = *(v83 + 56);
    *&v137 = *(v83 + 48);
    *(&v137 + 1) = v84;

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v85 = v167;
    swift_getKeyPath();
    v163 = v85;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v86 = *(v85 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v135 = *(v85 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
    v136 = v86;

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v87 = v167;
    swift_getKeyPath();
    v163 = v87;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v88 = *(v87 + v56[45]);
    if (v88)
    {
      v89 = v88;
      v90 = [v89 string];
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v91;
    }

    else
    {

      v134 = 0;
      v133 = 0xE000000000000000;
    }

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v95 = v167;
    swift_getKeyPath();
    v163 = v95;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v96 = *(v95 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v132 = *(v95 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);

    v97 = (v141 + *(v138 + 36));
    v99 = *v97;
    v98 = v97[1];
    v163 = v99;
    v164 = v98;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v100 = v167;
    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v101 = v167;
    swift_getKeyPath();
    v163 = v101;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v102 = *(v101 + 112);

    v163 = v46;
    v164 = v47;
    State.wrappedValue.getter();
    v103 = v167;
    swift_getKeyPath();
    v163 = v103;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v105 = *(v103 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v104 = *(v103 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v106 = v139;
    *(v139 + 25) = 0;
    v107 = v153;
    v108 = *(v153 + 92);
    *(v106 + v108) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    v94 = v107;
    swift_storeEnumTagMultiPayload();
    v109 = v145;
    *(v106 + 128) = v146;
    *(v106 + 136) = v109;
    *(v106 + 144) = v144;
    v110 = v142;
    v111 = v137;
    *(v106 + 152) = v147;
    *(v106 + 24) = v111;
    *(v106 + 8) = v110;
    v112 = v136;
    *(v106 + 40) = v135;
    *(v106 + 48) = v112;
    *(v106 + 56) = 0;
    *(v106 + 64) = 0;
    v113 = v133;
    *(v106 + 72) = v134;
    *(v106 + 80) = v113;
    *(v106 + 88) = v132;
    *(v106 + 96) = v96;
    *v106 = v100;
    *(v106 + 153) = v102;
    *(v106 + 154) = 1;
    *(v106 + 156) = 0;
    v167 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v114 = v164;
    *(v106 + 208) = v163;
    *(v106 + 160) = 0u;
    *(v106 + 176) = 0u;
    *(v106 + 192) = 0;
    *(v106 + 104) = _swiftEmptyArrayStorage;
    *(v106 + 112) = _swiftEmptyArrayStorage;
    *(v106 + 120) = _swiftEmptyArrayStorage;
    *(v106 + 216) = v114;
    *(v106 + 224) = v105;
    *(v106 + 232) = v104;
    v115 = v140;
    sub_1000DDF94(v106, v140, type metadata accessor for FeedbackView);
    v116 = v115;
    v93 = v161;
    sub_1000DDF94(v116, v161, type metadata accessor for FeedbackView);
    v92 = 0;
  }

  else
  {
    v92 = 1;
    v93 = v161;
    v94 = v153;
  }

  v117 = v148;
  (*(v152 + 56))(v93, v92, 1, v94);
  LODWORD(v156) = (v117 & 2) == 0;
  v119 = v149;
  v118 = v150;
  v120 = *(v149 + 16);
  v121 = v158;
  v120(v158, v157, v150);
  v122 = v93;
  v123 = v159;
  sub_1000081F8(v162, v159, &unk_100264220, &qword_1001D7E50);
  v124 = v160;
  v125 = v151;
  sub_1000081F8(v160, v151, &qword_100261988, &qword_1001D7E48);
  v126 = v122;
  v127 = v154;
  sub_1000081F8(v126, v154, &qword_10025DFB0, &qword_1001D33E0);
  v128 = v155;
  v120(v155, v121, v118);
  v129 = sub_10000341C(&qword_1002619C0, &qword_1001D7E90);
  v128[v129[12]] = v156;
  sub_1000081F8(v123, &v128[v129[16]], &unk_100264220, &qword_1001D7E50);
  sub_1000081F8(v125, &v128[v129[20]], &qword_100261988, &qword_1001D7E48);
  sub_1000081F8(v127, &v128[v129[24]], &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v161, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v124, &qword_100261988, &qword_1001D7E48);
  sub_10000F500(v162, &unk_100264220, &qword_1001D7E50);
  v130 = *(v119 + 8);
  v130(v157, v118);
  sub_10000F500(v127, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v125, &qword_100261988, &qword_1001D7E48);
  sub_10000F500(v159, &unk_100264220, &qword_1001D7E50);
  return (v130)(v158, v118);
}

uint64_t sub_1000D81D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  type metadata accessor for RewritingModel();
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v10 & 1;
  type metadata accessor for PresentationModel();
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel);
  *(a1 + 16) = Environment.init<A>(_:)();
  *(a1 + 24) = v11 & 1;
  v18 = 0;
  v19 = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v12 = v21;
  v13 = v22;
  *(a1 + 32) = v20;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  LOBYTE(v18) = 0;
  State.init(wrappedValue:)();
  v14 = v21;
  *(a1 + 56) = v20;
  *(a1 + 64) = v14;
  v15 = *(type metadata accessor for ActionButtonView(0) + 32);
  static PresentationDetent.medium.getter();
  (*(v3 + 16))(v7, v9, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(v9, v2);
}

double sub_1000D842C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + *(type metadata accessor for ModelResponseView(0) + 28));
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v11 = v9;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v9 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v4 = v3;

  type metadata accessor for CommonUIManager();
  sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  v5 = Environment.init<A>(_:)();
  v7 = v6;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v10[71] = v15;
  *&v10[55] = v14;
  *&v10[23] = v12;
  *&v10[7] = v11;
  *&v10[87] = v16;
  *&v10[103] = v17;
  *&v10[39] = v13;
  *(a2 + 89) = *&v10[64];
  *(a2 + 105) = *&v10[80];
  *(a2 + 121) = *&v10[96];
  *(a2 + 25) = *v10;
  *(a2 + 41) = *&v10[16];
  result = *&v10[32];
  *(a2 + 57) = *&v10[32];
  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = 1;
  *(a2 + 136) = *(&v17 + 1);
  *(a2 + 73) = *&v10[48];
  return result;
}

uint64_t sub_1000D864C(uint64_t a1)
{
  v2 = type metadata accessor for ModelResponseView(0);
  v3 = (a1 + *(v2 + 32));
  v10 = *v3;
  v11 = *(v3 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if ((v9 & 1) == 0)
  {
    v5 = (a1 + *(v2 + 28));
    v6 = *v5;
    v7 = v5[1];
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v8 = sub_100037954();

    if ((v8 & 1) == 0)
    {
      State.wrappedValue.getter();
      sub_1000C2BCC(0, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1000D8750(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = (a3 + *(type metadata accessor for ModelResponseView(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 8);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    v14 = v20;
  }

  swift_getKeyPath();
  v20 = v14;
  sub_1000DDA04(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v14 + 81);

  if (v10 != v16)
  {

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
    }

    sub_1001537FC(v10);
  }

  return result;
}

uint64_t sub_1000D89DC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10000341C(&qword_1002615D8, &qword_1001D77E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.confirmationAction.getter();
  v11 = a1;
  sub_10000341C(&qword_1002618A8, &qword_1001D7D50);
  sub_1000DE6C0();
  ToolbarItem<>.init(placement:content:)();
  sub_100007120(&qword_1002615E0, &qword_1002615D8, &qword_1001D77E0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000D8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for ButtonRole();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v54 = &v51 - v8;
  v9 = sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v52 = &v51 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  __chkstk_darwin(v12);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10000341C(&qword_1002618C0, &qword_1001D7D58);
  v15 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v61 = &v51 - v16;
  v66 = sub_10000341C(&qword_1002618C8, &qword_1001D7D70);
  v17 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v19 = &v51 - v18;
  v20 = type metadata accessor for ModelResponseView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v60 = *(v23 - 8);
  v24 = *(v60 + 64);
  __chkstk_darwin(v23);
  v26 = &v51 - v25;
  v27 = a1;
  v28 = (a1 + *(v20 + 28));
  v30 = *v28;
  v29 = v28[1];
  v67 = v30;
  v68 = v29;
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v31 = sub_100037954();

  if (v31)
  {
    v63 = LocalizedStringKey.init(stringLiteral:)();
    sub_1000DDF2C(a1, &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModelResponseView);
    v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v33 = swift_allocObject();
    sub_1000DDF94(&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for ModelResponseView);
    Button<>.init(_:action:)();
    v34 = v60;
    (*(v60 + 16))(v19, v26, v23);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_1000DE778();
    _ConditionalContent<>.init(storage:)();
    return (*(v34 + 8))(v26, v23);
  }

  v51 = v21;
  v60 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1 + *(v20 + 24);
  v37 = *v36;
  v38 = *(v36 + 8);

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v57;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v58 + 8))(v40, v59);
    v37 = v67;
  }

  if (!v37)
  {
    v50 = 1;
LABEL_11:
    v49 = v61;
    goto LABEL_12;
  }

  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 != 6 && !sub_10016FEDC())
  {

    v50 = 1;
    goto LABEL_11;
  }

  static ButtonRole.confirm.getter();
  v43 = v60;
  sub_1000DDF2C(v27, v60, type metadata accessor for ModelResponseView);
  v44 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v45 = swift_allocObject();
  sub_1000DDF94(v43, v45 + v44, type metadata accessor for ModelResponseView);
  v46 = v54;
  Button<>.init(role:action:)();
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
  v47 = v52;
  v48 = v56;
  View.accessibilityIdentifier(_:)();

  (*(v55 + 8))(v46, v48);
  v49 = v61;
  sub_10002A894(v47, v61, &unk_100262BE0, &unk_1001D7D60);
  v50 = 0;
LABEL_12:
  (*(v62 + 56))(v49, v50, 1, v63);
  sub_1000081F8(v49, v19, &qword_1002618C0, &qword_1001D7D58);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  sub_1000DE778();
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v49, &qword_1002618C0, &qword_1001D7D58);
}

uint64_t sub_1000D9430(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ModelResponseView(0) + 28));
  v5 = *v1;
  v6 = v1[1];
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  if (*(v4 + 144) == 1)
  {
    *(v4 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D9590(uint64_t a1)
{
  v2 = type metadata accessor for ModelResponseView(0);
  v3 = (a1 + *(v2 + 32));
  v9 = *v3;
  v10 = *(v3 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v4 = (a1 + *(v2 + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(2, 0, 0);

  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000D9814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000D9970()
{
  sub_1000DA048(319, &qword_100261658, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000DA048(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000D9FE4(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000DA048(319, &unk_100261660, type metadata accessor for RewritingModel, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10006A8F0();
          if (v4 <= 0x3F)
          {
            sub_1000DA048(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_1000DA048(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v6 <= 0x3F)
              {
                sub_1000D9FE4(319, &qword_10025C560, &unk_10025C568, &unk_1001D7870, &type metadata accessor for Optional);
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

uint64_t sub_1000D9BCC()
{
  sub_100003E34(&qword_100261568, &qword_1001D7798);
  sub_100003E34(&qword_100261560, &qword_1001D7790);
  sub_1000D3048();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000D9D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000D9E60()
{
  sub_1000DA048(319, &unk_100261710, type metadata accessor for RewritingModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000D9FE4(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000D9FE4(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10006A8F0();
        if (v3 <= 0x3F)
        {
          sub_1000DA048(319, &unk_10025DE48, &type metadata accessor for PresentationDetent, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000D9FE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1000DA048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000DA0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DA140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000DA1D0()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DA258@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v48 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v48);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  (*(v9 + 16))(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v49 = String.init(localized:)();
  v50 = v10;
  sub_10002AC34();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  LODWORD(v49) = static HierarchicalShapeStyle.secondary.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10002A984(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v49 = v16;
  v50 = v18;
  v20 &= 1u;
  v51 = v20;
  v52 = v22;
  v53 = KeyPath;
  v54 = 1;
  static ParagraphTypesetting.balanced.getter();
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  v24 = v47;
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v2 + 8))(v5, v48);
  sub_10002A984(v16, v18, v20);

  v25 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v24 + *(sub_10000341C(&qword_10025C760, &unk_1001D1830) + 36);
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v35 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  result = sub_10000341C(&qword_100261880, &qword_1001D7C28);
  v45 = v24 + *(result + 36);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

double sub_1000DA5A4@<D0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = type metadata accessor for ParagraphTypesetting();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  LODWORD(v25) = static HierarchicalShapeStyle.secondary.getter();
  v10 = Text.foregroundStyle<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10002A984(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v25 = v10;
  v26 = v12;
  v14 &= 1u;
  v27 = v14;
  v28 = v16;
  v29 = KeyPath;
  v30 = 1;
  static ParagraphTypesetting.balanced.getter();
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  v18 = v23;
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v1 + 8))(v4, v24);
  sub_10002A984(v10, v12, v14);

  v19 = static Edge.Set.bottom.getter();
  v20 = v18 + *(sub_10000341C(&qword_10025C760, &unk_1001D1830) + 36);
  *v20 = v19;
  result = 0.0;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  return result;
}

void *sub_1000DA7F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    v6 = v18;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v18 = v6;
  sub_1000DDA04(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v6 + 32);
  v10 = *(v6 + 40);

  v11 = &_swiftEmptySetSingleton;
  if ((v10 & 1) == 0 && v9 == 1)
  {
LABEL_6:
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    v12 = *(type metadata accessor for PresentationDetent() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001CF9E0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    v11 = sub_10000771C(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  return v11;
}

uint64_t sub_1000DAAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v98 = a2;
  v2 = type metadata accessor for ActionButtonView(0);
  v95 = *(v2 - 8);
  v3 = *(v95 + 64);
  __chkstk_darwin(v2 - 8);
  v96 = v4;
  v97 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EnvironmentValues();
  v81 = *(v82 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = type metadata accessor for SmallIconTitleLabelStyle(0);
  v7 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_100261848, &unk_1001D7AB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = sub_10000341C(&qword_100261830, &qword_1001D7AA8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v79 - v17;
  *&v89 = sub_10000341C(&qword_100261820, &qword_1001D7AA0);
  v19 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  *&v91 = &v79 - v20;
  v90 = sub_10000341C(&qword_100261810, &qword_1001D7A98);
  v21 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v92 = &v79 - v22;
  v93 = sub_10000341C(&qword_1002617F8, &unk_1001D7A88);
  v23 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v94 = &v79 - v24;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = *(v10 + 48);
  *&v13[v28] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  v29 = v84;
  swift_storeEnumTagMultiPayload();
  *v13 = 0;
  *(v13 + 1) = v25;
  *(v13 + 2) = v27;
  __asm { FMOV            V0.2D, #10.0 }

  *(v13 + 24) = _Q0;
  v13[40] = 0;
  sub_1000DB5A4(v29, &v13[*(v10 + 44)]);
  v35 = *(v29 + 40);
  v36 = *(v29 + 48);
  v85 = *(v29 + 32);
  v102 = v85;
  v88 = v35;
  LOBYTE(v103) = v35;
  v87 = v36;
  v104 = v36;
  v86 = sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v37 = v100;
  v38 = v101;
  *v9 = v99;
  *(v9 + 2) = v37;
  v9[24] = v38;
  v39 = *(v83 + 20);
  *&v9[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_100261850, &qword_100261848, &unk_1001D7AB8);
  sub_1000DDA04(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
  View.labelStyle<A>(_:)();
  sub_1000DEC58(v9, type metadata accessor for SmallIconTitleLabelStyle);
  v40 = v13;
  v41 = v18;
  sub_10000F500(v40, &qword_100261848, &unk_1001D7AB8);
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v43 = *(&v99 + 1);
  v42 = v99;
  v44 = v101;
  v106 = v100;
  v45 = &v18[*(sub_10000341C(&qword_100261840, &qword_1001D7AB0) + 36)];
  *v45 = 0x10000;
  *(v45 + 1) = v42;
  *(v45 + 2) = v43;
  v45[24] = v106;
  *(v45 + 25) = *v105;
  *(v45 + 7) = *&v105[3];
  *(v45 + 4) = v44;
  *&v18[*(v15 + 44)] = 256;
  v46 = *v29;
  v47 = *(v29 + 8);

  v48 = v46;
  if ((v47 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v80;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v81 + 8))(v50, v82);
    v48 = v99;
  }

  swift_getKeyPath();
  *&v99 = v48;
  sub_1000DDA04(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v48 + 112);

  if (v51)
  {
    goto LABEL_8;
  }

  if ((v47 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v53 = v80;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v81 + 8))(v53, v82);
    v46 = v99;
  }

  swift_getKeyPath();
  *&v99 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = *(v46 + 120);
  swift_errorRetain();

  if (v54)
  {

LABEL_8:
    v55 = 1;
    goto LABEL_9;
  }

  v55 = 0;
LABEL_9:
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  v58 = v91;
  sub_10002A894(v41, v91, &qword_100261830, &qword_1001D7AA8);
  v59 = (v58 + *(v89 + 36));
  *v59 = KeyPath;
  v59[1] = sub_10002AAC0;
  v59[2] = v57;
  v60 = static Edge.Set.bottom.getter();
  if (qword_10025A790 != -1)
  {
    swift_once();
  }

  v61 = byte_100261548;
  v62 = 0uLL;
  v63 = 0uLL;
  if ((byte_100261548 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v63 + 1) = v64;
    *(&v62 + 1) = v65;
  }

  v83 = v63;
  v89 = v62;
  v66 = v58;
  v67 = v92;
  sub_10002A894(v66, v92, &qword_100261820, &qword_1001D7AA0);
  v68 = v67 + *(v90 + 36);
  *v68 = v60;
  *(v68 + 24) = v83;
  *(v68 + 8) = v89;
  *(v68 + 40) = v61;
  v102 = v85;
  LOBYTE(v103) = v88;
  v104 = v87;
  State.projectedValue.getter();
  v91 = v99;
  v69 = v100;
  v70 = v101;
  v71 = v94;
  sub_10002A894(v67, v94, &qword_100261810, &qword_1001D7A98);
  v72 = v71 + *(v93 + 36);
  *v72 = v91;
  *(v72 + 16) = v69;
  *(v72 + 24) = v70;
  v73 = *(v29 + 64);
  LOBYTE(v102) = *(v29 + 56);
  v103 = v73;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v74 = v97;
  sub_1000DDF2C(v29, v97, type metadata accessor for ActionButtonView);
  v75 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v76 = swift_allocObject();
  sub_1000DDF94(v74, v76 + v75, type metadata accessor for ActionButtonView);
  sub_10000341C(&unk_10025E090, &qword_1001D3660);
  sub_1000DD65C();
  v77 = sub_10006BC84();
  *&v99 = &type metadata for SharingActivityView;
  *(&v99 + 1) = v77;
  swift_getOpaqueTypeConformance2();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10000F500(v71, &qword_1002617F8, &unk_1001D7A88);
}

uint64_t sub_1000DB5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v73 = type metadata accessor for TapGesture();
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v73);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000341C(&qword_100261858, &qword_1001D7BE0);
  v74 = *(v69 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v69);
  v72 = &v62 - v6;
  v79 = sub_10000341C(&qword_100261860, &qword_1001D7BE8);
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  v8 = __chkstk_darwin(v79);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v62 - v10;
  v64 = type metadata accessor for EnvironmentValues();
  v63 = *(v64 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_10025E0A8, &qword_1001D36A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v70 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v62 - v17;
  v18 = type metadata accessor for ActionButtonView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = sub_10000341C(&qword_10025E0B0, &qword_1001D36A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v82 = sub_10000341C(&qword_10025E0B8, &qword_1001D36B0);
  v66 = *(v82 - 8);
  v25 = *(v66 + 64);
  v26 = __chkstk_darwin(v82);
  v85 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v62 - v28;
  sub_1000DDF2C(a1, &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionButtonView);
  v30 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v81 = *(v19 + 80);
  v31 = swift_allocObject();
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DDF94(v68, v31 + v30, type metadata accessor for ActionButtonView);
  sub_10000341C(&qword_10025E0C0, &qword_1001D36B8);
  v32 = sub_10006BFC8();
  Button.init(action:label:)();
  v24[*(v21 + 36)] = 0;
  v33 = sub_10006C0D4();
  v83 = v29;
  v80 = v33;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v24, &qword_10025E0B0, &qword_1001D36A8);
  v34 = *a1;
  LOBYTE(v29) = *(a1 + 8);

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v62;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v63 + 8))(v36, v64);
  }

  v37 = sub_1000B18A4();

  v65 = v32;
  if (v37)
  {
    v38 = v68;
    sub_1000DDF2C(a1, v68, type metadata accessor for ActionButtonView);
    v39 = swift_allocObject();
    sub_1000DDF94(v38, v39 + v30, type metadata accessor for ActionButtonView);
    Button.init(action:label:)();
    v24[*(v21 + 36)] = 0;
    v40 = v85;
    View.accessibilityIdentifier(_:)();
    sub_10000F500(v24, &qword_10025E0B0, &qword_1001D36A8);
    sub_10002A894(v40, v84, &qword_10025E0B8, &qword_1001D36B0);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v38 = v68;
  }

  (*(v66 + 56))(v84, v41, 1, v82);
  sub_1000DDF2C(a1, v38, type metadata accessor for ActionButtonView);
  v42 = swift_allocObject();
  sub_1000DDF94(v38, v42 + v30, type metadata accessor for ActionButtonView);
  Button.init(action:label:)();
  v24[*(v21 + 36)] = 0;
  v43 = v85;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v24, &qword_10025E0B0, &qword_1001D36A8);
  v44 = v67;
  TapGesture.init(count:)();
  sub_1000DDF2C(a1, v38, type metadata accessor for ActionButtonView);
  v45 = v43;
  v46 = swift_allocObject();
  sub_1000DDF94(v38, v46 + v30, type metadata accessor for ActionButtonView);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1000DDD90;
  *(v47 + 24) = v46;
  v49 = v72;
  v48 = v73;
  Gesture.onEnded(_:)();

  (*(v71 + 8))(v44, v48);
  static GestureMask.all.getter();
  sub_1000DDE1C();
  sub_100007120(&qword_100261870, &qword_100261858, &qword_1001D7BE0);
  v50 = v75;
  v51 = v69;
  View.simultaneousGesture<A>(_:including:)();
  (*(v74 + 8))(v49, v51);
  sub_10000F500(v43, &qword_10025E0B8, &qword_1001D36B0);
  sub_1000081F8(v83, v43, &qword_10025E0B8, &qword_1001D36B0);
  v52 = v84;
  v53 = v70;
  sub_1000081F8(v84, v70, &qword_10025E0A8, &qword_1001D36A0);
  v54 = v76;
  v55 = v77;
  v56 = *(v77 + 16);
  v57 = v79;
  v56(v76, v50, v79);
  v58 = v78;
  sub_1000081F8(v45, v78, &qword_10025E0B8, &qword_1001D36B0);
  v59 = sub_10000341C(&qword_100261878, &qword_1001D7BF0);
  sub_1000081F8(v53, v58 + *(v59 + 48), &qword_10025E0A8, &qword_1001D36A0);
  v56((v58 + *(v59 + 64)), v54, v57);
  v60 = *(v55 + 8);
  v60(v50, v57);
  sub_10000F500(v52, &qword_10025E0A8, &qword_1001D36A0);
  sub_10000F500(v83, &qword_10025E0B8, &qword_1001D36B0);
  v60(v54, v57);
  sub_10000F500(v53, &qword_10025E0A8, &qword_1001D36A0);
  return sub_10000F500(v85, &qword_10025E0B8, &qword_1001D36B0);
}

uint64_t sub_1000DC130(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);

  v9 = v7;
  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v9 = v25[0];
  }

  swift_getKeyPath();
  v25[0] = v9;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v9 + v11, v25, &unk_10025B1C0, &unk_1001CFA90);

  if (v25[3])
  {
    sub_100028458(v25, v24);
    sub_10000F500(v25, &unk_10025B1C0, &unk_1001CFA90);
    v12 = *sub_100027874(v24, v24[3]);
    sub_10000E064(IAPayloadValueWritingToolsInteractionTypeCopy);
    sub_10000F4B4(v24);
  }

  else
  {
    sub_10000F500(v25, &unk_10025B1C0, &unk_1001CFA90);
  }

  v13 = v7;
  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v13 = v25[0];
  }

  swift_getKeyPath();
  v25[0] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v16 = v15;

  if (v15)
  {

    if ((v8 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v19 = [objc_opt_self() presentableAttributedString:v16 withAttributes:0];
      [Strong copyText:v19];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v21 = swift_unknownObjectWeakLoadStrong();

  if (v21)
  {
    [v21 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000DC648(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);

  v9 = v7;
  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v9 = v26[0];
  }

  swift_getKeyPath();
  v26[0] = v9;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v9 + v11, v26, &unk_10025B1C0, &unk_1001CFA90);

  if (v26[3])
  {
    sub_100028458(v26, v25);
    sub_10000F500(v26, &unk_10025B1C0, &unk_1001CFA90);
    v12 = sub_100027874(v25, v25[3]);
    if (qword_10025A5F8 != -1)
    {
      v23 = v12;
      swift_once();
      v12 = v23;
    }

    v13 = *v12;
    sub_10000E064(qword_100276E08);
    sub_10000F4B4(v25);
  }

  else
  {
    sub_10000F500(v26, &unk_10025B1C0, &unk_1001CFA90);
  }

  v14 = v7;
  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v14 = v26[0];
  }

  swift_getKeyPath();
  v26[0] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v14 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v17 = v16;

  if (v16)
  {

    if ((v8 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong replaceSelectionWithText:v17];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v21 = swift_unknownObjectWeakLoadStrong();

  if (v21)
  {
    [v21 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000DCBBC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000DCC30@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(19);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000DCC60(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}