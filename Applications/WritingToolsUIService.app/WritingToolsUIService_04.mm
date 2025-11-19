uint64_t sub_1000769D4()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return _swift_task_switch(sub_100076AF4, v4, v3);
}

uint64_t sub_100076AF4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000F500(v3, &unk_10025F4F0, &qword_1001D4768);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = *(v0 + 184);
    swift_getKeyPath();
    *(v0 + 168) = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal))
    {
      v7 = *(v0 + 360);

LABEL_4:
      swift_unknownObjectRelease();
LABEL_10:
      v21 = *(v0 + 344);
      v22 = *(v0 + 184);
      if (*(v22 + v21))
      {
        v23 = *(v0 + 352);
        v25 = *(v0 + 288);
        v24 = *(v0 + 296);
        v26 = *(v0 + 264);
        swift_getKeyPath();
        v27 = swift_task_alloc();
        *(v27 + 16) = v22;
        *(v27 + 24) = 0;
        *(v0 + 144) = v22;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        v28 = *(v0 + 264);

        *(v22 + v21) = 0;
      }

      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000F34C(v29, qword_100276F08);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 336);
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 67109120;
        _os_log_impl(&_mh_execute_header, v30, v31, "Undo operation invoked, did we update response content: %{BOOL}d", v34, 8u);
      }

      else
      {
      }

      v36 = *(v0 + 248);
      v35 = *(v0 + 256);
      v38 = *(v0 + 232);
      v37 = *(v0 + 240);
      v40 = *(v0 + 216);
      v39 = *(v0 + 224);
      v41 = *(v0 + 192);

      v42 = *(v0 + 8);

      return v42();
    }

    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v17 = *(v0 + 232);
    v18 = *(v0 + 184);
    swift_getKeyPath();
    *(v0 + 176) = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v18 + v14, v17, &unk_100262580, &qword_1001CFF70);
    if (v12(v17, 1, v13))
    {
      v19 = *(v0 + 360);
      v20 = *(v0 + 232);

      swift_unknownObjectRelease();
      sub_10000F500(v20, &unk_100262580, &qword_1001CFF70);
      goto LABEL_10;
    }

    v43 = *(v0 + 232);
    v44 = *(v43 + 8);
    *(v0 + 464) = v44;
    v45 = v44;
    sub_10000F500(v43, &unk_100262580, &qword_1001CFF70);
    v46 = [v45 attributedText];
    *(v0 + 472) = v46;
    [v45 range];
    v47 = [v46 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Range<>.init(_:in:)();
    LOBYTE(v47) = v48;

    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    if (v47)
    {

      goto LABEL_4;
    }

    v51 = [v45 range];
    v53 = [v46 attributedSubstringFromRange:{v51, v52}];
    *(v0 + 480) = v53;
    v54 = [v53 string];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *(v0 + 488) = v57;
    [v50 writingToolsSession:v49 didReceiveAction:3];
    v58 = v53;
    v59 = swift_task_alloc();
    *(v0 + 496) = v59;
    *v59 = v0;
    v59[1] = sub_10007784C;
    v60 = *(v0 + 184);

    return sub_1000897EC(v55, v57, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, 0, 1, v53);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 216), v3, v1);
    v8 = swift_task_alloc();
    *(v0 + 384) = v8;
    *v8 = v0;
    v8[1] = sub_1000770F8;
    v9 = *(v0 + 216);

    return sub_100097654(v0 + 16, v9);
  }
}

uint64_t sub_1000770F8()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 384);
  v5 = *v1;
  v3[49] = v0;
  v3[50] = v2[2];
  *(v3 + 51) = *(v3 + 3);
  v3[53] = v2[5];
  *(v3 + 27) = *(v3 + 3);

  v6 = v2[35];
  v7 = v2[34];
  if (v0)
  {
    v8 = sub_1000774E4;
  }

  else
  {
    v8 = sub_100077278;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100077278()
{
  [*(v0 + 360) writingToolsSession:*(v0 + 368) didReceiveAction:3];
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_100077334;
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 184);

  return sub_1000897EC(v7, v6, v4, v5, v2, v3, 1, 0);
}

uint64_t sub_100077334()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = v2[55];
  v6 = v2[53];
  v7 = v2[52];
  v8 = v2[51];

  v9 = v2[35];
  v10 = v2[34];
  if (v0)
  {
    v11 = sub_100077C10;
  }

  else
  {
    v11 = sub_1000775E0;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1000774E4()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[33];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  swift_unknownObjectRelease();

  (*(v6 + 8))(v5, v7);
  v8 = v0[49];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[24];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000775E0()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 344);
  v6 = *(v0 + 184);
  if (*(v6 + v5))
  {
    v7 = *(v0 + 456);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 264);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = 0;
    *(v0 + 144) = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = *(v0 + 264);

    *(v6 + v5) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F34C(v13, qword_100276F08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 336);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Undo operation invoked, did we update response content: %{BOOL}d", v18, 8u);
  }

  else
  {
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 192);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10007784C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  v2[63] = v0;

  v5 = v2[61];
  v6 = v2[60];
  if (v0)
  {

    v7 = v2[34];
    v8 = v2[35];
    v9 = sub_100077D0C;
  }

  else
  {
    v10 = v2[61];

    v7 = v2[34];
    v8 = v2[35];
    v9 = sub_1000779B0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000779B0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);

  swift_unknownObjectRelease();
  v5 = *(v0 + 344);
  v6 = *(v0 + 184);
  if (*(v6 + v5))
  {
    v7 = *(v0 + 504);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 264);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = 0;
    *(v0 + 144) = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = *(v0 + 264);

    *(v6 + v5) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F34C(v13, qword_100276F08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 336);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Undo operation invoked, did we update response content: %{BOOL}d", v18, 8u);
  }

  else
  {
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 192);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100077C10()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[33];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  swift_unknownObjectRelease();

  (*(v6 + 8))(v5, v7);
  v8 = v0[57];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[24];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100077D0C()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[33];

  swift_unknownObjectRelease();

  v8 = v0[63];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[24];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100077DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = *(*(sub_10000341C(&unk_10025F4F0, &qword_1001D4768) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for PromptCompletion();
  v4[22] = v6;
  v7 = *(v6 - 8);
  v4[23] = v7;
  v8 = *(v7 + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[28] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[29] = v11;
  v4[30] = v10;

  return _swift_task_switch(sub_100077F78, v11, v10);
}

uint64_t sub_100077F78()
{
  v1 = v0[20];
  v2 = &unk_10025E000;
  if ((sub_1000759BC() & 1) == 0)
  {
    v10 = v0[28];

    goto LABEL_6;
  }

  v3 = v0[27];
  v4 = v0[20];
  swift_getKeyPath();
  v0[15] = v4;
  v0[31] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[32] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v4 + v5, v3, &unk_100262580, &qword_1001CFF70);
  v6 = type metadata accessor for CompositionModel.Session(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v3, 1, v6))
  {
    v9 = v0[27];
    v8 = v0[28];

    sub_10000F500(v9, &unk_100262580, &qword_1001CFF70);
LABEL_4:
    v2 = &unk_10025E000;
LABEL_6:
    v11 = v0[20];
    if ((sub_1000759BC() & 1) == 0)
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000F34C(v12, qword_100276F08);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Redo operation invoked when canRedo is false.", v15, 2u);
      }
    }

    v16 = v0[25];
    v17 = v0[20];
    swift_getKeyPath();
    v18 = v2[143];
    v0[14] = v17;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
    swift_beginAccess();
    sub_1000081F8(v17 + v19, v16, &unk_100262580, &qword_1001CFF70);
    v20 = type metadata accessor for CompositionModel.Session(0);
    v21 = (*(*(v20 - 8) + 48))(v16, 1, v20);
    v22 = v0[25];
    if (v21)
    {
      sub_10000F500(v22, &unk_100262580, &qword_1001CFF70);
LABEL_14:
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000F34C(v23, qword_100276F08);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "GES session unexpectedly is nil.", v26, 2u);
      }

      goto LABEL_21;
    }

    v27 = *(v22 + 16);
    v28 = v0[25];

    sub_10000F500(v28, &unk_100262580, &qword_1001CFF70);
    if (!v27)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v36 = v0[27];
  v37 = *(v36 + 16);
  v0[33] = v37;

  sub_10000F500(v36, &unk_100262580, &qword_1001CFF70);
  if (!v37)
  {
    v40 = v0[28];

    goto LABEL_4;
  }

  v38 = v0[20];
  v39 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v0[34] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v65 = v7;
  if (*(v38 + v39) != 2)
  {
    swift_getKeyPath();
    v41 = swift_task_alloc();
    *(v41 + 16) = v38;
    *(v41 + 24) = 2;
    v0[16] = v38;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v38 = v0[20];
  }

  v0[35] = 0;
  swift_getKeyPath();
  v0[17] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (!Strong)
  {
LABEL_32:
    v47 = v0[34];
    v48 = v0[20];
    if (*(v48 + v47))
    {
      v50 = v0[31];
      v49 = v0[32];
      v51 = v0[28];
      swift_getKeyPath();
      v52 = swift_task_alloc();
      *(v52 + 16) = v48;
      *(v52 + 24) = 0;
      v0[18] = v48;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v53 = v0[28];

      *(v48 + v47) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000F34C(v54, qword_100276F08);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[33];
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 67109120;
      _os_log_impl(&_mh_execute_header, v55, v56, "Redo operation invoked, did we update response content: %{BOOL}d", v59, 8u);

      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
    v30 = v0[26];
    v29 = v0[27];
    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[21];

    v34 = v0[1];

    return v34();
  }

  v43 = v0[26];
  v44 = v0[20];
  swift_getKeyPath();
  v0[19] = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v4 + v5, v43, &unk_100262580, &qword_1001CFF70);
  v45 = v65(v43, 1, v6);
  v46 = v0[26];
  if (v45)
  {
    swift_unknownObjectRelease();
    sub_10000F500(v46, &unk_100262580, &qword_1001CFF70);
    goto LABEL_32;
  }

  v60 = *v46;
  v0[37] = *v46;
  v61 = v60;
  sub_10000F500(v46, &unk_100262580, &qword_1001CFF70);
  v62 = async function pointer to GenerativeExperiencesSession.redo()[1];
  v63 = swift_task_alloc();
  v0[38] = v63;
  *v63 = v0;
  v63[1] = sub_100078814;
  v64 = v0[21];

  return GenerativeExperiencesSession.redo()(v64);
}

uint64_t sub_100078814()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_100078934, v4, v3);
}

uint64_t sub_100078934()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 288);

    swift_unknownObjectRelease();
    sub_10000F500(v3, &unk_10025F4F0, &qword_1001D4768);
    v5 = *(v0 + 272);
    v6 = *(v0 + 160);
    if (*(v6 + v5))
    {
      v7 = *(v0 + 280);
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);
      v10 = *(v0 + 224);
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v6;
      *(v11 + 24) = 0;
      *(v0 + 144) = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v15 = *(v0 + 224);

      *(v6 + v5) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F34C(v16, qword_100276F08);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      _os_log_impl(&_mh_execute_header, v17, v18, "Redo operation invoked, did we update response content: %{BOOL}d", v21, 8u);
    }

    else
    {
    }

    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 168);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 192), v3, v1);
    v12 = swift_task_alloc();
    *(v0 + 312) = v12;
    *v12 = v0;
    v12[1] = sub_100078C48;
    v13 = *(v0 + 192);

    return sub_100097654(v0 + 16, v13);
  }
}

uint64_t sub_100078C48()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 312);
  v5 = *v1;
  v3[40] = v0;
  v3[41] = v2[2];
  *(v3 + 21) = *(v3 + 3);
  v3[44] = v2[5];
  *(v3 + 45) = *(v3 + 3);

  v6 = v2[30];
  v7 = v2[29];
  if (v0)
  {
    v8 = sub_100079034;
  }

  else
  {
    v8 = sub_100078DC8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100078DC8()
{
  [*(v0 + 288) writingToolsSession:*(v0 + 296) didReceiveAction:3];
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_100078E84;
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 160);

  return sub_1000897EC(v7, v6, v4, v5, v2, v3, 0, 0);
}

uint64_t sub_100078E84()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = v2[46];
  v6 = v2[44];
  v7 = v2[43];
  v8 = v2[42];

  v9 = v2[30];
  v10 = v2[29];
  if (v0)
  {
    v11 = sub_100079380;
  }

  else
  {
    v11 = sub_100079128;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100079034()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[40];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079128()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 272);
  v6 = *(v0 + 160);
  if (*(v6 + v5))
  {
    v7 = *(v0 + 384);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 224);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = 0;
    *(v0 + 144) = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = *(v0 + 224);

    *(v6 + v5) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F34C(v13, qword_100276F08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 264);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Redo operation invoked, did we update response content: %{BOOL}d", v18, 8u);
  }

  else
  {
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 168);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100079380()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[48];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079594(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100079634@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100079710(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100079808(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for UUID();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v37 = &v37 - v15;
  v16 = __chkstk_darwin(v14);
  v38 = &v37 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - v19;
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  swift_getKeyPath();
  v43 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v23, v9, &unk_100262580, &qword_1001CFF70);
  v24 = type metadata accessor for CompositionModel.Session(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v9, 1, v24))
  {
    v26 = v41;
    sub_10000F500(v9, &unk_100262580, &qword_1001CFF70);
    sub_1000081F8(v40, v7, &unk_100262580, &qword_1001CFF70);
    if (v25(v7, 1, v24) == 1)
    {
      return sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    }

    else
    {
      v32 = *v7;
      sub_100099074(v7);
      v33 = [v32 uuid];

      v34 = v37;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v38;
      (*(v26 + 32))(v38, v34, v10);
      if (qword_10025A760 != -1)
      {
        swift_once();
      }

      v36 = v39;
      (*(v26 + 16))(v39, v35, v10);
      swift_beginAccess();
      sub_10019D030(0, v36);
      swift_endAccess();
      return (*(v26 + 8))(v35, v10);
    }
  }

  else
  {
    v28 = *v9;
    sub_10000F500(v9, &unk_100262580, &qword_1001CFF70);
    v29 = [v28 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v41;
    (*(v41 + 32))(v22, v20, v10);
    if (qword_10025A760 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = qword_100277038;
    qword_100277038 = 0x8000000000000000;
    sub_1001A9BA8(v2, v22, isUniquelyReferenced_nonNull_native);
    qword_100277038 = v42;
    swift_endAccess();
    return (*(v30 + 8))(v22, v10);
  }
}

void (*sub_100079D54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1000081F8(v1 + v8, v7, &unk_100262580, &qword_1001CFF70);
  return sub_100079E84;
}

void sub_100079E84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1000081F8(*(*a1 + 96), v6, &unk_100262580, &qword_1001CFF70);
    sub_1000081F8(v7 + v4, v5, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v6, v7 + v4, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v5);
    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    sub_1000081F8(v7 + v4, v6, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v3, v7 + v4, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v6);
  }

  sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
  sub_10000F500(v3, &unk_100262580, &qword_1001CFF70);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_10007A01C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *a1;
  swift_beginAccess();
  return sub_1000081F8(v11 + v9, a4, a2, a3);
}

uint64_t sub_10007A0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_1000081F8(a2, &v13[-v9], &unk_100262580, &qword_1001CFF70);
  v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(a1 + v11, v8, &unk_100262580, &qword_1001CFF70);
  swift_beginAccess();
  sub_10009AB44(v10, a1 + v11, &unk_100262580, &qword_1001CFF70);
  swift_endAccess();
  sub_100079808(v8);
  sub_10000F500(v8, &unk_100262580, &qword_1001CFF70);
  return sub_10000F500(v10, &unk_100262580, &qword_1001CFF70);
}

void (*sub_10007A25C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100079D54(v4);
  return sub_10007A394;
}

void sub_10007A394(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t sub_10007A428()
{
  result = sub_100005ADC(&_swiftEmptyArrayStorage);
  qword_100277038 = result;
  return result;
}

id sub_10007A450()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1))
  {
    swift_getKeyPath();
    sub_1000997E0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + 64))
    {
      v1 = 58;
    }

    else
    {
      v1 = 26;
    }

    if (*(v0 + 64))
    {
      v2 = 53;
    }

    else
    {
      v2 = 21;
    }
  }

  else
  {
    v2 = 21;
    v1 = 26;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions);
  sub_10000341C(&qword_10025F4A8, &qword_1001D45E8);
  if ((v3 & 0x10) != 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9E0;
    v9 = TCFormatFeatureDefault;
    *(inited + 32) = TCFormatFeatureDefault;
    v10 = objc_allocWithZone(NSNumber);
    v11 = v9;
    v12 = [v10 initWithUnsignedInteger:v1];
    v13 = TCFormatFeatureUnderline;
    *(inited + 40) = v12;
    *(inited + 48) = v13;
    v14 = objc_allocWithZone(NSNumber);
    v15 = v13;
    *(inited + 56) = [v14 initWithUnsignedInteger:v2];
    sub_100006234(inited);
    swift_setDeallocating();
    sub_10000341C(&qword_10025F4B0, &qword_1001D45F0);
    swift_arrayDestroy();
  }

  else
  {
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1001CF9D0;
    v5 = TCFormatFeatureDefault;
    *(v4 + 32) = TCFormatFeatureDefault;
    v6 = objc_allocWithZone(NSNumber);
    v7 = v5;
    *(v4 + 40) = [v6 initWithUnsignedInteger:v2];
    sub_100006234(v4);
    swift_setDeallocating();
    sub_10000F500(v4 + 32, &qword_10025F4B0, &qword_1001D45F0);
  }

  v16 = objc_allocWithZone(TCAttributedStringFormatOptions);
  type metadata accessor for TCFormatFeature(0);
  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
  sub_1000997E0(&unk_10025F4C0, type metadata accessor for TCFormatFeature);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v16 initWithOptions:isa];

  return v18;
}

uint64_t sub_10007A838()
{
  v0 = type metadata accessor for GenerativeAssistantRestrictionManager();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100138554() & 1) == 0 || (static GenerativeAssistantRestrictionManager.instance.getter(), v5 = GenerativeAssistantRestrictions.isMontaraAllowed.getter(), (*(v1 + 8))(v4, v0), (v5 & 1) == 0))
  {
    static GenerativeAssistantRestrictionManager.instance.getter();
    v6 = GenerativeAssistantRestrictions.isMontaraAllowed.getter();
    (*(v1 + 8))(v4, v0);
    if (v6)
    {
      if (sub_100138554())
      {
        v7 = 0x80000001001E4BE0;
        v8 = 0xD000000000000043;
      }

      else
      {
        if (qword_10025A718 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000F34C(v13, qword_100276FB0);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Montara generative composing models are unavailable.", v16, 2u);
        }

        v8 = 0;
        v7 = 1;
      }
    }

    else
    {
      if (qword_10025A718 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000F34C(v9, qword_100276FB0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Montara is disabled by MDM", v12, 2u);
      }

      v8 = 0;
      v7 = 2;
    }

    sub_100099280();
    v17 = swift_allocError();
    *v18 = v8;
    v18[1] = v7;
    sub_100036BF0(v17);
  }

  return sub_100038160();
}

uint64_t sub_10007AB54()
{
  v1[48] = v0;
  v2 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[50] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[51] = v4;
  v1[52] = v3;

  return _swift_task_switch(sub_10007AC24, v4, v3);
}

uint64_t sub_10007AC24()
{
  v1 = v0[48];
  swift_getKeyPath();
  v0[53] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[32] = v1;
  v0[54] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) == 1)
  {
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[55] = v2;
    v0[56] = sub_10000F34C(v2, qword_100276FB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting composition session.", v5, 2u);
    }

    v6 = v0[48];

    swift_getKeyPath();
    v0[33] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[57] = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

    v7 = swift_task_alloc();
    v0[58] = v7;
    *v7 = v0;
    v7[1] = sub_10007AF5C;

    return sub_1000DF628();
  }

  else
  {
    v9 = v0[50];

    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276FB0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Feature not enabled, not starting composition session.", v13, 2u);
    }

    v14 = v0[49];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10007AF5C()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v7 = *v0;

  v4 = *(v1 + 416);
  v5 = *(v1 + 408);

  return _swift_task_switch(sub_10007B0A0, v5, v4);
}

