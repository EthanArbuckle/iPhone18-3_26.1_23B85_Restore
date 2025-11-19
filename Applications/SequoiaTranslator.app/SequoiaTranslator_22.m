uint64_t sub_100269918()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_100269A38, v3, v2);
}

uint64_t sub_100269A38()
{
  v52 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  sub_10001F620(*(v0 + 288), v1, &qword_1003AD830);
  v4 = *(v3 + 48);
  *(v0 + 408) = v4;
  *(v0 + 416) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v4(v1, 1, v2);
  *(v0 + 480) = v2;
  sub_100009EBC(v1, &qword_1003AD830);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 424) = v5;
    *v5 = v0;
    v5[1] = sub_10026A0A0;
    v6 = *(v0 + 272);

    return sub_100266D94(v6);
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 264);
  v10 = *(v0 + 232);
  sub_10001F620(*(v0 + 288), v9, &qword_1003AD830);
  if (v8(v9, 1, v10) == 1)
  {
    v11 = *(v0 + 264);
    sub_100009EBC(*(v0 + 288), &qword_1003AD830);
    v12 = v11;
    v13 = &qword_1003AD830;
LABEL_22:
    sub_100009EBC(v12, v13);
    v46 = swift_task_alloc();
    *(v0 + 376) = v46;
    *v46 = v0;
    v46[1] = sub_1002694F4;

    return sub_100267FEC();
  }

  sub_1000C8AD4(*(v0 + 264), *(v0 + 256));
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = type metadata accessor for Logger();
  *(v0 + 432) = sub_1000078E8(v16, qword_1003D28A8);
  sub_1000C88BC(v14, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 480);
    v20 = *(v0 + 248);
    v21 = *(v0 + 232);
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v22 = 136446467;
    if (v19 == 1)
    {
      v23 = 0x6C616974726170;
    }

    else
    {
      v23 = 0x6C616E6966;
    }

    if (v19 == 1)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = sub_10028D78C(v23, v24, &v51);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2085;
    v26 = (v20 + *(v21 + 20));
    v27 = *v26;
    v28 = v26[1];

    sub_10026CB9C(v20);
    v29 = sub_10028D78C(v27, v28, &v51);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing a %{public}s translation with content %{sensitive}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 248);

    sub_10026CB9C(v30);
  }

  v31 = *(v0 + 256);
  v32 = *(v0 + 232);
  sub_100268550(v31);
  v33 = *(v32 + 24);
  v34 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v36 = Locale._bridgeToObjectiveC()().super.isa;
  v37 = [v34 initWithSourceLocale:isa targetLocale:v36];

  LODWORD(v36) = [v37 isPassthrough];
  if (v36)
  {
    v50 = v33;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Performing passthrough", v40, 2u);
    }

    v41 = *(v0 + 480);
    v49 = *(v0 + 288);
    v42 = *(v0 + 256);
    v43 = *(v0 + 224);
    v44 = *(v0 + 208);
    v45 = *(v0 + 216);

    (*(v45 + 16))(v43, v31 + v50, v44);
    *(v0 + 160) = type metadata accessor for StoredTranslationResult();
    *(v0 + 168) = sub_10026CD5C(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
    sub_100050D60((v0 + 136));

    StoredTranslationResult.init(text:locale:isOffline:romanization:)();
    sub_1002652DC(v42, v0 + 136, v41 != 1, 0);
    sub_10026CB9C(v42);
    sub_100009EBC(v49, &qword_1003AD830);
    v13 = &unk_1003B9EC0;
    v12 = v0 + 136;
    goto LABEL_22;
  }

  v47 = swift_task_alloc();
  *(v0 + 440) = v47;
  *v47 = v0;
  v47[1] = sub_10026A764;
  v48 = *(v0 + 256);

  return sub_10026B3AC(v0 + 16, v48);
}

uint64_t sub_10026A0A0()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10026A1C0, v3, v2);
}

uint64_t sub_10026A1C0()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  sub_100009EBC(v1, &qword_1003AD830);
  sub_10026CCEC(v2, v1);
  v3 = *(v0 + 408);
  v4 = *(v0 + 264);
  v5 = *(v0 + 232);
  sub_10001F620(*(v0 + 288), v4, &qword_1003AD830);
  if (v3(v4, 1, v5) == 1)
  {
    v6 = *(v0 + 264);
    sub_100009EBC(*(v0 + 288), &qword_1003AD830);
    v7 = v6;
    v8 = &qword_1003AD830;
LABEL_18:
    sub_100009EBC(v7, v8);
    v41 = swift_task_alloc();
    *(v0 + 376) = v41;
    *v41 = v0;
    v41[1] = sub_1002694F4;

    return sub_100267FEC();
  }

  sub_1000C8AD4(*(v0 + 264), *(v0 + 256));
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = type metadata accessor for Logger();
  *(v0 + 432) = sub_1000078E8(v11, qword_1003D28A8);
  sub_1000C88BC(v9, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 480);
    v15 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v17 = 136446467;
    if (v14 == 1)
    {
      v18 = 0x6C616974726170;
    }

    else
    {
      v18 = 0x6C616E6966;
    }

    if (v14 == 1)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_10028D78C(v18, v19, &v47);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2085;
    v21 = (v15 + *(v16 + 20));
    v22 = *v21;
    v23 = v21[1];

    sub_10026CB9C(v15);
    v24 = sub_10028D78C(v22, v23, &v47);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Performing a %{public}s translation with content %{sensitive}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 248);

    sub_10026CB9C(v25);
  }

  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  sub_100268550(v26);
  v28 = *(v27 + 24);
  v29 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v31 = Locale._bridgeToObjectiveC()().super.isa;
  v32 = [v29 initWithSourceLocale:isa targetLocale:v31];

  LODWORD(v31) = [v32 isPassthrough];
  if (v31)
  {
    v46 = v28;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Performing passthrough", v35, 2u);
    }

    v36 = *(v0 + 480);
    v45 = *(v0 + 288);
    v37 = *(v0 + 256);
    v38 = *(v0 + 224);
    v39 = *(v0 + 208);
    v40 = *(v0 + 216);

    (*(v40 + 16))(v38, v26 + v46, v39);
    *(v0 + 160) = type metadata accessor for StoredTranslationResult();
    *(v0 + 168) = sub_10026CD5C(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
    sub_100050D60((v0 + 136));

    StoredTranslationResult.init(text:locale:isOffline:romanization:)();
    sub_1002652DC(v37, v0 + 136, v36 != 1, 0);
    sub_10026CB9C(v37);
    sub_100009EBC(v45, &qword_1003AD830);
    v8 = &unk_1003B9EC0;
    v7 = v0 + 136;
    goto LABEL_18;
  }

  v43 = swift_task_alloc();
  *(v0 + 440) = v43;
  *v43 = v0;
  v43[1] = sub_10026A764;
  v44 = *(v0 + 256);

  return sub_10026B3AC(v0 + 16, v44);
}

uint64_t sub_10026A764()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_10026ABBC;
  }

  else
  {
    v5 = sub_10026A8A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10026A8A0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 480) != 1;
  sub_100031DD8(v0 + 16, v0 + 96);
  sub_1002652DC(v2, v0 + 96, v3, 0);
  sub_100009EBC(v0 + 96, &unk_1003B9EC0);
  sub_100008664(v0 + 16);
  sub_10026CB9C(v2);
  sub_100009EBC(v1, &qword_1003AD830);
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *v4 = v0;
  v4[1] = sub_1002694F4;

  return sub_100267FEC();
}

uint64_t sub_10026A9B0()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10026AAD0, v3, v2);
}

uint64_t sub_10026AAD0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10026ABBC()
{
  v14 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 480);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    if (v3 == 1)
    {
      v7 = 0x6C616974726170;
    }

    else
    {
      v7 = 0x6C616E6966;
    }

    if (v3 == 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_10028D78C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    v10 = _convertErrorToNSError(_:)();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Encountered error with a %{public}s translation request: %@", v4, 0x16u);
    sub_100009EBC(v5, &unk_1003AECA0);

    sub_100008664(v6);
  }

  v11 = swift_task_alloc();
  *(v0 + 464) = v11;
  *v11 = v0;
  v11[1] = sub_10026ADCC;

  return sub_100265B8C(2);
}

uint64_t sub_10026ADCC()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10026AEEC, v3, v2);
}

uint64_t sub_10026AEEC()
{
  if (*(v0 + 480) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 472) = v1;
    *v1 = v0;
    v1[1] = sub_10026B104;
    v2 = *(v0 + 256);

    return sub_1002660D4(v2, 1);
  }

  else
  {

    v4 = *(v0 + 448);
    v5 = *(v0 + 384);
    v6 = *(v0 + 320);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 256);
    v10 = *(v0 + 480) != 1;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_errorRetain();
    sub_1002652DC(v9, v0 + 56, v10, v4);

    sub_100009EBC(v0 + 56, &unk_1003B9EC0);
    sub_10026CB9C(v9);
    sub_100009EBC(v8, &qword_1003AD830);
    v5(v6, v7);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10026B104()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10026B224, v3, v2);
}

uint64_t sub_10026B224()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 256);
  v7 = *(v0 + 480) != 1;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_errorRetain();
  sub_1002652DC(v6, v0 + 56, v7, v1);

  sub_100009EBC(v0 + 56, &unk_1003B9EC0);
  sub_10026CB9C(v6);
  sub_100009EBC(v5, &qword_1003AD830);
  v2(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10026B3AC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_100005AD4(&qword_1003AD830);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for StreamingRequestInfo(0);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[36] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[37] = v6;
  v3[38] = v5;

  return _swift_task_switch(sub_10026B524, v6, v5);
}

uint64_t sub_10026B524()
{
  v63 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation;
  swift_beginAccess();
  sub_10001F620(v1 + v2, v0 + 56, &unk_1003B9EC0);
  if (!*(v0 + 80))
  {
    sub_100009EBC(v0 + 56, &unk_1003B9EC0);
LABEL_14:
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 232);
    v36 = *(v0 + 192);
    v37 = type metadata accessor for Logger();
    sub_1000078E8(v37, qword_1003D28A8);
    sub_1000C88BC(v36, v34);
    sub_1000C88BC(v36, v33);
    sub_1000C88BC(v36, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    v43 = *(v0 + 232);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v44 = 136446722;
      v45 = Locale.ltIdentifier.getter();
      v47 = v46;
      sub_10026CB9C(v42);
      v48 = sub_10028D78C(v45, v47, &v62);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = Locale.ltIdentifier.getter();
      v51 = v50;
      sub_10026CB9C(v41);
      v52 = sub_10028D78C(v49, v51, &v62);

      *(v44 + 14) = v52;
      *(v44 + 22) = 2050;
      v53 = String.count.getter();
      sub_10026CB9C(v43);
      *(v44 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v38, v39, "Streaming translation from '%{public}s' -> '%{public}s' of length %{public}ld -> got no matching previous translation", v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10026CB9C(*(v0 + 232));

      sub_10026CB9C(v41);
      sub_10026CB9C(v42);
    }

    v54 = *(v0 + 192);
    v55 = *(v0 + 216);
    *(v0 + 312) = *(*(v0 + 200) + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_translator);
    v56 = (v54 + v55[5]);
    *(v0 + 320) = *v56;
    *(v0 + 328) = v56[1];
    *(v0 + 376) = v55[6];
    *(v0 + 380) = v55[7];
    v57 = v54 + v55[8];
    *(v0 + 388) = *v57;
    *(v0 + 389) = *(v57 + 1);
    *(v0 + 336) = *(v57 + 8);
    *(v0 + 384) = v55[10];

    return _swift_task_switch(sub_10026BC0C, 0, 0);
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  sub_100051DB8((v0 + 56), v0 + 16);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  swift_beginAccess();
  sub_10001F620(v6 + v7, v5, &qword_1003AD830);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100009EBC(*(v0 + 208), &qword_1003AD830);
LABEL_13:
    sub_100008664(v0 + 16);
    goto LABEL_14;
  }

  sub_1000C8AD4(*(v0 + 208), *(v0 + 280));
  sub_1000085CC((v0 + 16), *(v0 + 40));
  v8 = dispatch thunk of TranslationResult.isFinal.getter();
  v9 = *(v0 + 280);
  if ((v8 & 1) == 0)
  {
LABEL_12:
    sub_10026CB9C(v9);
    goto LABEL_13;
  }

  if ((sub_10025F7B0(v9) & 1) == 0)
  {
    v9 = *(v0 + 280);
    goto LABEL_12;
  }

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 192);
  v14 = type metadata accessor for Logger();
  sub_1000078E8(v14, qword_1003D28A8);
  sub_1000C88BC(v13, v11);
  sub_1000C88BC(v13, v10);
  sub_1000C88BC(v13, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 272);
  v18 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  if (v17)
  {
    v22 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v22 = 136446722;
    v61 = v18;
    v62 = v60;
    v23 = Locale.ltIdentifier.getter();
    v25 = v24;
    sub_10026CB9C(v19);
    v26 = sub_10028D78C(v23, v25, &v62);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = Locale.ltIdentifier.getter();
    v29 = v28;
    sub_10026CB9C(v21);
    v30 = sub_10028D78C(v27, v29, &v62);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2050;
    v31 = String.count.getter();
    sub_10026CB9C(v20);
    *(v22 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v15, v16, "Streaming translation from '%{public}s' -> '%{public}s' of length %{public}ld -> got matching previous translation", v22, 0x20u);
    swift_arrayDestroy();

    v32 = v61;
  }

  else
  {
    sub_10026CB9C(*(v0 + 256));

    sub_10026CB9C(v21);
    sub_10026CB9C(v19);
    v32 = v18;
  }

  sub_10026CB9C(v32);
  sub_100031DD8(v0 + 16, *(v0 + 184));
  sub_100008664(v0 + 16);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_10026BC0C()
{
  v22 = *(v0 + 336);
  v1 = *(v0 + 389);
  v2 = *(v0 + 388);
  v3 = objc_allocWithZone(_LTTextTranslationRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v5 = Locale._bridgeToObjectiveC()().super.isa;
  v6 = [v3 initWithSourceLocale:isa targetLocale:v5];
  *(v0 + 344) = v6;

  v7 = v6;
  [v7 setTaskHint:1];
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithString:v9];

  [v7 setText:v10];
  [v7 setIsFinal:v2];
  [v7 set_supportsGenderDisambiguation:v1];
  [v7 setCensorSpeech:byte_1003D2A90];
  [v7 setSourceOrigin:v22];
  sub_100226734();
  v11 = static NSUserDefaults.translationGroupDefaults.getter();
  v12 = NSUserDefaults.onDeviceOnly.getter();

  [v7 setForcedOfflineTranslation:v12 & 1];
  *(v0 + 120) = &type metadata for TranslateFeatures;
  v13 = sub_100009DF8();
  *(v0 + 96) = 18;
  *(v0 + 128) = v13;
  v14 = isFeatureEnabled(_:)();
  sub_100008664(v0 + 96);
  if (v14)
  {
    [v7 setPreferOnDeviceIfAvailable:1];
  }

  v15 = *(v0 + 312);
  [v7 setOverrideOngoingSessionIfNeeded:{1, v22}];
  v16 = UUID._bridgeToObjectiveC()().super.isa;
  [v7 setLogIdentifier:v16];

  v17 = swift_task_alloc();
  *(v0 + 352) = v17;
  *(v17 + 16) = v7;
  *(v17 + 24) = v15;
  v18 = swift_task_alloc();
  *(v0 + 360) = v18;
  v19 = sub_100005AD4(&qword_1003AC710);
  *v18 = v0;
  v18[1] = sub_10026BF20;
  v20 = *(v0 + 184);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, 0, 0, 0xD000000000000039, 0x80000001002F1BB0, sub_1000510C4, v17, v19);
}

uint64_t sub_10026BF20()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10026C16C;
  }

  else
  {

    v2 = sub_10026C03C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026C03C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_10026C0A0, v1, v2);
}

uint64_t sub_10026C0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026C16C()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_10026C1D8, v1, v2);
}

uint64_t sub_10026C1D8()
{

  v1 = *(v0 + 8);

  return v1();
}

id *sub_10026C2A4()
{
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSourceLocale, &qword_1003AFCE0);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTargetLocale, &qword_1003AFCE0);

  v1 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedTimestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation, &unk_1003B9EC0);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest, &qword_1003AD830);

  sub_100008664(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_delegate);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_partialTranslationRequest, &qword_1003AD830);

  return v0;
}

uint64_t sub_10026C448()
{
  sub_10026C2A4();

  return swift_deallocClassInstance();
}

void sub_10026C4C8()
{
  sub_10026C6AC(319, &qword_1003B3410, &type metadata accessor for Locale);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10026C6AC(319, &unk_1003BABF0, type metadata accessor for StreamingRequestInfo);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10026C6AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10026C744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Locale();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10026C880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Locale();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10026C9A8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10026CA60()
{
  result = qword_1003BAF98;
  if (!qword_1003BAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAF98);
  }

  return result;
}

uint64_t sub_10026CAB4(uint64_t result)
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

unint64_t sub_10026CB50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DDA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026CB9C(uint64_t a1)
{
  v2 = type metadata accessor for StreamingRequestInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026CBF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10026CC38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_1002691E0(a1, v4, v5, v6);
}

