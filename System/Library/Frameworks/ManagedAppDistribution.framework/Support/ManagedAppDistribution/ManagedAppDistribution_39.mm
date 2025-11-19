uint64_t sub_10050E218(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[140] = a1;
  v3[141] = a2;

  v4 = swift_task_alloc();
  v3[142] = v4;
  *v4 = v6;
  v4[1] = sub_10050E38C;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_10050E38C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[143] = a1;
  v3[144] = a2;

  v4 = swift_task_alloc();
  v3[145] = v4;
  *v4 = v6;
  v4[1] = sub_10050E500;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10050E500(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1168) = a1;
  *(v3 + 1176) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_10050E628, v3 + 656);
}

uint64_t sub_10050E644()
{
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1168);
  v5 = *(v0 + 1120);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1184) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 257;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_10050E720, v0 + 768);
}

uint64_t sub_10050E720()
{
  sub_100511988(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10050E7D4, v1, v0);
}

uint64_t sub_10050E7D4()
{
  v1 = *(v0 + 1184);

  return _swift_task_switch(sub_10050E86C, v1, 0);
}

uint64_t sub_10050E86C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1192) = qword_100786178;

  return _swift_task_switch(sub_10050E904, v1, 0);
}

uint64_t sub_10050E904()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = sub_100511988(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[150] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[151] = v5;
  *v5 = v0;
  v5[1] = sub_10050EA40;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10050EA40()
{
  v1 = *(*v0 + 1192);

  return _swift_task_switch(sub_10050EB6C, v1, 0);
}

uint64_t sub_10050EB6C()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_10050EBDC, 0, 0);
}

uint64_t sub_10050EBDC()
{
  v39 = v0;
  if (*(v0 + 762) == 1)
  {
    v13 = *(v0 + 1016);
    static Logger.restore.getter();

    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1072);
      v18 = *(v0 + 1064);
      v19 = *(v0 + 1032);
      v35 = *(v0 + 1024);
      v37 = *(v0 + 1040);
      v20 = *(v0 + 1016);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 2082;
      v24 = v20;
      *(v21 + 14) = sub_1002346CC(v18, v17, &v38);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@][%{public}s] Alternative button", v21, 0x16u);
      sub_1001F8084(v22);

      sub_10000710C(v23);

      (*(v19 + 8))(v37, v35);
    }

    else
    {
      v29 = *(v0 + 1040);
      v30 = *(v0 + 1032);
      v31 = *(v0 + 1024);

      (*(v30 + 8))(v29, v31);
    }
  }

  else if (!*(v0 + 762))
  {
    v1 = *(v0 + 1016);
    static Logger.restore.getter();

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1072);
      v6 = *(v0 + 1064);
      v7 = *(v0 + 1032);
      v34 = *(v0 + 1024);
      v36 = *(v0 + 1048);
      v8 = *(v0 + 1016);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2082;
      v12 = v8;
      *(v9 + 14) = sub_1002346CC(v6, v5, &v38);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Primary", v9, 0x16u);
      sub_1001F8084(v10);

      sub_10000710C(v11);

      (*(v7 + 8))(v36, v34);
    }

    else
    {
      v25 = *(v0 + 1048);
      v26 = *(v0 + 1032);
      v27 = *(v0 + 1024);

      (*(v26 + 8))(v25, v27);
    }

    v28 = 1;
    goto LABEL_11;
  }

  v28 = 0;
LABEL_11:
  sub_10000710C(v0 + 952);

  v32 = *(v0 + 8);

  return v32(v28);
}

uint64_t sub_10050EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[129] = *a4;
  v4[128] = a3;
  v4[127] = a2;
  v4[126] = a1;
  v7 = type metadata accessor for Logger();
  v4[130] = v7;
  v4[131] = *(v7 - 8);
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[122] = v6;
  v4[123] = &off_100770208;
  v4[119] = a4;

  return _swift_task_switch(sub_10050F0DC, 0, 0);
}

uint64_t sub_10050F0DC()
{
  v37 = v0;
  v1 = *(v0 + 1024);
  static Logger.restore.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);
  if (v5)
  {
    v9 = *(v0 + 1024);
    v34 = *(v0 + 1016);
    v10 = *(v0 + 1008);
    v35 = *(v0 + 1080);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2082;
    v14 = v9;
    *(v11 + 14) = sub_1002346CC(v10, v34, &v36);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Prompting to install required distributor", v11, 0x16u);
    sub_1001F8084(v12);

    sub_10000710C(v13);

    (*(v7 + 8))(v35, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v15 = *(v0 + 1016);
  v16 = *(v0 + 1008);
  v17 = sub_10056E730(v16, v15);
  v19 = v18;
  v20 = objc_allocWithZone(LSApplicationRecord);

  v21 = sub_10049E57C(v16, v15, 1);
  v22 = [v21 iTunesMetadata];
  v23 = [v22 distributorInfo];

  v24 = [v23 distributorID];
  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v0 + 1088) = v27;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v25 = 0;
    v27 = 0;
    *(v0 + 1088) = 0;
    if (!v19)
    {
LABEL_8:
      if (v27)
      {
        v17 = v25;
      }

      else
      {
        v17 = 0;
      }

      if (v27)
      {
        v19 = v27;
      }

      else
      {
        v19 = 0xE000000000000000;
      }
    }
  }

  *(v0 + 1096) = v19;
  v28 = *(v0 + 1032);
  *(v0 + 696) = v17;
  *(v0 + 704) = v19;
  *(v0 + 760) = 19;
  *(v0 + 808) = v17;
  *(v0 + 816) = v19;
  *(v0 + 872) = 17;
  *(v0 + 880) = v17;
  *(v0 + 888) = v19;
  *(v0 + 944) = 18;
  v29 = *(*sub_100006D8C((v0 + 952), v28) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1104) = v29;
  swift_bridgeObjectRetain_n();

  v30 = swift_allocObject();
  *(v0 + 1112) = v30;
  *(v30 + 16) = 7;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0;
  *(v30 + 80) = 41;
  *(v30 + 88) = v29;
  v31 = swift_task_alloc();
  *(v0 + 1120) = v31;
  *(v31 + 16) = &unk_1006B07D0;
  *(v31 + 24) = v30;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v32 = swift_task_alloc();
  *(v0 + 1128) = v32;
  *v32 = v0;
  v32[1] = sub_10050F6F0;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_10050F6F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[142] = a1;
  v3[143] = a2;

  v4 = swift_task_alloc();
  v3[144] = v4;
  *v4 = v6;
  v4[1] = sub_10050F864;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_10050F864(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[145] = a1;
  v3[146] = a2;

  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v6;
  v4[1] = sub_10050F9D8;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_10050F9D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1184) = a1;
  *(v3 + 1192) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_10050FB00, v3 + 656);
}

uint64_t sub_10050FB1C()
{
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1184);
  v5 = *(v0 + 1136);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1200) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 257;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_10050FBF8, v0 + 768);
}

uint64_t sub_10050FBF8()
{
  sub_100511988(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10050FCAC, v1, v0);
}

uint64_t sub_10050FCAC()
{
  v1 = *(v0 + 1200);

  return _swift_task_switch(sub_10050FD44, v1, 0);
}

uint64_t sub_10050FD44()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1208) = qword_100786178;

  return _swift_task_switch(sub_10050FDDC, v1, 0);
}

uint64_t sub_10050FDDC()
{
  v1 = v0[151];
  v2 = v0[150];
  v3 = sub_100511988(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[152] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[153] = v5;
  *v5 = v0;
  v5[1] = sub_10050FF18;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10050FF18()
{
  v1 = *(*v0 + 1208);

  return _swift_task_switch(sub_100510044, v1, 0);
}

uint64_t sub_100510044()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_1005100B4, 0, 0);
}

uint64_t sub_1005100B4()
{
  v39 = v0;
  if (*(v0 + 762) == 1)
  {
    v15 = *(v0 + 1024);
    static Logger.restore.getter();
    v16 = v15;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 1056);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1040);
    if (v19)
    {
      v23 = *(v0 + 1024);
      v33 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v37 = *(v0 + 1040);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v20;
      v27 = swift_slowAlloc();
      v38 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v23;
      *v26 = v23;
      *(v25 + 12) = 2082;
      v28 = v23;
      *(v25 + 14) = sub_1002346CC(v24, v33, &v38);
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@][%{public}s] Alternative button", v25, 0x16u);
      sub_1001F8084(v26);

      sub_10000710C(v27);

      (*(v21 + 8))(v35, v37);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    if (!*(v0 + 762))
    {
      v1 = *(v0 + 1024);
      static Logger.restore.getter();
      v2 = v1;

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 1064);
      v7 = *(v0 + 1048);
      v8 = *(v0 + 1040);
      if (v5)
      {
        v9 = *(v0 + 1024);
        v32 = *(v0 + 1016);
        v10 = *(v0 + 1008);
        v36 = *(v0 + 1040);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v34 = v6;
        v13 = swift_slowAlloc();
        v38 = v13;
        *v11 = 138412546;
        *(v11 + 4) = v9;
        *v12 = v9;
        *(v11 + 12) = 2082;
        v14 = v9;
        *(v11 + 14) = sub_1002346CC(v10, v32, &v38);
        _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Primary", v11, 0x16u);
        sub_1001F8084(v12);

        sub_10000710C(v13);

        (*(v7 + 8))(v34, v36);
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }

      v29 = 1;
      goto LABEL_12;
    }
  }

  v29 = 0;
LABEL_12:
  sub_10000710C(v0 + 952);

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_100510490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[128] = a3;
  v6[127] = a2;
  v6[126] = a1;
  v10 = type metadata accessor for Logger();
  v6[129] = v10;
  v6[130] = *(v10 - 8);
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v6[122] = a5;
  v6[123] = a6;
  v11 = sub_10020A748(v6 + 119);
  (*(*(a5 - 8) + 16))(v11, a4, a5);

  return _swift_task_switch(sub_1005105D0, 0, 0);
}

uint64_t sub_1005105D0()
{
  v36 = v0;
  v1 = *(v0 + 1024);
  static Logger.restore.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  if (v5)
  {
    v9 = *(v0 + 1024);
    v33 = *(v0 + 1016);
    v10 = *(v0 + 1008);
    v34 = *(v0 + 1072);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2082;
    v14 = v9;
    *(v11 + 14) = sub_1002346CC(v10, v33, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Prompting to install required distributor", v11, 0x16u);
    sub_1001F8084(v12);

    sub_10000710C(v13);

    (*(v7 + 8))(v34, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v15 = *(v0 + 1016);
  v16 = *(v0 + 1008);
  v17 = sub_10056E730(v16, v15);
  v19 = v18;
  v20 = objc_allocWithZone(LSApplicationRecord);

  v21 = sub_10049E57C(v16, v15, 1);
  v22 = [v21 iTunesMetadata];
  v23 = [v22 distributorInfo];

  v24 = [v23 distributorID];
  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v0 + 1080) = v27;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v25 = 0;
    v27 = 0;
    *(v0 + 1080) = 0;
    if (!v19)
    {
LABEL_8:
      if (v27)
      {
        v17 = v25;
      }

      else
      {
        v17 = 0;
      }

      if (v27)
      {
        v19 = v27;
      }

      else
      {
        v19 = 0xE000000000000000;
      }
    }
  }

  *(v0 + 1088) = v19;
  *(v0 + 696) = v17;
  *(v0 + 704) = v19;
  *(v0 + 760) = 19;
  *(v0 + 808) = v17;
  *(v0 + 816) = v19;
  *(v0 + 872) = 17;
  *(v0 + 880) = v17;
  *(v0 + 888) = v19;
  *(v0 + 944) = 18;
  v28 = *(*sub_100006D8C((v0 + 952), *(v0 + 976)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1096) = v28;
  swift_bridgeObjectRetain_n();

  v29 = swift_allocObject();
  *(v0 + 1104) = v29;
  *(v29 + 16) = 7;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0;
  *(v29 + 80) = 41;
  *(v29 + 88) = v28;
  v30 = swift_task_alloc();
  *(v0 + 1112) = v30;
  *(v30 + 16) = &unk_10069F2C0;
  *(v30 + 24) = v29;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v31 = swift_task_alloc();
  *(v0 + 1120) = v31;
  *v31 = v0;
  v31[1] = sub_100510BE4;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_100510BE4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[141] = a1;
  v3[142] = a2;

  v4 = swift_task_alloc();
  v3[143] = v4;
  *v4 = v6;
  v4[1] = sub_100510D58;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_100510D58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[144] = a1;
  v3[145] = a2;

  v4 = swift_task_alloc();
  v3[146] = v4;
  *v4 = v6;
  v4[1] = sub_100510ECC;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_100510ECC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_100510FF4, v3 + 656);
}

uint64_t sub_100511010()
{
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1176);
  v5 = *(v0 + 1128);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1192) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 257;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_1005110F0, v0 + 768);
}