uint64_t sub_10007B0A0()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 384);
  v4 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
  *(v0 + 472) = v4;
  [v4 setCompositionSessionType:10];
  swift_getKeyPath();
  *(v0 + 272) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v0 + 424);
    v8 = *(v0 + 432);
    v9 = *(v0 + 384);
    swift_getKeyPath();
    *(v0 + 288) = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v9 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1 && (v10 = *(v0 + 424), v11 = *(v0 + 432), v12 = *(v0 + 384), swift_getKeyPath(), *(v0 + 376) = v12, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v12 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1))
    {
      v13 = v4;
    }

    else
    {
      v13 = 0;
    }

    *(v0 + 488) = v13;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 280;
    *(v0 + 24) = sub_10007B4F8;
    v14 = swift_continuation_init();
    *(v0 + 216) = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    *(v0 + 160) = _NSConcreteStackBlock;
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_10019D8B8;
    *(v0 + 184) = &unk_10024D118;
    *(v0 + 192) = v14;
    [v6 willBeginWritingToolsSession:v13 requestContexts:v0 + 160];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v15 = *(v0 + 448);
    v16 = *(v0 + 400);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Context not found for composition session", v19, 2u);
    }

    v20 = *(v0 + 384);

    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v22;
    *(inited + 48) = 0xD000000000000029;
    *(inited + 56) = 0x80000001001E4BB0;
    sub_1000057A8(inited);
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v23 = objc_allocWithZone(NSError);
    v24 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = [v23 initWithDomain:v24 code:1 userInfo:isa];

    sub_100036BF0(v26);
    v27 = *(v0 + 392);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_10007B4F8()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *v0;

  return _swift_task_switch(sub_10007B600, v2, v1);
}

uint64_t sub_10007B600()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[35];
  swift_unknownObjectRelease();

  if (v3 >> 62)
  {
    goto LABEL_54;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    v101 = v0[56];
    v102 = v0[50];

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Context not found for composition session", v105, 2u);
    }

    v106 = v0[48];

    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v108;
    *(inited + 48) = 0xD000000000000029;
    *(inited + 56) = 0x80000001001E4BB0;
    sub_1000057A8(inited);
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v109 = objc_allocWithZone(NSError);
    v110 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v112 = [v109 initWithDomain:v110 code:1 userInfo:isa];

    sub_100036BF0(v112);
    v3 = v0[59];
    goto LABEL_58;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v4 = *(v3 + 32);
  }

  v5 = [v4 attributedText];
  v6 = [v5 string];

  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  string = v7;
  v9 = v0[53];
  v10 = v0[54];
  v11 = v0[48];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v13;
  swift_getKeyPath();
  v0[37] = v11;
  v14 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) == 1)
  {
    v15 = HIBYTE(v122) & 0xF;
    if ((v122 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if (![v4 range])
      {
        [v4 range];
        if (!v16)
        {
          v17 = [v4 attributedText];
          v18 = [v17 length];

          [v4 setRange:{0, v18}];
        }
      }
    }
  }

  v19 = [v4 attributedText];
  v20 = [v19 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String.count.getter();

  v124.location = 0;
  v124.length = v21;
  v22 = CFStringTokenizerCreate(0, v8, v124, 0, 0);

  Token = CFStringTokenizerAdvanceToNextToken(v22);
  if (!Token)
  {
    goto LABEL_23;
  }

  v24 = Token;
  v25 = 0;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v22);
    if ((v24 & 0x20) != 0)
    {
      break;
    }

    v26 = __OFADD__(v25++, 1);
    if (v26)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_55;
      }

      goto LABEL_3;
    }

LABEL_18:
    v27 = CFStringTokenizerAdvanceToNextToken(v22);
    v24 = v27;
    if (!v27)
    {
      goto LABEL_24;
    }
  }

  v26 = __OFADD__(v25, CurrentTokenRange.length);
  v25 += CurrentTokenRange.length;
  if (!v26)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_23:
  v25 = 0;
LABEL_24:
  v29 = v0[48];

  v30 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
  v119 = v29;
  if (*(v29 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) != v25)
  {
    v31 = v0[53];
    v32 = v0[54];
    v3 = v0[48];
    swift_getKeyPath();
    v33 = swift_task_alloc();
    *(v33 + 16) = v3;
    *(v33 + 24) = v25;
    v0[38] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v125.location = [v4 range];
  v125.length = v34;
  v35 = CFStringTokenizerCreate(0, string, v125, 0, 0);

  v36 = CFStringTokenizerAdvanceToNextToken(v35);
  if (!v36)
  {
    goto LABEL_34;
  }

  v37 = v36;
  v38 = 0;
  while (2)
  {
    v40 = CFStringTokenizerGetCurrentTokenRange(v35);
    if ((v37 & 0x20) == 0)
    {
      v26 = __OFADD__(v38++, 1);
      if (v26)
      {
        goto LABEL_53;
      }

LABEL_29:
      v39 = CFStringTokenizerAdvanceToNextToken(v35);
      v37 = v39;
      if (!v39)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  v26 = __OFADD__(v38, v40.length);
  v38 += v40.length;
  if (!v26)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  v38 = 0;
LABEL_35:
  v41 = v0[48];

  stringa = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  if (*(v41 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) != v38)
  {
    v42 = v0[53];
    v43 = v0[54];
    v44 = v0[48];
    swift_getKeyPath();
    v45 = swift_task_alloc();
    *(v45 + 16) = v44;
    *(v45 + 24) = v38;
    v0[39] = v44;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v46 = v0[53];
  v47 = v0[54];
  v48 = v0[48];
  swift_getKeyPath();
  v0[40] = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v119 + v30);
  swift_getKeyPath();
  v0[41] = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(&stringa->isa + v41);
  v50 = (v3 - v49);
  if (__OFSUB__(v3, v49))
  {
LABEL_63:
    __break(1u);
    swift_once();
    sub_10000F34C(v0[55], qword_100276F08);
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "failed to init slot parser: %@", v92, 0xCu);
      sub_10000F500(v93, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }

    goto LABEL_51;
  }

  v51 = v0[48];
  v116 = v41;
  if (*(v51 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount) != v50)
  {
    v53 = v0[53];
    v52 = v0[54];
    swift_getKeyPath();
    v54 = swift_task_alloc();
    *(v54 + 16) = v51;
    *(v54 + 24) = v50;
    v0[42] = v51;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v55 = v0[48];
  }

  v56 = v0[56];
  sub_1000940A8();
  v57 = v4;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v57;
    *v61 = v57;
    v62 = v57;
    _os_log_impl(&_mh_execute_header, v58, v59, "Context for composition %@", v60, 0xCu);
    sub_10000F500(v61, &unk_10025D580, &qword_1001CFA60);
  }

  v63 = v0[59];
  v118 = v0[54];
  v117 = v0[53];
  v64 = v0[48];
  v65 = v0[49];

  v66 = type metadata accessor for CompositionModel.Session(0);
  v67 = v66[7];
  v68 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  (*(*(v68 - 8) + 56))(&v65[v67], 1, 1, v68);
  *v65 = v63;
  *(v65 + 1) = v57;
  *(v65 + 2) = 0;
  *&v65[v66[8]] = 0;
  v65[v66[9]] = 0;
  v69 = *(v66 - 1);
  (*(v69 + 56))(v65, 0, 1, v66);
  swift_getKeyPath();
  v70 = swift_task_alloc();
  *(v70 + 16) = v64;
  *(v70 + 24) = v65;
  v0[43] = v64;
  v71 = v63;
  v3 = v57;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v65, &unk_100262580, &qword_1001CFF70);
  v72 = v0 + 28;
  v73 = sub_10007A25C(v0 + 28);
  v75 = v74;
  if (!(*(v69 + 48))(v74, 1, v66))
  {
    v77 = v0[53];
    v76 = v0[54];
    v78 = v0[48];
    swift_getKeyPath();
    v0[46] = v78;
    v72 = v0 + 28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v75 + v66[9]) = *(&stringa->isa + v116) == 0;
  }

  (v73)(v72, 0);
  v79 = v0[48];
  v80 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex;
  if (*(v79 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex))
  {
    v82 = v0[53];
    v81 = v0[54];
    v83 = v0[50];
    swift_getKeyPath();
    v84 = swift_task_alloc();
    *(v84 + 16) = v79;
    *(v84 + 24) = 0;
    v0[44] = v79;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v85 = v0[50];

    *(v79 + v80) = 0;
  }

  v86 = type metadata accessor for SlotParser();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = sub_1000A1B04();
  v96 = v0[53];
  v95 = v0[54];
  v97 = v0[48];
  v98 = v89;
  swift_getKeyPath();
  v99 = swift_task_alloc();
  *(v99 + 16) = v97;
  *(v99 + 24) = v98;
  v0[45] = v97;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_51:
  v100 = v0[59];
  qword_100277028 = 0;
  qword_100277030 = 0;

  qword_10025E340 = 0;
  byte_10025E348 = 1;

LABEL_58:
  v113 = v0[49];

  v114 = v0[1];

  return v114();
}

uint64_t sub_10007C390(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v5;
  v3[22] = v4;

  return _swift_task_switch(sub_10007C42C, v5, v4);
}

uint64_t sub_10007C42C()
{
  v1 = v0[18];
  v2 = v0[17] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = v0[19];
    swift_getKeyPath();
    v0[15] = v3;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v3 + v4, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[5])
    {
      v5 = v0[19];
      v6 = v0[17];
      sub_100028458((v0 + 2), (v0 + 7));
      sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
      v7 = sub_100027874(v0 + 7, v0[10]);
      swift_getKeyPath();
      v0[16] = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *v7;
      sub_10000C1CC(0, 1, 0, 1, v6, v1, 0, 0, *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy));
      sub_10000F4B4(v0 + 7);
    }

    else
    {
      sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    }

    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_10007C878;
    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[17];

    return sub_10007DE34(v15, v13);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_10007C6F8;
    v10 = v0[19];

    return sub_10007C998();
  }
}

uint64_t sub_10007C6F8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_10007C818, v4, v3);
}

uint64_t sub_10007C818()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007C878()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_10009B1E4, v4, v3);
}

uint64_t sub_10007C998()
{
  v1[17] = v0;
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_10007CA30, v3, v2);
}

uint64_t sub_10007CA30()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[15] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[5])
  {
    v3 = v0[17];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v4 = sub_100027874(v0 + 7, v0[10]);
    swift_getKeyPath();
    v0[16] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *v4;
    sub_10000C1CC(0, 1, 0, 1, 0, 0, 0xD00000000000001ALL, 0x80000001001E4B90, *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy));
    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_10007CC94;
  v7 = v0[17];

  return sub_10007DE34(0xD00000000000001ALL, 0x80000001001E4B90);
}

uint64_t sub_10007CC94()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_10007CDB4, v4, v3);
}

uint64_t sub_10007CDB4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007CE14(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for CompositionModel.Session(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v19 = sub_1000713A0();
    if (v19)
    {
      v20 = v19;
      if ([v19 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
      {
        v54 = nullsub_1;
        v55 = 0;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1001256BC;
        v53 = &unk_10024CEC0;
        v21 = _Block_copy(&aBlock);
        [v20 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v21];
        swift_unknownObjectRelease();
        _Block_release(v21);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_getKeyPath();
    aBlock = v5;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v30 = _convertErrorToNSError(_:)();
      [v29 endWritingToolsWithError:v30];

      swift_unknownObjectRelease();
    }

    return;
  }

  swift_getKeyPath();
  aBlock = v4;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v5 + v22, v13, &unk_100262580, &qword_1001CFF70);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000F500(v13, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276FB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10002510C(0xD00000000000001FLL, 0x80000001001E4940, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s is called without session. The session may have been ended by a different view trying to start a new session", v26, 0xCu);
      sub_10000F4B4(v27);
    }

    if (a3)
    {
      a3();
    }

    return;
  }

  sub_10009A774(v13, v18, type metadata accessor for CompositionModel.Session);
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000F34C(v31, qword_100276FB0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    if (a1 == 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = a1 & 1;
    }

    *(v34 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v32, v33, "Ending WT session, accepted: %{BOOL}d", v34, 8u);
  }

  if (v18[2])
  {
    v49 = a3;
    v36 = a4;
    GenerativeExperiencesSession.sessionIdentifier()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Ending GES session", v39, 2u);
    }

    type metadata accessor for GenerativeExperiencesSession();
    v40 = static GenerativeExperiencesSession.terminateSession(for:)();

    a4 = v36;
    a3 = v49;
    if (v40)
    {
      goto LABEL_32;
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "GES session termination returned failure";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "No GES session to end";
      goto LABEL_30;
    }
  }

LABEL_32:
  v45 = sub_1000713A0();
  if (v45)
  {
    v46 = v45;
    if ([v45 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v54 = nullsub_1;
      v55 = 0;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_1001256BC;
      v53 = &unk_10024CE98;
      v47 = _Block_copy(&aBlock);
      [v46 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v47];
      swift_unknownObjectRelease();
      _Block_release(v47);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v48 = sub_1000713A0();
  if (v48)
  {
    [v48 didEndWritingToolsSession:*v18 accepted:(a1 == 2) | (a1 & 1)];
    swift_unknownObjectRelease();
  }

  sub_10007D654(v18, v5, a3, a4);
  sub_100099074(v18);
}

uint64_t sub_10007D654(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v42[1] = a4;
  v44 = a3;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v43 = v42 - v8;
  v9 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v42 - v11;
  v13 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v42 - v15;
  v17 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v42 - v20;
  v22 = type metadata accessor for CompositionModel.Session(0);
  sub_1000081F8(a1 + *(v22 + 28), v16, &qword_10025F240, &qword_1001D3D58);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000F500(v16, &qword_10025F240, &qword_1001D3D58);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276FB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "user reverted while continuation was still active", v26, 2u);
    }

    sub_100099280();
    v27 = swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    v47 = v27;
    CheckedContinuation.resume(throwing:)();
    (*(v18 + 8))(v21, v17);
  }

  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v42[-2] = a2;
  v42[-1] = v12;
  v47 = a2;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v12, &unk_100262580, &qword_1001CFF70);
  v30 = (a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  if (*(a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8))
  {
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    v42[-3] = 0;
    v42[-2] = 0;
    v42[-4] = a2;
    v47 = a2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v30 = 0;
    v30[1] = 0;
  }

  sub_100073770(_swiftEmptyArrayStorage);
  sub_100072BD0(_swiftEmptyArrayStorage);
  if (*(a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse))
  {
    v32 = swift_getKeyPath();
    __chkstk_darwin(v32);
    v42[-2] = a2;
    v42[-1] = 0;
    v47 = a2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  v47 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = a2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v34 = *(a2 + v33);
  *(a2 + v33) = &_swiftEmptyDictionarySingleton;

  v46 = a2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v46 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = a2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v36 = *(a2 + v35);
  *(a2 + v35) = _swiftEmptyArrayStorage;

  v45 = a2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v45 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  sub_100170300();

  v38 = type metadata accessor for UUID();
  v39 = *(*(v38 - 8) + 56);
  v40 = v43;
  v39(v43, 1, 1, v38);
  sub_1000742F0(v40);
  v39(v40, 1, 1, v38);
  result = sub_1000744CC(v40);
  if (v44)
  {
    return v44(result);
  }

  return result;
}

uint64_t sub_10007DE34(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  v4 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v6 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[59] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[60] = v8;
  v3[61] = v7;

  return _swift_task_switch(sub_10007DF60, v8, v7);
}

uint64_t sub_10007DF60()
{
  v1 = v0[55];
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v0[62] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v1 + v2) != 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[43] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_10007E0D8;
  v5 = v0[54];
  v6 = v0[55];
  v7 = v0[53];

  return sub_100080514(v7, v5);
}

uint64_t sub_10007E0D8()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = sub_10007EDA0;
  }

  else
  {
    v7 = sub_10007E214;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10007E214()
{
  v62 = v0;
  v1 = v0[55];
  if (*(v1 + v0[62]))
  {
    v2 = v0[64];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[48] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v1 = v0[55];
  }

  swift_getKeyPath();
  v0[49] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v4, (v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[25])
  {
    v5 = v0[55];
    sub_100028458((v0 + 22), (v0 + 27));
    sub_10000F500((v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
    v6 = sub_100027874(v0 + 27, v0[30]);
    swift_getKeyPath();
    v0[51] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v7 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    swift_getKeyPath();
    v0[52] = v5;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v59 = *v6;
    if (qword_10025A6F8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276F50);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[57];
      v15 = v0[58];
      v16 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v16 = 136643075;
      *(v16 + 4) = sub_10002510C(v60, v7, v61);
      *(v16 + 12) = 2081;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v17 key];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10002510C(v19, v21, v61);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000341C(&unk_10025F490, &unk_1001CFA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9F0;
    if (qword_10025A528 != -1)
    {
      swift_once();
    }

    v24 = qword_100276D38;
    *(inited + 32) = qword_100276D38;
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();

    v27 = IAPayloadKeyWritingToolsFeatureDetails;
    *(inited + 40) = v26;
    *(inited + 48) = v27;
    v28 = qword_10025A5F0;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = qword_100276E00;
    *(inited + 56) = qword_100276E00;
    v31 = qword_10025A530;
    v32 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = v0[56];
    v34 = qword_100276D40;
    *(inited + 64) = qword_100276D40;
    type metadata accessor for IAPayloadValue(0);
    v35 = v34;
    *(inited + 72) = Array._bridgeToObjectiveC()();
    v36 = sub_100005794(inited);
    swift_setDeallocating();
    sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
    swift_arrayDestroy();
    v37 = IAPayloadKeyWritingToolsResultText;
    v38 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = v36;
    sub_1001A9924(v38, v37, isUniquelyReferenced_nonNull_native);

    v40 = IASignalWritingToolsResultsGenerated;
    v41 = IAChannelWritingTools;
    sub_1000081F8(v59 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v33, &unk_100262450, &qword_1001CFAA0);
    v42 = type metadata accessor for UUID();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v33, 1, v42);
    v45 = v0[56];
    if (v44 == 1)
    {
      sub_10000F500(v0[56], &unk_100262450, &qword_1001CFAA0);
      v46 = 0;
    }

    else
    {
      UUID.uuidString.getter();
      (*(v43 + 8))(v45, v42);
      v46 = String._bridgeToObjectiveC()();
    }

    v47 = objc_opt_self();
    type metadata accessor for IAPayloadKey(0);
    sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
    sub_1000997E0(&qword_10025AF18, type metadata accessor for IAPayloadKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v47 sendSignal:v40 toChannel:v41 withNullableUniqueStringID:v46 withPayload:isa];

    sub_10000F4B4(v0 + 27);
  }

  else
  {
    sub_10000F500((v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
  }

  v49 = v0[55];
  swift_getKeyPath();
  v0[50] = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v49 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
  if (v50)
  {
    v51 = v50;
    v52 = [v51 string];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  sub_10006CC20("Composition", 11, 2, v53, v55);

  v56 = v0[55];
  swift_getKeyPath();
  v0[47] = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = *(v56 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v57 = swift_task_alloc();
  v0[66] = v57;
  *v57 = v0;
  v57[1] = sub_10007EBD8;

  return sub_1000DF628();
}

uint64_t sub_10007EBD8()
{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 520);
  v7 = *v0;

  v4 = *(v1 + 488);
  v5 = *(v1 + 480);

  return _swift_task_switch(sub_10007ED1C, v5, v4);
}

uint64_t sub_10007ED1C()
{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[56];
  v3 = v0[57];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007EDA0()
{
  v0[44] = v0[64];
  swift_errorRetain();
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  if (swift_dynamicCast())
  {
    v1 = v0[42];
    if (!v1)
    {
      v25 = v0[64];

      v26 = v0[44];
      goto LABEL_12;
    }

    sub_10009A8B8(v0[41], v1);
  }

  v2 = v0[44];

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = v0[64];
  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[64];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "composition failed: %@", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  v11 = v0[55];

  swift_getKeyPath();
  v0[45] = v11;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v11 + v12, (v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
  v13 = v0[64];
  if (v0[15])
  {
    sub_100028458((v0 + 12), (v0 + 17));
    sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
    v14 = *sub_100027874(v0 + 17, v0[20]);
    swift_errorRetain();
    sub_10000DB64(v13, 0, 1, 0, 1);

    sub_10000F4B4(v0 + 17);
  }

  else
  {
    sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
  }

  v15 = v0[64];
  v16 = v0[55];
  swift_errorRetain();
  sub_100036BF0(v13);
  swift_getErrorValue();
  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[37];
  v20 = Error.localizedDescription.getter();
  sub_10006CC20("Composition", 11, 2, v20, v21);

LABEL_12:

  v22 = v0[55];
  swift_getKeyPath();
  v0[47] = v22;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = *(v22 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v23 = swift_task_alloc();
  v0[66] = v23;
  *v23 = v0;
  v23[1] = sub_10007EBD8;

  return sub_1000DF628();
}

uint64_t sub_10007F1E8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24);
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
  {
    if (v3 == 255)
    {
      return 0;
    }

    else
    {
      v4 = *(v1 + 8);
      v5 = *(v1 + 16);
      if (v3 == 2 && v2 == 1 && (v5 | v4) == 0)
      {
        return 0x616572666F6F7270;
      }

      else
      {
        sub_10000F3F4(v2, v4, v5, v3);
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000F34C(v8, qword_100276EF0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected handoffOriginatorMode.", v11, 2u);
        }

        _StringGuts.grow(_:)(38);
        v12._object = 0x80000001001E4B60;
        v12._countAndFlagsBits = 0xD000000000000022;
        String.append(_:)(v12);
        _print_unlocked<A, B>(_:_:)();
        v13._countAndFlagsBits = 11869;
        v13._object = 0xE200000000000000;
        String.append(_:)(v13);
        sub_100099280();
        swift_allocError();
        *v14 = 0;
        v14[1] = 0xE000000000000000;
        swift_willThrow();
        return sub_1000278C0(v2, v4, v5, v3);
      }
    }
  }

  else
  {
    result = *&aRewrite_1[8 * v2];
    v16 = qword_1001D47D0[v2];
  }

  return result;
}

uint64_t sub_10007F4A4()
{
  v1 = v0;
  v116 = type metadata accessor for UUID();
  v114 = *(v116 - 8);
  v2 = *(v114 + 64);
  __chkstk_darwin(v116);
  v113 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SessionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v115 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v111 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v110 = v103 - v12;
  v13 = type metadata accessor for Prompt.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v109 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ChatMessageRole();
  v106 = *(v107 - 8);
  v16 = *(v106 + 64);
  __chkstk_darwin(v107);
  v108 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ChatMessagePrompt();
  v19 = *(v18 - 8);
  v117 = v18;
  v118 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v120 = v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = v103 - v23;
  v24 = type metadata accessor for CachePolicy();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v105 = v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SessionConfiguration();
  v122 = *(v27 - 8);
  v123 = v27;
  v28 = *(v122 + 64);
  v29 = __chkstk_darwin(v27);
  v119 = v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v130 = v103 - v31;
  v32 = sub_10000341C(&qword_10025F480, &qword_1001D4510);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = v103 - v34;
  v36 = type metadata accessor for ModelBundle();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v121 = v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = v103 - v42;
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v126 = v37;
  v127 = v36;
  v44 = type metadata accessor for Logger();
  v125 = sub_10000F34C(v44, qword_100276FB0);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Initializing GES Session.", v47, 2u);
  }

  swift_getKeyPath();
  v128 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v48, v43, &unk_100262580, &qword_1001CFF70);
  v49 = type metadata accessor for CompositionModel.Session(0);
  v50 = *(v49 - 8);
  v104 = *(v50 + 48);
  v103[1] = v50 + 48;
  LODWORD(v48) = v104(v43, 1, v49);
  sub_10000F500(v43, &unk_100262580, &qword_1001CFF70);
  if (v48 == 1)
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Writing Tools session was not initialized.", v53, 2u);
    }

    v54 = 0x80000001001E4A50;
    sub_100099280();
    swift_allocError();
    v56 = 0xD00000000000002ALL;
    goto LABEL_11;
  }

  type metadata accessor for CompositionModel(0);
  sub_100071008(v35);
  v58 = v126;
  v57 = v127;
  if ((*(v126 + 48))(v35, 1, v127) == 1)
  {
    sub_10000F500(v35, &qword_10025F480, &qword_1001D4510);
    v54 = 0x80000001001E4AD0;
    sub_100099280();
    swift_allocError();
    v56 = 0xD00000000000001CLL;
LABEL_11:
    *v55 = v56;
    v55[1] = v54;
    return swift_willThrow();
  }

  v103[0] = v49;
  v60 = v121;
  (*(v58 + 32))(v121, v35, v57);
  sub_10000341C(&qword_10025F488, &qword_1001D4518);
  v61 = *(v58 + 72);
  v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1001CF9D0;
  (*(v58 + 16))(v63 + v62, v60, v57);
  static CachePolicy.inMemory.getter();
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  swift_getKeyPath();
  v128 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v64 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  v65 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  swift_getKeyPath();
  v128 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) & 1) != 0 || (swift_getKeyPath(), v128 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v66 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount, *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) <= 0))
  {
    v68 = v65 > 0;
  }

  else
  {
    swift_getKeyPath();
    v128 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = *(v1 + v64);
    swift_getKeyPath();
    v128 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v65 <= 0)
    {
      v68 = 2 * (v67 != *(v1 + v66));
    }

    else
    {
      v68 = 1;
    }
  }

  v69 = v117;
  (*(v106 + 104))(v108, enum case for ChatMessageRole.system(_:), v107);
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v70);
  LODWORD(v117) = v68;
  sub_10019B2F0(v68);
  v71 = type metadata accessor for Prompt.Component.Privacy();
  v72 = v110;
  (*(*(v71 - 8) + 56))(v110, 1, 1, v71);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  sub_10000F500(v72, &qword_10025F478, &unk_1001D4D30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v73);
  Prompt.init(stringInterpolation:)();
  v74 = v124;
  ChatMessagePrompt.init(role:prompt:)();
  (*(v122 + 16))(v119, v130, v123);
  v75 = v118;
  (*(v118 + 16))(v120, v74, v69);
  v76 = v112;
  sub_10007F1E8();
  if (v76)
  {
  }

  v77 = v113;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v114 + 8))(v77, v116);
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  v78 = type metadata accessor for GenerativeExperiencesSession();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();
  v81 = GenerativeExperiencesSession.init(configuration:)();
  if (v81)
  {
    v82 = v81;

    v83 = sub_10007A25C(&v128);
    v85 = v84;
    if (!v104(v84, 1, v103[0]))
    {
      v86 = *(v85 + 2);
      *(v85 + 2) = v82;
    }

    (v83)(&v128, 0);

    (*(v75 + 8))(v124, v69);
    (*(v122 + 8))(v130, v123);
    return (*(v126 + 8))(v121, v127);
  }

  else
  {
    v87 = 0xEC000000656E6F6ELL;
    v88 = 0x5F65736F706D6F63;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v128 = v92;
      *v91 = 136315138;
      if (v117)
      {
        if (v117 == 2)
        {
          v93 = 0x80000001001E4B20;
          v94 = 0xD000000000000013;
        }

        else
        {
          v93 = 0x80000001001E4B40;
          v94 = 0xD00000000000001ALL;
        }
      }

      else
      {
        v94 = 0x5F65736F706D6F63;
        v93 = 0xEC000000656E6F6ELL;
      }

      v95 = sub_10002510C(v94, v93, &v128);

      *(v91 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "Attempted to Create GES session with %s but failed.", v91, 0xCu);
      sub_10000F4B4(v92);

      v75 = v118;
    }

    else
    {
    }

    v128 = 0;
    v129 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v96._countAndFlagsBits = 0xD000000000000025;
    v96._object = 0x80000001001E4AF0;
    String.append(_:)(v96);
    v97 = v126;
    if (v117)
    {
      if (v117 == 2)
      {
        v87 = 0x80000001001E4B20;
        v88 = 0xD000000000000013;
      }

      else
      {
        v87 = 0x80000001001E4B40;
        v88 = 0xD00000000000001ALL;
      }
    }

    v98._countAndFlagsBits = v88;
    v98._object = v87;
    String.append(_:)(v98);

    v99._countAndFlagsBits = 0x6961662074756220;
    v99._object = 0xEC0000002E64656CLL;
    String.append(_:)(v99);
    v100 = v128;
    v101 = v129;
    sub_100099280();
    swift_allocError();
    *v102 = v100;
    v102[1] = v101;
    swift_willThrow();
    (*(v75 + 8))(v124, v69);
    (*(v122 + 8))(v130, v123);
    return (*(v97 + 8))(v121, v127);
  }
}