uint64_t sub_10026CCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AD830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026CD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026CDA4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (type metadata accessor for StreamingRequestInfo(0) - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v5 + v8) & ~v8;
  v14 = v3 | v8;
  v15 = *(*v7 + 64);
  swift_unknownObjectRelease();

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v9, v11);

  v10(v0 + v9 + v7[8], v1);
  v10(v0 + v9 + v7[9], v1);
  v12(v0 + v9 + v7[12], v11);

  return _swift_deallocObject(v0, v9 + v15, v14 | 7);
}

uint64_t sub_10026CFB0(uint64_t a1)
{
  v3 = *(type metadata accessor for Locale() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(v3 + 64) + v4 + v5) & ~v4;
  type metadata accessor for StreamingRequestInfo(0);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001B558;

  return sub_1002640F0(a1, v7, v8, v9, v10, v11, v1 + v5, v1 + v6);
}

uint64_t sub_10026D13C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10026D190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026D1A8()
{
  v1 = (type metadata accessor for StreamingRequestInfo(0) - 8);
  v11 = *(*v1 + 80);
  v2 = (v11 + 32) & ~v11;
  v10 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);

  v6 = v1[8];
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v8(v3 + v1[9], v7);
  v5(v3 + v1[12], v4);

  return _swift_deallocObject(v0, v10 + 8, v11 | 7);
}

uint64_t sub_10026D34C(uint64_t a1)
{
  v4 = *(type metadata accessor for StreamingRequestInfo(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_1002632A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10026D46C()
{
  v1 = (type metadata accessor for StreamingRequestInfo(0) - 8);
  v8 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v10 = *(*v1 + 64);

  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v8, v2);

  v4 = v1[8];
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v8 + v4, v5);
  v6(v0 + v8 + v1[9], v5);
  v3(v0 + v8 + v1[12], v2);

  return _swift_deallocObject(v9, v8 + v10);
}

uint64_t sub_10026D614(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for StreamingRequestInfo(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_10026D69C()
{
  v1 = (type metadata accessor for StreamingRequestInfo(0) - 8);
  v10 = *(*v1 + 80);
  v9 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v2 = v0 + ((v10 + 40) & ~v10);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);

  v5 = v1[8];
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v5, v6);
  v7(v2 + v1[9], v6);
  v4(v2 + v1[12], v3);

  return _swift_deallocObject(v0, ((v10 + 40) & ~v10) + v9);
}

uint64_t sub_10026D838(uint64_t a1)
{
  v4 = *(type metadata accessor for StreamingRequestInfo(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_100261E44(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10026D930()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10026D978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_1002606AC(a1, v4, v5, v7, v6);
}

uint64_t sub_10026DA38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10026DA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1002603BC(a1, v4, v5, v6);
}

id sub_10026DB48()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder];
  }

  else
  {
    v4 = sub_10026DE64(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10026DBAC()
{
  v1 = [v0 text];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0xE000000000000000;
  }

  if (v6)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
LABEL_7:
      v8 = sub_10026DB48();
      [v8 setHidden:1];

      [v0 bringSubviewToFront:*&v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder]];
      goto LABEL_10;
    }
  }

  v9 = sub_10026DB48();
  [v9 setHidden:0];

LABEL_10:
  if (v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_adjustsFontSize] == 1)
  {

    sub_10026DCCC();
  }
}

void sub_10026DCCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_minSourceTextSize];
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_minSourceTextSize + 8];
  v4 = [v0 text];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v1 font];
  v15 = sub_1002C1A2C(v2, v3, v6, v8, v9);

  v10 = [v1 font];
  if (v10)
  {
    v11 = v10;
    sub_10000A2CC(0, qword_1003B2390);
    v12 = v15;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = v15;
  }

  [v1 setFont:v15];
LABEL_7:
}

id sub_10026DE28()
{
  result = [objc_opt_self() quaternaryLabelColor];
  qword_1003D2B28 = result;
  return result;
}

id sub_10026DE64(void *a1)
{
  v2 = [objc_allocWithZone(UITextView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setUserInteractionEnabled:0];
  [v2 setSelectable:0];
  [v2 setEditable:0];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [v2 textContainer];
  [v4 setLineFragmentPadding:0.0];

  [v2 setAdjustsFontForContentSizeCategory:1];
  if (qword_1003A9310 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_1003D2B28];
  [a1 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  return v2;
}

char *sub_10026E3E0(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder] = 0;
  v5[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_adjustsFontSize] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_minSourceTextSize] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v35.receiver = v5;
  v35.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v11 = objc_msgSendSuper2(&v35, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v12 = sub_10026DB48();
  [v11 addSubview:v12];

  v13 = OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder;
  [*&v11[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder] setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002D80E0;
  v16 = [*&v11[v13] topAnchor];
  v17 = [v11 topAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  *(v15 + 32) = v18;
  v19 = [*&v11[v13] leadingAnchor];
  v20 = [v11 leadingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v15 + 40) = v21;
  v22 = [*&v11[v13] widthAnchor];
  v23 = [v11 widthAnchor];

  v24 = [v22 constraintEqualToAnchor:v23];
  *(v15 + 48) = v24;
  v25 = [*&v11[v13] trailingAnchor];
  v26 = [v11 trailingAnchor];

  v27 = [v25 constraintEqualToAnchor:v26];
  *(v15 + 56) = v27;
  v28 = [*&v11[v13] heightAnchor];
  v29 = [v11 heightAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v15 + 64) = v30;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];

  v32 = [v11 textContainer];
  [v32 setLineFragmentPadding:0.0];

  v33 = [objc_opt_self() defaultCenter];
  [v33 addObserver:v11 selector:"textDidUpdate" name:UITextViewTextDidChangeNotification object:v11];

  [v11 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  return v11;
}

void sub_10026E9A4(uint64_t a1)
{
  sub_10026EDB4(a1, v19);
  v2 = v20;
  if (v20)
  {
    v3 = sub_1000085CC(v19, v20);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    sub_100008664(v19);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for TextViewWithPlaceHolder();
  v18.receiver = v1;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, "paste:", v7);
  swift_unknownObjectRelease();
  if ([v1 delegate])
  {
    v17[1] = &OBJC_PROTOCOL____TtP17SequoiaTranslator21TextViewStatsDelegate_;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      v12 = [v11 generalPasteboard];
      v13 = [v12 hasStrings];

      if (v13)
      {
        v14 = [v11 generalPasteboard];
        v15 = [v14 string];

        if (v15)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          if ([v10 respondsToSelector:"pasted:"])
          {
            swift_unknownObjectRetain();
            v16 = String._bridgeToObjectiveC()();
            [v10 pasted:v16];

            swift_unknownObjectRelease_n();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

id sub_10026ECE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextViewWithPlaceHolder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10026ED4C(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003AB9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026EDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026EE24(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder____lazy_storage___placeholder] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_adjustsFontSize] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_minSourceTextSize] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TextViewWithPlaceHolder();
  result = objc_msgSendSuper2(&v4, "initWithCoder:", a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10026EF14()
{
  v0 = sub_100005AD4(&qword_1003B0978);
  sub_100174560(v0, qword_1003D2B30);
  sub_1000078E8(v0, qword_1003D2B30);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_10026EF84()
{
  v0 = sub_100005AD4(&qword_1003AD988);
  sub_100174560(v0, qword_1003D2B48);
  sub_1000078E8(v0, qword_1003D2B48);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10026F034()
{
  v0 = sub_100005AD4(&qword_1003AD988);
  sub_100174560(v0, qword_1003D2B60);
  sub_1000078E8(v0, qword_1003D2B60);
  sub_100226734();
  v1 = static NSUserDefaults.translationGroupDefaults.getter();
  static NSUserDefaults.Constants.genderDisambiguationEnabledKey.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 BOOLForKey:v2];

  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10026F14C@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003BB020);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v28 = &v26 - v5;
  v6 = sub_100005AD4(&qword_1003BB028);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_100005AD4(&qword_1003BB030);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v27 = sub_100005AD4(&qword_1003BB038);
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v26 - v15;
  sub_10001BAEC(&qword_1003BB040, &qword_1003BB028);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10001BAEC(&qword_1003BB048, &qword_1003BB030);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 3;
  v17 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v31);
  v21 = sub_100005AD4(&qword_1003BB050);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_1002716B4();
  sub_100050D60(v22);
  sub_10001BAEC(&qword_1003BB080, &qword_1003BB038);
  sub_10001BAEC(&qword_1003BB088, &qword_1003BB020);
  v23 = v27;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_10026F720()
{
  v0 = sub_100005AD4(&qword_1003AA948);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.subheadline(_:), v3);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  sub_100009EBC(v2, &qword_1003AA948);
  (*(v4 + 8))(v6, v3);
  v13 = Text.font(_:)();
  v15 = v14;
  LOBYTE(v3) = v16;

  sub_10002EA54(v7, v9, v11 & 1);

  v19[2] = static Color.white.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  sub_10002EA54(v13, v15, v3 & 1);

  return v17;
}

uint64_t sub_10026F9F0@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_100005AD4(&qword_1003BB090);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_100005AD4(&qword_1003BB098);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001BAEC(&qword_1003BB0A0, &qword_1003BB098);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100005AD4(&qword_1003BB0A8);
  a2[4] = sub_1002718A0();
  sub_100050D60(a2);
  sub_10001BAEC(&qword_1003BB0C8, &qword_1003BB090);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void *sub_10026FC84()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_100005AD4(&qword_1003BB0D0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D3160;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_100271EB4(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_10026FE2C()
{
  v0 = sub_100005AD4(&qword_1003AD988);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9328 != -1)
  {
    swift_once();
  }

  v8 = sub_1000078E8(v0, qword_1003D2B60);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  v9 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v9;
}

uint64_t sub_100270050()
{
  v0 = sub_100005AD4(&qword_1003BB000);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003BB008);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_100270310@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100270358()
{
  result = qword_1003BAFF0;
  if (!qword_1003BAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAFF0);
  }

  return result;
}

unint64_t sub_1002703B0()
{
  result = qword_1003BAFF8;
  if (!qword_1003BAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAFF8);
  }

  return result;
}

uint64_t sub_100270404()
{
  v0 = sub_100005AD4(&qword_1003AD988);
  sub_100174560(v0, qword_1003D2B78);
  sub_1000078E8(v0, qword_1003D2B78);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1002704BC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5._object = 0x80000001002FC7A0;
  v5._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9);

  sub_100005AD4(&qword_1003A9AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D3160;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100031CD0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  String.init(format:_:)();

  sub_10001F278();
  return Text.init<A>(_:)();
}

uint64_t sub_100270624()
{
  v0 = sub_100005AD4(&qword_1003AD988);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  sub_100005AD4(&qword_1003BB0F0);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  if (qword_1003A9330 != -1)
  {
    swift_once();
  }

  v4 = sub_1000078E8(v0, qword_1003D2B78);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v5 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v5;
}

uint64_t sub_10027083C()
{
  v0 = sub_100005AD4(&qword_1003BB000);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003BB008);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_100270AE0@<X0>(uint64_t *a1@<X8>)
{
  sub_100091B30();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

size_t sub_100270B20(size_t a1, int64_t a2, char a3)
{
  result = sub_100270B40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100270B40(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100005AD4(&qword_1003BB0D0);
  v10 = *(type metadata accessor for Tips.Action() - 8);
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
  v15 = *(type metadata accessor for Tips.Action() - 8);
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

uint64_t sub_100270D18()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v13 = *(v0 - 8);
  v14 = v0;
  __chkstk_darwin(v0);
  v16 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003BB0E0);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_1002E4DB0;
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v6 + 8))(v8, v5);
  static Tips.ConfigurationOption.DisplayFrequency.system.getter();
  static Tips.ConfigurationOption.displayFrequency(_:)();
  v9 = v4;
  v10 = v16;
  (*(v2 + 8))(v9, v15);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v13 + 8))(v10, v14);
  static Tips.configure(_:)();
}

uint64_t sub_10027104C()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001002FC680;
  v1._countAndFlagsBits = 0xD000000000000021;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  Image.init(systemName:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.teal.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10002EA54(v2, v4, v6 & 1);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  sub_10002EA54(v7, v9, v11 & 1);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1002711F8()
{
  v0 = sub_100005AD4(&qword_1003B0978);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = sub_100005AD4(&qword_1003AD988);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9320 != -1)
  {
    swift_once();
  }

  v12 = sub_1000078E8(v4, qword_1003D2B48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_1003A9318 != -1)
  {
    swift_once();
  }

  v14 = sub_1000078E8(v0, qword_1003D2B30);
  (*(v1 + 16))(v3, v14, v0);
  type metadata accessor for Tips.EmptyDonation();
  sub_1002715B8(&qword_1003BB010);
  sub_1002715B8(&qword_1003BB018);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v15 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v15;
}

uint64_t sub_1002715B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100271664@<X0>(uint64_t *a1@<X8>)
{
  sub_100005AD4(&qword_1003B0978);
  result = Tips.Event.donations.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1002716B4()
{
  result = qword_1003BB058;
  if (!qword_1003BB058)
  {
    sub_100005EA8(&qword_1003BB050);
    sub_10027176C();
    sub_10001BAEC(&qword_1003BB078, &qword_1003BB020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB058);
  }

  return result;
}

unint64_t sub_10027176C()
{
  result = qword_1003BB060;
  if (!qword_1003BB060)
  {
    sub_100005EA8(&qword_1003BB038);
    sub_1002717F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB060);
  }

  return result;
}

unint64_t sub_1002717F0()
{
  result = qword_1003BB068;
  if (!qword_1003BB068)
  {
    sub_100005EA8(&qword_1003BB030);
    sub_10001BAEC(&qword_1003BB070, &qword_1003BB028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB068);
  }

  return result;
}

unint64_t sub_1002718A0()
{
  result = qword_1003BB0B0;
  if (!qword_1003BB0B0)
  {
    sub_100005EA8(&qword_1003BB0A8);
    sub_10001BAEC(&qword_1003BB0B8, &qword_1003BB098);
    sub_100271958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB0B0);
  }

  return result;
}

unint64_t sub_100271958()
{
  result = qword_1003BB0C0;
  if (!qword_1003BB0C0)
  {
    sub_100005EA8(&qword_1003BB090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB0C0);
  }

  return result;
}

uint64_t sub_1002719DC()
{
  v0 = sub_100005AD4(&qword_1003AA948);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.subheadline(_:), v3);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  sub_100009EBC(v2, &qword_1003AA948);
  (*(v4 + 8))(v6, v3);
  v13 = Text.font(_:)();

  sub_10002EA54(v7, v9, v11 & 1);

  return v13;
}

uint64_t sub_100271C48()
{
  v0 = sub_100005AD4(&qword_1003AA948);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.subheadline(_:), v3);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  sub_100009EBC(v2, &qword_1003AA948);
  (*(v4 + 8))(v6, v3);
  v13 = Text.font(_:)();

  sub_10002EA54(v7, v9, v11 & 1);

  return v13;
}

void *sub_100271EB4(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100005AD4(&qword_1003BB0D8);
  v6 = __chkstk_darwin(v30);
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v31 = _swiftEmptyArrayStorage;
  sub_100270B20(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_100272134(v16, v9);
      Tips.Action.with(index:)();
      sub_100009EBC(v9, &qword_1003BB0D8);
      v31 = v10;
      v19 = v2;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_100270B20(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      v10[2] = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

uint64_t sub_100272134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BB0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002721B8()
{
  result = qword_1003BB0E8;
  if (!qword_1003BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB0E8);
  }

  return result;
}

uint64_t sub_10027220C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x80000001002FC780;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  String.init(format:_:)();

  sub_10001F278();
  return Text.init<A>(_:)();
}

unint64_t sub_1002722F4()
{
  result = qword_1003BB0F8;
  if (!qword_1003BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB0F8);
  }

  return result;
}

unint64_t sub_10027234C()
{
  result = qword_1003BB100;
  if (!qword_1003BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB100);
  }

  return result;
}

uint64_t sub_10027240C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100174560(v6, qword_1003D2B90);
  sub_1000078E8(v6, qword_1003D2B90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1002725FC()
{
  v0 = sub_100005AD4(&qword_1003BB138);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100005AD4(&qword_1003BB168);
  sub_100174560(v10, qword_1003D2BA8);
  v11 = sub_1000078E8(v10, qword_1003D2BA8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v12 = type metadata accessor for IntentDescription();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_10027293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_100005AD4(&qword_1003BB160);
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for IntentSystemContext.Source();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_100272A98, 0, 0);
}

uint64_t sub_100272A98()
{
  v17 = v0;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = v1;
  *(v0 + 168) = sub_1000078E8(v1, qword_1003D2920);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 67109378;
    IntentParameter.wrappedValue.getter();
    *(v4 + 4) = *(v0 + 234);

    *(v4 + 8) = 2080;
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 235);
    if (v6 == 2 || (v6 & 1) == 0)
    {
      v7 = 0xE500000000000000;
      v8 = 0x65736C6166;
    }

    else
    {
      v7 = 0xE400000000000000;
      v8 = 1702195828;
    }

    v9 = sub_10028D78C(v8, v7, &v16);

    *(v4 + 10) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received intent to toggle: %{BOOL}d dualPressGestureInitiated: %s", v4, 0x12u);
    sub_100008664(v5);
  }

  else
  {
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    IntentParameter.wrappedValue.getter();
    *(v12 + 4) = *(v0 + 233);

    _os_log_impl(&_mh_execute_header, v10, v11, "Received intent to toggle: %{BOOL}d", v12, 8u);
  }

  else
  {
  }

  AppDependency.wrappedValue.getter();
  *(v0 + 176) = *(v0 + 48);
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 192) = v14;
  *(v0 + 200) = v13;

  return _swift_task_switch(sub_100272E30, v14, v13);
}