uint64_t sub_1005110F0()
{
  sub_100511988(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005111A4, v1, v0);
}

uint64_t sub_1005111A4()
{
  v1 = *(v0 + 1192);

  return _swift_task_switch(sub_10051123C, v1, 0);
}

uint64_t sub_10051123C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1200) = qword_100786178;

  return _swift_task_switch(sub_1005112D4, v1, 0);
}

uint64_t sub_1005112D4()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = sub_100511988(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[151] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[152] = v5;
  *v5 = v0;
  v5[1] = sub_100511410;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100511410()
{
  v1 = *(*v0 + 1200);

  return _swift_task_switch(sub_10051153C, v1, 0);
}

uint64_t sub_10051153C()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_1005115AC, 0, 0);
}

uint64_t sub_1005115AC()
{
  v39 = v0;
  if (*(v0 + 762) == 1)
  {
    v15 = *(v0 + 1024);
    static Logger.restore.getter();
    v16 = v15;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1040);
    v22 = *(v0 + 1032);
    if (v19)
    {
      v23 = *(v0 + 1024);
      v33 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v37 = *(v0 + 1032);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v20;
      v27 = swift_slowAlloc();
      v38 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v23;
      *v26 = v23;
      *(v25 + 12) = 2082;
      v28 = v23;
      *(v25 + 14) = sub_1002346CC(v24, v33, &v38);
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@][%{public}s] Alternative button", v25, 0x16u);
      sub_1001F8084(v26);

      sub_10000710C(v27);

      (*(v21 + 8))(v35, v37);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    if (!*(v0 + 762))
    {
      v1 = *(v0 + 1024);
      static Logger.restore.getter();
      v2 = v1;

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 1056);
      v7 = *(v0 + 1040);
      v8 = *(v0 + 1032);
      if (v5)
      {
        v9 = *(v0 + 1024);
        v32 = *(v0 + 1016);
        v10 = *(v0 + 1008);
        v36 = *(v0 + 1032);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v34 = v6;
        v13 = swift_slowAlloc();
        v38 = v13;
        *v11 = 138412546;
        *(v11 + 4) = v9;
        *v12 = v9;
        *(v11 + 12) = 2082;
        v14 = v9;
        *(v11 + 14) = sub_1002346CC(v10, v32, &v38);
        _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%{public}s] Primary", v11, 0x16u);
        sub_1001F8084(v12);

        sub_10000710C(v13);

        (*(v7 + 8))(v34, v36);
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }

      v29 = 1;
      goto LABEL_12;
    }
  }

  v29 = 0;
LABEL_12:
  sub_10000710C(v0 + 952);

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_100511988(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005119D0()
{
  result = qword_10077FC30;
  if (!qword_10077FC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077FC30);
  }

  return result;
}

id sub_100511A44(uint64_t a1, void *a2)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100323B90(v10, &v8);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_100328EA4(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 0;
  }

  return v5;
}

uint64_t sub_100511C04()
{
  v1 = *v0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v2 = sub_1002357FC(&v50, v1);
  v4 = v3;
  if (*(&v51 + 1))
  {
    sub_10000710C(&v50);
  }

  v5 = *(v4 + 16);

  v6 = v2;
  if (!v5)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_35:
    swift_bridgeObjectRelease_n();

    return v40;
  }

  v7 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_37:
        sub_100513858();
        swift_allocError();
        v26 = v25;
        v43[0] = &type metadata for String;
        sub_1001F0C48(&qword_1007868A8);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        v30 = v47;
        sub_100006D8C(&v46, v47);
        v43[0] = swift_getDynamicType();
        sub_1001F0C48(&qword_1007868B0);
        v31 = String.init<A>(describing:)();
        *v26 = v27;
        *(v26 + 8) = v29;
        *(v26 + 16) = v31;
        *(v26 + 24) = v32;
        *(v26 + 40) = 2;
        swift_willThrow();

        swift_unexpectedError();
        __break(1u);
        sub_100007158(v30, &type metadata for Any);
        goto LABEL_39;
      }

      v8 = *(v4 + 32 + 8 * v7);
      type metadata accessor for LicenseStorageEntity.Entity();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v8 onConnection:v6];
      if (([v9 existsInDatabase] & 1) == 0)
      {

        goto LABEL_35;
      }

      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 valueForProperty:v10];

      if (v11)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      sub_100323B90(&v50, &v48);
      if (v49)
      {
        break;
      }

LABEL_6:
      sub_1000032A8(&v50, &qword_100783A30);
      if (++v7 >= v5)
      {
        goto LABEL_35;
      }
    }

    sub_1001F6498(&v48, &v46);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10020A6D0(&v46, v43);
    if (swift_dynamicCast())
    {
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_100007158(v41, v42);

      sub_10000710C(&v46);
      sub_1000032A8(&v50, &qword_100783A30);
      v12 = v44;
      v13 = v45;
    }

    else
    {
      sub_10020A6D0(&v46, v43);
      if (!swift_dynamicCast())
      {
        goto LABEL_37;
      }

      v13 = v42;
      if (!v42)
      {
        goto LABEL_37;
      }

      v12 = v41;

      sub_10000710C(&v46);
      sub_1000032A8(&v50, &qword_100783A30);
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v9 valueForProperty:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    sub_100323B90(&v50, &v48);
    if (!v49)
    {

      goto LABEL_6;
    }

    sub_1001F6498(&v48, &v46);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10020A6D0(&v46, v43);
    if (!swift_dynamicCast())
    {
      break;
    }

    v16 = v44;
    v17 = v45;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100007158(v16, v17);

    sub_10000710C(&v46);
    sub_1000032A8(&v50, &qword_100783A30);
    v18 = v43[0];
LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1003640F8(0, v40[2] + 1, 1, v40);
    }

    v22 = v40[2];
    v21 = v40[3];
    if (v22 >= v21 >> 1)
    {
      v40 = sub_1003640F8((v21 > 1), v22 + 1, 1, v40);
    }

    ++v7;

    v40[2] = v22 + 1;
    v23 = &v40[3 * v22];
    v23[4] = v12;
    v23[5] = v13;
    v23[6] = v18;
    if (v7 >= v5)
    {
      goto LABEL_35;
    }
  }

  v19 = sub_100006190(0, &qword_100783A50);
  sub_10020A6D0(&v46, v43);
  if (swift_dynamicCast())
  {
    v20 = v44;
    v18 = [v44 unsignedLongLongValue];

    sub_10000710C(&v46);
    sub_1000032A8(&v50, &qword_100783A30);
    goto LABEL_27;
  }

  sub_100513858();
  swift_allocError();
  v34 = v33;
  v43[0] = v19;
  sub_1001F0C48(&qword_1007868C8);
  v35 = String.init<A>(describing:)();
  v37 = v36;
  sub_100006D8C(&v46, v47);
  v43[0] = swift_getDynamicType();
  sub_1001F0C48(&qword_1007868B0);
  v38 = String.init<A>(describing:)();
  *v34 = v35;
  *(v34 + 8) = v37;
  *(v34 + 16) = v38;
  *(v34 + 24) = v39;
  *(v34 + 40) = 2;
  swift_willThrow();
LABEL_39:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_100512350(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CocoaError.Code();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100511A44(2, a1);
  if ((v14 & 1) == 0)
  {
    v41 = v4;
    v42 = v3;
    v15 = v13;
    [a1 deleteFromDatabase];
    v16 = *v1;
    v51 = sub_1001F0C48(&qword_1007868B8);
    v17 = sub_100513E18(&qword_1007868C0, &qword_1007868B8);
    LOWORD(v50) = 2;
    v52 = v17;
    *(&v50 + 1) = v15;
    sub_1001F0C48(&qword_1007813D0);
    inited = swift_initStackObject();
    v43 = xmmword_10069E680;
    *(inited + 16) = xmmword_10069E680;
    sub_100236238(&v50, inited + 32);
    sub_1001F0C48(&qword_1007813D8);
    v19 = swift_initStackObject();
    *(v19 + 16) = v43;
    *(v19 + 32) = inited;
    v20 = v19 + 32;
    v21 = sub_1005AEA84(v19);
    swift_setDeallocating();
    sub_1000032A8(v20, &qword_10077FA00);
    v22 = sub_100513920(0, 0, v21, sub_1005138AC, 0, v16);

    if (v22)
    {
    }

    else
    {
      type metadata accessor for LicenseStorageDatabaseTransaction(0);
      *&v43 = v15;
      *&v50 = v15;
      *&v50 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v50 + 1) = v23;
      (*(v9 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
      sub_100005E50();
      v24 = v47;
      URL.appending<A>(component:directoryHint:)();
      (*(v9 + 8))(v11, v8);

      v25 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      *&v50 = 0;
      v29 = [v25 removeItemAtURL:v27 error:&v50];

      if (v29)
      {
        v30 = *(v48 + 8);
        v31 = v50;
        v30(v24, v49);
      }

      else
      {
        v32 = v50;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        static CocoaError.fileNoSuchFile.getter();
        sub_100320284();
        v33 = v46;
        v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

        (*(v45 + 8))(v7, v33);
        if (v34)
        {
          (*(v48 + 8))(v24, v49);
        }

        else
        {
          v35 = v44;
          static Logger.install.getter();
          swift_errorRetain();
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 134218242;
            *(v38 + 4) = v43;
            *(v38 + 12) = 2114;
            swift_errorRetain();
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v38 + 14) = v40;
            *v39 = v40;
            _os_log_impl(&_mh_execute_header, v36, v37, "Failed to remove LKO %llu: %{public}@", v38, 0x16u);
            sub_1000032A8(v39, &qword_10077F920);
          }

          (*(v41 + 8))(v35, v42);
          (*(v48 + 8))(v24, v49);
        }
      }
    }
  }
}

uint64_t sub_100512A58()
{
  v1 = v0;
  v91 = type metadata accessor for Logger();
  v2 = *(v91 - 8);
  v3 = __chkstk_darwin(v91);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v79 - v6;
  __chkstk_darwin(v5);
  v9 = &v79 - v8;
  v10 = type metadata accessor for LogKey.Prefix();
  __chkstk_darwin(v10);
  (*(v12 + 104))(&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for LogKey.Prefix.internal(_:));
  v13 = objc_allocWithZone(type metadata accessor for LogKey());
  v14 = LogKey.init(prefix:)();
  static Logger.install.getter();
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v92 = v15;

  v18 = os_log_type_enabled(v16, v17);
  v87 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v92;
    *(v19 + 4) = v92;
    *v20 = v21;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Starting license data consistency check", v19, 0xCu);
    sub_1000032A8(v20, &qword_10077F920);
  }

  v85 = *(v2 + 8);
  v86 = v2 + 8;
  v85(v9, v91);
  v23 = *v84;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v83 = v23;
  v24 = sub_1002357FC(&v105, v23);
  v26 = v25;
  if (*(&v106 + 1))
  {
    sub_10000710C(&v105);
  }

  v27 = *(v26 + 16);

  v28 = v24;
  v30 = v28;
  v93 = v26;
  if (!v27)
  {
LABEL_31:

    v63 = v80;
    static Logger.install.getter();
    v64 = v30;
    v65 = v92;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%@] License data consistency check complete", v68, 0xCu);
      sub_1000032A8(v69, &qword_10077F920);
    }

    else
    {

      v66 = v64;
    }

    return (v85)(v63, v91);
  }

  v31 = 0;
  v94 = v26 + 32;
  *&v29 = 138412546;
  v79 = v29;
  v90 = xmmword_10069E680;
  v95 = v28;
  v82 = v27;
  while (1)
  {
    if (v31 >= *(v26 + 16))
    {
      __break(1u);
    }

    v32 = *(v94 + 8 * v31);
    type metadata accessor for LicenseStorageEntity.Entity();
    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v32 onConnection:v30];
    if (([v33 existsInDatabase] & 1) == 0)
    {

      v30 = v95;
      goto LABEL_31;
    }

    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 valueForProperty:v34];

    if (v35)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
    }

    sub_100323B90(&v105, &v103);
    if (v104)
    {
      break;
    }

    sub_1000032A8(&v105, &qword_100783A30);