uint64_t sub_100080514(uint64_t a1, uint64_t a2)
{
  v3[135] = v2;
  v3[134] = a2;
  v3[133] = a1;
  v4 = *(type metadata accessor for Attachment(0) - 8);
  v3[136] = v4;
  v5 = *(v4 + 64) + 15;
  v3[137] = swift_task_alloc();
  v6 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[138] = swift_task_alloc();
  v7 = type metadata accessor for CharacterSet();
  v3[139] = v7;
  v8 = *(v7 - 8);
  v3[140] = v8;
  v9 = *(v8 + 64) + 15;
  v3[141] = swift_task_alloc();
  v10 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v11 = type metadata accessor for CompositionModel.Session(0);
  v3[144] = v11;
  v12 = *(v11 - 8);
  v3[145] = v12;
  v13 = *(v12 + 64) + 15;
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[148] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[149] = v14;
  v3[150] = v15;

  return _swift_task_switch(sub_100080778, v14, v15);
}

uint64_t sub_100080778()
{
  v227 = v0;
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276FB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running Compose with GES", v4, 2u);
  }

  v5 = *(v0 + 1080);

  sub_10007A838();
  swift_getKeyPath();
  *(v0 + 768) = v5;
  sub_1000997E0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 120))
  {
    v6 = *(v0 + 1184);
    swift_errorRetain();

    swift_willThrow();
LABEL_18:
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1168);
    v34 = *(v0 + 1144);
    v35 = *(v0 + 1136);
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1104);
    v38 = *(v0 + 1096);

    v39 = *(v0 + 8);

    return v39();
  }

  v224 = v1;
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1080);
  swift_getKeyPath();
  *(v0 + 1208) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 1024) = v10;
  *(v0 + 1216) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v10 + v11, v9, &unk_100262580, &qword_1001CFF70);
  v12 = *(v7 + 48);
  v13 = v12(v9, 1, v8);
  v14 = *(v0 + 1144);
  if (v13 == 1)
  {
    v15 = *(v0 + 1184);

    sub_10000F500(v14, &unk_100262580, &qword_1001CFF70);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Writing Tools session was not initialized.", v18, 2u);
    }

    sub_100099280();
    swift_allocError();
    *v19 = 0xD00000000000002ALL;
    v19[1] = 0x80000001001E4A50;
    swift_willThrow();
    goto LABEL_18;
  }

  v20 = *(v0 + 1176);
  sub_10009A774(*(v0 + 1144), v20, type metadata accessor for CompositionModel.Session);
  if (!*(v20 + 16))
  {
    v31 = *(v0 + 1080);
    sub_10007F4A4();
  }

  v21 = *(v0 + 1152);
  v22 = *(v0 + 1136);
  v23 = *(v0 + 1080);
  swift_getKeyPath();
  *(v0 + 1016) = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v10 + v11, v22, &unk_100262580, &qword_1001CFF70);
  if (v12(v22, 1, v21))
  {
    v24 = *(v0 + 1184);
    v25 = *(v0 + 1136);

    sub_10000F500(v25, &unk_100262580, &qword_1001CFF70);
LABEL_15:
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "GES session was not initialized.", v28, 2u);
    }

    v29 = *(v0 + 1176);

    sub_100099280();
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x80000001001E4A80;
    swift_willThrow();
    sub_100099074(v29);
    goto LABEL_18;
  }

  v41 = *(v0 + 1136);
  v42 = *(v41 + 16);
  *(v0 + 1224) = v42;

  sub_10000F500(v41, &unk_100262580, &qword_1001CFF70);
  if (!v42)
  {
    v45 = *(v0 + 1184);

    goto LABEL_15;
  }

  v219 = v42;
  v43 = *(v0 + 1080);
  if (*(v43 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse))
  {
    swift_getKeyPath();
    v44 = swift_task_alloc();
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v0 + 776) = v43;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v43 = *(v0 + 1080);
  }

  v221 = *(v0 + 1176);
  v46 = *(v0 + 1152);
  swift_getKeyPath();
  *(v0 + 1008) = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1000) = v43;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v48 = *(v43 + v47);
  *(v43 + v47) = &_swiftEmptyDictionarySingleton;

  *(v0 + 992) = v43;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 984) = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 976) = v43;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v49 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v50 = *(v43 + v49);
  *(v43 + v49) = _swiftEmptyArrayStorage;

  *(v0 + 968) = v43;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v51 = *(v221 + *(v46 + 32));
  if (!v51)
  {
    v52 = *(v0 + 1080);
    v53 = sub_1000713A0();
    if (v53)
    {
      v54 = v53;
      v55 = *(v0 + 1176);
      v56 = *v55;
      sub_10000341C(&qword_10025F470, &qword_1001D1020);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1001D1060;
      v58 = v55[1];
      *(v57 + 32) = v58;
      sub_1000081B0(0, &unk_100262480, WTContext_ptr);
      v59 = v58;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v54 didBeginWritingToolsSession:v56 contexts:isa];
      swift_unknownObjectRelease();
    }
  }

  v61 = *(v0 + 1080);
  v62 = sub_1000713A0();
  if (v62)
  {
    [v62 writingToolsSession:**(v0 + 1176) didReceiveAction:3];
    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 1176) + *(*(v0 + 1152) + 36)) == 1)
  {
    v63 = *(v0 + 1080);
    v64 = sub_1000713A0();
    if (v64)
    {
      v65 = v64;
      if ([v64 respondsToSelector:"beginTextPlaceholder"])
      {
        [v65 beginTextPlaceholder];
      }

      swift_unknownObjectRelease();
    }
  }

  v66 = *(v0 + 1080);
  v222 = sub_1000057A8(_swiftEmptyArrayStorage);
  swift_getKeyPath();
  *(v0 + 960) = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v67 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  v220 = *(v66 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  swift_getKeyPath();
  *(v0 + 952) = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v66 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy))
  {
    v68 = 0;
  }

  else
  {
    v215 = v51;
    v69 = *(v0 + 1080);
    swift_getKeyPath();
    *(v0 + 1032) = v69;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v69 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) < 1)
    {
      v68 = 0;
    }

    else
    {
      v70 = *(v0 + 1080);
      v212 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
      swift_getKeyPath();
      *(v0 + 1040) = v70;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v71 = *(v66 + v67);
      swift_getKeyPath();
      *(v0 + 1048) = v70;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v68 = v71 != *(v69 + v212);
    }

    v51 = v215;
  }

  if (!v51 && (v220 > 0 || v68))
  {
    v213 = v68;
    v72 = *(v0 + 1176);
    *(v0 + 136) = &type metadata for WritingTools;
    v207 = sub_10002AC88();
    *(v0 + 144) = v207;
    *(v0 + 112) = 15;
    v73 = isFeatureEnabled(_:)();
    sub_10000F4B4((v0 + 112));
    v74 = *(v72 + 8);
    v210 = v74;
    if (v73)
    {
      v75 = *(v0 + 1080);
      v76 = [v74 attributedText];
      v77 = [v74 range];
      v79 = [v76 attributedSubstringFromRange:{v77, v78}];

      v80 = v79;
      v81 = sub_10007A450();
      v82 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v80 formatOptions:v81];

      v83 = [v82 inputFormattedString];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      v216 = v84;
      if (os_log_type_enabled(v87, v88))
      {
        v205 = v82;
        v89 = swift_slowAlloc();
        v203 = v80;
        v90 = swift_slowAlloc();
        v226[0] = v90;
        *v89 = 136315138;
        v91 = sub_10002510C(v84, v86, v226);
        v92 = v87;
        v93 = v91;

        *(v89 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v92, v88, "selectedText (inputFormattedString) = %s", v89, 0xCu);
        sub_10000F4B4(v90);
      }

      else
      {
      }

      v101 = v86;
      p_name = (&stru_100256FF8 + 8);
    }

    else
    {
      [v74 range];
      v96 = [v74 attributedText];
      v97 = v74;
      v98 = [v96 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Range<>.init(_:in:)();
      v100 = v99;

      if (v100)
      {
        v216 = 0;
        v101 = 0xE000000000000000;
        p_name = (&stru_100256FF8 + 8);
      }

      else
      {
        v103 = [v97 attributedText];
        p_name = &stru_100256FF8.name;
        v104 = [v103 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.subscript.getter();

        v216 = static String._fromSubstring(_:)();
        v101 = v105;
      }
    }

    *(v0 + 176) = &type metadata for WritingTools;
    *(v0 + 184) = v207;
    *(v0 + 152) = 15;
    v106 = isFeatureEnabled(_:)();
    sub_10000F4B4((v0 + 152));
    if (v106)
    {
      v208 = v101;
      sub_10009A70C(*(v0 + 1176), *(v0 + 1168), type metadata accessor for CompositionModel.Session);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v0 + 1168);
      if (v109)
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v111 = 138412290;
        v113 = [*(v110 + 8) attributedText];
        sub_100099074(v110);
        *(v111 + 4) = v113;
        *v112 = v113;
        _os_log_impl(&_mh_execute_header, v107, v108, "context = %@", v111, 0xCu);
        sub_10000F500(v112, &unk_10025D580, &qword_1001CFA60);

        v114 = &_s7SwiftUI16_BlendModeEffectVAA12ViewModifierAAWP_ptr;
      }

      else
      {

        sub_100099074(v110);
        v114 = &_s7SwiftUI16_BlendModeEffectVAA12ViewModifierAAWP_ptr;
      }

      v121 = *(v0 + 1080);
      v122 = [v210 attributedText];
      v123 = sub_10007A450();
      v124 = [objc_allocWithZone(v114[384]) initWithDigestedAttributedString:v122 formatOptions:v123];

      v125 = [v124 inputFormattedString];
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v127;

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v226[0] = v131;
        *v130 = 136315138;
        *(v130 + 4) = sub_10002510C(v126, v119, v226);
        _os_log_impl(&_mh_execute_header, v128, v129, "allText (inputFormattedString) = %s", v130, 0xCu);
        sub_10000F4B4(v131);
      }

      v101 = v208;
      v120 = v216;
      v117 = v126;
    }

    else
    {
      v115 = [v210 attributedText];
      v116 = [v115 p_name[369]];

      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = v216;
    }

    if (v220 < 1)
    {

      v120 = 0;
      v101 = 0;
    }

    if (!v213)
    {

      v117 = 0;
      v119 = 0;
    }

    v132 = *(v0 + 1072);
    v133 = *(v0 + 1064);
    v134 = type metadata accessor for JSONEncoder();
    v135 = *(v134 + 48);
    v136 = *(v134 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 64) = v133;
    *(v0 + 72) = v132;
    *(v0 + 80) = v120;
    *(v0 + 88) = v101;
    *(v0 + 96) = v117;
    *(v0 + 104) = v119;
    sub_10009A85C();

    v137 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v138 = v119;
    v139 = v117;
    v140 = v137;
    v142 = v141;
    v204 = v139;
    v217 = v120;
    v143 = *(v0 + 1072);

    v144 = v101;

    v211 = v138;

    sub_10004DC4C(v140, v142);
    v145 = sub_100097014(v140, v142);
    v147 = v142;
    v148 = v140;
    if (v146)
    {
      v94 = v146;
      v206 = v145;
      sub_10004DD08(v140, v142);
LABEL_66:
      v149 = v211;
LABEL_73:
      v214 = v147;
      v218 = v148;
      if (v149)
      {
        v153 = *(v0 + 1128);
        v154 = *(v0 + 1120);
        v209 = *(v0 + 1112);
        *(v0 + 736) = v204;
        *(v0 + 744) = v149;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10002AC34();
        v155 = StringProtocol.trimmingCharacters(in:)();
        v157 = v156;
        (*(v154 + 8))(v153, v209);

        *(v0 + 360) = &type metadata for String;
        *(v0 + 336) = v155;
        *(v0 + 344) = v157;
        sub_100008150((v0 + 336), (v0 + 304));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226[0] = v222;
        sub_1001A9A58((v0 + 304), 0xD000000000000010, 0x80000001001E4AB0, isUniquelyReferenced_nonNull_native);
        v222 = v226[0];
      }

      if (v144)
      {
        v159 = *(v0 + 1128);
        v160 = *(v0 + 1120);
        v161 = *(v0 + 1112);
        *(v0 + 720) = v217;
        *(v0 + 728) = v144;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10002AC34();
        v162 = StringProtocol.trimmingCharacters(in:)();
        v164 = v163;
        (*(v160 + 8))(v159, v161);

        *(v0 + 424) = &type metadata for String;
        *(v0 + 400) = v162;
        *(v0 + 408) = v164;
        sub_100008150((v0 + 400), (v0 + 368));
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v226[0] = v222;
        sub_1001A9A58((v0 + 368), 0x6C616E696769726FLL, 0xED00007478657420, v165);
        v222 = v226[0];
      }

      *(v0 + 296) = &type metadata for Int;
      *(v0 + 272) = 1;
      sub_100008150((v0 + 272), (v0 + 432));
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v226[0] = v222;
      sub_1001A9A58((v0 + 432), 0x6E6F6973726576, 0xE700000000000000, v166);

      sub_10004DD08(v218, v214);
      v222 = v226[0];
      v95 = v206;
      goto LABEL_78;
    }

    *(v0 + 704) = v140;
    *(v0 + 712) = v142;
    sub_10004DC4C(v140, v142);
    sub_10000341C(&qword_10025F350, &unk_1001D40F0);
    if (swift_dynamicCast())
    {
      sub_100008198((v0 + 232), v0 + 192);
      v150 = *(v0 + 224);
      sub_100027874((v0 + 192), *(v0 + 216));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10004DD08(v148, v142);
        v151 = *(v0 + 224);
        sub_100027874((v0 + 192), *(v0 + 216));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v206 = *(v0 + 752);
        v94 = *(v0 + 760);
        sub_10000F4B4((v0 + 192));
        v144 = v101;
        v147 = v142;
        goto LABEL_66;
      }

      sub_10000F4B4((v0 + 192));
      v144 = v101;
      v147 = v142;
    }

    else
    {
      *(v0 + 264) = 0;
      *(v0 + 248) = 0u;
      *(v0 + 232) = 0u;
      sub_10000F500(v0 + 232, &qword_10025CC40, &qword_1001D1FD0);
    }

    v149 = v211;
    v206 = sub_100095E84(v148, v147);
    v94 = v152;
    sub_10004DD08(v148, v147);
    goto LABEL_73;
  }

  v94 = *(v0 + 1072);

  v95 = *(v0 + 1064);