uint64_t sub_100272E30()
{
  v3 = (*(*(v0 + 176) + 16) + **(*(v0 + 176) + 16));
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_100272F20;

  return v3(20);
}

uint64_t sub_100272F20(char a1)
{
  v2 = *v1;
  *(*v1 + 236) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_100273048, v4, v3);
}

uint64_t sub_100273048()
{

  return _swift_task_switch(sub_1002730B8, 0, 0);
}

uint64_t sub_1002730B8()
{
  type metadata accessor for GMOptIn();
  v1 = static GMOptIn.shared.getter();
  v2 = dispatch thunk of GMOptIn.isOptedIn.getter();

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  sub_1000078E8(*(v0 + 160), qword_1003D2818);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 236);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v2 & 1;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "appleIntelligenceOptedIn %{BOOL}d didGetAirPodsConnected %{BOOL}d.", v6, 0xEu);
  }

  v7 = *(v0 + 236);

  if (v7 & v2)
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v14;
    sub_10000CFFC();
    AppIntent.systemContext.getter();
    IntentSystemContext.source.getter();
    (*(v11 + 8))(v10, v12);
    v15 = *(v9 + 48);
    v16 = v15(v13, 1, v8);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 136);
    v20 = *(v0 + 104);
    if (v16 == 1)
    {
      (*(v18 + 104))(v17, enum case for IntentSystemContext.Source.app(_:), *(v0 + 136));
      if (v15(v20, 1, v19) != 1)
      {
        sub_1002741F8(*(v0 + 104));
      }
    }

    else
    {
      (*(v18 + 32))(v17, *(v0 + 104), *(v0 + 136));
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received intent launching ...", v28, 2u);
    }

    AppDependency.wrappedValue.getter();
    *(v0 + 216) = *(v0 + 56);
    IntentParameter.wrappedValue.getter();
    v29 = *(v0 + 232);
    v30 = swift_task_alloc();
    *(v0 + 224) = v30;
    *v30 = v0;
    v30[1] = sub_1002734CC;
    v31 = *(v0 + 152);

    return sub_10000735C(v31, v29 & 1);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received intent no connected devices", v23, 2u);
    }

    static IntentResult.result<>()();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1002734CC()
{

  return _swift_task_switch(sub_1002735E4, 0, 0);
}

uint64_t sub_1002735E4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  static IntentResult.result<>()();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027368C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1003A9338 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000078E8(v2, qword_1003D2B90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100273744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1003A9340 != -1)
  {
    swift_once();
  }

  v2 = sub_100005AD4(&qword_1003BB168);
  v3 = sub_1000078E8(v2, qword_1003D2BA8);

  return sub_100274260(v3, a1);
}

uint64_t sub_1002737C8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_10027293C(a1, v4, v5, v7, v6);
}

uint64_t sub_100273888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100273B3C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

unint64_t sub_1002738C0()
{
  result = qword_1003BB108;
  if (!qword_1003BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB108);
  }

  return result;
}

unint64_t sub_100273920()
{
  result = qword_1003BB110;
  if (!qword_1003BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB110);
  }

  return result;
}

uint64_t sub_100273974@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_1002739E8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100273A5C;
}

void sub_100273A5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100273AD8()
{
  result = qword_1003BB118;
  if (!qword_1003BB118)
  {
    sub_100005EA8(&qword_1003BB120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB118);
  }

  return result;
}

uint64_t sub_100273B3C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v40 = v0;
  v41 = v1;
  __chkstk_darwin(v0);
  v36 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003BB128);
  __chkstk_darwin(v3 - 8);
  v39 = &v25 - v4;
  v5 = sub_100005AD4(&qword_1003BB130);
  __chkstk_darwin(v5 - 8);
  v38 = &v25 - v6;
  v7 = sub_100005AD4(&qword_1003BB138);
  __chkstk_darwin(v7 - 8);
  v37 = &v25 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v34 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  sub_100005AD4(&qword_1003BB140);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = *(v16 + 56);
  v33 = v16 + 56;
  v35 = v17;
  v17(v37, 1, 1, v15);
  v44 = 2;
  v18 = type metadata accessor for Bool.IntentDisplayName();
  v19 = *(v18 - 8);
  v31 = *(v19 + 56);
  v32 = v19 + 56;
  v31(v38, 1, 1, v18);
  v20 = type metadata accessor for IntentDialog();
  v21 = *(v20 - 8);
  v29 = *(v21 + 56);
  v30 = v21 + 56;
  v29(v39, 1, 1, v20);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v41 + 104);
  v41 += 104;
  v28 = v22;
  v23 = v36;
  v22(v36);
  v26 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_100005AD4(&qword_1003BB148);
  v42 = 0xD000000000000023;
  v43 = 0x80000001002F6A50;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100005AD4(&qword_1003BB150);
  v42 = 0xD00000000000002DLL;
  v43 = 0x80000001002F6A80;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100005AD4(&qword_1003BB158);
  v35(v37, 1, 1, v34);
  v44 = 2;
  v31(v38, 1, 1, v18);
  v29(v39, 1, 1, v20);
  v28(v23, v27, v40);
  IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v26;
}

uint64_t sub_1002741F8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003BB160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100274260(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BB168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002742DC()
{
  result = qword_1003BB180;
  if (!qword_1003BB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB180);
  }

  return result;
}

unint64_t sub_100274334()
{
  result = qword_1003BB188;
  if (!qword_1003BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB188);
  }

  return result;
}

unint64_t sub_1002743BC()
{
  result = qword_1003BB190;
  if (!qword_1003BB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB190);
  }

  return result;
}

uint64_t sub_100274410()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100174560(v0, qword_1003D2BC0);
  sub_1000078E8(v0, qword_1003D2BC0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100274474()
{
  v0 = sub_100005AD4(&qword_1003BB168);
  sub_100174560(v0, qword_1003D2BD8);
  v1 = sub_1000078E8(v0, qword_1003D2BD8);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100274534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_100005AD4(&qword_1003AA3B8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_100005AD4(&qword_1003BB2A0);
  v4[16] = swift_task_alloc();
  sub_100005AD4(&qword_1003BB160);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for IntentSystemContext();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext.Source();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10027473C, 0, 0);
}

uint64_t sub_10027473C()
{
  AppDependency.wrappedValue.getter();
  v0[29] = v0[8];
  v0[30] = type metadata accessor for MainActor();
  v0[31] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[32] = v2;
  v0[33] = v1;

  return _swift_task_switch(sub_1002747E8, v2, v1);
}

uint64_t sub_1002747E8()
{
  v3 = (*(*(v0 + 232) + 16) + **(*(v0 + 232) + 16));
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1002748D8;

  return v3(5);
}

uint64_t sub_1002748D8(char a1)
{
  v2 = *v1;
  *(*v1 + 312) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return _swift_task_switch(sub_100274A00, v4, v3);
}

uint64_t sub_100274A00()
{

  return _swift_task_switch(sub_100274A74, 0, 0);
}

id sub_100274A74()
{
  type metadata accessor for GMOptIn();
  v1 = static GMOptIn.shared.getter();
  v2 = dispatch thunk of GMOptIn.isOptedIn.getter();

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000078E8(v3, qword_1003D2818);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v2 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "appleIntelligenceOptedIn %{BOOL}d didGetAirPodsConnected %{BOOL}d.", v7, 0xEu);
  }

  v8 = *(v0 + 312);

  if (v8 & v2)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 104);
    *(v0 + 40) = *(v0 + 88);
    *(v0 + 56) = v15;
    sub_1002743BC();
    AppIntent.systemContext.getter();
    IntentSystemContext.source.getter();
    (*(v13 + 8))(v11, v12);
    v16 = *(v10 + 48);
    v17 = v16(v14, 1, v9);
    v18 = *(v0 + 224);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 160);
    if (v17 == 1)
    {
      (*(v19 + 104))(v18, enum case for IntentSystemContext.Source.app(_:), *(v0 + 200));
      if (v16(v21, 1, v20) != 1)
      {
        sub_100009EBC(*(v0 + 160), &qword_1003BB160);
      }
    }

    else
    {
      (*(v19 + 32))(v18, *(v0 + 160), *(v0 + 200));
    }

    AppDependency.wrappedValue.getter();
    *(v0 + 288) = *(v0 + 72);
    v26 = swift_task_alloc();
    *(v0 + 296) = v26;
    *v26 = v0;
    v26[1] = sub_100275224;
    v27 = *(v0 + 224);

    return sub_10000735C(v27, 0);
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v23 = result;
  deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

  if (deviceSupportsDynamicIsland)
  {
    goto LABEL_11;
  }

  v28 = *(v0 + 200);
  v29 = *(v0 + 208);
  v30 = *(v0 + 176);
  v31 = *(v0 + 184);
  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = *(v0 + 152);
  v35 = *(v0 + 128);
  v59 = *(v0 + 120);
  v36 = *(v0 + 104);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v36;
  sub_1002743BC();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v30 + 8))(v31, v32);
  v37 = v35;
  (*(v29 + 104))(v33, enum case for IntentSystemContext.Source.actionButton(_:), v28);
  (*(v29 + 56))(v33, 0, 1, v28);
  v38 = *(v59 + 48);
  sub_10001F620(v34, v35, &qword_1003BB160);
  sub_10001F620(v33, v35 + v38, &qword_1003BB160);
  v39 = *(v29 + 48);
  v40 = v39(v35, 1, v28);
  v41 = *(v0 + 200);
  if (v40 == 1)
  {
    v42 = *(v0 + 152);
    sub_100009EBC(*(v0 + 144), &qword_1003BB160);
    sub_100009EBC(v42, &qword_1003BB160);
    if (v39(v35 + v38, 1, v41) == 1)
    {
      sub_100009EBC(*(v0 + 128), &qword_1003BB160);
LABEL_11:
      v25 = swift_task_alloc();
      *(v0 + 304) = v25;
      *v25 = v0;
      v25[1] = sub_100275444;

      return sub_1002BEAE4();
    }

    goto LABEL_23;
  }

  sub_10001F620(*(v0 + 128), *(v0 + 136), &qword_1003BB160);
  if (v39(v35 + v38, 1, v41) == 1)
  {
    v43 = *(v0 + 200);
    v44 = *(v0 + 208);
    v45 = *(v0 + 152);
    v46 = *(v0 + 136);
    sub_100009EBC(*(v0 + 144), &qword_1003BB160);
    sub_100009EBC(v45, &qword_1003BB160);
    (*(v44 + 8))(v46, v43);
LABEL_23:
    sub_100009EBC(*(v0 + 128), &qword_1003BB2A0);
    goto LABEL_24;
  }

  v52 = *(v0 + 208);
  v51 = *(v0 + 216);
  v53 = *(v0 + 200);
  v54 = *(v0 + 144);
  v60 = *(v0 + 152);
  v55 = *(v0 + 128);
  v56 = *(v0 + 136);
  (*(v52 + 32))(v51, v37 + v38, v53);
  sub_100277C84();
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v51, v53);
  sub_100009EBC(v54, &qword_1003BB160);
  sub_100009EBC(v60, &qword_1003BB160);
  v58(v56, v53);
  sub_100009EBC(v55, &qword_1003BB160);
  if (v57)
  {
    goto LABEL_11;
  }

LABEL_24:
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "No DynamicIsland support. Launching the Translate App.", v49, 2u);
  }

  sub_1002767FC();
  static IntentResult.result<>()();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100275224()
{

  return _swift_task_switch(sub_10027533C, 0, 0);
}

uint64_t sub_10027533C()
{
  (*(v0[26] + 8))(v0[28], v0[25]);
  static IntentResult.result<>()();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100275444(char a1)
{
  *(*v1 + 313) = a1;

  return _swift_task_switch(sub_100275544, 0, 0);
}

uint64_t sub_100275544()
{
  if (*(v0 + 313))
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "App is foreground, not launching Activity. Posting ActionButtonInvokedNotification", v3, 2u);
    }

    v4 = *(v0 + 112);

    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v8 = &unk_1002ECDE8;
  }

  else
  {
    v9 = *(v0 + 104);
    v4 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);

    v13 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v13;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v11;
    v7[5] = v10;
    v7[6] = v9;
    v8 = &unk_1002ECDD8;
  }

  sub_10005E36C(0, 0, v4, v8, v7);

  static IntentResult.result<>()();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002757F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10027588C, v6, v5);
}

uint64_t sub_10027588C()
{

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2818);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching Activity from intent.perform()", v4, 2u);
  }

  IntentParameter.wrappedValue.getter();
  if ((*(v0 + 32) & 1) != 0 || (sub_100226734(), v5 = static NSUserDefaults.translationGroupDefaults.getter(), v6 = String._bridgeToObjectiveC()(), v7 = [v5 BOOLForKey:v6], v6, v5, (v7 & 1) == 0))
  {
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 32) == 1)
    {
      sub_100276F40(1);
    }

    if (qword_1003A9308 != -1)
    {
      swift_once();
    }

    IntentParameter.wrappedValue.getter();
    sub_100244DDC(*(v0 + 32));
  }

  else
  {
    sub_100276F40(0);
    if (qword_1003A9308 != -1)
    {
      swift_once();
    }

    sub_1002455CC(0);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100275AD0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100275B64, v2, v1);
}

uint64_t sub_100275B64()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1003A9358 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1003D2BF0 object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100275C5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1003A9350 != -1)
  {
    swift_once();
  }

  v2 = sub_100005AD4(&qword_1003BB168);
  v3 = sub_1000078E8(v2, qword_1003D2BD8);
  return sub_10001F620(v3, a1, &qword_1003BB168);
}

uint64_t sub_100275CEC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_100274534(a1, v4, v5, v6);
}

uint64_t sub_100275DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100277174();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_100275DD0()
{
  result = qword_1003BB198;
  if (!qword_1003BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB198);
  }

  return result;
}

void (*sub_100275E24(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100273A5C;
}

unint64_t sub_100275EBC()
{
  result = qword_1003BB1A0;
  if (!qword_1003BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB1A0);
  }

  return result;
}

unint64_t sub_100275F14()
{
  result = qword_1003BB1A8;
  if (!qword_1003BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB1A8);
  }

  return result;
}

unint64_t sub_100275F6C()
{
  result = qword_1003BB1B0;
  if (!qword_1003BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB1B0);
  }

  return result;
}

unint64_t sub_100275FC4()
{
  result = qword_1003BB1B8;
  if (!qword_1003BB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB1B8);
  }

  return result;
}

NSString sub_100276084()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D2BF0 = result;
  return result;
}

void sub_1002760BC()
{
  sub_100226734();
  v0 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];

  v3 = static NSUserDefaults.translationGroupDefaults.getter();
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(isa) = [v3 BOOLForKey:v4];

  if (isa)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2818);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "In listening state. Skipping reloadControls";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v6, v8, v7, 2u);
    }
  }

  else
  {
    type metadata accessor for ControlCenter();
    static ControlCenter.shared.getter();
    dispatch thunk of ControlCenter.reloadControls(ofKind:)();

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2818);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Requesting reloadControls update after active state assumption expired";
      goto LABEL_10;
    }
  }
}