LABEL_8:
    ++v31;
    v30 = v95;
    if (v27 == v31)
    {
      goto LABEL_31;
    }
  }

  sub_1001F6498(&v103, &v101);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10020A6D0(&v101, v100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10020A6D0(&v101, v100);
    if (!swift_dynamicCast() || (v39 = v99) == 0)
    {
      sub_100513858();
      swift_allocError();
      v73 = v72;
      v100[0] = &type metadata for String;
      sub_1001F0C48(&qword_1007868A8);
      v74 = String.init<A>(describing:)();
      v76 = v75;
      sub_100006D8C(&v101, v102);
      v100[0] = swift_getDynamicType();
      sub_1001F0C48(&qword_1007868B0);
      v77 = String.init<A>(describing:)();
      *v73 = v74;
      *(v73 + 8) = v76;
      *(v73 + 16) = v77;
      *(v73 + 24) = v78;
      *(v73 + 40) = 2;
      swift_willThrow();

      goto LABEL_38;
    }

    v38 = v1;
    v40 = v98;

    sub_10000710C(&v101);
    sub_1000032A8(&v105, &qword_100783A30);
    goto LABEL_21;
  }

  v36 = v98;
  v37 = v99;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v38 = 0;
    sub_100007158(v36, v37);

    sub_10000710C(&v101);
    sub_1000032A8(&v105, &qword_100783A30);
    v40 = v96;
    v39 = v97;
LABEL_21:
    v41 = objc_allocWithZone(LSApplicationRecord);
    v42 = String._bridgeToObjectiveC()();
    *&v105 = 0;
    v43 = [v41 initWithBundleIdentifier:v42 allowPlaceholder:1 error:&v105];

    if (v43)
    {
      v44 = v105;

      v26 = v93;
      v1 = v38;
    }

    else
    {
      v88 = v40;
      v45 = v105;
      v46 = _convertNSErrorToError(_:)();

      v89 = v46;
      swift_willThrow();
      v47 = v87;
      static Logger.install.getter();
      v48 = v92;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v81 = v49;
        v53 = v52;
        v54 = swift_slowAlloc();
        *&v105 = v54;
        *v51 = v79;
        *(v51 + 4) = v48;
        *v53 = v92;
        *(v51 + 12) = 2082;
        v55 = v48;
        v56 = v88;
        *(v51 + 14) = sub_1002346CC(v88, v39, &v105);
        v57 = v50;
        v58 = v81;
        _os_log_impl(&_mh_execute_header, v81, v57, "[%@] Removing license data for uninstalled app %{public}s", v51, 0x16u);
        sub_1000032A8(v53, &qword_10077F920);

        sub_10000710C(v54);

        v85(v87, v91);
      }

      else
      {

        v85(v47, v91);
        v56 = v88;
      }

      v1 = 0;
      *(&v106 + 1) = sub_1001F0C48(&qword_1007813C0);
      v107 = sub_100513E18(&qword_1007813C8, &qword_1007813C0);
      LOWORD(v105) = 1;
      *(&v105 + 1) = v56;
      *&v106 = v39;
      sub_1001F0C48(&qword_1007813D0);
      inited = swift_initStackObject();
      *(inited + 16) = v90;
      sub_100236238(&v105, inited + 32);
      sub_1001F0C48(&qword_1007813D8);
      v60 = swift_initStackObject();
      *(v60 + 16) = v90;
      *(v60 + 32) = inited;

      v61 = sub_1005AEA84(v60);
      swift_setDeallocating();
      sub_1000032A8(v60 + 32, &qword_10077FA00);
      v62 = sub_100513920(0, 0, v61, sub_1005138AC, 0, v83);

      v27 = v82;
      if (v62)
      {
        sub_100512350(v62);
      }

      else
      {
      }

      v26 = v93;
    }

    goto LABEL_8;
  }

  sub_100007158(v36, v37);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_100513590()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_100513664;
  v1[3] = 0;
  v1[4] = 0x65736E6563696CLL;
  v1[5] = 0xE700000000000000;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_100513664()
{
  v16[0] = 0x75705F7465737361;
  v16[1] = 0xEF64695F63696C62;
  v16[2] = 1415071060;
  v16[3] = 0xE400000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  v11[0] = 0x695F656C646E7562;
  v11[1] = 0xE900000000000064;
  v11[2] = 1112493122;
  v11[3] = 0xE400000000000000;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v6[0] = 0x5F65736E6563696CLL;
  v6[1] = 0xEA00000000006469;
  v6[2] = 1112493122;
  v6[3] = 0xE400000000000000;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A4050;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  sub_1002783D8(v16, v1 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v2 = swift_allocObject();
  *(inited + 72) = v2;
  sub_1002783D8(v11, v2 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v3 = swift_allocObject();
  *(inited + 112) = v3;
  sub_1002783D8(v6, v3 + 16);
  v4 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v6);
  sub_100278434(v11);
  sub_100278434(v16);
  return v4;
}

unint64_t sub_100513858()
{
  result = qword_1007868A0;
  if (!qword_1007868A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007868A0);
  }

  return result;
}

void sub_1005138AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for LicenseStorageEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100513920(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = 0;
  type metadata accessor for LicenseStorageEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v46 = a4;
      v47 = a5;
      v48 = v12;

      v15 = (a1 + 33);
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
          }

          *(v16 + 2) = v23 + 1;
          v24 = &v16[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v31 = *(v16 + 2);
          v30 = *(v16 + 3);
          if (v31 >= v30 >> 1)
          {
            v16 = sub_100009530((v30 > 1), v31 + 1, 1, v16);
          }

          *(v16 + 2) = v31 + 1;
          v32 = &v16[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          if (v18)
          {
LABEL_10:
            if (v18 == 1)
            {
              v25 = 0x695F656C646E7562;
              v26 = 0xE900000000000064;
            }

            else
            {
              v25 = 0x5F65736E6563696CLL;
              v26 = 0xEA00000000006469;
            }

            goto LABEL_19;
          }
        }

        v25 = 0x75705F7465737361;
        v26 = 0xEF64695F63696C62;
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100009530((v33 > 1), v34 + 1, 1, v17);
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v25;
        *(v35 + 5) = v26;
        v15 += 2;
        if (!--v14)
        {

          v12 = v48;
          a4 = v46;
          a5 = v47;
          goto LABEL_26;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_26:
    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v37];
  }

  v38 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v39 = swift_allocObject();
  v39[2] = &v50;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1002398F8;
  *(v40 + 24) = v39;
  aBlock[4] = sub_100239904;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_1007687B0;
  v41 = _Block_copy(aBlock);
  v42 = a6;

  [v38 enumeratePersistentIDsUsingBlock:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45 = v50;

    return v45;
  }

  return result;
}