LABEL_78:
  *(v0 + 1240) = v94;
  *(v0 + 1232) = v95;
  if (*(v222 + 16))
  {
    v167 = objc_opt_self();
    v168 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 944) = 0;
    v169 = [v167 dataWithJSONObject:v168 options:1 error:v0 + 944];

    v170 = *(v0 + 944);
    if (v169)
    {
      v171 = *(v0 + 1104);
      v172 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v174 = v173;

      static String.Encoding.utf8.getter();
      v175 = String.init(data:encoding:)();
      if (v176)
      {
        v177 = v176;
        v223 = v175;
        v225 = v174;
        v178 = *(v0 + 1080);
        swift_getKeyPath();
        *(v0 + 880) = v178;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 888) = v178;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v179 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback;
        swift_beginAccess();
        v180 = *(v178 + v179);
        v181 = swift_isUniquelyReferenced_nonNull_native();
        *(v178 + v179) = v180;
        if ((v181 & 1) == 0)
        {
          v180 = sub_10017DD84(0, *(v180 + 2) + 1, 1, v180);
          *(v178 + v179) = v180;
        }

        v183 = *(v180 + 2);
        v182 = *(v180 + 3);
        if (v183 >= v182 >> 1)
        {
          v180 = sub_10017DD84((v182 > 1), v183 + 1, 1, v180);
        }

        v184 = *(v0 + 1080);
        *(v180 + 2) = v183 + 1;
        v185 = &v180[16 * v183];
        *(v185 + 4) = v223;
        *(v185 + 5) = v177;
        *(v178 + v179) = v180;
        swift_endAccess();
        *(v0 + 904) = v184;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        sub_10004DD08(v172, v225);
      }

      else
      {
        sub_10004DD08(v172, v174);
      }
    }

    else
    {
      v186 = v170;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      sub_10000F34C(v224, qword_100276EF0);
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        *v189 = 0;
        _os_log_impl(&_mh_execute_header, v187, v188, "Cannot serialize JSON.", v189, 2u);
      }
    }
  }

  else
  {
  }

  v190 = *(v0 + 1080);
  v191 = *(v0 + 1072);
  swift_getKeyPath();
  *(v0 + 936) = v190;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 928) = v190;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v192 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback;
  swift_beginAccess();
  v193 = *(v190 + v192);
  v194 = swift_isUniquelyReferenced_nonNull_native();
  *(v190 + v192) = v193;
  if ((v194 & 1) == 0)
  {
    v193 = sub_10017DD84(0, *(v193 + 2) + 1, 1, v193);
    *(v190 + v192) = v193;
  }

  v196 = *(v193 + 2);
  v195 = *(v193 + 3);
  if (v196 >= v195 >> 1)
  {
    v193 = sub_10017DD84((v195 > 1), v196 + 1, 1, v193);
  }

  v197 = *(v0 + 1080);
  v198 = *(v0 + 1072);
  v199 = *(v0 + 1064);
  *(v193 + 2) = v196 + 1;
  v200 = &v193[16 * v196];
  *(v200 + 4) = v199;
  *(v200 + 5) = v198;
  *(v190 + v192) = v193;
  swift_endAccess();
  *(v0 + 920) = v197;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 912) = v197;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v201 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager;
  *(v0 + 1248) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager;
  *(v0 + 1256) = *(v197 + v201);

  v202 = swift_task_alloc();
  *(v0 + 1264) = v202;
  *v202 = v0;
  v202[1] = sub_1000822F4;

  return sub_100170B3C(v219);
}

uint64_t sub_1000822F4()
{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v4 = *v1;
  v2[159] = v0;

  v5 = v2[157];
  if (v0)
  {
    v6 = v2[155];

    v7 = v2[150];
    v8 = v2[149];
    v9 = sub_100083150;
  }

  else
  {

    v7 = v2[150];
    v8 = v2[149];
    v9 = sub_100082478;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100082478()
{
  v1 = v0[156];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[135];
  swift_getKeyPath();
  v0[112] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[108] = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = _swiftEmptyArrayStorage;

  v0[104] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[101] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v4 + v1);
  swift_getKeyPath();
  v0[99] = v7;
  sub_1000997E0(&qword_10025F460, type metadata accessor for AttachmentManager);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[136];
    v29 = v5;
    v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = *(v10 + 72);
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = v4;
    do
    {
      v33 = v9;
      v12 = v0[152];
      v13 = v0[151];
      v14 = v0[135];
      sub_10009A70C(v11, v0[137], type metadata accessor for Attachment);
      swift_getKeyPath();
      v0[132] = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[98] = v14;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v15 = *(v4 + v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v5) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_10017D7EC(0, v15[2] + 1, 1, v15);
        *(v4 + v5) = v15;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_10017D7EC(v17 > 1, v18 + 1, 1, v15);
      }

      v19 = v0[152];
      v20 = v0[151];
      v21 = v0[137];
      v22 = v0[135];
      v15[2] = v18 + 1;
      sub_10009A774(v21, v15 + v31 + v18 * v30, type metadata accessor for Attachment);
      v5 = v29;
      *(v32 + v29) = v15;
      swift_endAccess();
      v0[100] = v22;
      swift_getKeyPath();
      v4 = v32;
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v11 += v30;
      v9 = v33 - 1;
    }

    while (v33 != 1);
  }

  v23 = v0[153];
  v24 = swift_task_alloc();
  v0[160] = v24;
  *v24 = v0;
  v24[1] = sub_1000828F0;
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[135];

  return sub_100083480((v0 + 2), v23, v26, v25);
}

uint64_t sub_1000828F0()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1280);
  v5 = *v1;
  v3[161] = v0;
  v3[162] = v2[2];
  *(v3 + 163) = *(v3 + 3);
  v3[165] = v2[5];
  *(v3 + 83) = *(v3 + 3);

  v6 = v2[155];

  v7 = v2[150];
  v8 = v2[149];
  if (v0)
  {
    v9 = sub_100083260;
  }

  else
  {
    v9 = sub_100082AB4;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100082AB4()
{
  v1 = v0[165];
  v2 = v0[152];
  v3 = v0[151];
  v4 = v0[135];
  swift_getKeyPath();
  v0[102] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[103] = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v39 = v5;
  *(v4 + v5) = _swiftEmptyArrayStorage;

  v0[105] = v4;
  swift_getKeyPath();
  v40 = v4;
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = (v0[165] + 40);
    do
    {
      v42 = v7;
      v9 = v0[152];
      v10 = v0[151];
      v11 = v0[135];
      v13 = *(v8 - 1);
      v12 = *v8;
      swift_getKeyPath();
      v0[106] = v11;
      sub_10004DC4C(v13, v12);
      v41 = v13;
      v14 = v12;
      sub_10004DC4C(v13, v12);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[107] = v11;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v15 = *(v40 + v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + v39) = v15;
      v17 = v40;
      v18 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_10017DE90(0, *(v15 + 2) + 1, 1, v15);
        v18 = v39;
        v17 = v40;
        v15 = v25;
        *(v40 + v39) = v25;
      }

      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v26 = v15;
        v27 = v17;
        v28 = v18;
        v29 = sub_10017DE90((v19 > 1), v20 + 1, 1, v26);
        v18 = v28;
        v17 = v27;
        v15 = v29;
      }

      v8 += 2;
      v21 = v0[152];
      v22 = v0[151];
      v23 = v0[135];
      *(v15 + 2) = v20 + 1;
      v24 = &v15[16 * v20];
      *(v24 + 4) = v41;
      *(v24 + 5) = v14;
      *(v17 + v18) = v15;
      swift_endAccess();
      v0[109] = v23;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      sub_10004DD08(v41, v14);

      v7 = v42 - 1;
    }

    while (v42 != 1);
  }

  v30 = swift_task_alloc();
  v0[168] = v30;
  *v30 = v0;
  v30[1] = sub_100082E54;
  v31 = v0[167];
  v32 = v0[166];
  v33 = v0[165];
  v34 = v0[164];
  v35 = v0[163];
  v36 = v0[162];
  v37 = v0[135];

  return sub_1000897EC(v36, v35, v34, v33, v32, v31, 0, 0);
}

uint64_t sub_100082E54()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v4 = *v1;
  *(*v1 + 1352) = v0;

  v5 = v2[167];
  v6 = v2[165];
  v7 = v2[164];
  v8 = v2[163];

  v9 = v2[150];
  v10 = v2[149];
  if (v0)
  {
    v11 = sub_100083370;
  }

  else
  {
    v11 = sub_100083038;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100083038()
{
  v1 = v0[153];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[143];
  v6 = v0[142];
  v7 = v0[141];
  v8 = v0[138];
  v9 = v0[137];

  sub_100099074(v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100083150()
{
  v1 = v0[153];
  v2 = v0[148];
  v3 = v0[147];

  sub_100099074(v3);
  v4 = v0[159];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[138];
  v11 = v0[137];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100083260()
{
  v1 = v0[153];
  v2 = v0[148];
  v3 = v0[147];

  sub_100099074(v3);
  v4 = v0[161];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[138];
  v11 = v0[137];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100083370()
{
  v1 = v0[153];
  v2 = v0[148];
  v3 = v0[147];

  sub_100099074(v3);
  v4 = v0[169];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[138];
  v11 = v0[137];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100083480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *(*(type metadata accessor for ToolChoice() - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v8;
  v5[21] = v7;

  return _swift_task_switch(sub_10008354C, v8, v7);
}

uint64_t sub_10008354C()
{
  v1 = v0[17];
  v19 = v0[18];
  v2 = v0[14];
  sub_10000341C(&qword_10025F448, &qword_1001D43E0);
  v3 = *(type metadata accessor for ToolType() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  static ToolType.imageGenerator.getter();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_100186E04();
  v11 = v10;
  v0[11] = &type metadata for RequestUserInfoTool;
  v0[12] = sub_10009A590();
  v12 = swift_allocObject();
  v0[8] = v12;
  v12[2] = 0xD000000000000013;
  v12[3] = 0x80000001001E4A30;
  v12[4] = v9;
  v12[5] = v11;
  v12[6] = &unk_1001D43F0;
  v12[7] = v8;
  static ToolType.tooling(_:)();
  sub_10000F4B4(v0 + 8);
  static ToolChoice.automatic.getter();
  GenerativeExperiencesSession.toolChoice.setter();
  GenerativeExperiencesSession.tools.setter();
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_1000837B0;
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[15];

  return sub_10008569C((v0 + 2), v16, v17, v14);
}

uint64_t sub_1000837B0()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[23] = v0;
  v3[24] = v2[2];
  *(v3 + 25) = *(v3 + 3);
  v3[27] = v2[5];
  *(v3 + 14) = *(v3 + 3);

  v6 = v2[21];
  v7 = v2[20];
  if (v0)
  {
    v8 = sub_1000839D4;
  }

  else
  {
    v8 = sub_10008392C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10008392C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 104);
  v8 = *(v0 + 200);
  v9 = *(v0 + 216);

  *v5 = v2;
  *(v5 + 8) = v8;
  *(v5 + 24) = v9;
  *(v5 + 40) = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000839D4()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_100083A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(*(type metadata accessor for ToolChoice() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100083AD4, 0, 0);
}

uint64_t sub_100083AD4()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[10];
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[13] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = sub_100083DA0;
      v6 = v0[8];

      return sub_10008B430(v6);
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F34C(v13, qword_100276F08);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "request user info tool was invoked, but GES session is nil", v16, 2u);
    }

    v12 = sub_100006100(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F34C(v8, qword_100276F08);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "request user info tool was invoked, but composition model is nil", v11, 2u);
    }

    v12 = sub_100006100(_swiftEmptyArrayStorage);
  }

  v17 = v0[11];

  v18 = v0[1];

  return v18(v12);
}

uint64_t sub_100083DA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_100084008;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_100083EC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100083EC8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_10000341C(&qword_10025F448, &qword_1001D43E0);
  v4 = *(type metadata accessor for ToolType() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  static ToolType.imageGenerator.getter();
  GenerativeExperiencesSession.tools.setter();
  static ToolChoice.automatic.getter();
  GenerativeExperiencesSession.toolChoice.setter();

  v7 = v0[16];
  v8 = v0[11];

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_100084008()
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "error providing requested info to model: %@", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  v9 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[15];

  return v13();
}

uint64_t sub_1000841C0(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = sub_10000341C(&qword_10025F418, &qword_1001D4388);
  v3[35] = v4;
  v5 = *(v4 - 8);
  v3[36] = v5;
  v6 = *(v5 + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v3[38] = v7;
  v8 = *(v7 - 8);
  v3[39] = v8;
  v9 = *(v8 + 64) + 15;
  v3[40] = swift_task_alloc();
  v10 = sub_10000341C(&qword_10025F428, &qword_1001D4398);
  v3[41] = v10;
  v11 = *(v10 - 8);
  v3[42] = v11;
  v12 = *(v11 + 64) + 15;
  v3[43] = swift_task_alloc();
  v13 = sub_10000341C(&qword_10025F430, &qword_1001D43A0);
  v3[44] = v13;
  v14 = *(v13 - 8);
  v3[45] = v14;
  v15 = *(v14 + 64) + 15;
  v3[46] = swift_task_alloc();
  v16 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v17 = type metadata accessor for CompositionModel.Session(0);
  v3[48] = v17;
  v18 = *(v17 - 8);
  v3[49] = v18;
  v19 = *(v18 + 64) + 15;
  v3[50] = swift_task_alloc();
  v20 = sub_10000341C(&qword_10025F438, &qword_1001D43A8);
  v3[51] = v20;
  v21 = *(v20 - 8);
  v3[52] = v21;
  v3[53] = *(v21 + 64);
  v3[54] = swift_task_alloc();
  v22 = *(*(sub_10000341C(&qword_10025F440, &qword_1001D43B0) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = type metadata accessor for MainActor();
  v3[58] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[59] = v24;
  v3[60] = v23;

  return _swift_task_switch(sub_100084548, v24, v23);
}

uint64_t sub_100084548()
{
  v1 = *(v0 + 264);
  v2 = TokenStreamHandler.stream(fields:)();
  if (!sub_10017CF7C(v2))
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 416);

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_10;
  }

  v3 = *(v0 + 408);
  if (_swift_isClassOrObjCExistentialType())
  {
    sub_10017CF08(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = *(v0 + 424);
      v5 = sub_10017D2D4(0, v2);
      if (v4 != 8)
      {
        __break(1u);
        return TokenStreamHandler.finalize()(v5, v6);
      }

      v7 = *(v0 + 448);
      v8 = *(v0 + 408);
      v9 = *(v0 + 416);
      *(v0 + 184) = v5;
      (*(v9 + 16))(v7, v0 + 184, v8);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    sub_10017CF08(0, 1, v2);
  }

  (*(*(v0 + 416) + 16))(*(v0 + 448), v2 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)), *(v0 + 408));
LABEL_9:

  (*(*(v0 + 416) + 56))(*(v0 + 448), 0, 1, *(v0 + 408));
LABEL_10:
  v13 = *(v0 + 440);
  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  sub_10009A2AC(*(v0 + 448), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10009A31C(*(v0 + 440));
    goto LABEL_14;
  }

  v16 = *(v0 + 384);
  v17 = *(v0 + 392);
  v18 = *(v0 + 376);
  v19 = *(v0 + 272);
  (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 440), *(v0 + 408));
  swift_getKeyPath();
  *(v0 + 488) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 192) = v19;
  *(v0 + 496) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v19 + v20, v18, &unk_100262580, &qword_1001CFF70);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v21 = *(v0 + 376);
    (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
    sub_10000F500(v21, &unk_100262580, &qword_1001CFF70);
LABEL_14:
    v22 = async function pointer to TokenStreamHandler.finalize()[1];
    v23 = swift_task_alloc();
    *(v0 + 560) = v23;
    *v23 = v0;
    v23[1] = sub_100085254;
    v6 = *(v0 + 256);
    v24 = *(v0 + 264);
    v5 = v0 + 104;

    return TokenStreamHandler.finalize()(v5, v6);
  }

  v25 = *(v0 + 432);
  v26 = *(v0 + 408);
  v27 = *(v0 + 416);
  v28 = *(v0 + 400);
  v29 = *(v0 + 344);
  v50 = *(v0 + 368);
  v51 = *(v0 + 336);
  v30 = *(v0 + 320);
  v31 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 328);
  v32 = *(v0 + 288);
  v46 = *(v0 + 296);
  v47 = *(v0 + 280);
  sub_10009A774(*(v0 + 376), v28, type metadata accessor for CompositionModel.Session);
  v33 = *(v28 + 8);
  *(v0 + 504) = v33;
  *(v0 + 88) = v26;
  v34 = sub_100099F30();
  *(v0 + 152) = &type metadata for ResponseContent;
  *(v0 + 160) = v34;
  *(v0 + 96) = swift_getOpaqueTypeConformance2();
  v35 = sub_10002DB6C((v0 + 64));
  (*(v27 + 16))(v35, v25, v26);
  v36 = v33;
  Regex.init(_regexString:version:)();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_task_alloc();
  *(v38 + 16) = v0 + 64;
  *(v38 + 24) = v37;
  *(v38 + 32) = xmmword_1001D3B90;
  *(v38 + 48) = 0xE200000000000000;
  *(v38 + 56) = v30;
  (*(v32 + 104))(v46, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v47);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v31 + 8))(v30, v48);
  sub_10000F4B4((v0 + 64));
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v51 + 8))(v29, v49);
  *(v0 + 512) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  *(v0 + 520) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing;
  *(v0 + 528) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate;
  *(v0 + 576) = 1;
  v39 = *(v0 + 456);
  v40 = static MainActor.shared.getter();
  *(v0 + 536) = v40;
  v41 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v42 = swift_task_alloc();
  *(v0 + 544) = v42;
  *v42 = v0;
  v42[1] = sub_100084B40;
  v43 = *(v0 + 368);
  v44 = *(v0 + 352);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 168, v40, &protocol witness table for MainActor, v44, v0 + 200);
}