uint64_t sub_10027634C()
{
  v1 = *(v0 + 16);
  *v1 = sub_100277904() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002763B8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100174560(v0, qword_1003D2BF8);
  sub_1000078E8(v0, qword_1003D2BF8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100276440@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_1000078E8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1002764E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1002767A8();
  *v4 = v2;
  v4[1] = sub_100276590;

  return ControlConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_100276590()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100276698(uint64_t a1)
{
  v2 = sub_100275EBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100276708(uint64_t *a1, int a2)
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

uint64_t sub_100276750(uint64_t result, int a2, int a3)
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

unint64_t sub_1002767A8()
{
  result = qword_1003BB298;
  if (!qword_1003BB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB298);
  }

  return result;
}

void sub_1002767FC()
{
  v0 = sub_100005AD4(&qword_1003AB2D8);
  __chkstk_darwin(v0 - 8);
  v43 = &v39 - v1;
  v2 = type metadata accessor for Locale();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = type metadata accessor for URLComponents();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003B36B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  *(inited + 48) = 1;
  v40 = sub_100292804(inited);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B36C0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  sub_100005AD4(&qword_1003BBEE0);
  v44 = *(*(type metadata accessor for URLQueryItem() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 stringForKey:v14];

  if (v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.init(identifier:)();
  Locale.ltIdentifier.getter();
  v16 = *(v45 + 8);
  v17 = v7;
  v18 = v46;
  v16(v17, v46);
  URLQueryItem.init(name:value:)();

  sub_100228CB4();
  Locale.ltIdentifier.getter();
  v16(v5, v18);
  URLQueryItem.init(name:value:)();

  v19 = v10;
  URLComponents.queryItems.setter();
  v20 = [objc_opt_self() defaultWorkspace];
  if (!v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v21 = v20;
  v22 = v43;
  URLComponents.url.getter();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    goto LABEL_13;
  }

  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  (*(v24 + 8))(v22, v23);
  sub_1001A78F0(v40);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = 0;
  v29 = [v21 openSensitiveURL:v27 withOptions:isa error:&v47];

  if (v29)
  {
    v30 = *(v41 + 8);
    v31 = v47;
    v30(v19, v42);
  }

  else
  {
    v32 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v41 + 8))(v19, v42);
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000078E8(v33, qword_1003D2818);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = _convertErrorToNSError(_:)();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to open URL with LaunchServices: %@", v36, 0xCu);
      sub_100009EBC(v37, &unk_1003AECA0);
    }

    else
    {
    }
  }
}

void sub_100276F40(char a1)
{
  if (qword_1003BB178)
  {
    [qword_1003BB178 invalidate];
    v2 = qword_1003BB178;
  }

  else
  {
    v2 = 0;
  }

  qword_1003BB178 = 0;

  sub_100226734();
  v3 = static NSUserDefaults.translationGroupDefaults.getter();
  if (a1)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v5];

    aBlock[4] = sub_1002760BC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF44C;
    aBlock[3] = &unk_10038B860;
    v6 = _Block_copy(aBlock);
    v7 = [objc_opt_self() timerWithTimeInterval:0 repeats:v6 block:1.5];
    _Block_release(v6);

    v8 = qword_1003BB178;
    qword_1003BB178 = v7;

    v9 = [objc_opt_self() mainRunLoop];
    if (qword_1003BB178)
    {
      v10 = v9;
      [v9 addTimer:qword_1003BB178 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = Bool._bridgeToObjectiveC()().super.super.isa;
    v12 = String._bridgeToObjectiveC()();
    [v3 setValue:v11 forKey:v12];
  }
}

uint64_t sub_100277174()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003BB128);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100005AD4(&qword_1003BB130);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_100005AD4(&qword_1003BB138);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100005AD4(&qword_1003BB140);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 1, 1, v13);
  v22 = 2;
  v15 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = type metadata accessor for IntentDialog();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  v17 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_100005AD4(&qword_1003BB148);
  v20 = 0xD000000000000023;
  v21 = 0x80000001002F6A50;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100005AD4(&qword_1003BB150);
  v20 = 0xD00000000000002DLL;
  v21 = 0x80000001002F6A80;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v17;
}

void *sub_1002775A0()
{
  v0 = sub_100005AD4(&qword_1003AB2D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = qword_1003BB170;
  if (qword_1003BB170)
  {
    goto LABEL_2;
  }

  v5 = [objc_opt_self() defaultManager];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 containerURLForSecurityApplicationGroupIdentifier:v6];

  if (!v7)
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_100009EBC(v2, &qword_1003AB2D8);
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2818);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_15;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Failed to obtain application group container directory to load translation group defaults";
    goto LABEL_14;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_100009EBC(v2, &qword_1003AB2D8);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2818);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_15;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Failed to load translation group defaults";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_15:

    return 0;
  }

  v12 = qword_1003BB170;
  qword_1003BB170 = v11;

  v3 = qword_1003BB170;
LABEL_2:
  v4 = v3;
  return v3;
}

uint64_t sub_100277904()
{
  v0 = sub_1002775A0();
  if (v0 && (v1 = v0, v2 = String._bridgeToObjectiveC()(), v3 = [v1 BOOLForKey:v2], v1, v2, v3))
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2818);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "AssumeIsLiveActivityListening is on. Skip checking IsLiveActivityListening", v7, 2u);
    }

    v8 = 1;
  }

  else
  {
    v9 = sub_1002775A0();
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v5 = String._bridgeToObjectiveC()();
    v8 = [v10 BOOLForKey:v5];
  }

  return v8;
}

uint64_t sub_100277A88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100277AD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1002757F4(a1, v4, v5, v6);
}

uint64_t sub_100277BA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100277BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B16C;

  return sub_100275AD0();
}

unint64_t sub_100277C84()
{
  result = qword_1003BB2A8;
  if (!qword_1003BB2A8)
  {
    type metadata accessor for IntentSystemContext.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB2A8);
  }

  return result;
}

uint64_t sub_100277CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_100277D14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100277E1C()
{
  String.hash(into:)();
}

Swift::Int sub_100277F10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100278014@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100279288(*a1);
  *a2 = result;
  return result;
}

void sub_100278044(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E696E6574;
  v4 = 0x73694C7472617473;
  v5 = 0x80000001002EF9D0;
  v6 = 0x80000001002EFA00;
  v7 = 0xD00000000000001FLL;
  if (v2 != 3)
  {
    v7 = 0xD000000000000017;
    v6 = 0x80000001002EFA20;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000020;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x7473694C706F7473;
    v3 = 0xED0000676E696E65;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_100278108(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_100005AD4(&qword_1003B54D8);
  v5 = *(v4 - 8);
  v34[1] = *(v5 + 64);
  __chkstk_darwin(v4);
  v35 = v34 - v6;
  v7 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v7 - 8);
  v9 = v34 - v8;
  if (qword_1003A92C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2950);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = a1;
    v15 = v4;
    v16 = a2;
    v17 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    v36 = v16;
    v18 = String.init<A>(describing:)();
    v20 = sub_10028D78C(v18, v19, aBlock);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Performing audio feedback: %s, async with continuation", v13, 0xCu);
    sub_100008664(v17);
    a2 = v16;
    v4 = v15;
    a1 = v34[0];
  }

  if (a2 == 4 || (v31 = type metadata accessor for TaskPriority(), (*(*(v31 - 8) + 56))(v9, 1, 1, v31), type metadata accessor for MainActor(), v32 = static MainActor.shared.getter(), v33 = swift_allocObject(), *(v33 + 16) = v32, *(v33 + 24) = &protocol witness table for MainActor, sub_10005E36C(0, 0, v9, &unk_1002ECE20, v33), , a2 > 1u))
  {
    sub_100005AD4(&qword_1003BB348);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D1370;
    v22 = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
    *(inited + 32) = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
    *(inited + 40) = 1;
    v23 = kAudioServicesPlaySystemSoundOptionPrefersToPlayAudioToHeadphonesOnlyKey;
    *(inited + 48) = kAudioServicesPlaySystemSoundOptionPrefersToPlayAudioToHeadphonesOnlyKey;
    *(inited + 56) = 1;
    v24 = v22;
    v25 = v23;
    sub_10029239C(inited);
    swift_setDeallocating();
    sub_100005AD4(&qword_1003BB350);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    sub_100278D24();
    v26.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v26.super.isa = 0;
  }

  v27 = v35;
  (*(v5 + 16))(v35, a1, v4);
  v28 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  (*(v5 + 32))(v29 + v28, v27, v4);
  aBlock[4] = sub_100278C9C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038B8D8;
  v30 = _Block_copy(aBlock);

  AudioServicesPlaySystemSoundWithOptions();
  _Block_release(v30);
}

uint64_t sub_100278604()
{
  if (qword_1003A92C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2950);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = String.init<A>(describing:)();
    v7 = sub_10028D78C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished performing audio feedback: %s, async with continuation", v3, 0xCu);
    sub_100008664(v4);
  }

  sub_100005AD4(&qword_1003B54D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100278780(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1002787A4, 0, 0);
}

uint64_t sub_1002787A4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100278898;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000017, 0x80000001002F6AB0, sub_1001854FC, v2, &type metadata for () + 8);
}

uint64_t sub_100278898()
{

  return _swift_task_switch(sub_1002789B0, 0, 0);
}

uint64_t sub_1002789B0()
{
  v1 = *(v0 + 16);
  *v1 = 1701736292;
  v1[1] = 0xE400000000000000;
  return (*(v0 + 8))();
}

uint64_t sub_1002789D8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100278A6C, v2, v1);
}

uint64_t sub_100278A6C()
{

  v1 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:4];
  [v1 impactOccurredWithIntensity:1.0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100278B24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100278B5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_1002789D8();
}

uint64_t sub_100278C08()
{
  v1 = sub_100005AD4(&qword_1003B54D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100278C9C()
{
  sub_100005AD4(&qword_1003B54D8);

  return sub_100278604();
}

uint64_t sub_100278D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100278D24()
{
  result = qword_1003A97F8;
  if (!qword_1003A97F8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A97F8);
  }

  return result;
}

void sub_100278D7C(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  if (qword_1003A92C0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2950);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v26[15] = a1;
    v14 = String.init<A>(describing:)();
    v16 = sub_10028D78C(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Performing audio feedback: %s, with completion", v12, 0xCu);
    sub_100008664(v13);
  }

  if (a1 != 4)
  {
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    sub_10005E36C(0, 0, v8, &unk_1002ECE38, v25);

    if (a1 <= 1u)
    {
      v22.super.isa = 0;
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  sub_100005AD4(&qword_1003BB348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  v18 = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
  *(inited + 32) = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
  *(inited + 40) = 1;
  v19 = kAudioServicesPlaySystemSoundOptionPrefersToPlayAudioToHeadphonesOnlyKey;
  *(inited + 48) = kAudioServicesPlaySystemSoundOptionPrefersToPlayAudioToHeadphonesOnlyKey;
  *(inited + 56) = 1;
  v20 = v18;
  v21 = v19;
  sub_10029239C(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003BB350);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_100278D24();
  v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
LABEL_7:
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_10038B928;
    a2 = _Block_copy(aBlock);
  }

LABEL_8:
  AudioServicesPlaySystemSoundWithOptions();
  _Block_release(a2);
}

uint64_t sub_100279174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B16C;

  return sub_1002789D8();
}

unint64_t sub_100279234()
{
  result = qword_1003BB358;
  if (!qword_1003BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB358);
  }

  return result;
}

unint64_t sub_100279288(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DE08, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

id sub_10027933C()
{
  v1 = qword_1003BB360;
  v2 = *(v0 + qword_1003BB360);
  if (v2)
  {
    v3 = *(v0 + qword_1003BB360);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ReadableWidthContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1002793C0()
{
  v0 = sub_10027933C();
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v2;
  v10 = v4;
  v11 = v6;
  v12 = v8;

  return CGRectGetMaxY(*&v9);
}

void sub_100279468()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x50);
  v3 = *((swift_isaMask & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TopAccessoryController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  [v0 addChildViewController:*&v0[qword_1003BB368]];
  [v1 addChildViewController:*&v1[qword_1003BB370]];
  sub_100279A40();
  sub_100279D10();
  [*&v1[qword_1003BB368] didMoveToParentViewController:v1];
  [*&v1[qword_1003BB370] didMoveToParentViewController:v1];
  v4 = (*(v3 + 8))(v2, v3);
  [v4 _addScrollViewScrollObserver:v1];
}

void sub_1002795C0(void *a1)
{
  v1 = a1;
  sub_100279468();
}

id sub_100279608(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TopAccessoryController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  return sub_100279940();
}

void sub_1002796A0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100279608(a3);
}

id sub_1002796F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopAccessoryController();
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  return sub_100279940();
}

void sub_10027977C(void *a1)
{
  v1 = a1;
  sub_1002796F4();
}

void sub_1002797C4(void *a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for TopAccessoryController();
  objc_msgSendSuper2(&v9, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = sub_10027933C();
  v6 = [a1 horizontalSizeClass] != 1;
  v5[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_readableWidthEnabled] = v6;
  v7 = *&v5[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView];
  if (v7)
  {
    v8 = v7;
    sub_100202FE4(v8);
  }
}

void sub_1002798C0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1002797C4(v6, a4);

  swift_unknownObjectRelease();
}

id sub_100279940()
{
  result = [*&v0[qword_1003BB370] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  MaxY = CGRectGetMaxY(v17);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  v15 = *&v0[qword_1003BB368];

  return [v15 setAdditionalSafeAreaInsets:{MaxY - v14, 0.0, 0.0, 0.0}];
}

void sub_100279A40()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [*&v1[qword_1003BB368] view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v3 addSubview:v4];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_10027933C();
  [v7 addSubview:v8];

  v9 = qword_1003BB360;
  v10 = *&v1[qword_1003BB370];
  v11 = *&v1[qword_1003BB360];
  v12 = [v10 view];
  v13 = OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView;
  [*&v11[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView] removeFromSuperview];
  if (v12)
  {
    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v14];
    sub_100202FE4(v14);
  }

  v15 = *&v11[v13];
  *&v11[v13] = v12;

  v16 = *&v1[v9];
  v17 = [v1 traitCollection];
  v18 = [v17 horizontalSizeClass];

  v16[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_readableWidthEnabled] = v18 != 1;
  v19 = *&v16[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView];
  if (v19)
  {
    v20 = v19;
    sub_100202FE4(v20);
  }

  v21 = [*&v1[qword_1003BB370] view];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v23 clearColor];
  [v22 setBackgroundColor:v24];

  v25 = *&v1[v9];
  v26 = [v23 systemGroupedBackgroundColor];
  [v25 setBackgroundColor:v26];
}

void sub_100279CFC(uint64_t a1)
{
  v2 = *(v1 + qword_1003BB378);
  *(v1 + qword_1003BB378) = a1;
}

void sub_100279D10()
{
  v1 = sub_10027933C();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = [*&v0[qword_1003BB368] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [*&v0[qword_1003BB370] view];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = qword_1003BB360;
  v7 = [*&v0[qword_1003BB360] topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10 constant:0.0];
  sub_100005AD4(&unk_1003AFCC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002ECEF0;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [*&v0[qword_1003BB368] view];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v12 + 32) = v19;
  v20 = [v0 view];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [*&v0[qword_1003BB368] view];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v12 + 40) = v26;
  v27 = [v0 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [*&v0[qword_1003BB368] view];
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v12 + 48) = v33;
  v34 = [v0 view];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [*&v0[qword_1003BB368] view];
  if (!v37)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v12 + 56) = v40;
  *(v12 + 64) = v11;
  v41 = v11;
  v42 = [v0 view];
  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [*&v0[v6] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v12 + 72) = v46;
  v47 = [v0 view];
  if (!v47)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 trailingAnchor];

  v51 = [*&v0[v6] trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v12 + 80) = v52;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];

  v54 = *&v0[qword_1003BB378];
  *&v0[qword_1003BB378] = v41;
}

void sub_10027A290(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10027A568();
}

id sub_10027A320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopAccessoryController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10027A3A4(uint64_t a1)
{
  v2 = *(a1 + qword_1003BB378);
}

void sub_10027A4F4()
{
  *(v0 + qword_1003BB360) = 0;
  *(v0 + qword_1003BB378) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TranslateCalloutDisabledTextView.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return 0;
  }

  sub_10026EDB4(a2, v15);
  v6 = v16;
  if (v16)
  {
    v7 = sub_1000085CC(v15, v16);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    sub_100008664(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for TranslateCalloutDisabledTextView();
  v14.receiver = v2;
  v14.super_class = v12;
  v13 = objc_msgSendSuper2(&v14, "canPerformAction:withSender:", a1, v11);
  swift_unknownObjectRelease();
  return v13;
}

id TranslateCalloutDisabledTextView.init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);

  return v11;
}

id TranslateCalloutDisabledTextView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TranslateCalloutDisabledTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10027A9C0()
{
  sub_10027A9FC();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10027A9FC()
{
  result = qword_1003BB488;
  if (!qword_1003BB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB488);
  }

  return result;
}

void sub_10027AA70()
{
  if (qword_1003A9210 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2740);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Caught in default broadcast action, no presentation to be expected", v2, 2u);
  }
}

uint64_t sub_10027AB70()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  if (*(v0 + 112) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10005C8D0();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t sub_10027ACD4@<X0>(uint64_t a1@<X8>)
{
  sub_10027B74C(v1, &v27);
  v3 = swift_allocObject();
  v4 = v32;
  *(v3 + 80) = v31;
  *(v3 + 96) = v4;
  *(v3 + 112) = v33;
  *(v3 + 128) = v34;
  v5 = v28;
  *(v3 + 16) = v27;
  *(v3 + 32) = v5;
  v6 = v30;
  *(v3 + 48) = v29;
  *(v3 + 64) = v6;
  sub_10027B74C(v1, &v27);
  v7 = swift_allocObject();
  v8 = v32;
  *(v7 + 80) = v31;
  *(v7 + 96) = v8;
  *(v7 + 112) = v33;
  *(v7 + 128) = v34;
  v9 = v28;
  *(v7 + 16) = v27;
  *(v7 + 32) = v9;
  v10 = v30;
  *(v7 + 48) = v29;
  *(v7 + 64) = v10;
  sub_10027B74C(v1, &v27);
  v11 = swift_allocObject();
  v12 = v32;
  *(v11 + 80) = v31;
  *(v11 + 96) = v12;
  *(v11 + 112) = v33;
  *(v11 + 128) = v34;
  v13 = v28;
  *(v11 + 16) = v27;
  *(v11 + 32) = v13;
  v14 = v30;
  *(v11 + 48) = v29;
  *(v11 + 64) = v14;
  sub_10027B74C(v1, &v27);
  v15 = swift_allocObject();
  v16 = v32;
  *(v15 + 80) = v31;
  *(v15 + 96) = v16;
  *(v15 + 112) = v33;
  *(v15 + 128) = v34;
  v17 = v28;
  *(v15 + 16) = v27;
  *(v15 + 32) = v17;
  v18 = v30;
  *(v15 + 48) = v29;
  *(v15 + 64) = v18;
  v19 = dispatch thunk of PersistedTranslation.isFavorite.getter();
  v20 = *(v1 + 64);
  v21 = *(v1 + 72);
  *&v27 = *(v1 + 56);
  *(&v27 + 1) = v20;
  LOBYTE(v28) = v21;
  sub_100005AD4(&qword_1003BA760);
  Binding.projectedValue.getter();
  v22 = *(v1 + 73);
  result = swift_getKeyPath();
  *a1 = sub_10027B788;
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_10027B790;
  *(a1 + 24) = v7;
  *(a1 + 32) = sub_10027B798;
  *(a1 + 40) = v11;
  *(a1 + 48) = sub_10027B7A0;
  *(a1 + 56) = v15;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 89) = v22;
  *(a1 + 96) = result;
  *(a1 + 104) = 0;
  return result;
}