uint64_t sub_100513E18(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100513EBC()
{
  result = sub_100006190(319, &unk_100786938);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100513F60(char a1)
{
  result = 0x726556656C707061;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657449656C707061;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x6556656C646E7562;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6D726F6674616C70;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0x73746E6169726176;
      break;
    case 11:
      result = 0x7361746C6564;
      break;
    case 12:
      result = 0x6174736E49707061;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_100514164(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100513F60(*a1);
  v5 = v4;
  if (v3 == sub_100513F60(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005141EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100513F60(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100514250()
{
  sub_100513F60(*v0);
  String.hash(into:)();
}

Swift::Int sub_1005142A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100513F60(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100514304@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100515E68(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100514334@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100513F60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10051437C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100515E68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005143B0(uint64_t a1)
{
  v2 = sub_1005189B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005143EC(uint64_t a1)
{
  v2 = sub_1005189B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100514428()
{
  v1 = 0x6174736E4978616DLL;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1005144B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100515EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005144DC(uint64_t a1)
{
  v2 = sub_1005195FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100514518(uint64_t a1)
{
  v2 = sub_1005195FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100514554@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10051602C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

Swift::Int sub_1005145AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10051468C()
{
  String.hash(into:)();
}

Swift::Int sub_100514758()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100514834@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100516298(*a1);
  *a2 = result;
  return result;
}

void sub_100514864(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000068;
  v3 = 0x7461507465737361;
  v4 = 0xEE00737465677261;
  v5 = 0x546C6C6174736E69;
  if (*v1 != 2)
  {
    v5 = 0x644963696C627570;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x44746E6169726176;
    v2 = 0xEE00736C69617465;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100514900()
{
  v1 = 0x7461507465737361;
  v2 = 0x546C6C6174736E69;
  if (*v0 != 2)
  {
    v2 = 0x644963696C627570;
  }

  if (*v0)
  {
    v1 = 0x44746E6169726176;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100514998@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100516298(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005149C0(uint64_t a1)
{
  v2 = sub_100516660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005149FC(uint64_t a1)
{
  v2 = sub_100516660();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100514A38@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005162E4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100514A7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726556656C707061;
  v4 = 0xEE0064496E6F6973;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x546C6C6174736E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00737465677261;
  }

  v7 = 0x726556656C707061;
  v8 = 0xEE0064496E6F6973;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x546C6C6174736E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00737465677261;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100514BA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100514C5C()
{
  String.hash(into:)();
}

Swift::Int sub_100514D04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100514DBC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100516A84(*a1);
  *a2 = result;
  return result;
}

void sub_100514DEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00737465677261;
  v4 = 0xEE0064496E6F6973;
  v5 = 0x726556656C707061;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546C6C6174736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100514E64()
{
  v1 = 0x726556656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546C6C6174736E69;
  }
}

unint64_t sub_100514ED8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100516A84(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100514F00(uint64_t a1)
{
  v2 = sub_100519650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100514F3C(uint64_t a1)
{
  v2 = sub_100519650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100514F78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100516AD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_100514FB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005150B4()
{
  String.hash(into:)();
}

Swift::Int sub_1005151A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10051529C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100516D4C(*a1);
  *a2 = result;
  return result;
}

void sub_1005152CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000068;
  v4 = 0x7461507465737361;
  v5 = 0xE800000000000000;
  v6 = 0x644963696C627570;
  v7 = 0xED0000746E616972;
  v8 = 0x6156656372756F73;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001006C3C80;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74654461746C6564;
    v3 = 0xEC000000736C6961;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100515388()
{
  v1 = *v0;
  v2 = 0x7461507465737361;
  v3 = 0x644963696C627570;
  v4 = 0x6156656372756F73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74654461746C6564;
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

unint64_t sub_100515440@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100516D4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100515468(uint64_t a1)
{
  v2 = sub_100518C60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005154A4(uint64_t a1)
{
  v2 = sub_100518C60();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1005154E0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100516D98(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100515540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29551;
  }

  else
  {
    v3 = 0x656369766564;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29551;
  }

  else
  {
    v5 = 0x656369766564;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005155D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10051564C()
{
  String.hash(into:)();
}

Swift::Int sub_1005156AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100515728(uint64_t *a1@<X8>)
{
  v2 = 29551;
  if (!*v1)
  {
    v2 = 0x656369766564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100515758()
{
  if (*v0)
  {
    return 29551;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_100515784@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10075AE70, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1005157E8(uint64_t a1)
{
  v2 = sub_1005178B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100515824(uint64_t a1)
{
  v2 = sub_1005178B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100515860@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100517280(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1005158B0()
{
  v1 = 0x736568736168;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572706D6F63;
  }
}

uint64_t sub_100515918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005174AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100515940(uint64_t a1)
{
  v2 = sub_100517808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051597C(uint64_t a1)
{
  v2 = sub_100517808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005159B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005175D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1005159E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x363532616873;
  }

  else
  {
    v3 = 3490893;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x363532616873;
  }

  else
  {
    v5 = 3490893;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100515A84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100515AFC()
{
  String.hash(into:)();
}

Swift::Int sub_100515B60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100515BE0(uint64_t *a1@<X8>)
{
  v2 = 3490893;
  if (*v1)
  {
    v2 = 0x363532616873;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100515C74()
{
  v1 = 0x687469726F676C61;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x7A69536B6E756863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100515CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100517958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100515D20(uint64_t a1)
{
  v2 = sub_100519554();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100515D5C(uint64_t a1)
{
  v2 = sub_100519554();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100515D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100517AD4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100515DD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100517D40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_100515DFC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100517F28(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_100515E68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075AB50, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100515EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174736E4978616DLL && a2 == 0xEE00657A69536C6CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006CCE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006CCEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006CCED0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10051602C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100786B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1005195FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v34 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v33 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v14;
  v26 = v13;
  v32 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v16;
  v24 = v15;
  v31 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v18;
  v20 = *(v6 + 8);
  v22 = v17;
  v20(v8, v5);
  v30 = v11 & 1;
  v29 = v25 & 1;
  v28 = v23 & 1;
  v27 = v19 & 1;
  result = sub_10000710C(a1);
  *a2 = v12;
  *(a2 + 8) = v30;
  *(a2 + 16) = v26;
  *(a2 + 24) = v29;
  *(a2 + 32) = v24;
  *(a2 + 40) = v28;
  *(a2 + 48) = v22;
  *(a2 + 56) = v27;
  return result;
}

unint64_t sub_100516298(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075ACF0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005162E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100786968);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_100516660();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v29) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v10;
  LOBYTE(v25) = 1;
  sub_1005166B4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v29;
  v23 = v30;
  v21 = v31;
  sub_1001F0C48(&qword_1007841A0);
  LOBYTE(v25) = 2;
  sub_100518B3C(&qword_100786980, &qword_1007841A0, &unk_1006B0970, sub_100516708);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v29;
  v37 = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  v15 = v21;
  v16 = v22;
  *&v26 = v20;
  *(&v26 + 1) = v22;
  *&v27 = v23;
  *(&v27 + 1) = v21;
  *&v28 = v11;
  *(&v28 + 1) = v13;
  sub_100223458(&v25, &v29);
  sub_10000710C(a1);
  v29 = v9;
  v30 = v14;
  v31 = v20;
  v32 = v16;
  v33 = v23;
  v34 = v15;
  v35 = v11;
  v36 = v13;
  result = sub_1002234B4(&v29);
  v18 = v26;
  *a2 = v25;
  a2[1] = v18;
  v19 = v28;
  a2[2] = v27;
  a2[3] = v19;
  return result;
}

unint64_t sub_100516660()
{
  result = qword_100786970;
  if (!qword_100786970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786970);
  }

  return result;
}

unint64_t sub_1005166B4()
{
  result = qword_100786978;
  if (!qword_100786978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786978);
  }

  return result;
}

unint64_t sub_100516708()
{
  result = qword_100786988;
  if (!qword_100786988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786988);
  }

  return result;
}

__n128 sub_10051678C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1005167C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100516810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005168A8()
{
  result = qword_100786990;
  if (!qword_100786990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786990);
  }

  return result;
}

unint64_t sub_1005168FC(uint64_t a1)
{
  *(a1 + 8) = sub_10051692C();
  result = sub_100516980();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10051692C()
{
  result = qword_100786998;
  if (!qword_100786998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786998);
  }

  return result;
}

unint64_t sub_100516980()
{
  result = qword_1007869A0;
  if (!qword_1007869A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869A0);
  }

  return result;
}

unint64_t sub_1005169D8()
{
  result = qword_1007869A8;
  if (!qword_1007869A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869A8);
  }

  return result;
}

unint64_t sub_100516A30()
{
  result = qword_1007869B0;
  if (!qword_1007869B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869B0);
  }

  return result;
}

unint64_t sub_100516A84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075AD70, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100516AD0(void *a1)
{
  v3 = sub_1001F0C48(&qword_100786B18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_100006D8C(a1, v7);
  sub_100519650();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1001F0C48(&qword_1007841A0);
    v10 = 0;
    sub_100518B3C(&qword_100786980, &qword_1007841A0, &unk_1006B0970, sub_100516708);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11;
    v10 = 1;
    sub_1003818F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_100516D4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075ADD8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100516D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100786A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_100518C60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v43) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v10;
  LOBYTE(v36) = 1;
  sub_1005166B4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v43;
  v34 = v44;
  v32 = v45;
  LOBYTE(v43) = 2;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v11;
  LOBYTE(v36) = 3;
  sub_100518CB4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v43;
  v27 = v44;
  v26 = v45;
  v29 = v46;
  v56 = 4;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = *(v6 + 8);
  v14 = v8;
  v16 = v15;
  v25 = v15;
  v13(v14, v5);
  *&v36 = v9;
  v17 = v35;
  *(&v36 + 1) = v35;
  *&v37 = v30;
  v18 = v33;
  *(&v37 + 1) = v33;
  *&v38 = v28;
  *(&v38 + 1) = v27;
  *&v39 = v26;
  *(&v39 + 1) = v29;
  *&v40 = v12;
  *(&v40 + 1) = v16;
  v19 = v31;
  v20 = v34;
  *&v41 = v31;
  *(&v41 + 1) = v34;
  v42 = v32;
  sub_10033AF94(&v36, &v43);
  sub_10000710C(a1);
  v43 = v9;
  v44 = v17;
  v45 = v30;
  v46 = v18;
  v47 = v28;
  v48 = v27;
  v49 = v26;
  v50 = v29;
  v51 = v12;
  v52 = v25;
  v53 = v19;
  v54 = v20;
  v55 = v32;
  result = sub_10033AFF0(&v43);
  v22 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v22;
  *(a2 + 96) = v42;
  v23 = v37;
  *a2 = v36;
  *(a2 + 16) = v23;
  v24 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v24;
  return result;
}

uint64_t sub_100517280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_1007869E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1005178B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v18) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_100517904();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v16 = v19;
  v17 = v18;

  sub_10000710C(a1);

  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_1005174AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572706D6F63 && a2 == 0xEE00657A69536465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736568736168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006CA8F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1005175D0(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007869B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100006D8C(a1, v7);
  sub_100517808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1001F0C48(&qword_1007869C8);
    v9[30] = 1;
    sub_100518B3C(&qword_1007869D0, &qword_1007869C8, &unk_1006B0C90, sub_10051785C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[29] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_100517808()
{
  result = qword_1007869C0;
  if (!qword_1007869C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869C0);
  }

  return result;
}

unint64_t sub_10051785C()
{
  result = qword_1007869D8;
  if (!qword_1007869D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869D8);
  }

  return result;
}

unint64_t sub_1005178B0()
{
  result = qword_1007869E8;
  if (!qword_1007869E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869E8);
  }

  return result;
}

unint64_t sub_100517904()
{
  result = qword_1007869F0;
  if (!qword_1007869F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007869F0);
  }

  return result;
}

uint64_t sub_100517958(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69536B6E756863 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006CCE50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006CCE70 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100517AD4(void *a1)
{
  v2 = sub_1001F0C48(&qword_100786AF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006D8C(a1, a1[3]);
  sub_100519554();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10 = 0;
  sub_1005195A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  LOBYTE(v9) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_1001F0C48(&unk_10077FB40);
  v10 = 2;
  v8 = sub_10035CEB4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000710C(a1);
  return v6;
}

uint64_t sub_100517D40(void *a1)
{
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
  }

  else
  {
    sub_100006D8C(v13, v13[3]);
    sub_1001F0C48(&unk_10077FB40);
    sub_10035CEB4();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v13[6];
    sub_10000710C(v13);
    v6 = *(v5 + 16);
    if (v6)
    {
      v3 = 0;
      v7 = (v5 + 40);
      while (1)
      {
        v9 = *(v7 - 1);
        v10 = *v7;
        v11 = v9 == 0x6C7074656B72616DLL && v10 == 0xEB00000000656361;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v8 = 1;
        }

        else
        {
          if (v9 != 0xD000000000000013 || 0x80000001006CCE30 != v10)
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0)
            {
              __break(1u);
              return result;
            }
          }

          v8 = 2;
        }

        v3 |= v8;
        v7 += 2;
        if (!--v6)
        {

          goto LABEL_5;
        }
      }
    }
  }

  v3 = 0;
LABEL_5:
  sub_10000710C(a1);
  return v3;
}

uint64_t sub_100517F28@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v100 = sub_1001F0C48(&qword_1007869F8);
  v5 = *(v100 - 8);
  __chkstk_darwin(v100);
  v7 = &v31 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_1005189B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v8 = v5;
  v50 = a2;
  LOBYTE(v60) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v51) = 1;
  sub_1003818F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v60;
  LOBYTE(v51) = 2;
  sub_1004D9FC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v49 = v10;
  v11 = v60;
  LOBYTE(v60) = 3;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v12;
  LOBYTE(v60) = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v14;
  v37 = v13;
  LOBYTE(v60) = 5;
  v45 = 0;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v15;
  v88 = 6;
  sub_100518A08();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v97 = v89;
  v98 = v90;
  v99[0] = *v91;
  *(v99 + 10) = *&v91[10];
  v16 = sub_1001F0C48(&unk_10077FB40);
  LOBYTE(v51) = 7;
  v40 = sub_10035CEB4();
  v41 = v16;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v60;
  sub_1001F0C48(&qword_100786A10);
  LOBYTE(v51) = 8;
  sub_100518A5C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v11;
  v42 = v60;
  LOBYTE(v51) = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v60;
  sub_1001F0C48(&qword_100786A20);
  LOBYTE(v51) = 10;
  sub_100518B3C(&qword_100786A28, &qword_100786A20, &unk_1006B0CB8, sub_100518AE8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v60;
  sub_1001F0C48(&qword_100786A38);
  LOBYTE(v51) = 11;
  sub_100518B3C(&qword_100786A40, &qword_100786A38, &unk_1006B0CC0, sub_100518BB8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v60;
  LOBYTE(v60) = 12;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v18;
  v19 = v17;
  LOBYTE(v51) = 13;
  sub_100518C0C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v60;
  v94 = v61;
  LOBYTE(v60) = 14;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = 15;
  LOBYTE(v16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v8 + 8))(v7, v100);
  *(v55 + 8) = v97;
  v20 = v49;
  *&v51 = v9;
  *(&v51 + 1) = v49;
  v21 = v35;
  v22 = v47;
  *&v52 = v35;
  *(&v52 + 1) = v46;
  *&v53 = v48;
  *(&v53 + 1) = v37;
  *&v54 = v47;
  *(&v54 + 1) = v36;
  *&v55[0] = v44;
  *(&v55[1] + 8) = v98;
  *(&v55[2] + 8) = v99[0];
  *(&v55[3] + 2) = *(v99 + 10);
  *(&v55[4] + 1) = v43;
  *&v56 = v42;
  *(&v56 + 1) = v41;
  *&v57 = v19;
  v32 = v19;
  *(&v57 + 1) = v39;
  *&v58 = v34;
  LODWORD(v100) = v94;
  BYTE8(v58) = v94;
  LOBYTE(v19) = v33;
  BYTE9(v58) = v33;
  BYTE10(v58) = v16;
  *(&v58 + 11) = v92;
  HIBYTE(v58) = v93;
  *&v59 = v40;
  *(&v59 + 1) = v38;
  sub_100440140(&v51, &v60);
  sub_10000710C(a1);
  v69 = v97;
  v60 = v9;
  v61 = v20;
  v62 = v21;
  v63 = v46;
  v64 = v48;
  v65 = v37;
  v66 = v22;
  v67 = v36;
  v68 = v44;
  v70 = v98;
  *v71 = v99[0];
  *&v71[10] = *(v99 + 10);
  v73 = v96;
  v72 = v95;
  v74 = v43;
  v75 = v42;
  v76 = v41;
  v77 = v32;
  v78 = v39;
  v79 = v34;
  v80 = v100;
  v81 = v19;
  v82 = v16;
  v83 = v92;
  v84 = v93;
  v85 = v40;
  v86 = v38;
  result = sub_10044019C(&v60);
  v24 = v58;
  v25 = v50;
  v50[10] = v57;
  v25[11] = v24;
  v25[12] = v59;
  v26 = v55[3];
  v25[6] = v55[2];
  v25[7] = v26;
  v27 = v56;
  v25[8] = v55[4];
  v25[9] = v27;
  v28 = v54;
  v25[2] = v53;
  v25[3] = v28;
  v29 = v55[1];
  v25[4] = v55[0];
  v25[5] = v29;
  v30 = v52;
  *v25 = v51;
  v25[1] = v30;
  return result;
}

unint64_t sub_1005189B4()
{
  result = qword_100786A00;
  if (!qword_100786A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A00);
  }

  return result;
}

unint64_t sub_100518A08()
{
  result = qword_100786A08;
  if (!qword_100786A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A08);
  }

  return result;
}

unint64_t sub_100518A5C()
{
  result = qword_100786A18;
  if (!qword_100786A18)
  {
    sub_1001F76D0(&qword_100786A10);
    sub_100517904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A18);
  }

  return result;
}

unint64_t sub_100518AE8()
{
  result = qword_100786A30;
  if (!qword_100786A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A30);
  }

  return result;
}

uint64_t sub_100518B3C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100518BB8()
{
  result = qword_100786A48;
  if (!qword_100786A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A48);
  }

  return result;
}

unint64_t sub_100518C0C()
{
  result = qword_100786A50;
  if (!qword_100786A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A50);
  }

  return result;
}

unint64_t sub_100518C60()
{
  result = qword_100786A60;
  if (!qword_100786A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A60);
  }

  return result;
}

unint64_t sub_100518CB4()
{
  result = qword_100786A68;
  if (!qword_100786A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A68);
  }

  return result;
}

uint64_t sub_100518D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100518D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ADPManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ADPManifest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100518F04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_100518F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100518FD8()
{
  result = qword_100786A70;
  if (!qword_100786A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A70);
  }

  return result;
}

unint64_t sub_100519030()
{
  result = qword_100786A78;
  if (!qword_100786A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A78);
  }

  return result;
}

unint64_t sub_100519088()
{
  result = qword_100786A80;
  if (!qword_100786A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A80);
  }

  return result;
}

unint64_t sub_1005190E0()
{
  result = qword_100786A88;
  if (!qword_100786A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A88);
  }

  return result;
}

unint64_t sub_100519138()
{
  result = qword_100786A90;
  if (!qword_100786A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A90);
  }

  return result;
}

unint64_t sub_100519190()
{
  result = qword_100786A98;
  if (!qword_100786A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786A98);
  }

  return result;
}

unint64_t sub_1005191E8()
{
  result = qword_100786AA0;
  if (!qword_100786AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AA0);
  }

  return result;
}

unint64_t sub_100519240()
{
  result = qword_100786AA8;
  if (!qword_100786AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AA8);
  }

  return result;
}

unint64_t sub_100519298()
{
  result = qword_100786AB0;
  if (!qword_100786AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AB0);
  }

  return result;
}

unint64_t sub_1005192F0()
{
  result = qword_100786AB8;
  if (!qword_100786AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AB8);
  }

  return result;
}

unint64_t sub_100519348()
{
  result = qword_100786AC0;
  if (!qword_100786AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AC0);
  }

  return result;
}

unint64_t sub_1005193A0()
{
  result = qword_100786AC8;
  if (!qword_100786AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AC8);
  }

  return result;
}

unint64_t sub_1005193F8()
{
  result = qword_100786AD0;
  if (!qword_100786AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AD0);
  }

  return result;
}