uint64_t sub_100084B40()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v9 = *v1;
  *(*v1 + 552) = v0;

  v4 = v2[67];

  v5 = v2[59];
  v6 = v2[60];
  if (v0)
  {
    v7 = sub_100085464;
  }

  else
  {
    v7 = sub_100084C64;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100084C64()
{
  v2 = v0[21];
  v1 = v0[22];
  if (v1)
  {
    v3 = v0[21];
    v4 = v0[22];
    if (String.count.getter() < 1)
    {
    }

    else
    {
      if (*(v0 + 576) == 1)
      {
        v5 = v0[64];
        v6 = v0[61];
        v7 = v0[62];
        v8 = v0[34];
        swift_getKeyPath();
        v0[29] = v8;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v8 + v5) == 1)
        {
          v9 = v0[65];
          v10 = v0[61];
          v11 = v0[62];
          v12 = v0[34];
          swift_getKeyPath();
          v0[30] = v12;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v12 + v9) == 1)
          {
            v13 = v0[66];
            v14 = v0[61];
            v15 = v0[62];
            v16 = v0[34];
            swift_getKeyPath();
            v0[31] = v16;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v18 = Strong;
              if ([Strong respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
              {
                v0[6] = nullsub_1;
                v0[7] = 0;
                v0[2] = _NSConcreteStackBlock;
                v0[3] = 1107296256;
                v0[4] = sub_1001256BC;
                v0[5] = &unk_10024D078;
                v19 = _Block_copy(v0 + 2);
                [v18 endTextPlaceholderAndWillInsertText:1 completion:v19];
                swift_unknownObjectRelease();
                _Block_release(v19);
                v20 = v0[7];
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }
      }

      v32 = v0[69];
      v33 = v0[34];
      v34 = sub_1000D1524(v2, v1);
      if (v32)
      {
        v35 = v0[63];
        v36 = v0[58];
        v80 = v0[56];
        v37 = v0[54];
        v38 = v0[51];
        v39 = v0[52];
        v79 = v0[50];
        v40 = v0[45];
        v41 = v0[46];
        v42 = v0[44];

        (*(v40 + 8))(v41, v42);
        (*(v39 + 8))(v37, v38);
        sub_10009A31C(v80);
        sub_100099074(v79);
        v44 = v0[55];
        v43 = v0[56];
        v45 = v0[54];
        v46 = v0[50];
        v48 = v0[46];
        v47 = v0[47];
        v49 = v0[43];
        v50 = v0[40];
        v51 = v0[37];

        v52 = v0[1];

        return v52();
      }

      v53 = v34;
      v54 = v0[64];
      v55 = v0[61];
      v56 = v0[62];
      v57 = v0[34];

      swift_getKeyPath();
      v0[26] = v57;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v57 + v54) == 1)
      {
        v58 = v0[65];
        v59 = v0[61];
        v60 = v0[62];
        v61 = v0[34];
        swift_getKeyPath();
        v0[27] = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v61 + v58) == 1)
        {
          v62 = v0[66];
          v63 = v0[61];
          v64 = v0[62];
          v65 = v0[34];
          swift_getKeyPath();
          v0[28] = v65;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v66 = swift_unknownObjectWeakLoadStrong();
          if (v66)
          {
            v67 = v66;
            v68 = v0[63];
            v69 = *v0[50];
            v70 = [v68 range];
            [v67 compositionSession:v69 didReceiveText:v53 replacementRange:v70 inContext:v71 finished:{v68, 0}];
            swift_unknownObjectRelease();
          }
        }
      }

      *(v0 + 576) = 0;
    }

    v72 = v0[57];
    v73 = static MainActor.shared.getter();
    v0[67] = v73;
    v74 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v75 = swift_task_alloc();
    v0[68] = v75;
    *v75 = v0;
    v75[1] = sub_100084B40;
    v76 = v0[46];
    v77 = v0[44];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 21, v73, &protocol witness table for MainActor, v77, v0 + 25);
  }

  else
  {
    v21 = v0[54];
    v22 = v0[51];
    v23 = v0[52];
    v24 = v0[50];
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[44];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v21, v22);
    sub_100099074(v24);
    v28 = async function pointer to TokenStreamHandler.finalize()[1];
    v29 = swift_task_alloc();
    v0[70] = v29;
    *v29 = v0;
    v29[1] = sub_100085254;
    v30 = v0[32];
    v31 = v0[33];

    return TokenStreamHandler.finalize()(v0 + 13, v30);
  }
}

uint64_t sub_100085254()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v10 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_1000855AC;
  }

  else
  {
    v7 = v2[14];

    v8 = v2[15];

    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_100085378;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100085378()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[37];

  sub_10009A31C(v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100085464()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 400);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 352);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v3, v4);
  sub_10009A31C(v2);
  v10 = *(v0 + 200);
  sub_100099074(v6);
  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  v14 = *(v0 + 400);
  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  v17 = *(v0 + 344);
  v18 = *(v0 + 320);
  v19 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000855AC()
{
  v1 = v0[58];
  v2 = v0[56];

  sub_10009A31C(v2);
  v3 = v0[71];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
  v7 = v0[50];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[43];
  v11 = v0[40];
  v12 = v0[37];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10008569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[56] = a4;
  v5[57] = v4;
  v5[54] = a2;
  v5[55] = a3;
  v5[53] = a1;
  v6 = type metadata accessor for PromptCompletionStream();
  v5[58] = v6;
  v7 = *(v6 - 8);
  v5[59] = v7;
  v8 = *(v7 + 64) + 15;
  v5[60] = swift_task_alloc();
  v9 = sub_10000341C(&qword_10025F398, &qword_1001D42D0);
  v5[61] = v9;
  v10 = *(v9 - 8);
  v5[62] = v10;
  v11 = *(v10 + 64) + 15;
  v5[63] = swift_task_alloc();
  v12 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v5[64] = v12;
  v13 = *(v12 - 8);
  v5[65] = v13;
  v14 = *(v13 + 64) + 15;
  v5[66] = swift_task_alloc();
  v15 = *(*(type metadata accessor for OutputDenyListBundle() - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v16 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v5[68] = v16;
  v17 = *(v16 - 8);
  v5[69] = v17;
  v18 = *(v17 + 64) + 15;
  v5[70] = swift_task_alloc();
  v19 = type metadata accessor for StringResponseSanitizer();
  v5[71] = v19;
  v20 = *(v19 - 8);
  v5[72] = v20;
  v21 = *(v20 + 64) + 15;
  v5[73] = swift_task_alloc();
  v22 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v5[74] = v22;
  v23 = *(v22 - 8);
  v5[75] = v23;
  v24 = *(v23 + 64) + 15;
  v5[76] = swift_task_alloc();
  v25 = *(*(type metadata accessor for InputDenyListBundle() - 8) + 64) + 15;
  v5[77] = swift_task_alloc();
  v26 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v5[78] = v26;
  v27 = *(v26 - 8);
  v5[79] = v27;
  v28 = *(v27 + 64) + 15;
  v5[80] = swift_task_alloc();
  v29 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[81] = v29;
  v30 = *(v29 - 8);
  v5[82] = v30;
  v31 = *(v30 + 64) + 15;
  v5[83] = swift_task_alloc();
  v32 = *(*(sub_10000341C(&qword_10025F3A0, &qword_1001D42D8) - 8) + 64) + 15;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v33 = type metadata accessor for SamplingParameters();
  v5[86] = v33;
  v34 = *(v33 - 8);
  v5[87] = v34;
  v35 = *(v34 + 64) + 15;
  v5[88] = swift_task_alloc();
  v36 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v5[89] = swift_task_alloc();
  v37 = type metadata accessor for PromptCompletion();
  v5[90] = v37;
  v38 = *(v37 - 8);
  v5[91] = v38;
  v39 = *(v38 + 64) + 15;
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[98] = static MainActor.shared.getter();
  v41 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[99] = v41;
  v5[100] = v40;

  return _swift_task_switch(sub_100085BF4, v41, v40);
}

uint64_t sub_100085BF4()
{
  v1 = v0[89];
  v2 = v0[57];
  swift_getKeyPath();
  v0[51] = v2;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, v1, &unk_100262580, &qword_1001CFF70);
  v4 = type metadata accessor for CompositionModel.Session(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[89];
  if (v5)
  {
    sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v7 = v0[89];
    v8 = *(v6 + 8);
    sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    [v8 range];
  }

  v0[17] = &type metadata for WritingTools;
  v0[18] = sub_10002AC88();
  *(v0 + 112) = 9;
  v9 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 14);
  if ((v9 & 1) != 0 && (v10 = v0[57], swift_getKeyPath(), v0[52] = v10, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) & 1) == 0))
  {
    v48 = v0[88];
    v136 = v0[87];
    v138 = v0[86];
    v49 = v0[85];
    v50 = v0[84];
    v100 = v0[83];
    v132 = v0[82];
    v134 = v0[81];
    v51 = v0[80];
    v52 = v0[79];
    v53 = v0[77];
    v92 = v0[78];
    v94 = v0[76];
    v96 = v0[75];
    v98 = v0[74];
    v118 = v0[73];
    v126 = v0[72];
    v128 = v0[71];
    v108 = v0[69];
    v110 = v0[68];
    v102 = v0[67];
    v104 = v0[70];
    v112 = v0[66];
    v114 = v0[65];
    v116 = v0[64];
    v130 = v0[57];
    v120 = v0[55];
    v122 = v0[56];
    v124 = v0[54];
    v54 = type metadata accessor for SamplingStrategy();
    (*(*(v54 - 8) + 56))(v49, 1, 1, v54);
    sub_1000081F8(v49, v50, &qword_10025F3A0, &qword_1001D42D8);
    v106 = v48;
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    SamplingParameters.tokenHealing.setter();
    sub_10000F500(v49, &qword_10025F3A0, &qword_1001D42D8);
    static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
    v55 = v0[32];
    v56 = v0[33];
    v57 = sub_100027874(v0 + 29, v55);
    v58 = *(v55 - 8);
    v59 = *(v58 + 64) + 15;
    v60 = swift_task_alloc();
    (*(v58 + 16))(v60, v57, v55, v61, v62, v63);
    v64 = *(v56 + 16);
    InputDenyListBundle.init<A>(resource:)();

    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 29);
    v65 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
    (*(*(v65 - 8) + 56))(v51, 0, 1, v65);
    (*(v52 + 104))(v51, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v92);
    v66 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
    (*(*(v66 - 8) + 56))(v94, 1, 1, v66);
    (*(v96 + 104))(v94, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v98);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
    v68 = v0[37];
    v67 = v0[38];
    v69 = sub_100027874(v0 + 34, v68);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64) + 15;
    v72 = swift_task_alloc();
    (*(v70 + 16))(v72, v69, v68, v73, v74, v75);
    v76 = *(v67 + 16);
    OutputDenyListBundle.init<A>(resource:)();

    StringResponseSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 34);
    v77 = type metadata accessor for StringResponseSanitizer.Overrides();
    (*(*(v77 - 8) + 56))(v104, 0, 1, v77);
    (*(v108 + 104))(v104, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v110);
    v78 = type metadata accessor for StringResponseSanitizer.Guardrails();
    (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
    (*(v114 + 104))(v112, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v116);
    StringResponseSanitizer.init(overrides:guardrails:)();
    v79 = swift_task_alloc();
    *(v79 + 16) = v120;
    *(v79 + 24) = v122;
    sub_100099F30();
    v80 = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();
    v0[101] = v80;

    (*(v126 + 8))(v118, v128);
    (*(v132 + 8))(v100, v134);
    (*(v136 + 8))(v106, v138);
    v81 = sub_1000713A0();
    v0[102] = v81;
    if (v81)
    {
      v82 = swift_task_alloc();
      v0[103] = v82;
      *v82 = v0;
      v82[1] = sub_100086AA8;
      v83 = v0[96];
      v84 = v0[57];

      return sub_1000841C0(v83, v80);
    }

    else
    {
      v85 = async function pointer to TokenStreamHandler.content()[1];
      v86 = swift_task_alloc();
      v0[105] = v86;
      *v86 = v0;
      v86[1] = sub_100086F14;
      v87 = v0[94];

      return TokenStreamHandler.content()(v0 + 48, v87);
    }
  }

  else
  {
    v11 = v0[88];
    v135 = v0[87];
    v137 = v0[86];
    v12 = v0[85];
    v13 = v0[84];
    v95 = v0[83];
    v131 = v0[82];
    v133 = v0[81];
    v14 = v0[80];
    v15 = v0[79];
    v16 = v0[77];
    v89 = v0[78];
    v90 = v0[76];
    v91 = v0[75];
    v93 = v0[74];
    v115 = v0[73];
    v121 = v0[72];
    v123 = v0[71];
    v99 = v0[70];
    v101 = v0[69];
    v97 = v0[67];
    v103 = v0[68];
    v105 = v0[66];
    v107 = v0[65];
    v109 = v0[64];
    v117 = v0[63];
    v127 = v0[61];
    v129 = v0[62];
    v125 = v0[60];
    v111 = v0[55];
    v113 = v0[56];
    v119 = v0[54];
    v17 = type metadata accessor for SamplingStrategy();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    sub_1000081F8(v12, v13, &qword_10025F3A0, &qword_1001D42D8);
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    v18 = v11;
    SamplingParameters.tokenHealing.setter();
    sub_10000F500(v12, &qword_10025F3A0, &qword_1001D42D8);
    static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
    v19 = v0[22];
    v20 = v0[23];
    v21 = sub_100027874(v0 + 19, v19);
    v22 = *(v19 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    (*(v22 + 16))(v24, v21, v19, v25, v26, v27);
    v28 = *(v20 + 16);
    InputDenyListBundle.init<A>(resource:)();

    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 19);
    v29 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
    (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    (*(v15 + 104))(v14, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v89);
    v30 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
    (*(*(v30 - 8) + 56))(v90, 1, 1, v30);
    (*(v91 + 104))(v90, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v93);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
    v32 = v0[27];
    v31 = v0[28];
    v33 = sub_100027874(v0 + 24, v32);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64) + 15;
    v36 = swift_task_alloc();
    (*(v34 + 16))(v36, v33, v32, v37, v38, v39);
    v40 = *(v31 + 16);
    OutputDenyListBundle.init<A>(resource:)();

    StringResponseSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 24);
    v41 = type metadata accessor for StringResponseSanitizer.Overrides();
    (*(*(v41 - 8) + 56))(v99, 0, 1, v41);
    (*(v101 + 104))(v99, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v103);
    v42 = type metadata accessor for StringResponseSanitizer.Guardrails();
    (*(*(v42 - 8) + 56))(v105, 1, 1, v42);
    (*(v107 + 104))(v105, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v109);
    StringResponseSanitizer.init(overrides:guardrails:)();
    v43 = swift_task_alloc();
    *(v43 + 16) = v111;
    *(v43 + 24) = v113;
    sub_100099F30();
    GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:query:)();

    (*(v121 + 8))(v115, v123);
    (*(v131 + 8))(v95, v133);
    (*(v135 + 8))(v18, v137);
    TokenStream.events.getter();
    (*(v129 + 8))(v117, v127);
    v44 = async function pointer to PromptCompletionStream.collect()[1];
    v45 = swift_task_alloc();
    v0[115] = v45;
    *v45 = v0;
    v45[1] = sub_100087624;
    v46 = v0[93];
    v47 = v0[60];

    return PromptCompletionStream.collect()(v46);
  }
}

uint64_t sub_100086AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 800);
  v6 = *(v2 + 792);
  if (v0)
  {
    v7 = sub_1000881D8;
  }

  else
  {
    v7 = sub_100086BE4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100086BE4()
{
  v25 = v0;
  (*(v0[91] + 32))(v0[97], v0[96], v0[90]);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[102];
  v6 = v0[101];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished collecting completion for streaming", v7, 2u);
  }

  swift_unknownObjectRelease();
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v1, qword_100276F08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[97];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    PromptCompletion.metadata.getter();
    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = sub_10002510C(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "metadata: %s", v11, 0xCu);
    sub_10000F4B4(v12);
  }

  v17 = v0[97];
  v18 = v0[92];
  v19 = v0[91];
  v20 = v0[90];
  swift_beginAccess();
  (*(v19 + 16))(v18, v17, v20);
  v21 = swift_task_alloc();
  v0[117] = v21;
  *v21 = v0;
  v21[1] = sub_100087AD4;
  v22 = v0[92];

  return sub_100097654((v0 + 2), v22);
}

uint64_t sub_100086F14()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v10 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v4 = v2[100];
    v5 = v2[99];
    v6 = sub_100088040;
  }

  else
  {
    v7 = v2[49];

    v8 = v2[50];

    v4 = v2[100];
    v5 = v2[99];
    v6 = sub_100087040;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100087040()
{
  (*(v0[91] + 32))(v0[95], v0[94], v0[90]);
  v1 = swift_task_alloc();
  v0[107] = v1;
  *v1 = v0;
  v1[1] = sub_1000870F8;
  v2 = v0[95];

  return sub_100097654((v0 + 8), v2);
}

uint64_t sub_1000870F8()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 856);
  v5 = *v1;
  v3[108] = v0;
  v3[109] = v2[8];
  *(v3 + 55) = *(v3 + 9);
  v3[112] = v2[11];
  *(v3 + 113) = *(v3 + 6);

  v6 = v2[100];
  v7 = v2[99];
  if (v0)
  {
    v8 = sub_100087468;
  }

  else
  {
    v8 = sub_100087278;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100087278()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);
  v3 = *(v0 + 728);

  v28 = *(v0 + 872);
  v29 = *(v0 + 912);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 680);
  v16 = *(v0 + 672);
  v17 = *(v0 + 664);
  v18 = *(v0 + 640);
  v19 = *(v0 + 616);
  v20 = *(v0 + 608);
  v21 = *(v0 + 584);
  v22 = *(v0 + 560);
  v23 = *(v0 + 536);
  v10 = *(v0 + 528);
  v24 = *(v0 + 504);
  v25 = *(v0 + 480);
  v11 = *(v0 + 424);
  v27 = *(v0 + 896);
  v26 = *(v0 + 880);
  (*(v3 + 8))(*(v0 + 760), *(v0 + 720));

  *v11 = v28;
  *(v11 + 8) = v26;
  *(v11 + 24) = v27;
  *(v11 + 40) = v29;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100087468()
{
  v1 = v0[101];
  v2 = v0[98];
  v3 = v0[95];
  v4 = v0[91];
  v5 = v0[90];

  (*(v4 + 8))(v3, v5);
  v28 = v0[108];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[84];
  v18 = v0[83];
  v19 = v0[80];
  v20 = v0[77];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[63];
  v27 = v0[60];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100087624()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *(*v1 + 480);
  v5 = *(*v1 + 472);
  v6 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 928) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 800);
  v9 = *(v2 + 792);
  if (v0)
  {
    v10 = sub_10008837C;
  }

  else
  {
    v10 = sub_1000877BC;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000877BC()
{
  v22 = v0;
  (*(v0[91] + 32))(v0[97], v0[93], v0[90]);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished collecting token stream", v4, 2u);
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v1, qword_100276F08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[97];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    PromptCompletion.metadata.getter();
    v10 = Dictionary.description.getter();
    v12 = v11;

    v13 = sub_10002510C(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "metadata: %s", v8, 0xCu);
    sub_10000F4B4(v9);
  }

  v14 = v0[97];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[90];
  swift_beginAccess();
  (*(v16 + 16))(v15, v14, v17);
  v18 = swift_task_alloc();
  v0[117] = v18;
  *v18 = v0;
  v18[1] = sub_100087AD4;
  v19 = v0[92];

  return sub_100097654((v0 + 2), v19);
}