void sub_10027AF44(uint64_t a1)
{
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    v2 = sub_10027AB70();
    v3 = *(a1 + 8);
    sub_10027B8A4();
    v4 = v3;
    v2();
  }
}

uint64_t sub_10027AFE8(void *a1)
{
  sub_100005AD4(&qword_1003BA760);
  result = Binding.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    sub_1000085CC(a1 + 2, a1[5]);
    result = dispatch thunk of TranslationStore.toggleFavoriteBackground(_:)();
    v3 = a1[10];
    if (v3)
    {
      return v3(result);
    }
  }

  return result;
}

uint64_t sub_10027B088()
{

  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.setter();
}

void sub_10027B138()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *&v17 = *(v0 + 56);
  *(&v17 + 1) = v2;
  LOBYTE(v18) = v3;
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  if ((aBlock[0] & 1) == 0)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D28C0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Copying target translation to clipboard", v7, 2u);
    }

    v8 = [objc_opt_self() generalPasteboard];
    dispatch thunk of PersistedTranslation.displayText.getter();
    v9 = String._bridgeToObjectiveC()();

    [v8 setString:v9];

    v10 = String._bridgeToObjectiveC()();
    sub_10027B74C(v1, &v17);
    v11 = swift_allocObject();
    v12 = v22;
    *(v11 + 80) = v21;
    *(v11 + 96) = v12;
    *(v11 + 112) = v23;
    *(v11 + 128) = v24;
    v13 = v18;
    *(v11 + 16) = v17;
    *(v11 + 32) = v13;
    v14 = v20;
    *(v11 + 48) = v19;
    *(v11 + 64) = v14;
    aBlock[4] = sub_10027B838;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100241654;
    aBlock[3] = &unk_10038BCC0;
    v15 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v15);
  }
}

unint64_t sub_10027B3A8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  sub_100005AD4(&qword_1003AD9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3550;
  *(inited + 32) = 0x6D614E746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_10027B858();
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = NSString.init(stringLiteral:)();
  strcpy((inited + 80), "sourceLocale");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  Locale.ltIdentifier.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  v9 = String._bridgeToObjectiveC()();

  *(inited + 96) = v9;
  strcpy((inited + 104), "targetLocale");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  Locale.ltIdentifier.getter();
  v8(v4, v0);
  v10 = String._bridgeToObjectiveC()();

  *(inited + 120) = v10;
  v11 = sub_1002927F0(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003AD9A8);
  swift_arrayDestroy();
  return v11;
}

__n128 sub_10027B64C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10027B678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_10027B6C0(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027B7CC()
{
  sub_100008664(v0 + 32);

  if (*(v0 + 96))
  {
  }

  sub_10005C8D0();

  return _swift_deallocObject(v0, 129);
}

uint64_t sub_10027B840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10027B858()
{
  result = qword_1003A9AA8;
  if (!qword_1003A9AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A9AA8);
  }

  return result;
}

unint64_t sub_10027B8A4()
{
  result = qword_1003AC7C8;
  if (!qword_1003AC7C8)
  {
    type metadata accessor for PersistedTranslation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC7C8);
  }

  return result;
}

unint64_t sub_10027B900()
{
  result = qword_1003BB490;
  if (!qword_1003BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB490);
  }

  return result;
}