unint64_t sub_100519450()
{
  result = qword_100786AD8;
  if (!qword_100786AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AD8);
  }

  return result;
}

unint64_t sub_1005194A8()
{
  result = qword_100786AE0;
  if (!qword_100786AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AE0);
  }

  return result;
}

unint64_t sub_100519500()
{
  result = qword_100786AE8;
  if (!qword_100786AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AE8);
  }

  return result;
}

unint64_t sub_100519554()
{
  result = qword_100786AF8;
  if (!qword_100786AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786AF8);
  }

  return result;
}

unint64_t sub_1005195A8()
{
  result = qword_100786B00;
  if (!qword_100786B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B00);
  }

  return result;
}

unint64_t sub_1005195FC()
{
  result = qword_100786B10;
  if (!qword_100786B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B10);
  }

  return result;
}

unint64_t sub_100519650()
{
  result = qword_100786B20;
  if (!qword_100786B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B20);
  }

  return result;
}

unint64_t sub_1005196E8()
{
  result = qword_100786B28;
  if (!qword_100786B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B28);
  }

  return result;
}

unint64_t sub_100519740()
{
  result = qword_100786B30;
  if (!qword_100786B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B30);
  }

  return result;
}

unint64_t sub_100519798()
{
  result = qword_100786B38;
  if (!qword_100786B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B38);
  }

  return result;
}

unint64_t sub_1005197F0()
{
  result = qword_100786B40;
  if (!qword_100786B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B40);
  }

  return result;
}

unint64_t sub_100519848()
{
  result = qword_100786B48;
  if (!qword_100786B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B48);
  }

  return result;
}

unint64_t sub_1005198A0()
{
  result = qword_100786B50;
  if (!qword_100786B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B50);
  }

  return result;
}

unint64_t sub_1005198F8()
{
  result = qword_100786B58;
  if (!qword_100786B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B58);
  }

  return result;
}

unint64_t sub_100519950()
{
  result = qword_100786B60;
  if (!qword_100786B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B60);
  }

  return result;
}

unint64_t sub_1005199A8()
{
  result = qword_100786B68;
  if (!qword_100786B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B68);
  }

  return result;
}

unint64_t sub_100519A00()
{
  result = qword_100786B70;
  if (!qword_100786B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B70);
  }

  return result;
}

unint64_t sub_100519A54()
{
  result = qword_100786B78;
  if (!qword_100786B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786B78);
  }

  return result;
}

uint64_t sub_100519AA8()
{
  v1 = v0[6];
  v5[4] = v0[5];
  v6[0] = v1;
  *(v6 + 15) = *(v0 + 111);
  v2 = v0[2];
  v5[0] = v0[1];
  v5[1] = v2;
  v3 = v0[4];
  v5[2] = v0[3];
  v5[3] = v3;
  sub_10020A92C(v5);

  return swift_deallocClassInstance();
}

uint64_t sub_100519B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = type metadata accessor for Logger();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = *(a2 - 8);
  v3[7] = v6;
  v3[8] = swift_task_alloc();
  (*(v6 + 16))();

  return _swift_task_switch(sub_100519C44, 0, 0);
}

uint64_t sub_100519C44()
{
  v1 = sub_100364DDC();
  if ((v1 & 1) == 0)
  {
    static Logger.daemon.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Feature is bag disabled", v4, 2u);
    }

    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];

    (*(v6 + 8))(v5, v7);
  }

  (*(v0[7] + 8))(v0[8], v0[2]);

  v8 = v0[1];

  return v8(v1 & 1);
}

uint64_t sub_100519D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a4;
  v6[12] = a6;
  sub_1001F0C48(&qword_10077EF30);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v6[16] = v12;
  v6[17] = *(v12 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[20] = v13;
  v6[21] = *(v13 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v14 = *(a4 - 8);
  v6[25] = v14;
  v15 = swift_task_alloc();
  v6[26] = v15;
  v6[5] = a3;
  v6[6] = a5;
  v16 = sub_10020A748(v6 + 2);
  (*(*(a3 - 8) + 16))(v16, a1, a3);
  (*(v14 + 16))(v15, a2, a4);

  return _swift_task_switch(sub_100519FFC, 0, 0);
}

uint64_t sub_100519FFC()
{
  static Logger.metrics.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Checking for weekly CA event eligibility", v3, 2u);
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 112);

  v10 = *(v6 + 8);
  v10(v4, v5);
  v11 = *(v8 + 56);
  v11(v9, 1, 1, v7);
  v12 = objc_opt_self();
  *(v0 + 216) = v12;
  v13 = [v12 standardUserDefaults];
  if (!v13)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_11:
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    sub_1000032A8(v0 + 56, &qword_100783A30);
    v11(v27, 1, 1, v26);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  *(v0 + 56) = v55;
  *(v0 + 72) = v56;
  if (!*(v0 + 80))
  {
    goto LABEL_11;
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 104);
  v20 = swift_dynamicCast();
  v11(v19, v20 ^ 1u, 1, v17);
  v21 = *(v18 + 48);
  if (v21(v19, 1, v17) != 1)
  {
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);
    v25 = *(v0 + 104);
    sub_1000032A8(*(v0 + 112), &qword_10077EF30);
    (*(v23 + 32))(v24, v25, v22);
    v11(v24, 0, 1, v22);
    goto LABEL_14;
  }

LABEL_12:
  v28 = *(v0 + 128);
  v29 = *(v0 + 136);
  v30 = *(v0 + 104);
  sub_10043A2A0(*(v0 + 112), *(v0 + 120));
  v21 = *(v29 + 48);
  if (v21(v30, 1, v28) != 1)
  {
    sub_1000032A8(*(v0 + 104), &qword_10077EF30);
  }

LABEL_14:
  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  if (v21(v32, 1, v31) == 1)
  {
    sub_1000032A8(v32, &qword_10077EF30);
LABEL_18:
    static Logger.metrics.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Posting weekly CA events", v36, 2u);
    }

    v37 = *(v0 + 176);
    v38 = *(v0 + 160);

    v10(v37, v38);
    v39 = *sub_100006D8C((v0 + 16), *(v0 + 40));
    v40 = swift_task_alloc();
    *(v0 + 224) = v40;
    *v40 = v0;
    v40[1] = sub_10051A64C;
    v41 = *(v0 + 208);
    v42 = *(v0 + 88);
    v43 = *(v0 + 96);

    return sub_10051A8DC(v39, v41, v42, v43);
  }

  (*(*(v0 + 136) + 32))(*(v0 + 152), v32, v31);
  Date.timeIntervalSinceNow.getter();
  if (v33 < -604800.0)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    goto LABEL_18;
  }

  static Logger.metrics.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 184);
  v49 = *(v0 + 160);
  if (v47)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Ineligible for weekly CA events", v50, 2u);
  }

  v10(v48, v49);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v53 = *(v0 + 88);
  (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
  sub_10000710C(v0 + 16);
  (*(v52 + 8))(v51, v53);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10051A64C()
{

  return _swift_task_switch(sub_10051A748, 0, 0);
}

uint64_t sub_10051A748()
{
  v1 = v0[27];
  Date.init()();
  v2 = [v1 standardUserDefaults];
  if (v2)
  {
    v3 = v2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setObject:isa forKey:v5];
  }

  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_10000710C((v0 + 2));
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10051A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v8 = *(a3 - 8);
  v4[26] = v8;
  v9 = swift_task_alloc();
  v4[27] = v9;
  (*(v8 + 16))();
  v10 = type metadata accessor for Dependencies();
  v4[28] = v10;
  v4[21] = v10;
  v4[22] = &off_100770270;
  v4[18] = a1;

  v11 = swift_task_alloc();
  v4[29] = v11;
  *v11 = v4;
  v11[1] = sub_10051AA4C;

  return sub_100519B04(v9, a3, a4);
}

uint64_t sub_10051AA4C(char a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10051AB4C, 0, 0);
}

uint64_t sub_10051AB4C()
{
  if (*(v0 + 240) == 1)
  {
    v1 = sub_100651F28();
    v2 = v1[2];
    if (v2)
    {
      v3 = *(v0 + 224);
      v5 = v1[4];
      v4 = v1[5];

      sub_100006D8C((v0 + 144), v3);

      v6 = sub_1000071AC();
      *(v0 + 184) = v5;
      *(v0 + 192) = v4;
      v7 = swift_task_alloc();
      *(v7 + 16) = v0 + 184;
      v8 = sub_10020A1BC(sub_1001F7FFC, v7, v6);

      sub_1001F0C48(&unk_100784480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069F6E0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x80000001006CCF50;
      *(inited + 48) = v2;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0xD000000000000025;
      *(inited + 88) = 0x80000001006CCF70;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = (v8 & 1) == 0;
      v10 = sub_100528684(inited);
      swift_setDeallocating();
      sub_1001F0C48(&unk_10077F9B0);
      swift_arrayDestroy();
      sub_10039E440(1, v10);
    }
  }

  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 200);
  sub_10000710C(v0 + 144);
  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_10051AD84()
{
  result = qword_100786C28;
  if (!qword_100786C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C28);
  }

  return result;
}

uint64_t sub_10051ADD8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if ((v4 ^ *a1) >= 0x4000)
  {
    v6 = a1[2];
    v5 = a1[3];
    result = sub_10051BC30(*a1, v4, v6, v5, 10);
    if ((v8 & 0x100) != 0)
    {

      v9 = sub_10051B698(v3, v4, v6, v5, 10);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        result = v9;
        goto LABEL_8;
      }
    }

    else if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  result = 0;
LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_10051AE90()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 32 * v1;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = v0[2];
    v8 = *(v4 + 32);
    v0[1] = v1 + 1;
    v10 = v8;
    v11 = v5;
    v12 = v6;

    v7(&v9, &v10);

    return v9;
  }

  return result;
}