uint64_t sub_100087AD4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 936);
  v5 = *(*v1 + 736);
  v6 = *(*v1 + 728);
  v7 = *(*v1 + 720);
  v8 = *v1;
  v3[118] = v0;
  v3[119] = v2[2];
  *(v3 + 60) = *(v3 + 3);
  v3[122] = v2[5];
  *(v3 + 123) = *(v3 + 3);

  v9 = *(v6 + 8);
  v3[125] = v9;
  v3[126] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = v2[100];
  v11 = v2[99];
  if (v0)
  {
    v12 = sub_100087E98;
  }

  else
  {
    v12 = sub_100087CC8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100087CC8()
{
  v1 = *(v0 + 784);

  v2 = *(v0 + 1008);
  v27 = *(v0 + 952);
  v28 = *(v0 + 992);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 736);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  v17 = *(v0 + 640);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 584);
  v21 = *(v0 + 560);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v10 = *(v0 + 504);
  v24 = *(v0 + 480);
  v11 = *(v0 + 424);
  v25 = *(v0 + 960);
  v26 = *(v0 + 976);
  (*(v0 + 1000))(*(v0 + 776), *(v0 + 720));

  *v11 = v27;
  *(v11 + 8) = v25;
  *(v11 + 24) = v26;
  *(v11 + 40) = v28;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100087E98()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[90];

  v2(v4, v5);
  v28 = v0[118];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[84];
  v18 = v0[83];
  v19 = v0[80];
  v20 = v0[77];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[63];
  v27 = v0[60];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100088040()
{
  v1 = v0[101];
  v2 = v0[98];

  v25 = v0[106];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[84];
  v15 = v0[83];
  v16 = v0[80];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[73];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[63];
  v24 = v0[60];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000881D8()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[98];

  swift_unknownObjectRelease();
  v26 = v0[104];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[84];
  v16 = v0[83];
  v17 = v0[80];
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[70];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[63];
  v25 = v0[60];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10008837C()
{
  v1 = v0[98];

  v24 = v0[116];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[92];
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[84];
  v14 = v0[83];
  v15 = v0[80];
  v16 = v0[77];
  v17 = v0[76];
  v18 = v0[73];
  v19 = v0[70];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[63];
  v23 = v0[60];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100088508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v20 = a2;
  v24 = a4;
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

uint64_t sub_100088738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000F4B4(v15);
  sub_10000341C(&qword_10025F3B8, &qword_1001D4D40);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001CF9D0;
  (*(v6 + 16))(v12 + v11, v9, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1000888F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = type metadata accessor for PromptCompletion.ImageContent();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v6 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_10000341C(&qword_10025F3F8, &qword_1001D4358);
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = sub_10000341C(&qword_10025F400, &qword_1001D4360);
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = *(*(sub_10000341C(&qword_10025F408, &qword_1001D4368) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for MainActor();
  v3[31] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v15;
  v3[33] = v14;

  return _swift_task_switch(sub_100088B4C, v15, v14);
}

uint64_t sub_100088B4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *(v5 + 208);
  v51 = *(v5 + 200);
  v48 = (v7 + 48);
  v49 = (v7 + 56);
  v50 = *(v5 + 136);
  v8 = *(*(v5 + 120) + 16);
  v47 = v8;
  while (1)
  {
    if (v6 == v8)
    {
      v10 = 1;
      v11 = v8;
    }

    else
    {
      if (v6 >= v8)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
      }

      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      v13 = *(v5 + 216);
      v12 = *(v5 + 224);
      v14 = *(v5 + 128);
      v15 = *(v5 + 120) + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v6;
      v16 = *(v51 + 48);
      *v13 = v6;
      (*(v50 + 16))(&v13[v16], v15, v14);
      sub_10002A894(v13, v12, &qword_10025F400, &qword_1001D4360);
      v10 = 0;
    }

    v18 = *(v5 + 224);
    v17 = *(v5 + 232);
    v19 = *(v5 + 200);
    (*v49)(v18, v10, 1, v19);
    sub_10002A894(v18, v17, &qword_10025F408, &qword_1001D4368);
    if ((*v48)(v17, 1, v19) == 1)
    {
      break;
    }

    v56 = v11;
    v20 = *(v5 + 232);
    v21 = *(v5 + 168);
    v22 = *(v5 + 152);
    v52 = v21;
    v53 = *(v5 + 144);
    v23 = *(v5 + 128);
    v54 = *v20;
    v55 = *(v5 + 160);
    v24 = *(v51 + 48);
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v21, 1, 1, v25);
    v27 = *(v50 + 32);
    v27(v22, v20 + v24, v23);
    v28 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v30 = v29 + 2;
    v29[3] = 0;
    v29[4] = v54;
    v27(v29 + v28, v22, v23);
    sub_1000081F8(v52, v55, &unk_10025B5D0, &qword_1001D05A0);
    v31 = (*(v26 + 48))(v55, 1, v25);
    v32 = *(v5 + 160);
    if (v31 == 1)
    {
      sub_10000F500(*(v5 + 160), &unk_10025B5D0, &qword_1001D05A0);
      if (*v30)
      {
        goto LABEL_11;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v32, v25);
      if (*v30)
      {
LABEL_11:
        v33 = v29[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v34 = 0;
    v36 = 0;
LABEL_14:
    v6 = v56;
    v8 = v47;
    v37 = **(v5 + 112);

    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    v38 = v36 | v34;
    if (v36 | v34)
    {
      v38 = v5 + 16;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = v34;
      *(v5 + 40) = v36;
    }

    v9 = *(v5 + 168);
    *(v5 + 72) = 1;
    *(v5 + 80) = v38;
    *(v5 + 88) = v37;
    swift_task_create();

    a1 = sub_10000F500(v9, &unk_10025B5D0, &qword_1001D05A0);
  }

  v39 = *(v5 + 192);
  v40 = **(v5 + 112);
  sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v5 + 272) = _swiftEmptyArrayStorage;
  v41 = *(v5 + 240);
  v42 = static MainActor.shared.getter();
  *(v5 + 280) = v42;
  v43 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v44 = swift_task_alloc();
  *(v5 + 288) = v44;
  *v44 = v5;
  v44[1] = sub_100089044;
  v45 = *(v5 + 192);
  a4 = *(v5 + 176);
  a3 = &protocol witness table for MainActor;
  a1 = v5 + 48;
  a5 = v5 + 96;
  a2 = v42;

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
}

uint64_t sub_100089044()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v11 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];

    v6 = v2[32];
    v7 = v2[33];
    v8 = sub_1000894C0;
  }

  else
  {
    v9 = v2[35];

    v6 = v2[32];
    v7 = v2[33];
    v8 = sub_100089170;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100089170()
{
  v41 = v0;
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176), *(v0 + 48));

    v40 = v3;

    sub_100095CA8(&v40);
    if (v2)
    {
    }

    else
    {
      v19 = v40;
      v20 = v40[2];
      if (v20)
      {
        v40 = _swiftEmptyArrayStorage;
        sub_100163CC0(0, v20, 0);
        v21 = v40;
        v22 = v19 + 6;
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;
          sub_10004DC4C(v23, *v22);
          v40 = v21;
          v26 = v21[2];
          v25 = v21[3];
          if (v26 >= v25 >> 1)
          {
            sub_100163CC0((v25 > 1), v26 + 1, 1);
            v21 = v40;
          }

          v22 += 3;
          v21[2] = v26 + 1;
          v27 = &v21[2 * v26];
          v27[4] = v23;
          v27[5] = v24;
          --v20;
        }

        while (v20);
        v28 = *(v0 + 272);
      }

      else
      {
        v29 = *(v0 + 272);

        v21 = _swiftEmptyArrayStorage;
      }

      v31 = *(v0 + 224);
      v30 = *(v0 + 232);
      v32 = *(v0 + 216);
      v33 = *(v0 + 192);
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = *(v0 + 152);
      **(v0 + 104) = v21;

      v37 = *(v0 + 8);

      return v37();
    }
  }

  else
  {
    v39 = *(v0 + 48);
    v6 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 272);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10017DFC4(0, v8[2] + 1, 1, v8);
    }

    v10 = v8[2];
    v9 = v8[3];
    v11 = v39;
    if (v10 >= v9 >> 1)
    {
      v38 = sub_10017DFC4((v9 > 1), v10 + 1, 1, v8);
      v11 = v39;
      v8 = v38;
    }

    v8[2] = v10 + 1;
    v12 = &v8[3 * v10];
    *(v12 + 2) = v11;
    v12[6] = v1;
    *(v0 + 272) = v8;
    v13 = *(v0 + 240);
    v14 = static MainActor.shared.getter();
    *(v0 + 280) = v14;
    v15 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v16 = swift_task_alloc();
    *(v0 + 288) = v16;
    *v16 = v0;
    v16[1] = sub_100089044;
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 48, v14, &protocol witness table for MainActor, v18, v0 + 96);
  }
}

uint64_t sub_1000894C0()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];

  (*(v5 + 8))(v6, v7);
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000895A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1000895CC, 0, 0);
}

uint64_t sub_1000895CC()
{
  **(v0 + 16) = *(v0 + 24);
  v1 = async function pointer to PromptCompletion.ImageContent.imageData()[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100089668;
  v3 = *(v0 + 32);

  return PromptCompletion.ImageContent.imageData()();
}

uint64_t sub_100089668(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return _swift_task_switch(sub_1000897C4, 0, 0);
  }
}

uint64_t sub_1000897EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 480) = a8;
  *(v9 + 488) = v8;
  *(v9 + 672) = a7;
  *(v9 + 464) = a5;
  *(v9 + 472) = a6;
  *(v9 + 448) = a3;
  *(v9 + 456) = a4;
  *(v9 + 432) = a1;
  *(v9 + 440) = a2;
  v10 = *(*(type metadata accessor for AttributedString() - 8) + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();
  v11 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  *(v9 + 512) = swift_task_alloc();
  v12 = type metadata accessor for CompositionModel.Session(0);
  *(v9 + 520) = v12;
  v13 = *(v12 - 8);
  *(v9 + 528) = v13;
  *(v9 + 536) = *(v13 + 64);
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = type metadata accessor for MainActor();
  *(v9 + 568) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 576) = v15;
  *(v9 + 584) = v14;

  return _swift_task_switch(sub_10008997C, v15, v14);
}

uint64_t sub_10008997C()
{
  v172 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 488);
  swift_getKeyPath();
  *(v0 + 592) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 424) = v4;
  *(v0 + 600) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v4 + v5, v3, &unk_100262580, &qword_1001CFF70);
  v8 = *(v1 + 48);
  v7 = v1 + 48;
  v6 = v8;
  v9 = v8(v3, 1, v2);
  v10 = *(v0 + 512);
  if (v9 == 1)
  {
    v11 = *(v0 + 568);

    sub_10000F500(v10, &unk_100262580, &qword_1001CFF70);
    sub_100099280();
    swift_allocError();
    *v12 = xmmword_1001D3BA0;
    swift_willThrow();
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 496);

    v18 = *(v0 + 8);

    return v18();
  }

  v166 = v6;
  v167 = v7;
  sub_10009A774(v10, *(v0 + 552), type metadata accessor for CompositionModel.Session);
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  v22 = type metadata accessor for Logger();
  *(v0 + 608) = v22;
  sub_10000F34C(v22, qword_100276FB0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 440);
  v26 = *(v0 + 448);
  if (v25)
  {
    v28 = *(v0 + 432);
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = String.count.getter();

    _os_log_impl(&_mh_execute_header, v23, v24, "Query successful. Response length %ld.", v29, 0xCu);
  }

  else
  {
  }

  v30 = *(v0 + 456);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 456);
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(v34 + 16);

    _os_log_impl(&_mh_execute_header, v31, v32, "Model generated %ld images.", v35, 0xCu);
  }

  else
  {
    v36 = *(v0 + 456);
  }

  v37 = *(v0 + 480);
  v38 = *(v0 + 488);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);

  sub_100072700(v40, v39);
  v41 = swift_allocObject();
  *(v0 + 616) = v41;
  v170 = v41;
  if (v37)
  {
    v42 = *(v0 + 480);
    v43 = [v42 mutableCopy];
    if (v43)
    {
      *(v41 + 16) = v43;

      goto LABEL_25;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return _swift_task_switch(v43, v44, v45);
  }

  *(v0 + 88) = &type metadata for WritingTools;
  *(v0 + 96) = sub_10002AC88();
  *(v0 + 64) = 15;
  v46 = isFeatureEnabled(_:)();
  sub_10000F4B4((v0 + 64));
  if (v46)
  {
    if (qword_10025A6E0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

  v70 = *(v0 + 504);
  v72 = *(v0 + 432);
  v71 = *(v0 + 440);

  sub_100039044(v72, v71, v70);
  v73 = *(v0 + 504);
  sub_1000081B0(0, &qword_10025F378, NSMutableAttributedString_ptr);
  *(v41 + 16) = NSAttributedString.init(_:)();
  while (1)
  {
LABEL_25:
    v169 = v0;
    v74 = *(v0 + 456);
    v75 = *(v74 + 16);
    if (v75)
    {
      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v168 = objc_opt_self();
      swift_beginAccess();
      v76 = (v74 + 40);
      p_name = (&stru_100256FF8 + 8);
      do
      {
        v86 = *(v76 - 1);
        v87 = *v76;
        v88 = objc_allocWithZone(NSTextAttachment);
        sub_10004DC4C(v86, v87);
        v89 = [v88 init];
        v90 = objc_allocWithZone(UIImage);
        sub_10004DC4C(v86, v87);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v92 = [v90 initWithData:isa];

        sub_10004DD08(v86, v87);
        [v89 setImage:v92];

        v93 = [v89 p_name[481]];
        if (v93)
        {
          v94 = v93;
          [v93 size];
          v96 = v95;
        }

        else
        {
          v96 = 200.0;
        }

        v97 = [v89 p_name[481]];
        if (v97)
        {
          v78 = v97;
          [v97 size];
          v80 = v79;
        }

        else
        {
          v80 = 200.0;
        }

        v76 += 2;
        v81 = *(v169 + 496);
        [v89 setBounds:{0.0, 0.0, v96, v80}];
        v82 = *(v170 + 16);
        AttributedString.init(stringLiteral:)();
        v83 = NSAttributedString.init(_:)();
        [v82 appendAttributedString:v83];

        v84 = *(v170 + 16);
        v85 = [v168 attributedStringWithAttachment:v89];
        [v84 appendAttributedString:v85];

        sub_10004DD08(v86, v87);
        --v75;
        p_name = &stru_100256FF8.name;
      }

      while (v75);
    }

    v98 = (v169 + 144);
    v99 = *(v169 + 488);
    v100 = swift_allocObject();
    *(v169 + 624) = v100;
    *(v100 + 16) = 0;
    v101 = (v100 + 16);
    swift_beginAccess();
    v102 = [*(v170 + 16) string];
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    *(v169 + 632) = v103;
    *(v169 + 640) = v105;
    *(v169 + 296) = v103;
    *(v169 + 304) = v105;
    v106 = HIBYTE(v105) & 0xF;
    if ((v105 & 0x2000000000000000) == 0)
    {
      v106 = v103;
    }

    v107 = 11;
    if (((v105 >> 60) & ((v103 & 0x800000000000000) == 0)) == 0)
    {
      v107 = 7;
    }

    v108 = v169;
    *(v169 + 312) = 15;
    *(v169 + 320) = v107 | (v106 << 16);

    sub_10000341C(&unk_10025F380, &qword_1001D4200);
    sub_10002AC34();
    sub_100007120(&qword_10025F390, &unk_10025F380, &qword_1001D4200);
    StringProtocol.enumerateSubstrings<A>(in:options:_:)();

    swift_getKeyPath();
    *(v169 + 408) = v99;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = 0;
    if (*(v99 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1)
    {
      v109 = *(v169 + 488);
      swift_beginAccess();
      v22 = 0;
      v110 = *v101;
      if (*(v109 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) != *v101)
      {
        v111 = *(v169 + 488);
        swift_getKeyPath();
        v112 = swift_task_alloc();
        *(v112 + 16) = v111;
        *(v112 + 24) = v110;
        *(v169 + 416) = v111;
        v22 = 0;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v113 = *(v169 + 488);
      sub_1000940A8();
    }

    v114 = *(v169 + 488);
    v115 = *(v170 + 16);
    v116 = v115;
    sub_100074EBC(v115);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Updating Last Response", v119, 2u);
    }

    v120 = *(v169 + 520);
    v121 = *(v169 + 488);
    v123 = *(v169 + 432);
    v122 = *(v169 + 440);

    v124 = objc_allocWithZone(NSAttributedString);
    v125 = String._bridgeToObjectiveC()();
    v126 = [v124 initWithString:v125];
    *(v169 + 648) = v126;

    v127 = sub_10007A25C(v98);
    v129 = v128;
    if (!v166(v128, 1, v120))
    {
      v43 = [v126 copy];
      if (!v43)
      {
        goto LABEL_75;
      }

      v130 = *(*(v169 + 520) + 32);
      v131 = *(v129 + v130);
      *(v129 + v130) = v43;
    }

    (v127)(v98, 0);
    v132 = *(v169 + 672);
    swift_getKeyPath();
    v0 = *(v169 + 488);
    if (v132 != 1)
    {
      break;
    }

    *(v169 + 392) = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v133 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
    if (!__OFSUB__(v133, 1))
    {
      v134 = (v133 - 1) & ~((v133 - 1) >> 63);
      v135 = v170;
      if (v133 == v134)
      {
        goto LABEL_59;
      }

      v142 = *(v169 + 488);
      swift_getKeyPath();
      v143 = swift_task_alloc();
      *(v143 + 16) = v142;
      *(v143 + 24) = v134;
      *(v169 + 400) = v142;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      goto LABEL_58;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_18:
    v48 = *(v0 + 440);
    v47 = *(v0 + 448);
    sub_10000F34C(v22, qword_100276F08);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = *(v0 + 432);
      v51 = *(v0 + 440);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v171 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_10002510C(v52, v51, &v171);
      _os_log_impl(&_mh_execute_header, v49, v50, "response.body = %s", v53, 0xCu);
      sub_10000F4B4(v54);
    }

    v55 = *(v0 + 488);
    v57 = *(v0 + 432);
    v56 = *(v0 + 440);
    v58 = [*(*(v0 + 552) + 8) attributedText];
    v59 = sub_10007A450();
    v60 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v58 formatOptions:v59];

    v61 = String._bridgeToObjectiveC()();
    v62 = [v60 digestedAttributedStringFromFormattedString:v61];

    v43 = [v62 mutableCopy];
    if (!v43)
    {
      goto LABEL_76;
    }

    v63 = v43;

    *(v170 + 16) = v63;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      swift_beginAccess();
      v68 = *(v170 + 16);
      *(v66 + 4) = v68;
      *v67 = v68;
      v69 = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "assistantResponse = %@", v66, 0xCu);
      sub_10000F500(v67, &unk_10025D580, &qword_1001CFA60);
    }
  }

  *(v169 + 368) = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v169 + 360) = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v136 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex;
  v137 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  v138 = __OFADD__(v137, 1);
  v139 = v137 + 1;
  if (v138)
  {
    goto LABEL_72;
  }

  v140 = *(v169 + 488);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) = v139;
  *(v169 + 336) = v140;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v169 + 328) = v140;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + v136) < 2)
  {
    v108 = v169;
    v135 = v170;
    goto LABEL_59;
  }

  v141 = *(v169 + 488);
  swift_getKeyPath();
  *(v169 + 376) = v141;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v108 = v169;
  if (*(v141 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts))
  {
    v135 = v170;
    goto LABEL_59;
  }

  v144 = *(v169 + 488);
  swift_getKeyPath();
  v145 = swift_task_alloc();
  *(v145 + 16) = v144;
  *(v145 + 24) = 1;
  *(v169 + 384) = v144;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v135 = v170;
LABEL_58:

LABEL_59:
  v108[82] = 0;
  v146 = v108[55];
  v147 = v108[56];

  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();
  v150 = os_log_type_enabled(v148, v149);
  v152 = v108[55];
  v151 = v108[56];
  if (v150)
  {
    v153 = swift_slowAlloc();
    *v153 = 134217984;
    *(v153 + 4) = *(v151 + 16);

    _os_log_impl(&_mh_execute_header, v148, v149, "Updating Refinement action with %ld refinement(s)", v153, 0xCu);
  }

  else
  {
    v154 = v108[55];
  }

  v155 = v108[61];
  v156 = v108[56];

  sub_100073770(v157);
  v158 = *(v135 + 16);
  swift_getKeyPath();
  v108[43] = v155;
  v159 = v158;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v155 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == 1)
  {
    v160 = [v159 string];
    if (!v160)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v160 = String._bridgeToObjectiveC()();
    }

    v161 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v160];

    v159 = v161;
  }

  v162 = *(v135 + 16);
  *(v135 + 16) = v159;

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&_mh_execute_header, v163, v164, "Finishing GES session", v165, 2u);
  }

  v43 = sub_10008AC50;
  v44 = 0;
  v45 = 0;

  return _swift_task_switch(v43, v44, v45);
}

uint64_t sub_10008AC50()
{
  v1 = *(v0 + 560);
  *(v0 + 664) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008ACDC, v3, v2);
}

uint64_t sub_10008ACDC()
{
  v1 = v0[83];
  v2 = v0[61];

  v3 = sub_1000713A0();
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v5 = v0[77];
      v6 = v0[68];
      v7 = v0[67];
      v8 = v0[66];
      v9 = v0[61];
      sub_10009A70C(v0[69], v6, type metadata accessor for CompositionModel.Session);
      v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      sub_10009A774(v6, v12 + v10, type metadata accessor for CompositionModel.Session);
      *(v12 + v11) = v5;
      v0[6] = sub_100099DE0;
      v0[7] = v12;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1001256BC;
      v0[5] = &unk_10024D000;
      v13 = _Block_copy(v0 + 2);

      [v4 endTextPlaceholderAndWillInsertText:1 completion:v13];
      swift_unknownObjectRelease();
      _Block_release(v13);
      v14 = v0[7];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v15 = v0[60];
  v16 = v0[61];
  if (((v15 != 0) ^ *(v16 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal)))
  {
    v17 = v15 != 0;
    v18 = v0[82];
    v19 = v0[75];
    v20 = v0[74];
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    v0[44] = v16;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v16 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal) = v15 != 0;
  }

  v22 = v0[73];
  v23 = v0[72];

  return _swift_task_switch(sub_10008AF6C, v23, v22);
}