uint64_t sub_10027B978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10027BA48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B2300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TranslateContentView()
{
  result = qword_1003BB4F0;
  if (!qword_1003BB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027BB44()
{
  sub_10005C478();
  if (v0 <= 0x3F)
  {
    sub_10005C5A0();
    if (v1 <= 0x3F)
    {
      sub_10005C414();
      if (v2 <= 0x3F)
      {
        sub_10005C50C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for TranslationStoreCoreData();
          if (v4 <= 0x3F)
          {
            type metadata accessor for TTSManager();
            if (v5 <= 0x3F)
            {
              type metadata accessor for ConversationViewModel();
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

uint64_t sub_10027BC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100280A4C(&qword_1003AC930, type metadata accessor for CardMetrics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_10027BD2C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AC998);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100005AD4(&qword_1003AC848);
  v9 = __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_10027C1C8(&v27 - v14);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_10001F620(v15, v7, &qword_1003AC848);
  sub_10001F620(v13, &v7[v16], &qword_1003AC848);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_100009EBC(v7, &qword_1003AC848);
LABEL_9:
      v18 = &enum case for NavigationBarItem.TitleDisplayMode.inline(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_10001F620(v7, v29, &qword_1003AC848);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_100009EBC(v7, &qword_1003AC998);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_100280A4C(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  v23(v21, v1);
  sub_100009EBC(v7, &qword_1003AC848);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for NavigationBarItem.TitleDisplayMode.automatic(_:);
LABEL_10:
  v24 = *v18;
  v25 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_10027C1C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TranslateContentView();
  sub_10001F620(v1 + *(v10 + 24), v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10027C3B0()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10027C1C8(&v22 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10001F620(v6, v10, &qword_1003AC848);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_100280A4C(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100009EBC(v13, &qword_1003AC848);
      sub_100009EBC(v15, &qword_1003AC848);
      v20(v10, v0);
      sub_100009EBC(v6, &qword_1003AC848);
      return LocalizedStringKey.init(stringLiteral:)();
    }

    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998);
    return LocalizedStringKey.init(stringLiteral:)();
  }

  sub_100009EBC(v6, &qword_1003AC848);
  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_10027C818()
{
  if (!*(v0 + *(type metadata accessor for TranslateContentView() + 28)))
  {
    type metadata accessor for SceneContext();
    v2 = &qword_1003AC860;
    v3 = type metadata accessor for SceneContext;
LABEL_9:
    sub_100280A4C(v2, v3);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v5)
  {
    return 1;
  }

  if (!*v0)
  {
    type metadata accessor for ConversationContext(0);
    v2 = &unk_1003BC490;
    v3 = type metadata accessor for ConversationContext;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10027C9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v3 = type metadata accessor for TranslateContentView();
  v91 = *(v3 - 8);
  v94 = *(v91 + 64);
  v4 = __chkstk_darwin(v3 - 8);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v73 - v6;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&qword_1003BB540);
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  __chkstk_darwin(v11);
  v14 = &v73 - v13;
  v78 = sub_100005AD4(&qword_1003BB548);
  __chkstk_darwin(v78);
  v75 = &v73 - v15;
  v79 = sub_100005AD4(&qword_1003BB550) - 8;
  __chkstk_darwin(v79);
  v90 = &v73 - v16;
  v80 = sub_100005AD4(&qword_1003BB558);
  __chkstk_darwin(v80);
  v82 = &v73 - v17;
  v81 = sub_100005AD4(&qword_1003BB560);
  __chkstk_darwin(v81);
  v84 = &v73 - v18;
  v83 = sub_100005AD4(&qword_1003BB568);
  __chkstk_darwin(v83);
  v85 = &v73 - v19;
  v87 = sub_100005AD4(&qword_1003BB570);
  __chkstk_darwin(v87);
  v88 = &v73 - v20;
  v74 = *(v1 + 24);
  v21 = v74;

  v22 = static SafeAreaRegions.container.getter();
  v23 = static Edge.Set.all.getter();
  v24 = static SafeAreaRegions.keyboard.getter();
  v25 = static Edge.Set.all.getter();
  v104[0] = v21;
  v104[1] = v22;
  LOBYTE(v104[2]) = v23;
  v104[3] = v24;
  LOBYTE(v104[4]) = v25;
  sub_10027BD2C(v10);
  v26 = sub_100005AD4(&qword_1003BB578);
  v27 = sub_10027F864(&qword_1003BB580, &qword_1003BB578, &unk_1002ED2B8, sub_10027F834);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);

  sub_10027C3B0();
  v104[0] = v26;
  v104[1] = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v75;
  v28 = v76;
  View.navigationBarTitle(_:)();

  v30 = v2;

  (*(v77 + 8))(v14, v28);
  v31 = v92;
  sub_10027F8E8(v2, v92);
  v32 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v91 = *(v91 + 80);
  v33 = swift_allocObject();
  sub_10027F950(v31, v33 + v32);
  v34 = (v29 + *(v78 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_10027F9B4;
  v34[3] = v33;
  v95 = v2;
  sub_100005AD4(&qword_1003BB598);
  sub_10027F9D4();
  sub_10001BAEC(&qword_1003BB5A8, &qword_1003BB598);
  v35 = v90;
  View.toolbar<A>(content:)();
  sub_100009EBC(v29, &qword_1003BB548);
  v37 = static HorizontalAlignment.center.getter();
  sub_10027F114(v2, v102);
  VerticalEdge.rawValue.getter();
  LOBYTE(v31) = Edge.init(rawValue:)();
  v36 = static SafeAreaRegions.container.getter();
  LOBYTE(v96) = 1;
  memcpy(v103, v102, 0x108uLL);
  v103[33] = v36;
  v103[34] = 0;
  LOBYTE(v103[35]) = 1;
  BYTE1(v103[35]) = v31;
  v103[36] = v37;
  memcpy((v35 + *(v79 + 44)), v103, 0x128uLL);
  memcpy(v104, v102, 0x108uLL);
  v104[33] = v36;
  v104[34] = 0;
  v105 = 1;
  v106 = v31;
  v107 = v37;
  sub_10001F620(v103, &v99, &qword_1003BB5B0);
  sub_100009EBC(v104, &qword_1003BB5B0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LODWORD(v37) = v99 | (BYTE2(v99) << 16);
  if ((v37 & 0xFF0000) == 0x80000)
  {
    v38 = objc_opt_self();
    v39 = String._bridgeToObjectiveC()();
    v37 = [v38 lt_errorWithCode:0 description:v39 userInfo:0];

    v40 = sub_100009440(v37);
    LOBYTE(v37) = v40;
    LODWORD(v79) = v40 >> 8;
    v41 = HIWORD(v40);
  }

  else
  {
    LODWORD(v79) = v37 >> 8;
    v41 = WORD1(v37);
  }

  LODWORD(v78) = v41;
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_100280A4C(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v43 = v96;
  v42 = v97;
  v93 = v2;
  v44 = v98;
  v45 = v92;
  sub_10027F8E8(v30, v92);
  v46 = swift_allocObject();
  sub_10027F950(v45, v46 + v32);
  LOBYTE(v99) = v37;
  BYTE1(v99) = v79;
  BYTE2(v99) = v78;
  *(&v99 + 1) = v43;
  *&v100 = v42;
  BYTE8(v100) = v44;
  *&v101 = sub_10027FCD0;
  *(&v101 + 1) = v46;
  v47 = v82;
  sub_100023BD4(v90, v82, &qword_1003BB550);
  v48 = (v47 + *(v80 + 36));
  sub_1000B030C(&v99, v102);

  v49 = v100;
  *v48 = v99;
  v48[1] = v49;
  v48[2] = v101;

  v50 = v93;
  sub_10027F8E8(v93, v45);
  v51 = swift_allocObject();
  sub_10027F950(v45, v51 + v32);
  v52 = v86;
  sub_10027F8E8(v50, v86);
  v53 = swift_allocObject();
  sub_10027F950(v52, v53 + v32);
  KeyPath = swift_getKeyPath();
  v55 = v47;
  v56 = v84;
  sub_100023BD4(v55, v84, &qword_1003BB558);
  v57 = v56 + *(v81 + 36);
  *v57 = KeyPath;
  *(v57 + 8) = 256;
  *(v57 + 16) = sub_10027FD3C;
  *(v57 + 24) = v51;
  *(v57 + 32) = sub_10027FD9C;
  *(v57 + 40) = v53;
  sub_10027F8E8(v93, v45);
  v58 = swift_allocObject();
  sub_10027F950(v45, v58 + v32);
  v59 = swift_getKeyPath();
  v60 = v56;
  v61 = v85;
  sub_100023BD4(v60, v85, &qword_1003BB560);
  v62 = v61 + *(v83 + 36);
  *v62 = v59;
  *(v62 + 8) = 0;
  *(v62 + 16) = sub_10027FE04;
  *(v62 + 24) = v58;
  *(v62 + 32) = 0;
  *(v62 + 40) = 0;
  if (qword_1003A91D0 != -1)
  {
    swift_once();
  }

  v63 = qword_1003D2560;
  v64 = [objc_opt_self() defaultCenter];
  v65 = v87;
  v66 = v63;
  v67 = v88;
  NSNotificationCenter.Publisher.init(center:name:object:)();
  v68 = v93;
  sub_10027F8E8(v93, v45);
  v69 = swift_allocObject();
  sub_10027F950(v45, v69 + v32);
  sub_100023BD4(v61, v67, &qword_1003BB568);
  v70 = (v67 + *(v65 + 56));
  *v70 = sub_10027FE1C;
  v70[1] = v69;
  v102[0] = sub_10027C818() & 1;
  sub_10027F8E8(v68, v45);
  v71 = swift_allocObject();
  sub_10027F950(v45, v71 + v32);
  sub_10001BAEC(&qword_1003BB5B8, &qword_1003BB570);
  View.onChange<A>(of:initial:_:)();

  return sub_100009EBC(v67, &qword_1003BB570);
}

uint64_t sub_10027D674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    sub_1000663B0(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v2;
  if (v2)
  {

    return sub_1002BBD20();
  }

  return result;
}

uint64_t sub_10027D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_100005AD4(&qword_1003BB5C0);
  __chkstk_darwin(v48);
  v47 = &v38 - v3;
  v4 = sub_100005AD4(&qword_1003BB5C8);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v38 - v5;
  v6 = sub_100005AD4(&qword_1003BB5D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v38 - v8;
  v42 = sub_100005AD4(&qword_1003BB5D8);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v38 - v9;
  v10 = sub_100005AD4(&qword_1003BB5E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v38 - v14;
  v15 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v15 - 8);
  v43 = sub_100005AD4(&qword_1003BB5E8);
  v16 = *(v43 - 8);
  __chkstk_darwin(v43);
  v18 = &v38 - v17;
  static ToolbarItemPlacement.topBarTrailing.getter();
  sub_1000B05A4();
  ToolbarItem<>.init(placement:content:)();
  v50 = a1;
  v19 = *(*(a1 + 24) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  swift_getKeyPath();
  v52 = v19;
  sub_100280A4C(&qword_1003AC930, type metadata accessor for CardMetrics);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a1) = *(v19 + 24);

  if (a1 == 1)
  {
    v20 = static ToolbarItemPlacement.topBarTrailing.getter();
    v38 = &v38;
    __chkstk_darwin(v20);
    *(&v38 - 2) = v50;
    sub_100005AD4(&qword_1003BB650);
    v21 = sub_100005EA8(&qword_1003BB658);
    v22 = sub_1002803B8();
    v52 = v21;
    v53 = v22;
    swift_getOpaqueTypeConformance2();
    v23 = v39;
    ToolbarItem<>.init(placement:content:)();
    v24 = sub_10001BAEC(&qword_1003BB5F0, &qword_1003BB5D8);
    v26 = v41;
    v25 = v42;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v13, v26, v6);
    (*(v7 + 56))(v13, 0, 1, v6);
    v52 = v25;
    v53 = v24;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009EBC(v13, &qword_1003BB5E0);
    (*(v7 + 8))(v26, v6);
    (*(v40 + 8))(v23, v25);
  }

  else
  {
    (*(v7 + 56))(v13, 1, 1, v6);
    v27 = sub_10001BAEC(&qword_1003BB5F0, &qword_1003BB5D8);
    v52 = v42;
    v53 = v27;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009EBC(v13, &qword_1003BB5E0);
  }

  v28 = static ToolbarItemPlacement.topBarLeading.getter();
  __chkstk_darwin(v28);
  *(&v38 - 2) = v50;
  sub_100005AD4(&qword_1003BB5F8);
  sub_10027FFFC();
  v29 = v44;
  ToolbarItem<>.init(placement:content:)();
  v30 = v47;
  v31 = *(v48 + 48);
  v32 = *(v48 + 64);
  v33 = v43;
  (*(v16 + 16))(v47, v18, v43);
  v34 = v51;
  sub_100280340(v51, &v30[v31]);
  v36 = v45;
  v35 = v46;
  (*(v45 + 16))(&v30[v32], v29, v46);
  TupleToolbarContent.init(_:)();
  (*(v36 + 8))(v29, v35);
  sub_100009EBC(v34, &qword_1003BB5E0);
  return (*(v16 + 8))(v18, v33);
}

uint64_t sub_10027DF74@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedTranslationOptions();
  sub_100280A4C(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for SceneContext();
  sub_100280A4C(&qword_1003AC860, type metadata accessor for SceneContext);
  result = EnvironmentObject.init()();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 47) = 0;
  return result;
}

uint64_t sub_10027E04C(uint64_t a1)
{
  v2 = type metadata accessor for TranslateContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100005AD4(&qword_1003BB670);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100005AD4(&qword_1003BB658);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  static ButtonRole.confirm.getter();
  sub_10027F8E8(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10027F950(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  Button<>.init(role:action:)();
  v15 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v7 + 44)];
  *v17 = KeyPath;
  v17[1] = v15;
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0)
  {
    v18 = 0;
  }

  else
  {
    v18 = static Color.translateAccentColor.getter();
  }

  v19 = swift_getKeyPath();
  sub_100023BD4(v9, v12, &qword_1003BB670);
  v20 = &v12[*(v10 + 36)];
  *v20 = v19;
  v20[1] = v18;
  if ((byte_1003D26A0 & 1) == 0)
  {
    static Font.Weight.semibold.getter();
  }

  sub_1002803B8();
  View.fontWeight(_:)();
  return sub_100009EBC(v12, &qword_1003BB658);
}

uint64_t sub_10027E348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v41 = type metadata accessor for IconOnlyLabelStyle();
  v36 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TranslateContentView();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v35);
  v6 = sub_100005AD4(&qword_1003BB630);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v38 = sub_100005AD4(&qword_1003BB618);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = sub_100005AD4(&qword_1003BB608);
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v42 = &v31 - v12;
  v13 = sub_100005AD4(&qword_1003BB678);
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v37 = &v31 - v14;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    v17 = *(v44 + 56);

    return v17(a2, 1, 1, v13);
  }

  else
  {
    sub_10027F8E8(v43, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = a2;
    v33 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v19 = v33;
    v20 = swift_allocObject();
    sub_10027F950(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_100005AD4(&qword_1003B4E50);
    sub_10018D2B4();
    Button.init(action:label:)();
    sub_10001BAEC(&qword_1003BB628, &qword_1003BB630);
    View.accessibilityIdentifier(_:)();
    (*(v34 + 8))(v8, v6);
    IconOnlyLabelStyle.init()();
    v34 = sub_100280174();
    v31 = sub_100280A4C(&qword_1003B4E60, &type metadata accessor for IconOnlyLabelStyle);
    v21 = v41;
    v22 = v38;
    View.labelStyle<A>(_:)();
    (*(v36 + 8))(v4, v21);
    sub_100009EBC(v10, &qword_1003BB618);
    v36 = v13;
    v23 = v43;
    type metadata accessor for SceneContext();
    sub_100280A4C(&qword_1003AC860, type metadata accessor for SceneContext);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    sub_10027F8E8(v23, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = v33;
    v25 = swift_allocObject();
    sub_10027F950(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    sub_100005AD4(&qword_1003BB610);
    v45 = v22;
    v46 = v21;
    v47 = v34;
    v48 = v31;
    swift_getOpaqueTypeConformance2();
    sub_10028025C();
    v26 = v37;
    v27 = v40;
    v28 = v42;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v39 + 8))(v28, v27);
    v29 = v32;
    v30 = v36;
    (*(v44 + 32))(v32, v26, v36);
    return (*(v44 + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_10027EAB0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v2 = (a1 + *(sub_100005AD4(&qword_1003B4E50) + 36));
  v3 = *(sub_100005AD4(&qword_1003AB620) + 28);
  v4 = enum case for Image.Scale.large(_:);
  v5 = type metadata accessor for Image.Scale();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_10027EBD0@<X0>(uint64_t a1@<X8>)
{
  sub_100005AD4(&qword_1003BB680);
  sub_1002806C8();
  NavigationStack.init<>(root:)();
  v2 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100005AD4(&qword_1003BB610);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_10027EC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for TranslateContentView();
  v4 = (v3 - 8);
  *&v31 = *(v3 - 8);
  v30 = *(v31 + 64);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CloseButtonPosition();
  v26 = *(v28 - 8);
  v6 = v26;
  __chkstk_darwin(v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FavoritesView();
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4[11];
  v13 = *(a1 + v4[10]);
  v14 = *(*(a1 + 24) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  v15 = *(*(a1 + v4[12]) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  v16 = *(a1 + v12);
  *(v11 + *(v9 + 32)) = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  *v11 = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  v17 = v28;
  (*(v6 + 104))(v8, enum case for CloseButtonPosition.right(_:), v28);
  v18 = v29;
  sub_10027F8E8(a1, v29);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject();
  sub_10027F950(v18, v20 + v19);
  sub_100280A4C(&qword_1003B9888, type metadata accessor for FavoritesView);

  v21 = v32;
  View.closeButton(position:enabled:action:)();

  (*(v26 + 8))(v8, v17);
  sub_1002809E8(v11);
  v33 = 0;
  v34 = 0;
  sub_100005AD4(&qword_1003AA748);
  State.init(wrappedValue:)();
  v31 = v35;
  v22 = v36;
  v23 = v21 + *(sub_100005AD4(&qword_1003BB680) + 36);
  *v23 = v16;
  *(v23 + 8) = xmmword_1002ED1F0;
  *(v23 + 24) = v31;
  *(v23 + 40) = v22;
}

uint64_t sub_10027F02C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for TranslateContentView() + 28)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_100280A4C(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_10027F114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TranslateContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v18[0];
    sub_10027F8E8(a1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_10027F950(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9 + v8);
    v10 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v18[0] = 0;
    v17[0] = v7;
    *&v17[1] = 0;
    memset(&v17[16], 0, 17);
    *&v17[8] = _swiftEmptyArrayStorage;
    *&v17[40] = sub_10027FFD8;
    *&v17[48] = v9;
    *&v17[56] = 0;
    *&v17[64] = 0;
    *&v17[72] = sub_10027F380;
    *&v17[80] = xmmword_1002ED200;
    *&v17[96] = 0xE800000000000000;
    memset(&v17[104], 0, 105);
    v17[216] = v10;
    *&v17[224] = v11;
    *&v17[232] = v12;
    *&v17[240] = v13;
    *&v17[248] = v14;
    v17[256] = 0;
    nullsub_1(v17);
    memcpy(v18, v17, 0x101uLL);
  }

  else
  {
    sub_10027FFAC(v18);
  }

  return memcpy(a2, v18, 0x101uLL);
}

void sub_10027F380()
{
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D28C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Long press for speech on Translate tab undefined. Doing nothing", v2, 2u);
  }
}

BOOL sub_10027F490()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (v1 & 1) == 0;
}

uint64_t sub_10027F510(uint64_t result)
{
  v1 = *(*(result + 24) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100280A4C(&qword_1003AC930, type metadata accessor for CardMetrics);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10027F648(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for TranslateContentView() + 28)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_100280A4C(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10027F72C()
{
  result = sub_10027C818();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v1 == 1)
    {
      sub_1000663B0(0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    result = v2;
    if (v2)
    {

      return sub_1002BBD20();
    }
  }

  return result;
}

uint64_t sub_10027F864(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027F8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027F950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10027F9D4()
{
  result = qword_1003BB5A0;
  if (!qword_1003BB5A0)
  {
    sub_100005EA8(&qword_1003BB548);
    sub_100005EA8(&qword_1003BB540);
    sub_100005EA8(&qword_1003BB578);
    sub_10027F864(&qword_1003BB580, &qword_1003BB578, &unk_1002ED2B8, sub_10027F834);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB5A0);
  }

  return result;
}

uint64_t sub_10027FB14@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 2) = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_10027FBA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10027FC28@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

BOOL sub_10027FD9C()
{
  type metadata accessor for TranslateContentView();

  return sub_10027F490();
}

uint64_t sub_10027FE1C(uint64_t a1)
{
  v3 = *(type metadata accessor for TranslateContentView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10027F648(a1, v4);
}

uint64_t sub_10027FEA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TranslateContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_10027FFAC(uint64_t a1)
{
  *(a1 + 256) = 0;
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
  return result;
}

unint64_t sub_10027FFFC()
{
  result = qword_1003BB600;
  if (!qword_1003BB600)
  {
    sub_100005EA8(&qword_1003BB5F8);
    sub_100005EA8(&qword_1003BB608);
    sub_100005EA8(&qword_1003BB610);
    sub_100005EA8(&qword_1003BB618);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100280174();
    sub_100280A4C(&qword_1003B4E60, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10028025C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB600);
  }

  return result;
}

unint64_t sub_100280174()
{
  result = qword_1003BB620;
  if (!qword_1003BB620)
  {
    sub_100005EA8(&qword_1003BB618);
    sub_10001BAEC(&qword_1003BB628, &qword_1003BB630);
    sub_100280A4C(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB620);
  }

  return result;
}

unint64_t sub_10028025C()
{
  result = qword_1003BB638;
  if (!qword_1003BB638)
  {
    sub_100005EA8(&qword_1003BB610);
    sub_10001BAEC(&qword_1003BB640, &qword_1003BB648);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB638);
  }

  return result;
}

uint64_t sub_100280340(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BB5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002803B8()
{
  result = qword_1003BB660;
  if (!qword_1003BB660)
  {
    sub_100005EA8(&qword_1003BB658);
    sub_100280470();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB660);
  }

  return result;
}

unint64_t sub_100280470()
{
  result = qword_1003BB668;
  if (!qword_1003BB668)
  {
    sub_100005EA8(&qword_1003BB670);
    sub_10001BAEC(&qword_1003AA570, &qword_1003AA578);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB668);
  }

  return result;
}

uint64_t sub_1002805E8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100280650@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranslateContentView();

  return sub_10027EBD0(a1);
}

unint64_t sub_1002806C8()
{
  result = qword_1003BB688;
  if (!qword_1003BB688)
  {
    sub_100005EA8(&qword_1003BB680);
    type metadata accessor for FavoritesView();
    sub_100280A4C(&qword_1003B9888, type metadata accessor for FavoritesView);
    swift_getOpaqueTypeConformance2();
    sub_100186174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB688);
  }

  return result;
}

uint64_t sub_1002807C4()
{
  v1 = type metadata accessor for TranslateContentView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 24);
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002809E8(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100280A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100280A94()
{
  sub_100005EA8(&qword_1003BB570);
  sub_10001BAEC(&qword_1003BB5B8, &qword_1003BB570);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100280B6C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

id sub_100280BD8(uint64_t a1)
{
  type metadata accessor for TextViewWithPlaceHolder();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize:? weight:?];
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v7 = [v6 scaledFontForFont:v5 maximumPointSize:1.79769313e308];

  [v2 setFont:v7];
  v8 = objc_opt_self();
  v9 = v2;
  v10 = [v8 labelColor];
  [v9 setTextColor:v10];

  v11 = v9;
  v12 = [v8 clearColor];
  [v11 setBackgroundColor:v12];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setDelegate:a1];
  [v11 setTextDropDelegate:a1];
  [v11 setReturnKeyType:0];
  [v11 setForceDisableDictation:1];

  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v14];

  [v13 setShowsVerticalScrollIndicator:0];
  [v13 setTextContainerInset:{32.0, 32.0, 32.0, 32.0}];
  *(v13 + OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_adjustsFontSize) = 1;
  return v13;
}

id sub_100280EA4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint);
  }

  else
  {
    v4 = sub_100280F04();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100280F04()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:0];
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001002FCC90;
  v4._object = 0x80000001002FCC70;
  v8._countAndFlagsBits = 0xD000000000000024;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  v6 = String._bridgeToObjectiveC()();

  [v0 setText:v6];

  return v0;
}

void *sub_100281128()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [objc_opt_self() activeInputModes];
    sub_10000A2CC(0, &qword_1003B2430);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v1 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = v7;
        if (sub_100281294(&v10, v0))
        {

          return v1;
        }

        ++v6;
        if (v8 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    return 0;
  }

  return v1;
}

uint64_t sub_100281294(id *a1, uint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 primaryLanguage];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_1000E1D20(a2 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_10028B330(45, 0xE100000000000000, v14, v16);
    if (v18)
    {
      v19 = Locale.ltLanguageCode.getter();
      if (v20)
      {
        if (v14 != v19 || v20 != v16)
        {
          goto LABEL_11;
        }

LABEL_28:

LABEL_34:

        v17 = 1;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    v36 = v2;
    String.subscript.getter();
    v35 = static String._fromSubstring(_:)();
    v23 = v22;

    v24 = Locale.ltLanguageCode.getter();
    if (v25)
    {
      if (v24 == 26746 && v25 == 0xE200000000000000)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v35 == 26746 && v23 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v27 = String.index(_:offsetBy:)();
        sub_100280B6C(v27, v14, v16);

        v28 = static String._fromSubstring(_:)();
        v30 = v29;

        if (Locale.isTraditionalChinese()())
        {
          if (v28 == 1953390920 && v30 == 0xE400000000000000)
          {
            goto LABEL_34;
          }
        }

        else if (v28 == 1936613704 && v30 == 0xE400000000000000)
        {
          goto LABEL_34;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }

LABEL_25:

    v31 = Locale.ltLanguageCode.getter();
    if (v32)
    {
      if (v35 != v31 || v32 != v23)
      {
LABEL_11:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_36:

        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_30:

    v17 = 0;
LABEL_37:
    (*(v9 + 8))(v11, v8);
    return v17 & 1;
  }

  sub_1000E20D4(v7);
LABEL_4:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002816F8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_1000E1D20(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale, &v16 - v6);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000E20D4(v7);
    v8 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0x545F4F545F504154;
    v9._object = 0xEB00000000455059;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v17)._countAndFlagsBits;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1000E20D4(v7);
    v12 = [objc_opt_self() mainBundle];
    v13._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0x545F4F545F504154;
    v14._object = 0xEB00000000455059;
    countAndFlagsBits = Locale.ltLocalizedAppString(_:table:bundle:)(v14, v13, v12)._countAndFlagsBits;

    (*(v2 + 8))(v4, v1);
  }

  return countAndFlagsBits;
}

id sub_10028197C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1002819E0(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:7];
  [v2 addTarget:a1 action:"closeButtonPressed" forControlEvents:0x2000];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  return v3;
}

id sub_100281AA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_verticalHintAnchorConstant] = 0x406C200000000000;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor;
  *&v5[v10] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_editingPair] = 0;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale;
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___closeButton] = 0;
  v13 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation;
  v14 = objc_allocWithZone(type metadata accessor for TypedInputInstrumentation());
  *&v5[v13] = sub_1002BDBF4(0);
  v5[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_uiVisible] = 1;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for TranslateInputCard();
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondarySystemGroupedBackgroundColor];
  [v17 setBackgroundColor:v18];

  v19 = [v17 layer];
  [v19 setCornerRadius:_UISheetCornerRadius];

  v20 = [v17 layer];
  v21 = [v16 secondarySystemBackgroundColor];
  v22 = [v21 CGColor];

  [v20 setBorderColor:v22];
  v23 = [v17 layer];
  [v23 setBorderWidth:0.5];

  [v17 setClipsToBounds:1];
  sub_100281ED0();
  sub_100282120();

  return v17;
}

uint64_t sub_100281ED0()
{
  v1 = sub_100280EA4();
  [v1 setHidden:1];

  v2 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible;
  v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible] = 0;
  v3 = sub_10028195C();
  [v3 setHidden:(v0[v2] & 1) == 0];

  v4 = sub_100280BB8();
  [v0 addSubview:v4];

  [v0 addSubview:*&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___closeButton]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint]];
  sub_100005AD4(&qword_1003AFCD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D3160;
  *(v5 + 32) = type metadata accessor for UITraitActiveAppearance();
  *(v5 + 40) = &protocol witness table for UITraitActiveAppearance;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005AD4(&qword_1003AFCD8);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100282054()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layer];

    v3 = [objc_opt_self() secondarySystemBackgroundColor];
    v4 = [v3 CGColor];

    [v2 setBorderColor:v4];
  }
}

void sub_100282120()
{
  v1 = sub_100280BB8();
  v2 = [v1 topAnchor];

  v3 = [v0 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:0.0];

  v5 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor;
  v6 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor] = v4;

  v7 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D53D0;
  v9 = sub_10028195C();
  v10 = [v9 topAnchor];

  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToSystemSpacingBelowAnchor:v11 multiplier:2.0];

  *(v8 + 32) = v12;
  v13 = [v0 trailingAnchor];
  v14 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___closeButton] trailingAnchor];
  v15 = [v13 constraintEqualToSystemSpacingAfterAnchor:v14 multiplier:2.0];

  v16 = *&v0[v5];
  *(v8 + 40) = v15;
  *(v8 + 48) = v16;
  v17 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput;
  v18 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput];
  v19 = v16;
  v20 = [v18 leftAnchor];
  v21 = [v0 leftAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:0.0];

  *(v8 + 56) = v22;
  v23 = [*&v0[v17] bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];

  *(v8 + 64) = v25;
  v26 = [*&v0[v17] rightAnchor];
  v27 = [v0 rightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];

  *(v8 + 72) = v28;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002D53E0;
  v31 = sub_100280EA4();
  v32 = [v31 centerXAnchor];

  v33 = [v0 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v30 + 32) = v34;
  v35 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint;
  v36 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint] leftAnchor];
  v37 = [v0 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:24.0];

  *(v30 + 40) = v38;
  v39 = [*&v0[v35] bottomAnchor];
  v40 = [v0 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-225.0];

  *(v30 + 48) = v41;
  v42 = [*&v0[v35] rightAnchor];
  v43 = [v0 rightAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-24.0];

  *(v30 + 56) = v44;
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:v45];
}