uint64_t sub_10051AF34@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + v13);
    result = sub_10051C2B8(*(v4 + 56) + 48 * v13, v21);
    v16 = *v21;
    v17 = *&v21[16];
    v18 = *v22;
    v19 = *&v22[16];
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18 == 1)
    {
LABEL_13:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 1;
    }

    else
    {
      v20 = v1[5];
      *v21 = v14;
      *&v21[8] = v16;
      *v22 = v17;
      *&v22[8] = v18;
      v23 = v19;
      v20(v21);
      return sub_1000032A8(v21, &qword_100785F08);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10051B078@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_10020A980(*(v3 + 56) + 40 * v13, v18);
    *&v21 = v14;
    result = sub_1001DFDBC(v18, &v21 + 8);
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v21;
      v18[1] = v22;
      v19 = v16;
      v20 = *(&v23 + 1);
      v17(v18);
      return sub_1000032A8(v18, &qword_100786C38);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10051B1C8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10020A6D0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1001F6498(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1000032A8(v21, &qword_1007863C0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10051B328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  sub_100006D8C(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  sub_10051BCFC(v5, v6, v10);
  sub_10000710C(v9);
  result = sub_10000710C(a1);
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v11;
  return result;
}

BOOL sub_10051B404(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_10051B43C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_10051B478(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_10051B4B4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

Swift::Int sub_10051B51C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10051B5A4()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);

  return String.hash(into:)();
}

Swift::Int sub_10051B614()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

unsigned __int8 *sub_10051B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10051BDF8();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1005D9DE4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10051BC30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10051BE4C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_10051BCFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = 46;
  v20 = 0xE100000000000000;
  v18[2] = &v19;

  v19 = sub_100432C48(2, 0, sub_1001F7FFC, v18, a1, a2, v6);
  v20 = 0;
  v21 = sub_10051ADD8;
  v22 = 0;
  v7 = sub_10051AE90();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = sub_10051AE90();
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = sub_10051AE90();
  v15 = v14;

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  *a3 = v9;
  a3[1] = v12;
  a3[2] = v17;
  a3[3] = a1;
  a3[4] = a2;
  return result;
}

unint64_t sub_10051BDF8()
{
  result = qword_100786C30;
  if (!qword_100786C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C30);
  }

  return result;
}

uint64_t sub_10051BE4C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1005DA1DC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1005DA1DC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1005DA1DC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10051C2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100785498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051C33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10051C384(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10051C3F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726556656C707061;
  }

  else
  {
    v3 = 0x657449656C707061;
  }

  if (v2)
  {
    v4 = 0xEB0000000064496DLL;
  }

  else
  {
    v4 = 0xEE0064496E6F6973;
  }

  if (*a2)
  {
    v5 = 0x726556656C707061;
  }

  else
  {
    v5 = 0x657449656C707061;
  }

  if (*a2)
  {
    v6 = 0xEE0064496E6F6973;
  }

  else
  {
    v6 = 0xEB0000000064496DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10051C4AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10051C544()
{
  String.hash(into:)();
}

Swift::Int sub_10051C5C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10051C65C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075AF10, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10051C6BC(uint64_t *a1@<X8>)
{
  v2 = 0x657449656C707061;
  if (*v1)
  {
    v2 = 0x726556656C707061;
  }

  v3 = 0xEB0000000064496DLL;
  if (*v1)
  {
    v3 = 0xEE0064496E6F6973;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10051C710@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10075AF10, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10051C774(uint64_t a1)
{
  v2 = sub_10051C9A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051C7B0(uint64_t a1)
{
  v2 = sub_10051C9A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051C80C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100786C40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_10051C9A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10051C9A0()
{
  result = qword_100786C48;
  if (!qword_100786C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C48);
  }

  return result;
}

unint64_t sub_10051CA08()
{
  result = qword_100786C50;
  if (!qword_100786C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C50);
  }

  return result;
}

unint64_t sub_10051CA60()
{
  result = qword_100786C58;
  if (!qword_100786C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C58);
  }

  return result;
}

unint64_t sub_10051CAB8()
{
  result = qword_100786C60;
  if (!qword_100786C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786C60);
  }

  return result;
}

void *sub_10051CB0C(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 1000001) <= 0x3B8B87BE)
  {
    v1 = round(v1 / 1000000.0) * 1000000.0;
  }

  if (v1 > 1000000000.0)
  {
    v1 = round(v1 / 100000000.0) * 100000000.0;
  }

  result = objc_opt_self();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 9.22337204e18)
  {
    v3 = [result stringFromByteCount:v1 countStyle:2];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10051CC20(void *a1)
{
  v3 = sub_1001F0C48(&qword_100786D40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10051D808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10051CDA0()
{
  if (*v0)
  {
    return 0x63696C7078457369;
  }

  else
  {
    return 0x65776F6C6C417369;
  }
}

uint64_t sub_10051CDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65776F6C6C417369 && a2 == 0xE900000000000064;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469)
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

uint64_t sub_10051CED0(uint64_t a1)
{
  v2 = sub_10051D808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051CF0C(uint64_t a1)
{
  v2 = sub_10051D808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051CF48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10051D658(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

BOOL sub_10051D028(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_10051D058@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_10051D084@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkEvaluatorResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for NetworkEvaluatorResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t type metadata accessor for EvaluatorDownload()
{
  result = qword_100786CC0;
  if (!qword_100786CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10051D344()
{
  sub_10037F89C();
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &qword_100785538);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100785708);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10051D448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_10051D620(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10051D48C()
{
  result = qword_100786D10;
  if (!qword_100786D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D10);
  }

  return result;
}

unint64_t sub_10051D4E4()
{
  result = qword_100786D18;
  if (!qword_100786D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D18);
  }

  return result;
}

unint64_t sub_10051D53C()
{
  result = qword_100786D20;
  if (!qword_100786D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D20);
  }

  return result;
}

unint64_t sub_10051D594()
{
  result = qword_100786D28;
  if (!qword_100786D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D28);
  }

  return result;
}

uint64_t sub_10051D5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10051D620(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10051D658(void *a1)
{
  v3 = sub_1001F0C48(&qword_100786D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10051D808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000710C(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000710C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_10051D808()
{
  result = qword_100786D38;
  if (!qword_100786D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D38);
  }

  return result;
}

unint64_t sub_10051D870()
{
  result = qword_100786D48;
  if (!qword_100786D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D48);
  }

  return result;
}

unint64_t sub_10051D8C8()
{
  result = qword_100786D50;
  if (!qword_100786D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D50);
  }

  return result;
}

unint64_t sub_10051D920()
{
  result = qword_100786D58;
  if (!qword_100786D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786D58);
  }

  return result;
}

uint64_t sub_10051D97C(uint64_t a1)
{
  v32 = type metadata accessor for URLQueryItem();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = &_swiftEmptyArrayStorage;
  sub_100526344(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    URLQueryItem.init(name:value:)();

    v35 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_100526344(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_100323C00(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_100323C00(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10051DCC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 152) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for URL();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10051DDFC, 0, 0);
}

uint64_t sub_10051DDFC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 152);
  v6 = *(v4 + 16);
  v6(v1, *(v0 + 16), v3);
  v6(v2, v1, v3);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  (*(v4 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_10051DF48;
  v8 = *(v0 + 104);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);

  return sub_100520FA0(v8, v10, v11, v5 & 1, v9);
}

uint64_t sub_10051DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 120) = v3;

  if (v3)
  {
    v9 = sub_10051E128;
  }

  else
  {
    v8[16] = a3;
    v8[17] = a2;
    v8[18] = a1;
    v9 = sub_10051E084;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10051E084()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  return v1(v2, v3, v4);
}

uint64_t sub_10051E128()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10051E1C4()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100391884(v1, v18);
  if (v19)
  {
    v20 = v3;
    v10 = *&v18[0];
    URLComponents.init()();
    sub_10051D97C(v10);

    URLComponents.queryItems.setter();
    URLComponents.percentEncodedQuery.getter();
    if (v11 && (static String.Encoding.utf8.getter(), v10 = String.data(using:allowLossyConversion:)(), v13 = v12, , (*(v20 + 8))(v5, v2), v13 >> 60 != 15))
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_10039403C();
      swift_allocError();
      *v14 = 1;
      *(v14 + 8) = 2;
      swift_willThrow();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    sub_1001DFDBC(v18, v17);
    sub_100006D8C(v17, v17[3]);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();

    sub_10000710C(v17);
  }

  return v10;
}

unint64_t sub_10051E4A4(char a1)
{
  v2 = 0x4E574F4E4B4E55;
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v33 = a1;
    v4 = MobileGestalt_copy_marketingProductName_obj();
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE700000000000000;
      v6 = 0x4E574F4E4B4E55;
    }

    v12 = MobileGestalt_copy_productVersion_obj();
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v15;
    }

    else
    {
      v11 = 0xE700000000000000;
      v14 = 0x4E574F4E4B4E55;
    }

    v16 = MobileGestalt_copy_productType_obj();
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v19;
    }

    else
    {
      v9 = 0xE700000000000000;
      v18 = 0x4E574F4E4B4E55;
    }

    v20 = MobileGestalt_copy_buildVersion_obj();
    v34 = v18;
    if (v20)
    {
      v21 = v20;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v22;
    }

    else
    {
      v35 = 0xE700000000000000;
    }

    v10 = v14;
    a1 = v33;
  }

  else
  {
    v34 = 0x4E574F4E4B4E55;
    v35 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    v10 = 0x4E574F4E4B4E55;
    v11 = 0xE700000000000000;
    v6 = 0x4E574F4E4B4E55;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v23 = 0xD00000000000001ALL;
  }

  else
  {
    v23 = 0xD000000000000012;
  }

  _StringGuts.grow(_:)(26);

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v6;
  v25._object = v8;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 47;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v10;
  v27._object = v11;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x2F6C65646F6D20;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v34;
  v29._object = v9;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x2F646C69756220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v2;
  v31._object = v35;
  String.append(_:)(v31);

  return v23;
}

uint64_t sub_10051E728(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v3[26] = *(v8 + 64);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_10051EA1C, 0, 0);
}

uint64_t sub_10051EA1C()
{
  v56 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[35] + 104))(v0[36], enum case for LogKey.Prefix.none(_:), v0[34]);
  v7 = objc_allocWithZone(type metadata accessor for LogKey());
  v8 = LogKey.init(prefix:)();
  v0[37] = v8;
  static Logger.general.getter();
  v9 = *(v4 + 16);
  v0[38] = v9;
  v0[39] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v5, v3);
  v9(v2, v5, v3);
  v10 = v6;
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v53 = v13;
    log = v12;
    v14 = v0[29];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v18 = 138413058;
    *(v18 + 4) = v17;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v11;
    *v19 = v17;
    v19[1] = v11;
    *(v18 + 22) = 2082;
    v20 = v17;
    v21 = v11;
    v22 = URLRequest.debugDescription.getter();
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v14, v16);
    v26 = sub_1002346CC(v22, v24, v55);

    *(v18 + 24) = v26;
    *(v18 + 32) = 2080;
    if (!URLRequest.allHTTPHeaderFields.getter())
    {
      sub_1005288C8(_swiftEmptyArrayStorage);
    }

    v27 = v0[31];
    v51 = v0[30];
    v52 = v0[33];
    v28 = v0[28];
    v29 = v0[24];
    v30 = Dictionary.description.getter();
    v32 = v31;

    v25(v28, v29);
    v33 = sub_1002346CC(v30, v32, v55);

    *(v18 + 34) = v33;
    _os_log_impl(&_mh_execute_header, log, v53, "[%@][%@] Sending request: %{public}s headers: %s", v18, 0x2Au);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v34 = *(v27 + 8);
    v34(v52, v51);
  }

  else
  {
    v35 = v0[33];
    v37 = v0[30];
    v36 = v0[31];
    v39 = v0[28];
    v38 = v0[29];
    v40 = v0[24];
    v41 = v0[25];

    v42 = *(v41 + 8);
    v42(v39, v40);
    v42(v38, v40);
    v34 = *(v36 + 8);
    v34(v35, v37);
  }

  v0[40] = v34;
  v43 = v0[21];
  v44 = v0[22];
  v45 = v0[20];
  URLRequest.url.getter();
  if ((*(v44 + 48))(v45, 1, v43) == 1)
  {
    sub_1000032A8(v0[20], &unk_1007809F0);
    v46 = v0[37];
    sub_10039403C();
    swift_allocError();
    *v47 = 2;
    *(v47 + 8) = 2;
    swift_willThrow();

    v48 = v0[1];

    return v48();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v50 = swift_task_alloc();
    v0[41] = v50;
    *v50 = v0;
    v50[1] = sub_10051EF5C;

    return sub_1005D7DE8();
  }
}

uint64_t sub_10051EF5C(char a1)
{
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_10051F05C, 0, 0);
}