id sub_10008AF6C()
{
  v51 = v0;
  v0[16] = &type metadata for WritingTools;
  v1 = sub_10002AC88();
  *(v0 + 104) = 7;
  v0[17] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 13);
  if (v2)
  {
    v3 = sub_1000A3970(v0[79], v0[80]);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    sub_10000F34C(v0[76], qword_100276F08);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v50 = v7;
      *v6 = 136642819;
      v8 = Array.description.getter();
      v10 = sub_10002510C(v8, v9, &v50);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "found slots in output: %{sensitive}s", v6, 0xCu);
      sub_10000F4B4(v7);
    }

    v11 = *(v3 + 2);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v47 = v0;
      v50 = _swiftEmptyArrayStorage;
      sub_100163C60(0, v11, 0);
      v13 = v50;
      v14 = v50[2];
      v15 = (v14 << 6) + 88;
      v45 = v3;
      v16 = (v3 + 40);
      do
      {
        v17 = v12;
        v19 = *(v16 - 1);
        v18 = *v16;
        v50 = v13;
        v20 = v14 + 1;
        v21 = v13[3];

        if (v14 >= v21 >> 1)
        {
          sub_100163C60((v21 > 1), v20, 1);
          v13 = v50;
        }

        v13[2] = v20;
        v22 = (v13 + v15);
        *(v22 - 7) = v19;
        *(v22 - 6) = v18;
        *(v22 - 5) = 0;
        *(v22 - 4) = 0xE000000000000000;
        *(v22 - 24) = 0;
        *(v22 - 23) = *v49;
        *(v22 - 5) = *&v49[3];
        *(v22 - 2) = 0;
        *(v22 - 1) = 0xE000000000000000;
        v12 = v17;
        *v22 = v17;
        v15 += 64;
        v16 += 2;
        ++v14;
        --v11;
      }

      while (v11);
      v3 = v45;
      v0 = v47;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v23 = v0[61];
    sub_1000738D0(v13);
    if (*(v3 + 2))
    {
      v24 = v0[61];
      sub_10008EAC0(v3, v0[79], v0[80]);
    }
  }

  v25 = v0[81];
  v26 = *(v0[61] + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_education);
  sub_1000D1DE4(1);
  result = [v25 copy];
  if (result)
  {
    v28 = result;
    v29 = v0[81];
    v30 = v0[80];
    v31 = v0[78];
    v32 = v0[77];
    v33 = v0[71];
    v34 = v0[69];
    v43 = v0[68];
    v44 = v0[64];
    v35 = v0[61];
    v46 = v0[63];
    v48 = v0[62];

    sub_1000728D4(v28);
    v36 = [v29 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = _NSRange.init(_:)();
    v39 = v38;
    v41 = v40;

    sub_100072A68(v37, v39, v41 & 1);

    sub_100099074(v34);

    v42 = v0[1];

    return v42();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B380(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = sub_1000713A0();
  if (result)
  {
    v6 = result;
    v7 = *a2;
    swift_beginAccess();
    v8 = a2[1];
    v9 = *(a3 + 16);
    v10 = [v8 range];
    [v6 compositionSession:v7 didReceiveText:v9 replacementRange:v10 inContext:v11 finished:{v8, 1}];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10008B430(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v4;
  v2[31] = v3;

  return _swift_task_switch(sub_10008B4CC, v4, v3);
}

uint64_t sub_10008B4CC()
{
  v59 = v0;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Model requested more info from the user:", v4, 2u);
  }

  v5 = v0;
  v6 = v0[26];

  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v52 = v5[26];
    v9 = (v52 + 64);
    v55 = *(v6 + 16);
    v53 = v5;
    do
    {
      v19 = *(v9 - 4);
      v20 = *(v9 - 3);
      v21 = *(v9 - 2);
      v22 = *(v9 - 1);
      v23 = *v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v10 = v21;
        v11 = v19;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v23;
        v15 = v13;
        v58 = v13;
        *v12 = 136315138;
        v53[12] = v11;
        v53[13] = v20;
        v53[14] = v10;
        v53[15] = v22;
        *(v53 + 128) = v14;
        v16 = String.init<A>(describing:)();
        v18 = sub_10002510C(v16, v17, &v58);

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s", v12, 0xCu);
        sub_10000F4B4(v15);
      }

      else
      {
      }

      v9 += 40;
      --v7;
    }

    while (v7);
    v58 = _swiftEmptyArrayStorage;
    v26 = v55;
    sub_100163C60(0, v55, 0);
    v8 = v58;
    v27 = v58[2];
    v28 = (v27 << 6) + 88;
    v29 = (v52 + 64);
    do
    {
      v56 = v26;
      v31 = *(v29 - 4);
      v30 = *(v29 - 3);
      v33 = *(v29 - 2);
      v32 = *(v29 - 1);
      v54 = *v29;
      v58 = v8;
      v34 = v8[3];

      if (v27 >= v34 >> 1)
      {
        sub_100163C60((v34 > 1), v27 + 1, 1);
        v8 = v58;
      }

      v29 += 40;
      v8[2] = v27 + 1;
      v35 = (v8 + v28);
      *(v35 - 7) = v31;
      *(v35 - 6) = v30;
      *(v35 - 5) = v33;
      *(v35 - 4) = v32;
      *(v35 - 24) = v54;
      *(v35 - 23) = *v57;
      *(v35 - 5) = *&v57[3];
      *(v35 - 2) = 0;
      *(v35 - 1) = 0xE000000000000000;
      *v35 = _swiftEmptyArrayStorage;
      v28 += 64;
      ++v27;
      --v26;
    }

    while (v56 != 1);
    v36 = v53;
  }

  else
  {
    v36 = v5;
  }

  v37 = v36[27];
  sub_1000738D0(v8);
  swift_getKeyPath();
  v36[23] = v37;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v37 + v38, (v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v36[5])
  {
    v39 = v36[27];
    sub_100028458((v36 + 2), (v36 + 7));
    sub_10000F500((v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v40 = sub_100027874(v36 + 7, v36[10]);
    swift_getKeyPath();
    v36[25] = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v42 = *(v39 + v41);
    v43 = *v40;

    sub_10000B06C(v44);

    sub_10000F4B4(v36 + 7);
  }

  else
  {
    sub_10000F500((v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v46 = v36[27];
  v45 = v36[28];
  sub_10008C6E4();
  v47 = static MainActor.shared.getter();
  v36[32] = v47;
  v48 = swift_allocObject();
  v36[33] = v48;
  swift_weakInit();
  v49 = *(&async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:) + 1);
  v50 = swift_task_alloc();
  v36[34] = v50;
  *v50 = v36;
  v50[1] = sub_10008BABC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36 + 24, v47, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001001E4970, sub_100099B0C, v48, &_s21RequestedInfoResponseVN);
}

uint64_t sub_10008BABC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10008BC48;
  }

  else
  {
    v8 = v2[32];
    v7 = v2[33];

    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10008BBE0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10008BBE0()
{
  v1 = v0[29];

  v2 = v0[24];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10008BC48()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[29];

  v4 = v0[1];
  v5 = v0[35];

  return v4();
}

uint64_t sub_10008BCC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_10007A25C(v10);
    v5 = v4;
    v6 = type metadata accessor for CompositionModel.Session(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = *(v6 + 28);
      sub_10000F500(v5 + v7, &qword_10025F240, &qword_1001D3D58);
      v8 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
      v9 = *(v8 - 8);
      (*(v9 + 16))(v5 + v7, a1, v8);
      (*(v9 + 56))(v5 + v7, 0, 1, v8);
    }

    (v3)(v10, 0);
  }

  return result;
}

void sub_10008BE38(uint64_t a1)
{
  v2 = v1;
  v64[3] = &type metadata for WritingTools;
  v64[4] = sub_10002AC88();
  LOBYTE(v64[0]) = 5;
  v4 = isFeatureEnabled(_:)();
  sub_10000F4B4(v64);
  if ((v4 & 1) == 0)
  {
    if (qword_10025A710 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  swift_getKeyPath();
  v53 = a1;
  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v64[0] = v2;
  v6 = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v64[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10008C5E0(a1);
  swift_endAccess();
  v64[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v64[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v8 = *(*(v2 + v7) + 16);
  if (v8)
  {
    v9 = 0;
    v61 = 0;
    v50 = v2;
    v49[1] = v5;
    v49[0] = v6;
    v52 = v7;
    v51 = v8;
    do
    {
      v54 = v9;
      swift_getKeyPath();
      v63 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = v54;
      v11 = *(v2 + v7);
      if (v54 >= *(v11 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v12 = v11 + (v54 << 6);
      v14 = *(v12 + 72);
      v13 = *(v12 + 80);
      v15 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v16 = v15;
      }

      if (!v16)
      {
        swift_getKeyPath();
        v63 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v10 = v54;
        v17 = *(v2 + v7);
        if (v54 >= *(v17 + 16))
        {
          goto LABEL_35;
        }

        v18 = v53;
        v57 = *(*(v17 + (v54 << 6) + 88) + 16);
        if (v57)
        {

          v20 = 0;
          v21 = (v19 + 48);
          v56 = v19;
          while (1)
          {
            if (v20 >= *(v19 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            v22 = *(v21 - 1);
            v55 = *(v21 - 2);
            v24 = *v21;
            v23 = v21[1];
            v25 = v21[3];
            v26 = *(v18 + 32);
            v27 = v26 & 0x3F;
            v28 = ((1 << v26) + 63) >> 6;
            v29 = 8 * v28;
            v59 = v21[5];

            swift_bridgeObjectRetain_n();
            v60 = v23;
            swift_bridgeObjectRetain_n();
            v62 = v22;

            v58 = v25;

            if (v27 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              __chkstk_darwin(isStackAllocationSafe);
              bzero(v49 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
              v31 = v28;
              v32 = v61;
              v33 = sub_100096898(v49 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v31, v18, v60);
              v61 = v32;
              if (v32)
              {

                swift_willThrow();

                __break(1u);
LABEL_39:

                __break(1u);
                return;
              }

              v34 = v33;
            }

            else
            {
              v36 = swift_slowAlloc();

              v37 = v60;

              v38 = v28;
              v39 = v61;
              v34 = sub_100096808(v36, v38, v18, v37);

              v61 = v39;
              if (v39)
              {
                goto LABEL_39;
              }
            }

            v35 = v34[2];

            if (v35)
            {
              break;
            }

            ++v20;

            v21 += 8;
            v19 = v56;
            if (v57 == v20)
            {

              v2 = v50;
              v7 = v52;
              v8 = v51;
              v10 = v54;
              goto LABEL_5;
            }
          }

          swift_getKeyPath();
          v2 = v50;
          v63 = v50;

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v63 = v2;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          v7 = v52;
          swift_beginAccess();
          v40 = *(v2 + v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + v7) = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_10017E494(v40);
            *(v2 + v7) = v40;
          }

          v8 = v51;
          if (v54 < *(v40 + 2))
          {
            v42 = &v40[64 * v54];
            v43 = *(v42 + 10);
            v44 = v62;
            *(v42 + 9) = v55;
            *(v42 + 10) = v44;
            *(v2 + v7) = v40;
            swift_endAccess();

            v63 = v2;
            swift_getKeyPath();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();

            v10 = v54;
            goto LABEL_5;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          swift_once();
LABEL_29:
          v45 = type metadata accessor for Logger();
          sub_10000F34C(v45, qword_100276F98);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "personal info search is disabled", v48, 2u);
          }

          return;
        }

        v7 = v52;
        v8 = v51;
      }

LABEL_5:
      v9 = v10 + 1;
    }

    while (v9 != v8);
  }
}

uint64_t sub_10008C5E0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1000CBF08(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_10008C6E4()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v61 = &v52 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v52 - v10;
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v63[3] = &type metadata for WritingTools;
  v63[4] = sub_10002AC88();
  LOBYTE(v63[0]) = 5;
  v21 = isFeatureEnabled(_:)();
  sub_10000F4B4(v63);
  if (v21)
  {
    v60 = v11;
    sub_100073EB8(&_swiftEmptySetSingleton);
    UUID.init()();
    (*(v6 + 56))(v20, 0, 1, v5);
    sub_1000742F0(v20);
    swift_getKeyPath();
    v22 = v6;
    v63[0] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
    swift_beginAccess();
    v24 = v1 + v23;
    v25 = v22;
    sub_1000081F8(v24, v18, &unk_100262450, &qword_1001CFAA0);
    if ((*(v22 + 48))(v18, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      v56 = *(v22 + 32);
      v57 = v22 + 32;
      v56(v13, v18, v5);
      v26 = v60;
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = type metadata accessor for Logger();
      sub_10000F34C(v27, qword_100276F08);
      v28 = v25;
      v29 = *(v25 + 16);
      v59 = v13;
      v55 = v29;
      v29(v26, v13, v5);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v54 = v25;
        v33 = v32;
        v34 = swift_slowAlloc();
        v53 = v1;
        v35 = v34;
        v62 = v34;
        *v33 = 136315138;
        v36 = UUID.uuidString.getter();
        v37 = v26;
        v39 = v38;
        v60 = *(v54 + 8);
        (v60)(v37, v5);
        v40 = sub_10002510C(v36, v39, &v62);

        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v30, v31, "starting a new search tool invocation with UUID %s", v33, 0xCu);
        sub_10000F4B4(v35);
        v1 = v53;

        v28 = v54;
      }

      else
      {

        v60 = *(v25 + 8);
        (v60)(v26, v5);
      }

      v45 = type metadata accessor for TaskPriority();
      v46 = v61;
      (*(*(v45 - 8) + 56))(v61, 1, 1, v45);
      v48 = v58;
      v47 = v59;
      v55(v58, v59, v5);
      type metadata accessor for MainActor();

      v49 = static MainActor.shared.getter();
      v50 = (*(v28 + 80) + 40) & ~*(v28 + 80);
      v51 = swift_allocObject();
      *(v51 + 2) = v49;
      *(v51 + 3) = &protocol witness table for MainActor;
      *(v51 + 4) = v1;
      v56(&v51[v50], v48, v5);
      sub_10015C9C8(0, 0, v46, &unk_1001D41A0, v51);

      (v60)(v47, v5);
    }
  }

  else
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000F34C(v41, qword_100276F98);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "personal info search is disabled", v44, 2u);
    }
  }
}

uint64_t sub_10008CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = type metadata accessor for UUID();
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v5[36] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v11 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v12;
  v5[44] = v13;

  return _swift_task_switch(sub_10008CF5C, v12, v13);
}

uint64_t sub_10008CF5C()
{
  v1 = v0[30];
  swift_getKeyPath();
  v0[17] = v1;
  v0[45] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[46] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  v0[47] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v0[48] = v3;
  if (v3)
  {
    v4 = v0[30];
    v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
    v0[49] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher;
    v0[50] = v5;
    v0[51] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds;
    swift_beginAccess();
    v6 = 0;
    while (1)
    {
      v0[52] = v6;
      v7 = v0[46];
      v8 = v0[47];
      v9 = v0[45];
      v10 = v0[30];
      swift_getKeyPath();
      v0[18] = v10;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v10 + v8);
      if (v6 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v12 = *(v11 + (v6 << 6) + 64);
      if (v12 != 1 && v12 != 2)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_15;
      }

      v6 = v0[52] + 1;
      if (v6 == v0[48])
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v32 = v0[46];
    v33 = v0[47];
    v34 = v0[45];
    v35 = v0[30];
    v36 = *(v35 + v0[49]);
    swift_getKeyPath();
    v0[19] = v35;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v35 + v33);
    if (v6 >= *(v37 + 16))
    {
      __break(1u);
    }

    v38 = v37 + (v6 << 6);
    v40 = *(v38 + 48);
    v39 = *(v38 + 56);
    v0[53] = v39;

    v41 = swift_task_alloc();
    v0[54] = v41;
    *v41 = v0;
    v41[1] = sub_10008D418;

    return sub_1000C9E44(v40, v39);
  }

  else
  {
LABEL_8:
    v14 = v0[42];

    if (qword_10025A6E0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F34C(v15, qword_100276F08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "search tool finished; setting current search tool query ID to nil", v18, 2u);
    }

    v19 = v0[38];
    v20 = v0[32];
    v21 = v0[33];
    v22 = v0[30];

    (*(v21 + 56))(v19, 1, 1, v20);
    sub_1000742F0(v19);
    v24 = v0[40];
    v23 = v0[41];
    v26 = v0[38];
    v25 = v0[39];
    v27 = v0[37];
    v29 = v0[34];
    v28 = v0[35];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_10008D418(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v7 = v3[53];

  v8 = v3[44];
  v9 = v3[43];
  if (v1)
  {
    v10 = sub_10008E5A8;
  }

  else
  {
    v10 = sub_10008D5A0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10008D5A0()
{
  v167 = v0;
  v1 = v0[50];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = *(v8 + 16);
  v163 = v8 + 16;
  v164 = v1;
  v162 = v11;
  v11(v4, v9, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  swift_getKeyPath();
  v0[20] = v10;
  v165 = v0 + 20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v6 + 48);
  sub_1000081F8(v4, v5, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(&v164[v10], v5 + v12, &unk_100262450, &qword_1001CFAA0);
  v13 = *(v8 + 48);
  if ((v13)(v5, 1, v7) == 1)
  {
    v14 = v0[32];
    sub_10000F500(v0[41], &unk_100262450, &qword_1001CFAA0);
    if ((v13)(v5 + v12, 1, v14) == 1)
    {
      sub_10000F500(v0[37], &unk_100262450, &qword_1001CFAA0);
      goto LABEL_14;
    }

    v23 = v0[55];
    v24 = v0[42];

    goto LABEL_7;
  }

  v15 = v0[32];
  sub_1000081F8(v0[37], v0[40], &unk_100262450, &qword_1001CFAA0);
  v16 = (v13)(v5 + v12, 1, v15);
  v17 = v0[32];
  v18 = v0[33];
  if (v16 == 1)
  {
    v19 = v0[55];
    v21 = v0[41];
    v20 = v0[42];
    v22 = v0[40];

    sub_10000F500(v21, &unk_100262450, &qword_1001CFAA0);
    (*(v18 + 8))(v22, v17);
LABEL_7:
    sub_10000F500(v0[37], &qword_10025F358, &qword_1001D4140);
LABEL_8:
    if (qword_10025A6E0 != -1)
    {
LABEL_59:
      swift_once();
    }

    v25 = v0[34];
    v27 = v0[31];
    v26 = v0[32];
    v28 = v0[30];
    v29 = type metadata accessor for Logger();
    sub_10000F34C(v29, qword_100276F08);
    v162(v25, v27, v26);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      LODWORD(v161) = v31;
      v32 = v0[50];
      v33 = v0[46];
      v156 = v0[45];
      v157 = v33;
      v158 = v0[39];
      v159 = v32;
      v35 = v0[33];
      v34 = v0[34];
      v36 = v0[32];
      v164 = v13;
      v37 = v0[30];
      v38 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v166[0] = v160;
      *v38 = 136315394;
      v39 = UUID.uuidString.getter();
      v41 = v40;
      v154 = *(v35 + 8);
      v154(v34, v36);
      v42 = sub_10002510C(v39, v41, v166);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      swift_getKeyPath();
      v0[21] = v37;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v43 = v158;
      sub_1000081F8(v37 + v159, v158, &unk_100262450, &qword_1001CFAA0);
      if ((v164)(v43, 1, v36))
      {
        sub_10000F500(v0[39], &unk_100262450, &qword_1001CFAA0);
        v44 = 0xE300000000000000;
        v45 = 7104878;
      }

      else
      {
        v92 = v0[35];
        v93 = v0[32];
        v94 = v0[39];
        v162(v92, v94, v93);
        sub_10000F500(v94, &unk_100262450, &qword_1001CFAA0);
        v95 = UUID.uuidString.getter();
        v44 = v96;
        v154(v92, v93);
        v45 = v95;
      }

      v97 = v161;
      v98 = sub_10002510C(v45, v44, v166);

      *(v38 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v30, v97, "user canceled search tool invocation; returning (query ID is %s, current ID is %s)", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v47 = v0[33];
      v46 = v0[34];
      v48 = v0[32];

      (*(v47 + 8))(v46, v48);
    }

    goto LABEL_49;
  }

  v164 = v13;
  v50 = v0[40];
  v49 = v0[41];
  v161 = v0[37];
  v51 = v0[35];
  (*(v18 + 32))(v51, v5 + v12, v17);
  sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v18 + 8);
  v53(v51, v17);
  sub_10000F500(v49, &unk_100262450, &qword_1001CFAA0);
  v53(v50, v17);
  sub_10000F500(v161, &unk_100262450, &qword_1001CFAA0);
  if ((v52 & 1) == 0)
  {
    v90 = v0[55];
    v91 = v0[42];

    v13 = v164;
    goto LABEL_8;
  }

LABEL_14:
  v54 = v0[46];
  v55 = v0[47];
  v56 = v0[45];
  v57 = v0[30];
  swift_getKeyPath();
  v0[22] = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[23] = v57;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v58 = *(v57 + v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v57 + v55) = v58;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v148 = v0[47];
    v149 = v0[30];
    v58 = sub_10017E494(v58);
    *(v149 + v148) = v58;
  }

  v60 = v0[52];
  if (v60 >= *(v58 + 2))
  {
    __break(1u);
    goto LABEL_61;
  }

  v61 = v0[46];
  v13 = v0[47];
  v62 = v0[45];
  v63 = v0[30];
  v64 = &v58[64 * v60];
  v65 = *(v64 + 11);
  *(v64 + 11) = v0[55];
  *&v13[v63] = v58;
  swift_endAccess();

  v0[24] = v63;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[25] = v63;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *&v13[v63];
  if (v60 >= *(v66 + 16))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_46:
    v122 = type metadata accessor for Logger();
    sub_10000F34C(v122, qword_100276F08);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "search tool finished; setting current search tool query ID to nil", v125, 2u);
    }

    v126 = v0[38];
    v127 = v0[32];
    v128 = v0[33];
    v129 = v0[30];

    (*(v128 + 56))(v126, 1, 1, v127);
    sub_1000742F0(v126);
LABEL_49:
    v131 = v0[40];
    v130 = v0[41];
    v133 = v0[38];
    v132 = v0[39];
    v134 = v0[37];
    v136 = v0[34];
    v135 = v0[35];

    v137 = v0[1];

    return v137();
  }

  v67 = *(v66 + (v0[52] << 6) + 88);
  v156 = *(v67 + 2);
  if (v156)
  {
    v152 = v165 - 6;
    v68 = v0[51];
    v69 = v0[30];

    swift_beginAccess();
    v70 = 0;
    v71 = v0[56];
    v72 = (v67 + 48);
    v154 = v67;
    v155 = v0;
    while (1)
    {
      if (v70 >= *(v67 + 2))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v157 = v70;
      v163 = v0[51];
      v164 = v71;
      v73 = v0[45];
      v162 = v0[46];
      v74 = v0[30];
      v75 = *(v72 - 1);
      v153 = *(v72 - 2);
      v77 = *v72;
      v76 = v72[1];
      v78 = v72[5];
      v79 = v72[3];
      swift_getKeyPath();
      v0[26] = v74;
      v160 = v78;
      v13 = v76;

      v161 = v75;

      v158 = v77;

      v159 = v79;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v80 = *(v74 + v163);
      v81 = *(v80 + 32);
      LODWORD(v76) = v81 & 0x3F;
      v82 = ((1 << v81) + 63) >> 6;
      v83 = 8 * v82;
      swift_bridgeObjectRetain_n();

      if (v76 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        __chkstk_darwin(isStackAllocationSafe);
        bzero(&v152 - ((v83 + 15) & 0x3FFFFFFFFFFFFFF0), v83);
        v85 = v164;
        v86 = sub_100096898(&v152 - ((v83 + 15) & 0x3FFFFFFFFFFFFFF0), v82, v80, v13);

        if (v85)
        {

          swift_willThrow();
        }
      }

      else
      {
        v88 = swift_slowAlloc();

        v89 = v164;
        v86 = sub_100096808(v88, v82, v80, v13);

        if (v89)
        {
          goto LABEL_65;
        }
      }

      v0 = v155;
      v87 = *(v86 + 16);

      if (v87)
      {
        break;
      }

      v70 = v157 + 1;

      v71 = 0;
      v72 += 8;
      v67 = v154;
      if (v156 == v70)
      {

        goto LABEL_38;
      }
    }

    v100 = v0[46];
    v101 = v0[47];
    v102 = v0[45];
    v103 = v0[30];

    swift_getKeyPath();
    v0[27] = v103;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[28] = v103;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v104 = *(v103 + v101);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    *(v103 + v101) = v104;
    if ((v105 & 1) == 0)
    {
      v150 = v0[47];
      v151 = v0[30];
      v104 = sub_10017E494(v104);
      *(v151 + v150) = v104;
    }

    v106 = v0[52];
    if (v106 < *(v104 + 2))
    {
      v108 = v0[46];
      v107 = v0[47];
      v109 = v0[45];
      v110 = v0[30];
      v111 = &v104[64 * v106];
      v112 = *(v111 + 10);
      v113 = v161;
      *(v111 + 9) = v153;
      *(v111 + 10) = v113;
      *(v110 + v107) = v104;
      swift_endAccess();

      v0[29] = v110;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_38;
    }

    __break(1u);
LABEL_65:
  }

  else
  {
LABEL_38:
    --v165;
    while (1)
    {
      v115 = v0[52] + 1;
      if (v115 == v0[48])
      {
        v121 = v0[42];

        if (qword_10025A6E0 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      v0[52] = v115;
      v13 = v0[46];
      v116 = v0[47];
      v117 = v0[45];
      v118 = v0[30];
      swift_getKeyPath();
      v0[18] = v118;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v119 = *(v118 + v116);
      if (v115 >= *(v119 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v120 = *(v119 + (v115 << 6) + 64);
      if (v120 != 1 && v120 != 2)
      {
        break;
      }

      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v114)
      {
        goto LABEL_53;
      }
    }

LABEL_53:
    v139 = v0[46];
    v138 = v0[47];
    v140 = v0[45];
    v141 = v0[30];
    v142 = *(v141 + v0[49]);
    swift_getKeyPath();
    v0[19] = v141;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v143 = *(v141 + v138);
    if (v115 >= *(v143 + 16))
    {
      goto LABEL_62;
    }

    v144 = v143 + (v115 << 6);
    v146 = *(v144 + 48);
    v145 = *(v144 + 56);
    v0[53] = v145;

    v147 = swift_task_alloc();
    v0[54] = v147;
    *v147 = v0;
    v147[1] = sub_10008D418;

    return sub_1000C9E44(v146, v145);
  }
}

uint64_t sub_10008E5A8()
{
  if (qword_10025A6E0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = v0[56];
  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  v45 = v2;
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to get user info: %@", v7, 0xCu);
    sub_10000F500(v8, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  while (1)
  {
    v11 = v0[52] + 1;
    if (v11 == v0[48])
    {
      break;
    }

    v0[52] = v11;
    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[45];
    v15 = v0[30];
    swift_getKeyPath();
    v0[18] = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v15 + v12);
    if (v11 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v17 = *(v16 + (v11 << 6) + 64);
    if (v17 != 1 && v17 != 2)
    {

LABEL_18:
      v35 = v0[46];
      v36 = v0[47];
      v37 = v0[45];
      v38 = v0[30];
      v39 = *(v38 + v0[49]);
      swift_getKeyPath();
      v0[19] = v38;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = *(v38 + v36);
      if (v11 < *(v40 + 16))
      {
        v41 = v40 + (v11 << 6);
        v42 = *(v41 + 48);
        v43 = *(v41 + 56);
        v0[53] = v43;

        v44 = swift_task_alloc();
        v0[54] = v44;
        *v44 = v0;
        v44[1] = sub_10008D418;

        return sub_1000C9E44(v42, v43);
      }

      __break(1u);
      goto LABEL_25;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_18;
    }
  }

  v18 = v0[42];

  if (qword_10025A6E0 == -1)
  {
    goto LABEL_12;
  }

LABEL_25:
  swift_once();
LABEL_12:
  sub_10000F34C(v45, qword_100276F08);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "search tool finished; setting current search tool query ID to nil", v21, 2u);
  }

  v22 = v0[38];
  v23 = v0[32];
  v24 = v0[33];
  v25 = v0[30];

  (*(v24 + 56))(v22, 1, 1, v23);
  sub_1000742F0(v22);
  v27 = v0[40];
  v26 = v0[41];
  v29 = v0[38];
  v28 = v0[39];
  v30 = v0[37];
  v32 = v0[34];
  v31 = v0[35];

  v33 = v0[1];

  return v33();
}

uint64_t sub_10008EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v61 = &v51 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v51 - v13;
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v17 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  UUID.init()();
  (*(v9 + 56))(v23, 0, 1, v8);
  sub_1000744CC(v23);
  swift_getKeyPath();
  v65[1] = v4;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  swift_beginAccess();
  sub_1000081F8(v4 + v24, v21, &unk_100262450, &qword_1001CFAA0);
  result = (*(v9 + 48))(v21, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v59 = v4;
    v56 = *(v9 + 32);
    v57 = v9 + 32;
    v56(v16, v21, v8);
    v26 = v16;
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v58 = v10;
    v27 = type metadata accessor for Logger();
    sub_10000F34C(v27, qword_100276F08);
    v28 = *(v9 + 16);
    v28(v14, v26, v8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v55 = v9;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v52 = v26;
      v33 = v32;
      v34 = swift_slowAlloc();
      v65[0] = v34;
      *v33 = 136315138;
      v35 = UUID.uuidString.getter();
      v51 = v28;
      v37 = v36;
      v38 = *(v9 + 8);
      v53 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54 = v38;
      v38(v14, v8);
      v39 = sub_10002510C(v35, v37, v65);
      v28 = v51;

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "starting a new slot query request with UUID %s", v33, 0xCu);
      sub_10000F4B4(v34);

      v26 = v52;
    }

    else
    {

      v40 = *(v9 + 8);
      v53 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54 = v40;
      v40(v14, v8);
    }

    v41 = type metadata accessor for TaskPriority();
    v42 = v61;
    (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
    v43 = v60;
    v28(v60, v26, v8);
    type metadata accessor for MainActor();
    v44 = v59;

    v45 = v26;
    v46 = v62;

    v47 = v64;

    v48 = static MainActor.shared.getter();
    v49 = (*(v55 + 80) + 64) & ~*(v55 + 80);
    v50 = swift_allocObject();
    *(v50 + 2) = v48;
    *(v50 + 3) = &protocol witness table for MainActor;
    *(v50 + 4) = v44;
    *(v50 + 5) = v46;
    *(v50 + 6) = v63;
    *(v50 + 7) = v47;
    v56(&v50[v49], v43, v8);
    sub_10015C9C8(0, 0, v42, &unk_1001D4138, v50);

    return v54(v45, v8);
  }

  return result;
}

uint64_t sub_10008F098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = type metadata accessor for UUID();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v12 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v8[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v14 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[33] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[34] = v16;
  v8[35] = v15;

  return _swift_task_switch(sub_10008F238, v16, v15);
}

uint64_t sub_10008F238()
{
  v1 = v0[18];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[11] = v1;
  v0[36] = v2;
  v0[37] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
  v0[38] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[39] = v4;
    *v4 = v0;
    v4[1] = sub_10008F4B4;
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[19];

    return sub_1000A0C90(v7, v5, v6);
  }

  else
  {
    v9 = v0[33];

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F08);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "slots were found in the response, but slot parser is nil", v13, 2u);
    }

    v15 = v0[31];
    v14 = v0[32];
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];
    v20 = v0[25];
    v19 = v0[26];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10008F4B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v7 = *(v3 + 280);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = sub_1000902E4;
  }

  else
  {
    v9 = sub_10008F5F8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10008F5F8()
{
  v135 = v0;
  v1 = *(v0 + 36);
  v3 = *(v0 + 32);
  v2 = *(v0 + 33);
  v4 = *(v0 + 28);
  v130 = *(v0 + 37);
  v132 = *(v0 + 27);
  v6 = *(v0 + 23);
  v5 = *(v0 + 24);
  v7 = *(v0 + 22);
  v8 = *(v0 + 18);

  v129 = *(v5 + 16);
  v129(v3, v7, v6);
  (*(v5 + 56))(v3, 0, 1, v6);
  swift_getKeyPath();
  *(v0 + 12) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v9 = v5;

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  swift_beginAccess();
  v11 = *(v132 + 48);
  sub_1000081F8(v3, v4, &unk_100262450, &qword_1001CFAA0);
  v133 = v8;
  v126 = v10;
  sub_1000081F8(&v8[v10], v4 + v11, &unk_100262450, &qword_1001CFAA0);
  v12 = *(v9 + 48);
  v131 = v0;
  if ((v12)(v4, 1, v6) == 1)
  {
    v13 = *(v0 + 23);
    sub_10000F500(*(v0 + 32), &unk_100262450, &qword_1001CFAA0);
    if ((v12)(v4 + v11, 1, v13) == 1)
    {
      sub_10000F500(*(v0 + 28), &unk_100262450, &qword_1001CFAA0);
      goto LABEL_14;
    }

    v20 = *(v0 + 40);

    goto LABEL_7;
  }

  v14 = *(v0 + 23);
  sub_1000081F8(*(v0 + 28), *(v0 + 31), &unk_100262450, &qword_1001CFAA0);
  if ((v12)(v4 + v11, 1, v14) == 1)
  {
    v15 = *(v0 + 40);
    v17 = *(v0 + 31);
    v16 = *(v0 + 32);
    v18 = *(v0 + 23);
    v19 = *(v0 + 24);

    sub_10000F500(v16, &unk_100262450, &qword_1001CFAA0);
    (*(v19 + 8))(v17, v18);
LABEL_7:
    sub_10000F500(*(v0 + 28), &qword_10025F358, &qword_1001D4140);
    goto LABEL_8;
  }

  v46 = *(v0 + 31);
  v45 = *(v0 + 32);
  v123 = *(v0 + 28);
  v47 = *(v0 + 26);
  v48 = *(v0 + 23);
  v49 = *(v0 + 24);
  (*(v49 + 32))(v47, v4 + v11, v48);
  sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v49 + 8);
  v51(v47, v48);
  sub_10000F500(v45, &unk_100262450, &qword_1001CFAA0);
  v51(v46, v48);
  sub_10000F500(v123, &unk_100262450, &qword_1001CFAA0);
  if ((v50 & 1) == 0)
  {
    v99 = *(v0 + 40);

LABEL_8:
    if (qword_10025A6E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_14:
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 40);
  v115 = type metadata accessor for Logger();
  sub_10000F34C(v115, qword_100276F08);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  v12 = "CompositionModelSuggestionsView";
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 40);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v134 = v57;
    *v56 = 136642819;
    v58 = Array.description.getter();
    v60 = sub_10002510C(v58, v59, &v134);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "slot queries: %{sensitive}s", v56, 0xCu);
    sub_10000F4B4(v57);
  }

  v61 = *(v0 + 40);
  v125 = *(v61 + 16);
  if (v125)
  {
    v124 = v61 + 32;
    loga = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    v129 = *(v0 + 18);
    swift_beginAccess();
    v62 = 0;
    v119 = v61;
    while (v62 < *(v61 + 16))
    {
      v63 = *(v0 + 36);
      v64 = *(v0 + 37);
      v65 = *(v0 + 18);
      v66 = (v124 + 32 * v62);
      v68 = *v66;
      v67 = v66[1];
      v69 = v66[3];
      v126 = v66[2];
      swift_getKeyPath();
      *(v0 + 14) = v65;

      v133 = v69;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v70 = *(&loga->isa + v129);
      v71 = *(v70 + 16);
      if (v71)
      {
        v12 = 0;
        v72 = 0;
        while (1)
        {
          v73 = *&v12[v70 + 32] == v68 && *&v12[v70 + 40] == v67;
          if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v72;
          v12 += 64;
          if (v71 == v72)
          {
            goto LABEL_31;
          }
        }

        v121 = v62;
        v79 = *(v0 + 36);
        v80 = *(v0 + 37);
        v81 = *(v0 + 18);
        swift_getKeyPath();
        *(v0 + 15) = v81;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 16) = v81;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v0 = v129;
        swift_beginAccess();
        v82 = *(&loga->isa + v129);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(&loga->isa + v129) = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = sub_10017E494(v82);
          *(&loga->isa + v129) = v82;
        }

        v62 = v121;
        if (v72 >= *(v82 + 2))
        {
          goto LABEL_50;
        }

        v85 = *(v131 + 36);
        v84 = *(v131 + 37);
        v86 = *(v131 + 18);
        v87 = &v12[v82];
        v88 = *&v12[v82 + 56];
        v12 = v133;
        *(v87 + 6) = v126;
        *(v87 + 7) = v133;
        *(&loga->isa + v129) = v82;
        swift_endAccess();

        *(v131 + 17) = v86;
        swift_getKeyPath();
        v0 = v131;
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v61 = v119;
      }

      else
      {
LABEL_31:

        v12 = v133;

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v134 = v77;
          *v76 = 136642819;

          v78 = sub_10002510C(v68, v67, &v134);

          *(v76 + 4) = v78;
          v61 = v119;
          v0 = v131;
          _os_log_impl(&_mh_execute_header, v74, v75, "got slot query for %{sensitive}s, but no slot found", v76, 0xCu);
          sub_10000F4B4(v77);
        }

        else
        {
        }
      }

      if (++v62 == v125)
      {
        v89 = *(v0 + 40);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
LABEL_9:
    v21 = *(v0 + 25);
    v23 = *(v0 + 22);
    v22 = *(v0 + 23);
    v24 = *(v0 + 18);
    v25 = type metadata accessor for Logger();
    sub_10000F34C(v25, qword_100276F08);
    v129(v21, v23, v22);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v122 = v27;
      log = v26;
      v117 = *(v0 + 36);
      v118 = *(v0 + 37);
      v120 = *(v0 + 30);
      v29 = *(v0 + 24);
      v28 = *(v0 + 25);
      v30 = *(v131 + 23);
      v31 = *(v131 + 18);
      v32 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      v116 = *(v29 + 8);
      v116(v28, v30);
      v36 = sub_10002510C(v33, v35, &v134);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      swift_getKeyPath();
      *(v131 + 13) = v31;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000081F8(&v133[v126], v120, &unk_100262450, &qword_1001CFAA0);
      v0 = v131;
      v37 = (v12)(v120, 1, v30);
      v38 = *(v131 + 30);
      if (v37)
      {
        sub_10000F500(*(v131 + 30), &unk_100262450, &qword_1001CFAA0);
        v39 = 0xE300000000000000;
        v40 = 7104878;
      }

      else
      {
        v100 = *(v131 + 26);
        v101 = *(v131 + 23);
        v129(v100, *(v131 + 30), v101);
        sub_10000F500(v38, &unk_100262450, &qword_1001CFAA0);
        v102 = UUID.uuidString.getter();
        v39 = v103;
        v116(v100, v101);
        v40 = v102;
      }

      v104 = *(v131 + 38);
      v105 = sub_10002510C(v40, v39, &v134);

      *(v32 + 14) = v105;
      _os_log_impl(&_mh_execute_header, log, v122, "user already ignored or submitted their own input; returning (query ID is %s, current ID is %s)", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v41 = *(v0 + 38);
      v43 = *(v0 + 24);
      v42 = *(v0 + 25);
      v44 = *(v0 + 23);

      (*(v43 + 8))(v42, v44);
    }

    goto LABEL_46;
  }