void sub_100282680()
{
  v1 = v0;
  v2 = sub_100280BB8();
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v19._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x545F4F545F504154;
  v9._object = 0xEB00000000455059;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = sub_10026DB48();
  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  [*(v1 + v4) setUserInteractionEnabled:1];
  v13 = *(v1 + v4);
  v14 = [v6 mainBundle];
  v20._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x545F4F545F504154;
  v15._object = 0xEB00000000455059;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  v17 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityLabel:v17];

  sub_100282884();
}

void sub_100282884()
{
  v1 = sub_100280EA4();
  [v1 setHidden:1];

  v2 = sub_100280BB8();
  [v2 resignFirstResponder];

  v3 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput;
  v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput);
  [v4 setTextAlignment:{2 * (objc_msgSend(v4, "effectiveUserInterfaceLayoutDirection") == 1)}];

  v5 = [*(v0 + v3) text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v7 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    v11 = 1;
    if (!v10)
    {
      v12 = *(v0 + v3);
      v13 = objc_opt_self();
      v14 = v12;
      v15 = [v13 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
      v16 = objc_opt_self();
      [v15 pointSize];
      v17 = [v16 systemFontOfSize:? weight:?];
      v18 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
      v19 = [v18 scaledFontForFont:v17 maximumPointSize:1.79769313e308];

      [v14 setFont:v19];
      v11 = 0;
    }

    v20 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible;
    *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible) = v11;
    v21 = sub_10028195C();
    [v21 setHidden:(*(v0 + v20) & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100282B34()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100280BB8();
  [v9 reloadInputViews];

  v10 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput;
  v11 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput);
  sub_1002816F8();
  v12 = sub_10026DB48();
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = *(v1 + v10);
  sub_1000E1D20(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale, v4);
  v15 = *(v6 + 48);
  if (v15(v4, 1, v5) == 1)
  {
    v16 = v14;
    static Locale.current.getter();
    if (v15(v4, 1, v5) != 1)
    {
      sub_1000E20D4(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v16 = v14;
  }

  v17 = Locale.isRTL()();
  (*(v6 + 8))(v8, v5);
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  [v16 setTextAlignment:v18];
}

id sub_100282DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslateInputCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TranslateInputCard()
{
  result = qword_1003BB6F8;
  if (!qword_1003BB6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100282F34()
{
  sub_1000E1CC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100283084(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100280BB8();
  v9 = [v8 returnKeyType];

  v10 = [a1 text];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v25[0] = v12;
  v25[1] = v14;
  static CharacterSet.whitespaces.getter();
  sub_10001F278();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  (*(v5 + 8))(v7, v4);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (!v15 ? (v19 = v17 == 0xE000000000000000) : (v19 = 0), v19))
  {

    if (!v9)
    {
      return;
    }
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((~v20 & 1) == v9)
    {
      return;
    }
  }

  [a1 setReturnKeyType:?];
  v21 = [a1 textInputMode];
  v22 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange;
  v23 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange);
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange) = v21;

  [a1 reloadInputViews];
  v24 = *(v2 + v22);
  *(v2 + v22) = 0;
}

void sub_100283498()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_verticalHintAnchorConstant) = 0x406C200000000000;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor;
  *(v1 + v2) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___editOrSpeakHint) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_inputModeBeforeReturnKeyChange) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_editingPair) = 0;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible) = 0;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___closeButton) = 0;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation;
  v6 = objc_allocWithZone(type metadata accessor for TypedInputInstrumentation());
  *(v1 + v5) = sub_1002BDBF4(0);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_uiVisible) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100283610()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willBeginEditing];
    swift_unknownObjectRelease();
  }

  v3 = sub_100280EA4();
  [v3 setHidden:1];

  v4 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible) = 1;
  v5 = sub_10028195C();
  [v5 setHidden:(*(v1 + v4) & 1) == 0];

  v6 = objc_allocWithZone(type metadata accessor for TypedInputInstrumentation());
  v7 = sub_1002BDBF4(0);
  v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation) = v7;
}

uint64_t sub_1002836F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 != 10 || a3 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  result = [a1 text];
  if (result)
  {
    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v36[0] = v14;
    v36[1] = v16;
    static CharacterSet.whitespaces.getter();
    sub_10001F278();
    v17 = StringProtocol.trimmingCharacters(in:)();
    v19 = v18;
    (*(v9 + 8))(v11, v8);

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation;
      v22 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation);
      *&v22[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount] = String.count.getter();

      v23 = *(v4 + v21);
      v24 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_editingPair);
      v25 = *&v23[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair];
      *&v23[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair] = v24;
      v26 = v23;
      v27 = v24;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        v30 = String._bridgeToObjectiveC()();

        v31 = *(v4 + v21);
        [v29 translateWithText:v30 instrumentation:v31];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        [v32 didPressReturn];
        swift_unknownObjectRelease();
      }
    }

    v33 = objc_allocWithZone(type metadata accessor for TypedInputInstrumentation());
    v34 = sub_1002BDBF4(0);
    v35 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation);
    *(v4 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation) = v34;

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002839C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_100283A48(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(a2(0)) initWithNibName:0 bundle:0];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_100283BAC(void *a1)
{
  v3 = type metadata accessor for LiveActivityView();
  __chkstk_darwin(v3 - 8);
  v5 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ActivityPresentationOptions();
  isa = v6[-1].isa;
  v78 = v6;
  __chkstk_darwin(v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100005AD4(&qword_1003BB768);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v70[-v13];
  v15 = type metadata accessor for ActivityDescriptor();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ActivityScene();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  v21 = a1;
  if (![v20 SBUI_isHostedBySystemAperture])
  {

LABEL_13:
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000078E8(v51, qword_1003D2818);
    v78 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v79[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_10028D78C(0xD000000000000019, 0x80000001002FCE00, v79);
      _os_log_impl(&_mh_execute_header, v78, v52, "%s Scene not an ActivityScene or not hosted by system aperture", v53, 0xCu);
      sub_100008664(v54);
    }

    else
    {
      v55 = v78;
    }

    return;
  }

  v75 = v18;
  v76 = v21;
  v22 = v15;
  v73 = v1;
  swift_getKeyPath();
  v23 = v16;
  dispatch thunk of ActivityScene.subscript.getter();

  v24 = v79[0];
  if (v79[0])
  {
    v72 = v5;
    v25 = *(v23 + 56);
    v26 = 1;
    v25(v12, 1, 1, v22);
    sub_1002852A8();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v74 = v23;
    v27 = v23;
    v28 = v22;
    v29 = *(v27 + 48);
    if (v29(v12, 1, v22) != 1)
    {
      (*(v74 + 32))(v14, v12, v22);
      v26 = 0;
    }

    v25(v14, v26, 1, v22);
    v30 = v29(v14, 1, v22);
    v31 = v75;
    if (v30 != 1)
    {
      (*(v74 + 32))(v75, v14, v28);
      ActivityDescriptor.presentationOptions.getter();
      v71 = ActivityPresentationOptions.isActionButtonInitiated.getter();
      (*(isa + 1))(v8, v78);
      v32 = v76;
      if (qword_1003A9258 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000078E8(v33, qword_1003D2818);
      v34 = v32;
      v35 = v73;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = &qword_1003BB000;
      v40 = v72;
      v78 = v34;
      if (v38)
      {
        v41 = swift_slowAlloc();
        v79[0] = swift_slowAlloc();
        *v41 = 136446722;
        v42 = [v34 session];
        v43 = [v42 persistentIdentifier];

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_10028D78C(v44, v46, v79);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2080;
        if (*&v35[OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_currentSpeechTranslationActivity])
        {

          v48 = Activity.id.getter();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0xE000000000000000;
        }

        v62 = sub_10028D78C(v48, v50, v79);

        *(v41 + 14) = v62;
        *(v41 + 22) = 1024;
        *(v41 + 24) = v71 & 1;
        _os_log_impl(&_mh_execute_header, v36, v37, "Translate Activity scene resigning active [id: %{public}s currentActivity: %s actionButtonInitiated:%{BOOL}d]", v41, 0x1Cu);
        swift_arrayDestroy();

        v31 = v75;
        v39 = &qword_1003BB000;
      }

      else
      {
      }

      sub_100174454();
      v63 = sub_10000B55C();
      if (v63)
      {
        v64 = *(v63 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController);
        v65 = v63;

        if (v64)
        {
          *(v64 + 40) = 0;
          swift_unknownObjectWeakAssign();
        }
      }

      if (v71)
      {
        v66 = sub_100283A08();
        dispatch thunk of UIHostingController.rootView.getter();
        v67 = v40[1];
        v79[0] = *v40;
        v79[1] = v67;
        sub_100005AD4(&qword_1003B3878);
        State.wrappedValue.getter();

        sub_100285300(v40);
        v68 = v39[231];

        sub_10015C420(v69);

        (*(v74 + 8))(v31, v28);
        *&v35[v68] = 0;
      }

      else
      {
        (*(v74 + 8))(v31, v28);
      }

      return;
    }
  }

  else
  {
    (*(v23 + 56))(v14, 1, 1, v22);
  }

  sub_100285240(v14);
  v56 = v76;
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_1000078E8(v57, qword_1003D2818);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79[0] = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_10028D78C(0xD000000000000019, 0x80000001002FCE00, v79);
    _os_log_impl(&_mh_execute_header, v58, v59, "%s Scene not an ActivityScene or not hosted by system aperture and or not action button initiated.", v60, 0xCu);
    sub_100008664(v61);
  }
}

void sub_100284578(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiveActivityView();
  __chkstk_darwin(v4 - 8);
  v79 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActivityPresentationOptions();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003BB768);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = type metadata accessor for ActivityDescriptor();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityScene();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v21 = a1;
  if (![v20 SBUI_isHostedBySystemAperture])
  {

LABEL_12:
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000078E8(v36, qword_1003D2818);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v2;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10028D78C(0xD000000000000018, 0x80000001002F8500, v81);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Scene not an ActivityScene or not hosted by system aperture", v40, 0xCu);
      sub_100008664(v41);

      v2 = v39;
    }

    *&v2[OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_currentSpeechTranslationActivity] = 0;

    return;
  }

  v76 = v2;
  v77 = v18;
  v78 = v21;
  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v22 = v81[0];
  if (!v81[0])
  {
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_20:
    sub_100285240(v14);
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000078E8(v42, qword_1003D2818);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10028D78C(0xD000000000000018, 0x80000001002F8500, v81);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s No ActivityDescriptor early exit.", v45, 0xCu);
      sub_100008664(v46);
    }

    return;
  }

  v23 = v15;
  v24 = *(v16 + 56);
  v25 = 1;
  v24(v12, 1, 1, v23);
  sub_1002852A8();
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v75 = v16;
  v26 = *(v16 + 48);
  if (v26(v12, 1, v23) != 1)
  {
    (*(v75 + 32))(v14, v12, v23);
    v25 = 0;
  }

  v24(v14, v25, 1, v23);
  if (v26(v14, 1, v23) == 1)
  {
    goto LABEL_20;
  }

  v27 = v23;
  v28 = v75;
  (*(v75 + 32))(v77, v14, v23);
  ActivityDescriptor.presentationOptions.getter();
  v29 = ActivityPresentationOptions.isActionButtonInitiated.getter();
  v30 = *(v80 + 8);
  v30(v8, v6);
  ActivityDescriptor.presentationOptions.getter();
  v31 = ActivityPresentationOptions.isActionButtonInitiated.getter();
  v30(v8, v6);
  if (v31)
  {
    v32 = v76;
    if (qword_1003A9308 != -1)
    {
      swift_once();
    }

    *&v32[OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_currentSpeechTranslationActivity] = *(qword_1003D2A98 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);

    v33 = sub_100283A08();
    v34 = v79;
    dispatch thunk of UIHostingController.rootView.getter();
    v35 = v34[1];
    v81[0] = *v34;
    v81[1] = v35;
    sub_100005AD4(&qword_1003B3878);
    State.wrappedValue.getter();

    sub_100285300(v34);
    sub_10015D1FC();
    goto LABEL_27;
  }

  v47 = sub_100283A28();
  v48 = sub_1001A4F9C();

  if (v48)
  {
    sub_1001D7E14();
LABEL_27:

    v49 = v27;
    v50 = v77;
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000078E8(v51, qword_1003D2818);
    v52 = v78;
    v53 = v76;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v80) = v29;
      v56 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v56 = 136315906;
      *(v56 + 4) = sub_10028D78C(0xD000000000000018, 0x80000001002F8500, v81);
      *(v56 + 12) = 2082;
      v57 = [v52 session];
      v58 = [v57 persistentIdentifier];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_10028D78C(v59, v61, v81);

      *(v56 + 14) = v62;
      *(v56 + 22) = 2080;
      if (*&v53[OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_currentSpeechTranslationActivity])
      {

        v63 = Activity.id.getter();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0xE000000000000000;
      }

      v72 = v80;
      v73 = sub_10028D78C(v63, v65, v81);

      *(v56 + 24) = v73;
      *(v56 + 32) = 1024;
      *(v56 + 34) = v72 & 1;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s Translate Activity scene became active [id: %{public}s currentActivity: %s actionButtonInitiated:%{BOOL}d]", v56, 0x26u);
      swift_arrayDestroy();

      (*(v75 + 8))(v77, v49);
    }

    else
    {

      (*(v75 + 8))(v50, v49);
    }

    return;
  }

  v66 = v27;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000078E8(v67, qword_1003D2920);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v81[0] = v71;
    *v70 = 136315138;
    *(v70 + 4) = sub_10028D78C(0xD000000000000018, 0x80000001002F8500, v81);
    _os_log_impl(&_mh_execute_header, v68, v69, "%s couldn't find the view model", v70, 0xCu);
    sub_100008664(v71);
  }

  else
  {
  }

  (*(v28 + 8))(v77, v66);
}

id sub_100285158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslateSystemApertureSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100285240(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003BB768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002852A8()
{
  result = qword_1003BB770;
  if (!qword_1003BB770)
  {
    type metadata accessor for ActivityDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB770);
  }

  return result;
}

uint64_t sub_100285300(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100285368(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      *(a3 + 40) = a4;
LABEL_19:

      swift_unknownObjectWeakAssign();
      return;
    }
  }

  else if (!swift_unknownObjectWeakLoadStrong())
  {
    *(a3 + 24) = a4;
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2710);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    if (a2)
    {
      v11 = 0x697463416576696CLL;
    }

    else
    {
      v11 = 1852399981;
    }

    if (a2)
    {
      v12 = 0xEC00000079746976;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    v13 = sub_10028D78C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Attempting to register %{public}s scene even though one is already registered with the interruption controller; ignoring new scene", v9, 0xCu);
    sub_100008664(v10);
  }
}

void sub_100285554(void *a1)
{
  v3 = type metadata accessor for LiveActivityView();
  __chkstk_darwin(v3 - 8);
  v5 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActivityPresentationOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003BB768);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v15 = type metadata accessor for ActivityDescriptor();
  v81 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityScene();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v79 = v7;
  v20 = a1;
  if (![v19 SBUI_isHostedBySystemAperture])
  {

LABEL_13:
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000078E8(v44, qword_1003D2818);
    v81 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v81, v45, "Scene not an ActivityScene or not hosted by system aperture", v46, 2u);
    }

    v47 = v81;

    return;
  }

  v76 = v6;
  v74 = v1;
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_1000078E8(v21, qword_1003D2818);
  v23 = v20;
  v77 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v75 = v17;
  v73 = v5;
  v78 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83[0] = v28;
    *v27 = 136446210;
    v29 = [v23 session];
    v72 = v15;
    v30 = v29;
    v31 = [v29 persistentIdentifier];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10028D78C(v32, v34, v83);

    *(v27 + 4) = v35;
    v15 = v72;
    _os_log_impl(&_mh_execute_header, v24, v25, "Connecting to Translate Activity scene [id: %{public}s]", v27, 0xCu);
    sub_100008664(v28);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v36 = v83[0];
  if (v83[0])
  {
    v37 = v81;
    isa = v81[7].isa;
    v39 = 1;
    (isa)(v12, 1, 1, v15);
    sub_1002852A8();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v40 = v37[6].isa;
    if (v40(v12, 1, v15) != 1)
    {
      (v81[4].isa)(v14, v12, v15);
      v39 = 0;
    }

    (isa)(v14, v39, 1, v15);
    v41 = v40(v14, 1, v15);
    v42 = v76;
    if (v41 != 1)
    {
      (v81[4].isa)(v75, v14, v15);
      v51 = v80;
      ActivityDescriptor.presentationOptions.getter();
      v52 = ActivityPresentationOptions.isActionButtonInitiated.getter();
      v53 = *(v79 + 8);
      v53(v51, v42);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v78;
      if (v56)
      {
        v58 = swift_slowAlloc();
        *v58 = 67109120;
        *(v58 + 4) = v52 & 1;
        _os_log_impl(&_mh_execute_header, v54, v55, "TranslateSystemApertureSceneDelegate scene launch: from action button %{BOOL}d", v58, 8u);
      }

      v59 = v75;
      ActivityDescriptor.presentationOptions.getter();
      v60 = ActivityPresentationOptions.isActionButtonInitiated.getter();
      v53(v51, v76);
      if (v60)
      {
        v61 = sub_100283A08();
        [v19 setSystemApertureElementViewControllerProvider:v61];

        sub_100174454();
        v62 = sub_10000B55C();
        if (!v62)
        {
          (v81[1].isa)(v59, v15);

          return;
        }

        v63 = *(v62 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController);
        v64 = v62;

        if (v63)
        {
          v65 = *(v74 + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate____lazy_storage___speechTranslationElementProvider);
          v66 = v59;
          v67 = v73;
          dispatch thunk of UIHostingController.rootView.getter();
          v68 = v67[1];
          v83[0] = *v67;
          v83[1] = v68;
          sub_100005AD4(&qword_1003B3878);
          State.wrappedValue.getter();

          v69 = v82;
          sub_100285300(v67);
          sub_100285368(v69, 1, v63, &off_100385F90);

          (v81[1].isa)(v66, v15);
          return;
        }
      }

      else
      {
        v70 = sub_100283A28();
        [v19 setSystemApertureElementViewControllerProvider:v70];
      }

      (v81[1].isa)(v59, v15);
      return;
    }

    v43 = v78;
  }

  else
  {
    v43 = v78;

    (v81[7].isa)(v14, 1, 1, v15);
  }

  sub_100285240(v14);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "No ActivityDescriptor early exit", v50, 2u);
  }
}