uint64_t sub_10051F05C()
{
  if (*(v0 + 384))
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    v1 = *(v0 + 296);
    sub_10039403C();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 2;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 96);
    v6 = type metadata accessor for SecureTaskDelegate();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate__metrics;
    sub_1001F0C48(&qword_100786E48);
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    *&v7[v8] = v9;
    *&v7[OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate_logKey] = v5;
    *(v0 + 64) = v7;
    *(v0 + 72) = v6;
    v10 = v5;
    v11 = objc_msgSendSuper2((v0 + 64), "init");
    *(v0 + 336) = v11;
    v12 = swift_task_alloc();
    *(v0 + 344) = v12;
    *v12 = v0;
    v12[1] = sub_10051F2A8;
    v13 = *(v0 + 88);

    return NSURLSession.data(for:delegate:)(v13, v11);
  }
}

uint64_t sub_10051F2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[44] = a1;
  v5[45] = a2;
  v5[46] = a3;
  v5[47] = v3;

  if (v3)
  {
    v6 = sub_10051FBF0;
  }

  else
  {
    v6 = sub_10051F3C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10051F3C0()
{
  v96 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 296);
  v5 = *(v0 + 96);
  static Logger.general.getter();
  v6 = v2;
  sub_10020ABFC(v3, v1);
  v7 = v5;
  v8 = v4;
  v9 = v6;
  sub_10020ABFC(v3, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 368);
  if (v12)
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 96);
    v16 = -1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v95 = v93;
    *v17 = 138413314;
    *(v17 + 4) = v15;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v15;
    v18[1] = v14;
    *(v17 + 22) = 2050;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    v20 = v15;
    v21 = v14;
    if (v19)
    {
      v16 = [v19 statusCode];
    }

    v23 = *(v0 + 360);
    v22 = *(v0 + 368);

    *(v17 + 24) = v16;
    *(v17 + 32) = 2048;
    v24 = v23 >> 62;
    v25 = *(v0 + 352);
    v26 = *(v0 + 360);
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        sub_100007158(v25, v26);
        v28 = 0;
        goto LABEL_15;
      }

      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      v25 = sub_100007158(v25, v26);
      v28 = v34 - v35;
      if (!__OFSUB__(v34, v35))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v27 = *(v0 + 360);
      sub_100007158(v25, v26);
      v28 = BYTE6(v27);
LABEL_15:
      v39 = *(v0 + 360);
      v40 = *(v0 + 368);
      v41 = *(v0 + 352);
      v42 = *(v0 + 320);
      v89 = *(v0 + 240);
      v91 = *(v0 + 256);
      *(v17 + 34) = v28;
      sub_100007158(v41, v39);
      *(v17 + 42) = 2080;
      v43 = [v40 debugDescription];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_1002346CC(v44, v46, &v95);

      *(v17 + 44) = v47;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@][%@] Status code: %{public}ld Received %ld bytes: %s", v17, 0x34u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v93);

      v42(v91, v89);
      goto LABEL_16;
    }

    v36 = HIDWORD(v25);
    v37 = v25;
    result = sub_100007158(v25, v26);
    LODWORD(v28) = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      __break(1u);
      return result;
    }

    v28 = v28;
    goto LABEL_15;
  }

  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  v31 = *(v0 + 320);
  v32 = *(v0 + 256);
  v33 = *(v0 + 240);
  sub_100007158(v30, v29);

  sub_100007158(v30, v29);
  v31(v32, v33);
LABEL_16:
  v48 = *(*(v0 + 336) + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate__metrics);
  os_unfair_lock_lock((v48 + 24));
  v49 = *(v48 + 16);
  v50 = v49;
  os_unfair_lock_unlock((v48 + 24));
  if (os_variant_has_internal_content())
  {
    v88 = v50;
    if (qword_10077E528 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 368);
    v83 = *(v0 + 352);
    v51 = *(v0 + 208);
    v52 = *(v0 + 216);
    v53 = *(v0 + 192);
    v54 = *(v0 + 200);
    v84 = *(v0 + 360);
    v85 = *(v0 + 152);
    v92 = *(v0 + 144);
    v94 = *(v0 + 136);
    v90 = *(v0 + 120);
    v86 = *(v0 + 128);
    v87 = *(v0 + 112);
    (*(v0 + 304))(v52, *(v0 + 88), v53);
    v55 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v56 = (v51 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    (*(v54 + 32))(v58 + v55, v52, v53);
    *(v58 + v56) = v82;
    v59 = (v58 + v57);
    *v59 = v83;
    v59[1] = v84;
    *(v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;
    *(v0 + 48) = sub_100528460;
    *(v0 + 56) = v58;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100495FFC;
    *(v0 + 40) = &unk_100769598;
    v60 = _Block_copy((v0 + 16));
    v61 = v82;
    sub_10020ABFC(v83, v84);
    v62 = v88;
    static DispatchQoS.unspecified.getter();
    *(v0 + 80) = _swiftEmptyArrayStorage;
    sub_10052B8C0(&qword_100780400, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F0C48(&qword_100780408);
    sub_100528510();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);

    (*(v90 + 8))(v86, v87);
    (*(v92 + 8))(v85, v94);
  }

  else
  {
  }

  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v64 = v63;
    v65 = *(v0 + 296);
    v66 = *(v0 + 176);
    v67 = *(v0 + 184);
    v68 = *(v0 + 168);

    (*(v66 + 8))(v67, v68);

    v69 = *(v0 + 8);
    v70 = *(v0 + 352);
    v71 = *(v0 + 360);

    return v69(v70, v71, v64);
  }

  else
  {
    v72 = *(v0 + 360);
    v73 = *(v0 + 368);
    v74 = *(v0 + 352);
    v75 = *(v0 + 336);
    v76 = *(v0 + 296);
    v78 = *(v0 + 176);
    v77 = *(v0 + 184);
    v79 = *(v0 + 168);
    sub_10039403C();
    swift_allocError();
    *v80 = 0;
    *(v80 + 8) = 2;
    swift_willThrow();
    sub_100007158(v74, v72);

    (*(v78 + 8))(v77, v79);

    v81 = *(v0 + 8);

    return v81();
  }
}

uint64_t sub_10051FBF0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10051FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for URLRequest();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_10051FF14, 0, 0);
}

uint64_t sub_10051FF14()
{
  v100 = v0;
  if (os_variant_has_internal_content())
  {
    v1 = [*(v0 + 24) _allHTTPHeaderFieldsAsArrays];
    if (v1)
    {
      v2 = v1;
      sub_1001F0C48(&unk_10077FB40);
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v3 + 16))
      {
        v4 = sub_10052213C(0xD00000000000001ELL, 0x80000001006C5D60);
        if (v5)
        {
          v6 = *(*(v3 + 56) + 8 * v4);

          if (v6[2])
          {
            v8 = *(v0 + 80);
            v7 = *(v0 + 88);
            v9 = *(v0 + 48);
            v10 = *(v0 + 56);
            v11 = *(v0 + 32);
            v12 = *(v0 + 40);
            v13 = v6[5];
            v95 = v6[4];

            static Logger.general.getter();
            v14 = *(v10 + 16);
            v14(v7, v11, v9);
            v98 = v14;
            v14(v8, v11, v9);

            v15 = v12;
            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v16, v17))
            {
              v92 = v17;
              log = v16;
              v18 = *(v0 + 88);
              v20 = *(v0 + 48);
              v19 = *(v0 + 56);
              v21 = *(v0 + 40);
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              *v22 = 138413058;
              v24 = *(v21 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate_logKey);
              *(v22 + 4) = v24;
              v89 = v23;
              *v23 = v24;
              *(v22 + 12) = 2080;
              v25 = v24;
              v26 = sub_1002346CC(v95, v13, &v99);

              *(v22 + 14) = v26;
              *(v22 + 22) = 2080;
              v27 = URLRequest.debugDescription.getter();
              v29 = v28;
              v30 = *(v19 + 8);
              v30(v18, v20);
              v31 = sub_1002346CC(v27, v29, &v99);

              *(v22 + 24) = v31;
              *(v22 + 32) = 2080;
              if (!URLRequest.allHTTPHeaderFields.getter())
              {
                sub_1005288C8(_swiftEmptyArrayStorage);
              }

              v96 = *(v0 + 120);
              v32 = *(v0 + 104);
              v87 = *(v0 + 96);
              v33 = *(v0 + 80);
              v34 = *(v0 + 48);
              v35 = Dictionary.description.getter();
              v37 = v36;

              v30(v33, v34);
              v38 = sub_1002346CC(v35, v37, &v99);

              *(v22 + 34) = v38;
              _os_log_impl(&_mh_execute_header, log, v92, "[%@] Following redirect correlation-id: %s description: %s headers: %s", v22, 0x2Au);
              sub_1000032A8(v89, &qword_10077F920);

              swift_arrayDestroy();

              (*(v32 + 8))(v96, v87);
              goto LABEL_18;
            }

            v70 = *(v0 + 120);
            v71 = *(v0 + 96);
            v69 = *(v0 + 104);
            v83 = *(v0 + 80);
            v82 = *(v0 + 88);
            v84 = *(v0 + 48);
            v85 = *(v0 + 56);

            v86 = *(v85 + 8);
            v86(v83, v84);
            v86(v82, v84);
LABEL_17:
            (*(v69 + 8))(v70, v71);
            goto LABEL_18;
          }
        }
      }
    }
  }

  v40 = *(v0 + 64);
  v39 = *(v0 + 72);
  v41 = *(v0 + 48);
  v42 = *(v0 + 56);
  v43 = *(v0 + 32);
  v44 = *(v0 + 40);
  static Logger.general.getter();
  v45 = *(v42 + 16);
  v45(v39, v43, v41);
  v98 = v45;
  v45(v40, v43, v41);
  v46 = v44;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v47, v48))
  {
    v69 = *(v0 + 104);
    v70 = *(v0 + 112);
    v71 = *(v0 + 96);
    v73 = *(v0 + 64);
    v72 = *(v0 + 72);
    v74 = *(v0 + 48);
    v75 = *(v0 + 56);

    v76 = *(v75 + 8);
    v76(v73, v74);
    v76(v72, v74);
    goto LABEL_17;
  }

  loga = v48;
  v97 = v47;
  v49 = *(v0 + 72);
  v51 = *(v0 + 48);
  v50 = *(v0 + 56);
  v52 = *(v0 + 40);
  v53 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v99 = swift_slowAlloc();
  *v53 = 138412802;
  v55 = *(v52 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate_logKey);
  *(v53 + 4) = v55;
  v91 = v54;
  *v54 = v55;
  *(v53 + 12) = 2080;
  v56 = v55;
  v57 = URLRequest.debugDescription.getter();
  v59 = v58;
  v60 = *(v50 + 8);
  v60(v49, v51);
  v61 = sub_1002346CC(v57, v59, &v99);

  *(v53 + 14) = v61;
  *(v53 + 22) = 2080;
  if (!URLRequest.allHTTPHeaderFields.getter())
  {
    sub_1005288C8(_swiftEmptyArrayStorage);
  }

  v62 = *(v0 + 104);
  v88 = *(v0 + 96);
  v90 = *(v0 + 112);
  v63 = *(v0 + 64);
  v64 = *(v0 + 48);
  v65 = Dictionary.description.getter();
  v67 = v66;

  v60(v63, v64);
  v68 = sub_1002346CC(v65, v67, &v99);

  *(v53 + 24) = v68;
  _os_log_impl(&_mh_execute_header, v97, loga, "[%@] Following redirect: %s headers: %s", v53, 0x20u);
  sub_1000032A8(v91, &qword_10077F920);

  swift_arrayDestroy();

  (*(v62 + 8))(v90, v88);
LABEL_18:
  v77 = *(v0 + 48);
  v78 = *(v0 + 56);
  v79 = *(v0 + 16);
  v98(v79, *(v0 + 32), v77);
  (*(v78 + 56))(v79, 0, 1, v77);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_100520860(void *a1, void *a2, void *a3, uint64_t a4, const void *a5, void *a6)
{
  v6[4] = a3;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v12 = type metadata accessor for URLRequest();
  v6[6] = v12;
  v6[7] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[8] = v13;
  sub_1001F0C48(&unk_1007803C0);
  v6[9] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[10] = v14;
  v6[11] = _Block_copy(a5);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  a6;
  v18 = swift_task_alloc();
  v6[12] = v18;
  *v18 = v6;
  v18[1] = sub_100520A20;

  return sub_10051FDC4(v14, v15, v16, v17, v13);
}

uint64_t sub_100520A20()
{
  v1 = *v0;
  v18 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v17 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 16);
  v9 = *v0;

  v10 = *(v3 + 8);
  v10(v17, v4);
  sub_10031DC90(v18, v2);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    v12 = v1[9];
    v13 = v1[6];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v10(v12, v13);
  }

  v14 = v1[11];
  (v14)[2](v14, isa);
  _Block_release(v14);

  v15 = *(v9 + 8);

  return v15();
}