LABEL_38:

  v90 = *(v0 + 18);
  sub_10008C6E4();
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v115, qword_100276F08);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "got slot queries; setting current slot query request ID to nil", v93, 2u);
  }

  v94 = *(v0 + 38);
  v95 = *(v0 + 29);
  v96 = *(v0 + 23);
  v97 = *(v0 + 24);
  v98 = *(v0 + 18);

  (*(v97 + 56))(v95, 1, 1, v96);
  sub_1000744CC(v95);

LABEL_46:
  v107 = *(v0 + 31);
  v106 = *(v0 + 32);
  v109 = *(v0 + 29);
  v108 = *(v0 + 30);
  v110 = *(v0 + 28);
  v112 = *(v0 + 25);
  v111 = *(v0 + 26);

  v113 = *(v0 + 1);

  return v113();
}

uint64_t sub_1000902E4()
{
  v1 = v0[33];

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "error generating slot queries: %@", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v3, qword_100276F08);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "got slot queries; setting current slot query request ID to nil", v13, 2u);
  }

  v14 = v0[38];
  v15 = v0[29];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[18];

  (*(v17 + 56))(v15, 1, 1, v16);
  sub_1000744CC(v15);

  v20 = v0[31];
  v19 = v0[32];
  v22 = v0[29];
  v21 = v0[30];
  v23 = v0[28];
  v25 = v0[25];
  v24 = v0[26];

  v26 = v0[1];

  return v26();
}