uint64_t sub_100285E48()
{
  sub_100164DC4();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_100285EA0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale.Language();
  sub_100174560(v4, qword_1003D2C30);
  sub_1000078E8(v4, qword_1003D2C30);
  static Locale.current.getter();
  Locale.language.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100285F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B0300);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100286814(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale.Language();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100286184@<X0>(uint64_t a1@<X8>)
{
  if (qword_1003A9368 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Locale.Language();
  v3 = sub_1000078E8(v2, qword_1003D2C30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10028622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100286770(&qword_1003BB790, &type metadata accessor for Locale.Language);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1002862D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002863B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TranslateText()
{
  result = qword_1003BB7F0;
  if (!qword_1003BB7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002864C8()
{
  sub_10028654C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10028654C()
{
  if (!qword_1003B25E0)
  {
    type metadata accessor for Locale.Language();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B25E0);
    }
  }
}

uint64_t sub_1002865C0(uint64_t a1)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KaraokeView(0);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 20);
  v11 = (v1 + *(a1 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);

  sub_100129FD0(v12, v13, v14, v9);
  sub_100285F9C(v6);
  sub_100286770(&qword_1003BB830, type metadata accessor for KaraokeView);
  View.typesettingLanguage(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  return sub_1002867B8(v9);
}

uint64_t sub_100286770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002867B8(uint64_t a1)
{
  v2 = type metadata accessor for KaraokeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100286814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B0300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100286884()
{
  type metadata accessor for KaraokeView(255);
  sub_100286770(&qword_1003BB830, type metadata accessor for KaraokeView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100286920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002869F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100286AD0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100135174();
    if (v1 <= 0x3F)
    {
      sub_1001312D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_100286B74@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v23._object = 0xE000000000000000;
  v9._object = 0x80000001002F2150;
  v9._countAndFlagsBits = 0xD000000000000016;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v23);

  countAndFlagsBits = 0;
  object = 0;
  if (a1)
  {
    v14 = [v7 mainBundle];
    v24._object = 0xE000000000000000;
    v15._object = 0x80000001002FCE20;
    v15._countAndFlagsBits = 0xD000000000000016;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v24);
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  UUID.init()();
  result = type metadata accessor for TranslateTip(0);
  *(a4 + result[5]) = v11;
  v20 = (a4 + result[6]);
  *v20 = countAndFlagsBits;
  v20[1] = object;
  v21 = (a4 + result[7]);
  *v21 = sub_1000DBE3C;
  v21[1] = v18;
  return result;
}

uint64_t sub_100286D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100286DC0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100286DF8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranslateTip(0);
  sub_100174560(v4, qword_1003D2C48);
  v5 = sub_1000078E8(v4, qword_1003D2C48);
  v6 = [objc_opt_self() mainBundle];
  v14._object = 0x80000001002FCE60;
  v7._object = 0x80000001002FCE40;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  UUID.init()();
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + v4[5]) = v9;
  v11 = (v5 + v4[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + v4[7]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_100286FA4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranslateTip(0);
  sub_100174560(v4, qword_1003D2C60);
  v5 = sub_1000078E8(v4, qword_1003D2C60);
  v6 = [objc_opt_self() mainBundle];
  v14._object = 0x80000001002FCEA0;
  v7._object = 0x80000001002FCE80;
  v14._countAndFlagsBits = 0xD000000000000020;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  UUID.init()();
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + v4[5]) = v9;
  v11 = (v5 + v4[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + v4[7]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_100287178(uint64_t a1)
{
  v2 = type metadata accessor for StaticTipView(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003BB908);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DynamicTipView(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for TranslateTip(0) + 28)))
  {
    sub_100287774(a1, v10, type metadata accessor for TranslateTip);
    sub_100287774(v10, v7, type metadata accessor for DynamicTipView);
    swift_storeEnumTagMultiPayload();
    sub_1002876EC(&qword_1003BB8F0, type metadata accessor for DynamicTipView);
    sub_1002876EC(&qword_1003BB8F8, type metadata accessor for StaticTipView);
    _ConditionalContent<>.init(storage:)();
    v11 = type metadata accessor for DynamicTipView;
    v12 = v10;
  }

  else
  {
    sub_100287774(a1, v4, type metadata accessor for TranslateTip);
    sub_100287774(v4, v7, type metadata accessor for StaticTipView);
    swift_storeEnumTagMultiPayload();
    sub_1002876EC(&qword_1003BB8F0, type metadata accessor for DynamicTipView);
    sub_1002876EC(&qword_1003BB8F8, type metadata accessor for StaticTipView);
    _ConditionalContent<>.init(storage:)();
    v11 = type metadata accessor for StaticTipView;
    v12 = v4;
  }

  return sub_1002877DC(v12, v11);
}

uint64_t sub_1002874A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x401C000000000000;
  *(a1 + 16) = 0;
  sub_100005AD4(&qword_1003BB8D0);

  sub_100005AD4(&qword_1003ACD48);
  type metadata accessor for UUID();
  sub_100005AD4(&qword_1003BB8D8);
  sub_10001BAEC(&qword_1003BB8E0, &qword_1003ACD48);
  sub_100287600();
  sub_1002876EC(&qword_1003BB900, type metadata accessor for TranslateTip);
  return ForEach<>.init(_:content:)();
}

unint64_t sub_100287600()
{
  result = qword_1003BB8E8;
  if (!qword_1003BB8E8)
  {
    sub_100005EA8(&qword_1003BB8D8);
    sub_1002876EC(&qword_1003BB8F0, type metadata accessor for DynamicTipView);
    sub_1002876EC(&qword_1003BB8F8, type metadata accessor for StaticTipView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BB8E8);
  }

  return result;
}

uint64_t sub_1002876EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100287774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002877DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100287880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateTip(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100287904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslateTip(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100287974()
{
  result = type metadata accessor for TranslateTip(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100287A40@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranslateTip(0);
  sub_10001F278();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Color.secondary.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_10002EA54(v2, v4, v6 & 1);

  static Font.subheadline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_10002EA54(v7, v9, v11 & 1);

  v17 = Text.bold()();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_10002EA54(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_100287BD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_100005AD4(&qword_1003BBA48);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = __chkstk_darwin(v3);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v48 - v6;
  result = type metadata accessor for TranslateTip(0);
  v8 = (a1 + *(result + 24));
  v9 = v8[1];
  if (v9)
  {
    v55 = *v8;
    v56 = v9;
    v48 = result;
    sub_10001F278();

    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    static Font.subheadline.getter();
    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;

    sub_10002EA54(v10, v12, v14 & 1);

    static Color.secondary.getter();
    v20 = Text.foregroundColor(_:)();
    v21 = a1;
    v23 = v22;
    v25 = v24;

    sub_10002EA54(v15, v17, v19 & 1);

    v26 = Text.bold()();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v23;
    a1 = v21;
    sub_10002EA54(v20, v33, v25 & 1);

    v34 = v26;
    v35 = v28;
    v49 = v30 & 1;
    sub_100005B1C(v26, v28, v30 & 1);
    v36 = v32;

    result = v48;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v49 = 0;
    v36 = 0;
  }

  if (*(a1 + *(result + 28)))
  {
    __chkstk_darwin(result);
    *(&v48 - 2) = a1;

    sub_100005AD4(&qword_1003BBA50);
    v37 = sub_100005EA8(&qword_1003BBA58);
    v38 = sub_10028832C();
    v55 = v37;
    v56 = v38;
    swift_getOpaqueTypeConformance2();
    v39 = v54;
    Button.init(action:label:)();
    v41 = v51;
    v40 = v52;
    v42 = *(v52 + 16);
    v43 = v53;
    v42(v51, v39, v53);
    v44 = v49;
    v45 = v50;
    *v50 = v34;
    v45[1] = v35;
    v45[2] = v44;
    v45[3] = v36;
    v46 = sub_100005AD4(&qword_1003BBA98);
    v42(v45 + *(v46 + 48), v41, v43);
    sub_1001AF5CC(v34, v35, v44, v36);
    sub_1001AF610(v34, v35, v44, v36);
    v47 = *(v40 + 8);
    v47(v54, v43);
    v47(v41, v43);
    return sub_1001AF610(v34, v35, v44, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100287FE8()
{
  v0 = sub_100005AD4(&qword_1003BBA58);
  __chkstk_darwin(v0);
  v2 = &v16 - v1;
  v3 = static VerticalAlignment.center.getter();
  sub_1002881E4(&v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v25 = 0;
  v24 = v18;
  v16 = v3;
  v17 = 0x4014000000000000;
  v18 = 0;
  v19 = v4;
  v20 = v5;
  v21 = v24;
  v22 = v7;
  v23 = v8;
  sub_100005AD4(&qword_1003BBA90);
  sub_10001BAEC(&qword_1003BBA88, &qword_1003BBA90);
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v4, v5, v6);

  v9 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v2[*(sub_100005AD4(&qword_1003BBA70) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  v12 = static Color.translateAccentColor.getter();
  v13 = swift_getKeyPath();
  v14 = &v2[*(v0 + 36)];
  *v14 = v13;
  v14[1] = v12;
  sub_10028832C();
  View.bold(_:)();
  return sub_100288594(v2);
}

uint64_t sub_1002881E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranslateTip(0);
  sub_10001F278();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_100005B1C(v2, v4, v6);

  sub_10002EA54(v2, v4, v6);
}

uint64_t sub_1002882D0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100005AD4(&qword_1003BBA40);
  return sub_100287BD4(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_10028832C()
{
  result = qword_1003BBA60;
  if (!qword_1003BBA60)
  {
    sub_100005EA8(&qword_1003BBA58);
    sub_1002883E4();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BBA60);
  }

  return result;
}

unint64_t sub_1002883E4()
{
  result = qword_1003BBA68;
  if (!qword_1003BBA68)
  {
    sub_100005EA8(&qword_1003BBA70);
    sub_10028849C();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BBA68);
  }

  return result;
}

unint64_t sub_10028849C()
{
  result = qword_1003BBA78;
  if (!qword_1003BBA78)
  {
    sub_100005EA8(&qword_1003BBA80);
    sub_10001BAEC(&qword_1003BBA88, &qword_1003BBA90);
    sub_1002876EC(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BBA78);
  }

  return result;
}

uint64_t sub_100288594(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003BBA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100288658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002886CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2770);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v23 = a1;
    v24 = v4;
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v11 = 136446210;
    v25 = v2;
    v12 = v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID;
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 24);
    v26 = *(v12 + 16);
    v29 = v13;
    v15 = v13;

    swift_getAtKeyPath();
    v16 = v28;
    if (v28)
    {
      v26 = v27;
    }

    else
    {

      v16 = v14;
    }

    v17 = sub_10028D78C(v26, v16, &v30);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Suspending conversation session with ID: %{public}s", v11, 0xCu);
    sub_100008664(v22);

    v4 = v24;
    v2 = v25;
    a1 = v23;
  }

  else
  {
  }

  (*(v5 + 16))(v7, a1, v4);
  v18 = [objc_opt_self() standardUserDefaults];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = String._bridgeToObjectiveC()();
  [v18 setObject:isa forKey:v20];

  result = (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_isSuspended) = 1;
  return result;
}

uint64_t sub_100288A2C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_isSuspended;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_isSuspended) == 1)
  {
    sub_100229270(v6);
    Date.timeIntervalSince(_:)();
    v9 = v8;
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_sessionTimeout) < v9)
    {
      sub_100288DD8();
    }

    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D2770);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v28 = v13;
      v29 = v10;
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      v27 = v14;
      *v14 = 136446210;
      v15 = v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID;
      swift_beginAccess();
      v16 = *v15;
      v17 = *(v15 + 24);
      v30 = *(v15 + 16);
      v33 = v16;
      v25 = v16;

      swift_getAtKeyPath();
      v18 = v32;
      if (v32)
      {
        v30 = v31;
      }

      else
      {

        v18 = v17;
      }

      v19 = sub_10028D78C(v30, v18, &v34);

      v20 = v27;
      *(v27 + 1) = v19;
      _os_log_impl(&_mh_execute_header, v12, v28, "Resumed conversation session with ID: %{public}s", v20, 0xCu);
      sub_100008664(v26);

      v10 = v29;
    }

    else
    {
    }

    *(v1 + v7) = 0;
    Date.init()();
    v21 = [objc_opt_self() standardUserDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v23 = String._bridgeToObjectiveC()();
    [v21 setObject:isa forKey:v23];

    return (v10)(v6, v2);
  }

  return result;
}

void sub_100288DD8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID;
  swift_beginAccess();
  v27[0] = v6;
  v27[1] = v8;
  v25 = v6;
  v26 = v8;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  sub_100031DD8(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, &v22);
  sub_1000085CC(&v22, v24);
  dispatch thunk of TranslationStore.clearHistory(completion:)();
  sub_100008664(&v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_lidDisambiguationCounter) = 0;
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = 0;

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D2770);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    v16 = *(v9 + 16);
    v17 = *(v9 + 24);
    v25 = *v9;
    v18 = v25;

    swift_getAtKeyPath();
    v19 = v23;
    if (v23)
    {
      v16 = v22;
    }

    else
    {

      v19 = v17;
    }

    v20 = sub_10028D78C(v16, v19, v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Started new conversation session with ID: %{public}s", v14, 0xCu);
    sub_100008664(v15);
  }
}

void sub_10028917C(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v4 - 8);
  v6 = &v31[-1] - v5;
  v7 = [a1 favoriteDate];
  if (v7)
  {
    v8 = v7;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_10010A82C(v6);
    v10 = String._bridgeToObjectiveC()();
    [a1 setSessionID:v10];

    sub_100031DD8(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v31);
    sub_1000085CC(v31, v32);
    dispatch thunk of TranslationStore.save()();
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_10010A82C(v6);
    sub_100031DD8(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, v31);
    sub_1000085CC(v31, v32);
    dispatch thunk of TranslationStore.deleteBackground(_:completion:)();
  }

  sub_100008664(v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = static Published.subscript.modify();
  v15 = v14;
  v16 = sub_100289D30(v14, v12);

  if (!(*v15 >> 62))
  {
    v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v16)
    {
      goto LABEL_6;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (v17 < v16)
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_1002B5348(v16, v17);
  v13(v31, 0);

  v18 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation;
  v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
  if (v19)
  {
    v20 = [v19 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v12 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (!v23)
  {

    return;
  }

  if (v21 == v25 && v23 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return;
    }
  }

  v29 = *(v2 + v18);
  *(v2 + v18) = 0;
}

void sub_100289520()
{
  sub_100031DD8(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, &v17);
  sub_1000085CC(&v17, v19);
  v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID;
  swift_beginAccess();
  v16 = *v1;
  v2 = v16;

  swift_getAtKeyPath();
  if (!v15[1])
  {
  }

  v3 = dispatch thunk of TranslationStore.translations(with:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v15[0] = v3;

  static Published.subscript.setter();
  sub_100008664(&v17);
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2770);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 134349314;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v17 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v9;

    *(v7 + 12) = 2082;
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    v16 = *v1;
    v12 = v16;

    swift_getAtKeyPath();
    v13 = v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {

      v13 = v11;
    }

    v14 = sub_10028D78C(v10, v13, v15);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loaded %{public}ld translations for conversation session with ID: %{public}s", v7, 0x16u);
    sub_100008664(v8);
  }

  else
  {
  }
}