unint64_t sub_100520DE0(uint64_t a1, char a2)
{
  if (!a2)
  {
    _StringGuts.grow(_:)(23);

    v2 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    _StringGuts.grow(_:)(18);

    v2 = 0xD000000000000010;
LABEL_5:
    v6 = v2;
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return v6;
  }

  v5 = 0x2064696C61766E49;
  if (a1 == 1)
  {
    v5 = 0xD000000000000012;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100520F34()
{
  [*(v0 + 16) invalidateAndCancel];

  return swift_deallocClassInstance();
}

uint64_t sub_100520FA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 120) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for URLRequest();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10052106C, 0, 0);
}

uint64_t sub_10052106C()
{
  v1 = v0[6];
  v2 = v0[3];
  (*(v0[8] + 16))(v0[9], v0[2], v0[7]);
  v3.value._countAndFlagsBits = sub_10051E4A4(*(v1 + 24));
  v4._countAndFlagsBits = 0x6567412D72657355;
  v4._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v3, v4);

  if (v2)
  {
    v5 = v0[3];
    v8 = *(v5 + 64);
    v7 = v5 + 64;
    v6 = v8;
    v9 = -1;
    v10 = -1 << *(v0[3] + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & v6;
    v12 = (63 - v10) >> 6;
    v33 = v0[3];

    for (i = 0; v11; i = v15)
    {
      v15 = i;
LABEL_9:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(v33 + 48) + v17);
      v19 = (*(v33 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = 0x6567412D72657355;
      if (v18 != 2)
      {
        v22 = 0x65676E6152;
      }

      v23 = 0xEA0000000000746ELL;
      if (v18 != 2)
      {
        v23 = 0xE500000000000000;
      }

      v24 = 0x7A69726F68747541;
      if (v18)
      {
        v24 = 0x2D746E65746E6F43;
      }

      v25 = 0xED00006E6F697461;
      if (v18)
      {
        v25 = 0xEC00000065707954;
      }

      if (v18 <= 1)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v18 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      v28.value._countAndFlagsBits = v21;
      v28.value._object = v20;
      v29._countAndFlagsBits = v26;
      v29._object = v27;
      URLRequest.setValue(_:forHTTPHeaderField:)(v28, v29);
    }

    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        goto LABEL_26;
      }

      v11 = *(v7 + 8 * v15);
      ++i;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v30 = swift_task_alloc();
    v0[10] = v30;
    *v30 = v0;
    v30[1] = sub_100521310;
    v31 = v0[9];
    v32 = v0[5];

    return sub_10051E728(v31, v32);
  }

  return result;
}

uint64_t sub_100521310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v9 = sub_1005214D4;
  }

  else
  {
    v8[12] = a3;
    v8[13] = a2;
    v8[14] = a1;
    v9 = sub_10052144C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10052144C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  return v1(v2, v3, v4);
}

uint64_t sub_1005214D4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100521554(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100521680, 0, 0);
}

uint64_t sub_100521680()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = *(v4 + 16);
  v6(v1, v0[2], v3);
  v6(v2, v1, v3);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  (*(v4 + 8))(v1, v3);
  v7.value._countAndFlagsBits = sub_10051E4A4(*(v5 + 24));
  v8._countAndFlagsBits = 0x6567412D72657355;
  v8._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v7, v8);

  URLRequest.timeoutInterval.setter();
  URLRequest.cachePolicy.setter();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_100521810;
  v10 = v0[11];
  v11 = v0[3];

  return sub_10051E728(v10, v11);
}

uint64_t sub_100521810(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 104) = v3;

  if (v3)
  {
    v9 = sub_1005219F4;
  }

  else
  {
    *(v8 + 112) = a3;
    sub_100007158(a1, a2);
    v9 = sub_100521954;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100521954()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_1005219F4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100521A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100521B58;

  return sub_10051DCC8(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_100521B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_100521C70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100214EFC;

  return v6();
}

uint64_t sub_100521D58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1001F0E54;

  return v7();
}

uint64_t sub_100521E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100005934(a3, v23 - v10, &unk_100780380);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000032A8(v11, &unk_100780380);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000032A8(a3, &unk_100780380);

    return v21;
  }

LABEL_8:
  sub_1000032A8(a3, &unk_100780380);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_10052213C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100523228(a1, a2, v4);
}

unint64_t sub_1005221B4(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100525DE8(a1, v2);
}

unint64_t sub_10052221C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10052B8C0(&qword_100786E80, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1005232E0(a1, v2);
}

unint64_t sub_1005222D0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1005233EC(a1, v2);
}

unint64_t sub_1005223D0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1005235B8(a1, v4);
}

unint64_t sub_100522414(uint64_t a1)
{
  v2 = *(a1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 & 1);
  String.hash(into:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_100523680(a1, v3);
}

unint64_t sub_1005224AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10052B8C0(&qword_100781FF8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  type metadata accessor for URL();
  sub_10052B8C0(&qword_100782598, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(a1 + *(v2 + 24)));
  v3 = Hasher._finalize()();

  return sub_1005237A4(a1, v3);
}

unint64_t sub_1005225DC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10052B8C0(&qword_100781FF8, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100525E54(a1, v2, &type metadata accessor for UUID, &qword_100783AC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1005226DC(unsigned __int8 a1)
{
  v2 = sub_100606724();

  return sub_100523F64(a1, v2);
}

unint64_t sub_100522720(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1005241EC(a1, v2);
}

unint64_t sub_100522820(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100524AA0(a1, v2);
}

unint64_t sub_1005228FC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  sub_100605D8C();
  v2 = Hasher._finalize()();

  return sub_100524C58(a1, v2);
}

unint64_t sub_100522968(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100524F74(a1, v2);
}

unint64_t sub_100522A7C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100525168(a1, v2);
}

unint64_t sub_100522B94(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100525354(a1, v2);
}

unint64_t sub_100522C58(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1005254DC(a1, v2);
}

uint64_t sub_100522D64(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_100522E00(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  StoreAppIdentifier.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100525BB0(a1, a2, a3 & 1, v6);
}

unint64_t sub_100522E8C(_OWORD *a1)
{
  Hasher.init(_seed:)();
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = audit_token_to_pid(&v8);
  Hasher._combine(_:)(v3);
  v4 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v4;
  v5 = audit_token_to_pidversion(&v8);
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  return sub_100525CB4(a1, v6);
}

unint64_t sub_100522F18(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10052B8C0(&qword_100782598, &type metadata accessor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100525E54(a1, v2, &type metadata accessor for URL, &unk_100787090, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100522FEC(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100525DE8(a1, v2);
}

unint64_t sub_100523054(uint64_t *a1)
{
  Hasher.init(_seed:)();
  sub_100304100();
  v2 = Hasher._finalize()();

  return sub_100525FF4(a1, v2);
}

unint64_t sub_1005230C0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100526200(a1, v2);
}

unint64_t sub_100523154(uint64_t a1)
{
  type metadata accessor for MessageRegistration();
  sub_10052B8C0(&qword_100783A98, &type metadata accessor for MessageRegistration);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100525E54(a1, v2, &type metadata accessor for MessageRegistration, &qword_100783AA0, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
}

unint64_t sub_100523228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1005232E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10052B8C0(&qword_100786E80, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1005233EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x6567412D72657355 : 0x65676E6152;
      v7 = v5 == 2 ? 0xEA0000000000746ELL : 0xE500000000000000;
      v8 = *(*(v22 + 48) + v4) ? 0x2D746E65746E6F43 : 0x7A69726F68747541;
      v9 = *(*(v22 + 48) + v4) ? 0xEC00000065707954 : 0xED00006E6F697461;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0x6567412D72657355 : 0x65676E6152;
      v13 = v21 == 2 ? 0xEA0000000000746ELL : 0xE500000000000000;
      v14 = v21 ? 0x2D746E65746E6F43 : 0x7A69726F68747541;
      v15 = v21 ? 0xEC00000065707954 : 0xED00006E6F697461;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1005235B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10043A310(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10039DCC4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100523680(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = a1[1];
    v18 = *a1;
    v8 = *(a1 + 16);
    v9 = a1[3];
    v10 = a1[4];
    v11 = *(v2 + 48);
    do
    {
      v12 = v11 + 40 * v5;
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (*(v12 + 16))
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (v8)
      {
        goto LABEL_3;
      }

      v15 = *v12 == v18 && *(v12 + 8) == v7;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v13 == v9 && v14 == v10;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v5;
        }
      }

LABEL_3:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1005237A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_10052B800(*(v2 + 48) + v12 * v10, v8);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        v13 = *&v8[*(v5 + 24)];
        sub_10052B864(v8);
        if (v13 == *(a1 + *(v5 + 24)))
        {
          return v10;
        }
      }

      else
      {
        sub_10052B864(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100523920(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_100234CBC(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_100234CBC(a1) && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100523A24(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000074657366;
      v8 = 0x666F5F7365747962;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x645F726568706963;
          v9 = 1936025449;
          goto LABEL_8;
        case 2:
          v8 = 0x73736572706D6F63;
          v7 = 0xEF657A69735F6465;
          break;
        case 3:
          v8 = 0x6F72705F61746164;
          v7 = 0xEF64695F6573696DLL;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x747365676964;
          break;
        case 5:
          v8 = 0x636F6C5F6B736964;
          v7 = 0xED00006E6F697461;
          break;
        case 6:
          v7 = 0xEA00000000006E6FLL;
          v8 = 0x6974707972636E65;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x74616D726F66;
          break;
        case 8:
          v8 = 0x6B636F6C625F7369;
          v7 = 0xEA00000000006465;
          break;
        case 9:
          v8 = 0xD000000000000012;
          v7 = 0x80000001006C3D30;
          break;
        case 0xA:
          v8 = 0x695F746E65726170;
          v7 = 0xE900000000000064;
          break;
        case 0xB:
          v8 = 0x5F74736575716572;
          v9 = 1853189987;
LABEL_8:
          v7 = v9 | 0xED00007400000000;
          break;
        case 0xC:
          v8 = 0x7265696669726576;
          v7 = 0xEE0065746174735FLL;
          break;
        case 0xD:
          v7 = 0xE400000000000000;
          v8 = 1701869940;
          break;
        case 0xE:
          v8 = 0xD000000000000011;
          v7 = 0x80000001006C3D70;
          break;
        case 0xF:
          v7 = 0xE300000000000000;
          v8 = 7107189;
          break;
        case 0x10:
          v7 = 0xE700000000000000;
          v8 = 0x746E6169726176;
          break;
        default:
          break;
      }

      v10 = 0x666F5F7365747962;
      v11 = 0xEC00000074657366;
      switch(a1)
      {
        case 1:
          v12 = 0x645F726568706963;
          v13 = 1936025449;
          goto LABEL_28;
        case 2:
          v11 = 0xEF657A69735F6465;
          if (v8 != 0x73736572706D6F63)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 3:
          v11 = 0xEF64695F6573696DLL;
          if (v8 != 0x6F72705F61746164)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 4:
          v11 = 0xE600000000000000;
          if (v8 != 0x747365676964)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 5:
          v12 = 0x636F6C5F6B736964;
          v14 = 0x6E6F697461;
          goto LABEL_44;
        case 6:
          v11 = 0xEA00000000006E6FLL;
          if (v8 != 0x6974707972636E65)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 7:
          v11 = 0xE600000000000000;
          if (v8 != 0x74616D726F66)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 8:
          v11 = 0xEA00000000006465;
          if (v8 != 0x6B636F6C625F7369)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 9:
          v11 = 0x80000001006C3D30;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 10:
          v10 = 0x695F746E65726170;
          v11 = 0xE900000000000064;
          goto LABEL_51;
        case 11:
          v12 = 0x5F74736575716572;
          v13 = 1853189987;
LABEL_28:
          v14 = v13 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_44:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 12:
          v11 = 0xEE0065746174735FLL;
          if (v8 != 0x7265696669726576)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 13:
          v11 = 0xE400000000000000;
          if (v8 != 1701869940)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 14:
          v11 = 0x80000001006C3D70;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 15:
          v11 = 0xE300000000000000;
          if (v8 != 7107189)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 16:
          v11 = 0xE700000000000000;
          if (v8 != 0x746E6169726176)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        default:
LABEL_51:
          if (v8 != v10)
          {
            goto LABEL_53;
          }

LABEL_52:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_53:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}