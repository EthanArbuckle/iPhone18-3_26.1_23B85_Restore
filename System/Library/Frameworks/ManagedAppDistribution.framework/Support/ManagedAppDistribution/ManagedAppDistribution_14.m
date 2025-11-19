uint64_t sub_10026B634()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  if (v0)
  {

    v4 = sub_10026B994;
  }

  else
  {

    v4 = sub_10026B7BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026B7BC()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_100005934(v0[22], v1, &unk_100780A00);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000032A8(v0[21], &unk_100780A00);
    v4 = v0[13];
    v5 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_journal);
    v0[29] = v5;
    v6 = (v4 + *(type metadata accessor for DDMDeclaration(0) + 52));
    v0[30] = *v6;
    v0[31] = v6[1];

    return _swift_task_switch(sub_10026BDB4, v5, 0);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
    v0[27] = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_10026BB8C;
    v8 = v0[20];

    return sub_100532D58(v8);
  }
}

uint64_t sub_10026B994()
{
  (*(v0[19] + 56))(v0[22], 1, 1, v0[18]);
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_100005934(v0[22], v1, &unk_100780A00);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000032A8(v0[21], &unk_100780A00);
    v4 = v0[13];
    v5 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_journal);
    v0[29] = v5;
    v6 = (v4 + *(type metadata accessor for DDMDeclaration(0) + 52));
    v0[30] = *v6;
    v0[31] = v6[1];

    return _swift_task_switch(sub_10026BDB4, v5, 0);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[21], v0[18]);
    v0[27] = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);

    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_10026BB8C;
    v8 = v0[20];

    return sub_100532D58(v8);
  }
}

uint64_t sub_10026BB8C()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  if (v0)
  {

    v4 = sub_100271F04;
  }

  else
  {

    v4 = sub_10026BCE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026BCE8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[13];
  v2 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_journal);
  v0[29] = v2;
  v3 = (v1 + *(type metadata accessor for DDMDeclaration(0) + 52));
  v0[30] = *v3;
  v0[31] = v3[1];

  return _swift_task_switch(sub_10026BDB4, v2, 0);
}

uint64_t sub_10026BDB4()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_10026BE9C;

  return (sub_10052D7DC)();
}

uint64_t sub_10026BE9C()
{
  v2 = *v1;

  v3 = *(v2 + 232);
  if (v0)
  {

    v4 = sub_10026C158;
  }

  else
  {

    v4 = sub_10026BFF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026BFF8()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_10026C064, v1, 0);
}

uint64_t sub_10026C064()
{
  v1 = v0[5];
  v2 = v0[7];
  v3 = sub_100006D8C(v0 + 2, v1);
  v0[11] = v1;
  v0[12] = v2;
  v4 = sub_10020A748(v0 + 8);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_10026C1C4;
  v6 = v0[13];

  return sub_10024E4AC(v6);
}

uint64_t sub_10026C158()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_100271EA8, v1, 0);
}

uint64_t sub_10026C1C4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_10026C570;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_10000710C(v2 + 64);
    v4 = sub_10026C2EC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026C2EC()
{
  v1 = sub_100625FA0();
  v0[36] = v1;
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_10026C394;
  v3 = v0[23];
  v4 = v0[13];

  return sub_1003DFD44(v4, v3, v1);
}

uint64_t sub_10026C394()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 112);

  return _swift_task_switch(sub_10026C4BC, v2, 0);
}

uint64_t sub_10026C4BC()
{

  sub_1000032A8(*(v0 + 176), &unk_100780A00);
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026C570()
{
  sub_10000710C((v0 + 8));
  static Logger.ddm.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error attempting to uninstall app %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];

  (*(v8 + 8))(v7, v9);
  sub_1000032A8(v0[22], &unk_100780A00);
  sub_10000710C((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a2;
  v9 = type metadata accessor for LogKey.Prefix();
  v4[16] = v9;
  v4[17] = *(v9 - 8);
  v4[18] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3D8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v10 = type metadata accessor for ManagedAppStatus.State();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v11 = type metadata accessor for DDMDeclaration(0);
  v4[25] = v11;
  v4[26] = *(v11 - 8);
  v4[27] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[28] = v12;
  v4[29] = *(v12 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v13 = sub_10020A748(v4 + 2);
  (*(*(a3 - 8) + 16))(v13, a1, a3);

  return _swift_task_switch(sub_10026CA0C, a2, 0);
}

uint64_t sub_10026CA0C()
{
  static Logger.ddm.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Starting DDM status cleanup.", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[33];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[15];

  v10 = *(v8 + 8);
  v0[34] = v10;
  v0[35] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  v11 = *(v9 + 112);
  v0[36] = v11;

  return _swift_task_switch(sub_10026CB74, v11, 0);
}

uint64_t sub_10026CB74()
{
  v1 = *(*(v0 + 288) + 112);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_10026CC38;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_10026CC38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_10026D118;
  }

  else
  {
    v6 = sub_10026CD6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026CD6C()
{
  v1 = *(v0 + 304);
  *(v0 + 320) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 208);
    *(v0 + 336) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_database;
    *(v0 + 440) = *(v3 + 80);
    *(v0 + 344) = *(v3 + 72);
    *(v0 + 444) = enum case for ManagedAppStatus.State.managed(_:);
    *(v0 + 448) = enum case for LogKey.Prefix.undefined(_:);

    v4 = 0;
    while (1)
    {
      *(v0 + 352) = v4;
      v5 = *(v0 + 216);
      v6 = *(v0 + 200);
      sub_100271284(*(v0 + 304) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + *(v0 + 344) * v4, v5, type metadata accessor for DDMDeclaration);
      if (*(v5 + *(v6 + 60)) == 1)
      {
        break;
      }

      sub_100271224(*(v0 + 216), type metadata accessor for DDMDeclaration);
      v4 = *(v0 + 352) + 1;
      if (v4 == *(v0 + 328))
      {

        goto LABEL_7;
      }
    }

    v18 = (*(v0 + 216) + *(*(v0 + 200) + 52));
    *(v0 + 360) = *v18;
    *(v0 + 368) = v18[1];
    type metadata accessor for ManagedAppDeclarationStatusStore();
    sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 376) = v20;
    *(v0 + 384) = v19;

    return _swift_task_switch(sub_10026D414, v20, v19);
  }

  else
  {

LABEL_7:
    static Logger.ddm.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_100625FA0();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Finished DDM status cleanup.", v9, 0xCu);
      sub_1000032A8(v10, &qword_10077F920);
    }

    v12 = v7;
    v13 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);

    v13(v14, v15);
    sub_10000710C(v0 + 16);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10026D118()
{
  static Logger.ddm.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Failed to do cleanup with error: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 272))(*(v0 + 256), *(v0 + 224));
  static Logger.ddm.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_100625FA0();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Finished DDM status cleanup.", v9, 0xCu);
    sub_1000032A8(v10, &qword_10077F920);
  }

  v12 = v7;
  v13 = *(v0 + 272);
  v14 = *(v0 + 248);
  v15 = *(v0 + 224);

  v13(v14, v15);
  sub_10000710C(v0 + 16);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10026D414()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_10026D508;
  v5 = v0[19];

  return sub_10052E62C(v5, sub_100271DA8, v3);
}

uint64_t sub_10026D508()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10026DE08;
  }

  else
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10026D64C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10026D64C()
{
  v1 = v0[15];
  sub_10020A668(v0[19], v0[20], &qword_10077F3D8);

  return _swift_task_switch(sub_10026D6C8, v1, 0);
}

uint64_t sub_10026D6C8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = *(v0 + 444);
    v5 = *(v0 + 184);
    (*(v2 + 32))(*(v0 + 192), v3, v1);
    (*(v2 + 104))(v5, v4, v1);
    sub_100262B9C(&qword_10077F3E0, &type metadata accessor for ManagedAppStatus.State);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 88) == *(v0 + 104) && *(v0 + 96) == *(v0 + 112))
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = *(v8 + 8);
    *(v0 + 408) = v10;
    *(v0 + 416) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);

    if (v6)
    {
      v11 = *(v0 + 216);
      sub_100006190(0, &qword_100784500);
      v12 = sub_10060BC54(*(v11 + 48), *(v11 + 56), 0, 0, 0);
      if (!v12)
      {
        static Logger.ddm.getter();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = sub_100625FA0();
          *(v17 + 4) = v19;
          *v18 = v19;
          _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Found an optional app with an out of sync status, updating to optional", v17, 0xCu);
          sub_1000032A8(v18, &qword_10077F920);
        }

        v20 = *(v0 + 272);
        v21 = *(v0 + 240);
        v22 = *(v0 + 224);

        v20(v21, v22);
        if (qword_10077E598 != -1)
        {
          swift_once();
        }

        TaskLocal.get()();
        v23 = *(v0 + 64);
        if (!v23 || (, , , os_unfair_lock_lock((v23 + 24)), v24 = *(v23 + 16), v25 = v24, os_unfair_lock_unlock((v23 + 24)), , !v24))
        {
          (*(*(v0 + 136) + 104))(*(v0 + 144), *(v0 + 448), *(v0 + 128));
          v26 = objc_allocWithZone(type metadata accessor for LogKey());
          v25 = LogKey.init(prefix:)();
        }

        *(v0 + 424) = v25;
        v27 = swift_task_alloc();
        *(v0 + 432) = v27;
        *v27 = v0;
        v27[1] = sub_10026E1A4;
        v28 = *(v0 + 216);

        return sub_100305BE8(v28, 1, v25);
      }
    }

    v13 = *(v0 + 216);
    (*(v0 + 408))(*(v0 + 192), *(v0 + 168));
    v14 = v13;
    goto LABEL_27;
  }

  sub_100271224(*(v0 + 216), type metadata accessor for DDMDeclaration);
  sub_1000032A8(v3, &qword_10077F3D8);
  while (1)
  {
    v40 = *(v0 + 352) + 1;
    if (v40 == *(v0 + 328))
    {

      static Logger.ddm.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = sub_100625FA0();
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Finished DDM status cleanup.", v30, 0xCu);
        sub_1000032A8(v31, &qword_10077F920);
      }

      v33 = v41;
      v34 = *(v0 + 272);
      v35 = *(v0 + 248);
      v36 = *(v0 + 224);

      v34(v35, v36);
      sub_10000710C(v0 + 16);

      v37 = *(v0 + 8);

      return v37();
    }

    *(v0 + 352) = v40;
    v38 = *(v0 + 216);
    v39 = *(v0 + 200);
    sub_100271284(*(v0 + 304) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + *(v0 + 344) * v40, v38, type metadata accessor for DDMDeclaration);
    if (*(v38 + *(v39 + 60)) == 1)
    {
      break;
    }

    v14 = *(v0 + 216);
LABEL_27:
    sub_100271224(v14, type metadata accessor for DDMDeclaration);
  }

  v43 = (*(v0 + 216) + *(*(v0 + 200) + 52));
  *(v0 + 360) = *v43;
  *(v0 + 368) = v43[1];
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v45 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 376) = v45;
  *(v0 + 384) = v44;

  return _swift_task_switch(sub_10026D414, v45, v44);
}

uint64_t sub_10026DE24()
{
  (*(*(v0 + 176) + 56))(*(v0 + 160), 1, 1, *(v0 + 168));
  v1 = *(v0 + 160);
  sub_100271224(*(v0 + 216), type metadata accessor for DDMDeclaration);
  sub_1000032A8(v1, &qword_10077F3D8);
  while (1)
  {
    v2 = *(v0 + 352) + 1;
    if (v2 == *(v0 + 328))
    {
      break;
    }

    *(v0 + 352) = v2;
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    sub_100271284(*(v0 + 304) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + *(v0 + 344) * v2, v3, type metadata accessor for DDMDeclaration);
    if (*(v3 + *(v4 + 60)) == 1)
    {
      v16 = (*(v0 + 216) + *(*(v0 + 200) + 52));
      *(v0 + 360) = *v16;
      *(v0 + 368) = v16[1];
      type metadata accessor for ManagedAppDeclarationStatusStore();
      sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 376) = v18;
      *(v0 + 384) = v17;

      return _swift_task_switch(sub_10026D414, v18, v17);
    }

    sub_100271224(*(v0 + 216), type metadata accessor for DDMDeclaration);
  }

  static Logger.ddm.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = sub_100625FA0();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Finished DDM status cleanup.", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  v10 = v5;
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 224);

  v11(v12, v13);
  sub_10000710C(v0 + 16);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10026E1A4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 120);

  return _swift_task_switch(sub_10026E2CC, v2, 0);
}

uint64_t sub_10026E2CC()
{
  v1 = *(v0 + 216);
  (*(v0 + 408))(*(v0 + 192), *(v0 + 168));
  for (i = v1; ; i = *(v0 + 216))
  {
    sub_100271224(i, type metadata accessor for DDMDeclaration);
    v3 = *(v0 + 352) + 1;
    if (v3 == *(v0 + 328))
    {
      break;
    }

    *(v0 + 352) = v3;
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    sub_100271284(*(v0 + 304) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + *(v0 + 344) * v3, v4, type metadata accessor for DDMDeclaration);
    if (*(v4 + *(v5 + 60)) == 1)
    {
      v17 = (*(v0 + 216) + *(*(v0 + 200) + 52));
      *(v0 + 360) = *v17;
      *(v0 + 368) = v17[1];
      type metadata accessor for ManagedAppDeclarationStatusStore();
      sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 376) = v19;
      *(v0 + 384) = v18;

      return _swift_task_switch(sub_10026D414, v19, v18);
    }
  }

  static Logger.ddm.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_100625FA0();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Finished DDM status cleanup.", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  v11 = v6;
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 224);

  v12(v13, v14);
  sub_10000710C(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10026E620(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10026E634(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001F0C48(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Logger();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for LogKey.Prefix();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10026E8B4, 0, 0);
}

uint64_t sub_10026E8B4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for LogKey.Prefix.ddm(_:), *(v0 + 184));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 208) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v6;

  return _swift_task_switch(sub_10026E9D8, 0, 0);
}

uint64_t sub_10026E9D8()
{
  sub_100005934(*(v0 + 176), *(v0 + 168), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 224) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Post declaration removal state change", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 208);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 232) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_100005934(*(v0 + 168), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 168), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 128);
    v22 = *(v0 + 168);
    (*(v15 + 32))(v13, *(v0 + 160), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Post declaration removal state change", 37, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0);
  }

  *(v0 + 248) = v12;
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069FCA0;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_10026EF08;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069FCA8, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10026EF08()
{

  if (v0)
  {

    v1 = sub_10026F290;
  }

  else
  {

    v1 = sub_10026F0C8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10026F0C8()
{
  v1 = *(v0 + 176);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_10026F1C0, 0, 0);
}

uint64_t sub_10026F1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026F290()
{
}

uint64_t sub_10026F32C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, int a4, void *a5, void *a6)
{
  v63 = a6;
  v77 = a5;
  v76 = a4;
  v65 = a2;
  v71 = type metadata accessor for DDMDeclarationStatus(0);
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v61 - v15;
  __chkstk_darwin(v14);
  v64 = &v61 - v17;
  v18 = sub_1001F0C48(&qword_10077F3B0);
  v19 = __chkstk_darwin(v18 - 8);
  v74 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v23 = sub_1001F0C48(&qword_10077F3C0);
  __chkstk_darwin(v23 - 8);
  v25 = (&v61 - v24);
  v26 = *(a1 + 16);
  v73 = v8;
  v69 = (v8 + 48);
  v70 = (v8 + 56);
  v66 = a1;

  v67 = a3;

  v27 = 0;
  v68 = v22;
  while (1)
  {
    if (v27 == v26)
    {
      v28 = 1;
      v29 = v26;
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v27 >= *(v66 + 16))
      {
        goto LABEL_27;
      }

      sub_100271284(v66 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v27, v22, type metadata accessor for DDMDeclarationStatus);
      v28 = 0;
      v29 = v27 + 1;
    }

    v30 = v71;
    v31 = 1;
    (*v70)(v22, v28, 1, v71);
    v32 = v74;
    sub_10020A668(v22, v74, &qword_10077F3B0);
    if ((*v69)(v32, 1, v30) != 1)
    {
      v33 = v64;
      sub_1002711BC(v74, v64, type metadata accessor for DDMDeclarationStatus);
      v65(v33);
      sub_100271224(v33, type metadata accessor for DDMDeclarationStatus);
      v31 = 0;
    }

    v34 = sub_1001F0C48(&qword_10077F3C8);
    (*(*(v34 - 8) + 56))(v25, v31, 1, v34);
    v35 = sub_1001F0C48(&qword_10077F3C8);
    if ((*(*(v35 - 8) + 48))(v25, 1, v35) == 1)
    {

      return swift_bridgeObjectRelease_n();
    }

    v75 = v29;
    v36 = *(v35 + 48);
    v38 = v25[1];
    v80 = *v25;
    v37 = v80;
    v81 = v38;
    v39 = v25;
    v40 = v16;
    sub_1002711BC(v25 + v36, v16, type metadata accessor for DDMDeclarationStatus);
    v41 = *v77;
    v43 = sub_10052213C(v37, v38);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:

      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_30;
    }

    v47 = v42;
    if (v41[3] >= v46)
    {
      if ((v76 & 1) == 0)
      {
        sub_1005C56A8();
      }
    }

    else
    {
      sub_1005BC788(v46, v76 & 1);
      v48 = sub_10052213C(v37, v38);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_29;
      }

      v43 = v48;
    }

    v50 = *v77;
    if (v47)
    {
      break;
    }

    v50[(v43 >> 6) + 8] |= 1 << v43;
    v54 = (v50[6] + 16 * v43);
    *v54 = v37;
    v54[1] = v38;
    v16 = v40;
    sub_1002711BC(v40, v50[7] + *(v73 + 72) * v43, type metadata accessor for DDMDeclarationStatus);
    v55 = v50[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_28;
    }

    v50[2] = v57;
LABEL_2:
    v76 = 1;
    v22 = v68;
    v25 = v39;
    v27 = v75;
  }

  v51 = *(v73 + 72) * v43;
  v52 = v62;
  sub_100271284(v50[7] + v51, v62, type metadata accessor for DDMDeclarationStatus);
  v16 = v40;
  v53 = v72;
  sub_100252CA8(v52, v40, v63, v13);
  v72 = v53;
  if (!v53)
  {
    sub_100271224(v52, type metadata accessor for DDMDeclarationStatus);
    sub_100271224(v40, type metadata accessor for DDMDeclarationStatus);

    sub_1002712EC(v13, v50[7] + v51);
    goto LABEL_2;
  }

  sub_100271224(v52, type metadata accessor for DDMDeclarationStatus);
  v82 = v72;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100271224(v40, type metadata accessor for DDMDeclarationStatus);

    swift_bridgeObjectRelease_n();
  }

LABEL_30:
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v59._object = 0x80000001006C4E90;
  v59._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v59);
  _print_unlocked<A, B>(_:_:)();
  v60._countAndFlagsBits = 39;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10026FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a2;
  v8[22] = a4;
  v8[20] = a1;
  v8[5] = a5;
  v8[6] = a6;
  v8[7] = a7;
  v8[8] = a8;
  v8[9] = v15;
  v8[10] = v16;
  v12 = sub_10020A748(v8 + 2);
  (*(*(a5 - 8) + 16))(v12, a3, a5);

  return _swift_task_switch(sub_10026FB84, a4, 0);
}

uint64_t sub_10026FB84()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_statePostTimer;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_statePostTimer);
  if (v3 || (sub_10026FE78((v0 + 2), (v0 + 11)), v4 = swift_allocObject(), sub_10026FEE4((v0 + 11), v4 + 16), sub_1001F0C48(&qword_10077F370), v5 = swift_allocObject(), *(v5 + 56) = 0, *(v5 + 64) = 0, *(v5 + 48) = 0, *(v5 + 16) = xmmword_10069F940, v6 = swift_allocObject(), v6[2] = 0, v6[3] = 0, v6[4] = &unk_10069FAA0, v6[5] = v4, *(v5 + 32) = &unk_10069FAB8, *(v5 + 40) = v6, *(v1 + v2) = v5, , (v3 = *(v1 + v2)) != 0))
  {
    v0[23] = v3;

    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_10026FD60;
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[20];

    return (sub_100262CEC)(v10, v8, v9, v3);
  }

  else
  {
    sub_10000710C((v0 + 2));
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10026FD60()
{
  v1 = *v0;
  v4 = *v0;

  sub_10000710C(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10026FE78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10026FEE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 16) = v2;
  return a2;
}

uint64_t sub_10026FF0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100214EFC;

  return sub_100260FDC(a1, v1 + 16);
}

uint64_t sub_10026FFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100261450(a1, v4, v5, v6);
}

uint64_t sub_10027006C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002700AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002629EC(a1, v4, v5, v6, v7);
}

uint64_t sub_100270180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_100005934(a3, v13, &unk_100780380);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000032A8(v13, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1002704F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100350320(a1, v4);
}

uint64_t sub_1002705B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10025F3B4(a1, v5, v4);
}

uint64_t sub_10027065C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100214EFC;

  return sub_100260C34(a1, v1 + 16);
}

uint64_t sub_1002706F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_10027070C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10027074C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10027079C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100262780(a1, v4, v5, v6, v7);
}

unint64_t sub_100270870()
{
  result = qword_100789F40;
  if (!qword_100789F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789F40);
  }

  return result;
}

uint64_t sub_1002708C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100270928(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

uint64_t sub_100270940(uint64_t a1)
{
  v3 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = v1 + v5;
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100214EFC;

  return sub_100254BF8(a1, v14, v7, v8, v1 + v4, v10, v11, v1 + v6);
}

void sub_100270AAC(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = type metadata accessor for DDMDeclaration(0);
  sub_1003A89E4(v2, *(v3 + *(v5 + 52)), *(v3 + *(v5 + 52) + 8), v4);
}

uint64_t sub_100270B00()
{
  v2 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100270BD8;

  return sub_1002546E4(v4, v0 + v3);
}

uint64_t sub_100270BD8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100270CD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_1002549F8(a1, v4);
}

uint64_t sub_100270DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100270DF8(uint64_t a1)
{
  v3 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100214EFC;

  return sub_10025D924(a1, v7, v8, v9, v1 + v4, v10, v11, v1 + v6);
}

uint64_t sub_100270F5C(uint64_t a1)
{
  v3 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v13 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100214EFC;

  return sub_10025CEF0(a1, v13, v7, v8, v1 + v4, v9, v10, v1 + v6);
}

uint64_t sub_1002710CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100271104(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002711BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100271224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100271284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002712EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclarationStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027136C(uint64_t a1)
{
  v4 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100214EFC;

  return sub_100304BFC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10027149C(uint64_t a1)
{
  v4 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_10024E3F8(a1, v1 + 16, v1 + v5, v8, v1 + v7);
}

uint64_t sub_1002715BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002715FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10024D894(a1, v4, v5, v7, v6);
}

uint64_t sub_1002716F4()
{
  v1 = type metadata accessor for DDMDeclaration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);
  if (v6 >> 60 != 15)
  {
    sub_100007158(*(v5 + 24), v6);
  }

  v7 = v5 + v1[10];
  v8 = type metadata accessor for DDMCachedMetadata(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v7, v9);
    v10 = *(v8 + 20);
    v11 = type metadata accessor for ManagedApp();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  v12 = v1[12];
  v13 = type metadata accessor for ComposedIdentifier();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v1[18];
  v16 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[20];
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v5 + v18, 1, v19))
  {
    (*(v20 + 8))(v5 + v18, v19);
  }

  if (*(v5 + v1[22] + 8) >= 2uLL)
  {
  }

  v21 = (v4 + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[24];
  v25 = type metadata accessor for Platform();
  (*(*(v25 - 8) + 8))(v5 + v24, v25);
  v26 = v1[25];
  v27 = type metadata accessor for DDMPurchaseMethod();
  (*(*(v27 - 8) + 8))(v5 + v26, v27);

  sub_10000710C(v0 + v21);

  sub_10000710C(v0 + v23);

  return _swift_deallocObject(v0, v23 + 72, v2 | 7);
}

uint64_t sub_100271B2C(uint64_t a1)
{
  v3 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = v1 + v5;
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100214EFC;

  return sub_10025518C(a1, v14, v7, v8, v1 + v4, v10, v11, v1 + v6);
}

uint64_t sub_100271CFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10023B308(a1, v5, v4);
}

unint64_t sub_100271DD8()
{
  result = qword_10077F3F0;
  if (!qword_10077F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F3F0);
  }

  return result;
}

uint64_t sub_100271E30()
{

  return sub_10023D1A8();
}

uint64_t sub_100271F28()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage);
  os_unfair_lock_lock(v1 + 30);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  os_unfair_lock_unlock(v1 + 30);
  if (Strong)
  {

    return _swift_task_switch(sub_100271FEC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100271FEC()
{
  v1 = *(v0 + 24);
  *(v1 + 304) = 3;
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = v2;
    [v3 cancel];
  }

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100272078(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return _swift_task_switch(sub_100272098, 0, 0);
}

uint64_t sub_100272098()
{
  v1 = *(v0 + 296) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request;
  v2 = type metadata accessor for DownloadRequest();
  sub_10020A980(v1 + *(v2 + 68), v0 + 248);
  sub_1001F0C48(&qword_10077F4D8);
  if (!swift_dynamicCast())
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = *(v0 + 296);
  sub_10020AB78(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_dependencies, v0 + 200);
  type metadata accessor for StreamingDownloadTask();
  swift_allocObject();

  v5 = sub_10031B3A0(v4, v0 + 200);
  *(v0 + 304) = v5;

  sub_10027323C(v0 + 16);
  sub_10000710C(v0 + 248);
  v6 = *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = &off_10075F030;
  os_unfair_lock_lock(v6 + 30);
  sub_100273290(&v6[4]);
  os_unfair_lock_unlock(v6 + 30);

  return _swift_task_switch(sub_100272260, v5, 0);
}

uint64_t sub_100272260()
{
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_10027230C;

  return sub_100310DA0(v0 + 136);
}

uint64_t sub_10027230C()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {
    v3 = v2[38];
    sub_1000032A8((v2 + 17), &qword_10077E968);

    return _swift_task_switch(sub_100272610, v3, 0);
  }

  else
  {
    sub_1000032A8((v2 + 17), &qword_10077E968);
    v4 = swift_task_alloc();
    v2[41] = v4;
    *v4 = v2;
    v4[1] = sub_1002724B0;
    v5 = v2[36];

    return sub_100272690(v5);
  }
}

uint64_t sub_1002724B0()
{

  return _swift_task_switch(sub_1002725AC, 0, 0);
}

uint64_t sub_1002725AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027262C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100272690(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_1002726B0, 0, 0);
}

uint64_t sub_1002726B0()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage);
  os_unfair_lock_lock(v1 + 30);
  sub_1002732C8(&v1[6], v0 + 16);
  os_unfair_lock_unlock(v1 + 30);
  if (*(v0 + 88) == 255)
  {
    sub_1000032A8(v0 + 16, &qword_10077F4D0);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100272824;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    return withCheckedContinuation<A>(isolation:function:_:)(v9, 0, 0, 0x2928746C75736572, 0xE800000000000000, sub_100273338, v10, &type metadata for DownloadResult);
  }

  else
  {
    v2 = *(v0 + 96);
    *v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 48);
    v5 = *(v0 + 64);
    *(v2 + 57) = *(v0 + 73);
    v2[2] = v4;
    v2[3] = v5;
    v2[1] = v3;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100272824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100272918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage);
  os_unfair_lock_lock((v2 + 120));
  sub_100273340((v2 + 16));
  os_unfair_lock_unlock((v2 + 120));
}

uint64_t sub_100272974(void **a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F4C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a2, v4);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100363160(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100363160(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *a1 = v8;
  return result;
}

uint64_t sub_100272AF4(uint64_t a1)
{
  v3 = sub_1001F0C48(&qword_10077F4C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage);
  v16[4] = a1;
  os_unfair_lock_lock((v7 + 120));
  sub_100272E98((v7 + 16), v17);
  os_unfair_lock_unlock((v7 + 120));
  v8 = *(v17[0] + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v16[1] = v17[0];
    v13 = v17[0] + v12;
    v14 = *(v9 + 56);
    do
    {
      v10(v6, v13, v3);
      sub_100272F00(a1, v17);
      CheckedContinuation.resume(returning:)();
      (*(v9 - 8))(v6, v3);
      v13 += v14;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_100272C7C()
{
  sub_100272F5C(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request);
  sub_10000710C(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_dependencies);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Download()
{
  result = qword_10077F428;
  if (!qword_10077F428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100272D54()
{
  result = type metadata accessor for DownloadRequest();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100272E40()
{
  result = qword_10077F4C0;
  if (!qword_10077F4C0)
  {
    type metadata accessor for Download();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F4C0);
  }

  return result;
}

uint64_t sub_100272E98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1000032A8((a1 + 1), &qword_10077F4D0);
  sub_100272F00(v5, (a1 + 1));
  *a2 = *a1;
}

uint64_t sub_100272F5C(uint64_t a1)
{
  v2 = type metadata accessor for DownloadRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100272FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  (*(v10 + 32))(&v19 - v14);
  v16 = swift_allocObject();
  (*(v10 + 16))(v13, v15, a4);
  v17 = sub_10027311C(a1, v13, v16, a4, a5, a6);
  (*(v10 + 8))(v15, a4);
  return v17;
}

uint64_t sub_10027311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v10 = sub_10020A748(&v22);
  (*(*(a4 - 8) + 32))(v10, a2, a4);
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_storage;
  v14 = _swiftEmptyArrayStorage;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 255;
  v21 = 0;
  swift_unknownObjectWeakInit();
  sub_1001F0C48(&qword_10077F4E0);
  v12 = swift_allocObject();
  *(v12 + 120) = 0;
  sub_10027335C(&v14, v12 + 16);
  *(a3 + v11) = v12;
  sub_100273394(a1, a3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request);
  sub_1002733F8(&v22, (a3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_dependencies));
  return a3;
}

uint64_t sub_100273290(uint64_t a1)
{
  *(a1 + 96) = *(v1 + 24);
  result = swift_unknownObjectWeakAssign();
  *(a1 + 81) = 1;
  return result;
}

uint64_t sub_1002732C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100273394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1002733F8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100273410(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100273428(uint64_t a1)
{
  if ((*(a1 + 72) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

uint64_t sub_100273444(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100273458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1002734A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100273508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a3;
  v86 = a5;
  v87 = a4;
  v8 = type metadata accessor for Logger();
  v90 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v77 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v77 - v16;
  __chkstk_darwin(v15);
  v19 = &v77 - v18;
  sub_10027404C();

  v20 = sub_100273F34(a1, a2, 0);
  if (v5)
  {

LABEL_3:
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v79 = v14;
  v80 = v19;
  v23 = v88;
  v22 = v89;
  v78 = v11;
  v84 = v8;
  v85 = a2;
  v83 = a1;
  v24 = v90;
  if (!v20)
  {
    goto LABEL_3;
  }

  v81 = 0;
  v25 = v20;
  v26 = [v20 isProfileValidated];
  v82 = v25;
  if (!v26)
  {
    v27 = v85;
    if (v22[112] == 1 && v87)
    {

      static Logger.daemon.getter();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = v84;
      if (v38)
      {
        v40 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v40 = 136446466;
        *(v40 + 4) = sub_1002346CC(v23, v87, &v91);
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_1002346CC(v83, v85, &v91);
        _os_log_impl(&_mh_execute_header, v36, v37, "Returning overridden distributor ID %{public}s for store-signed app %{public}s", v40, 0x16u);
        swift_arrayDestroy();

        (*(v24 + 8))(v17, v84);
      }

      else
      {

        (*(v24 + 8))(v17, v39);
      }

      goto LABEL_25;
    }

LABEL_13:
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v41;
      v43 = v25;
      v44 = [v42 iTunesMetadata];
      v45 = [v44 distributorInfo];

      v46 = [v45 distributorID];
      if (v46)
      {
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = v83;
        v51 = v83;
        v52 = v79;
LABEL_16:
        v89 = v51;
        static Logger.daemon.getter();

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = v27;
          v56 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v56 = 136446466;
          *(v56 + 4) = sub_1002346CC(v47, v49, &v91);
          *(v56 + 12) = 2082;
          *(v56 + 14) = sub_1002346CC(v50, v55, &v91);
          _os_log_impl(&_mh_execute_header, v53, v54, "Returning authoritative distributor ID %{public}s for app %{public}s", v56, 0x16u);
          swift_arrayDestroy();

          (*(v90 + 8))(v79, v84);
        }

        else
        {

          (*(v90 + 8))(v52, v84);
        }

        v67 = v86;
        goto LABEL_29;
      }
    }

    else
    {
      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      if (v57)
      {
        v58 = v57;
        v89 = v82;
        v59 = [v58 containingBundleRecord];
        if (v59)
        {
          v60 = v59;
          objc_opt_self();
          v61 = swift_dynamicCastObjCClass();
          if (v61)
          {
            v62 = v61;
            v63 = [v61 iTunesMetadata];
            v64 = [v63 distributorInfo];

            v65 = [v64 distributorID];
            if (v65)
            {
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v66;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            v69 = [v62 bundleIdentifier];
            if (v69)
            {
              v70 = v69;
              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();

              v50 = v83;
            }

            else
            {

              v50 = v83;
              v51 = v83;
            }

            v52 = v79;
            if (v49)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    v71 = v78;
    static Logger.daemon.getter();

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v91 = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_1002346CC(v83, v27, &v91);
      _os_log_impl(&_mh_execute_header, v72, v73, "No distributor ID available for app %{public}s", v74, 0xCu);
      sub_10000710C(v75);
    }

    else
    {
    }

    (*(v90 + 8))(v71, v84);
    v68 = 1;
    v67 = v86;
    goto LABEL_42;
  }

  v27 = v85;
  v28 = v87;
  if (!v87)
  {
    goto LABEL_13;
  }

  v29 = v23;

  v30 = v80;
  static Logger.daemon.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v84;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v35 = 136446466;
    *(v35 + 4) = sub_1002346CC(v29, v28, &v91);
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_1002346CC(v83, v85, &v91);
    _os_log_impl(&_mh_execute_header, v31, v32, "Returning overridden distributor ID %{public}s for profile validated app %{public}s", v35, 0x16u);
    swift_arrayDestroy();

    (*(v24 + 8))(v30, v84);
  }

  else
  {

    (*(v24 + 8))(v30, v34);
  }

LABEL_25:

  v67 = v86;
LABEL_29:
  AppDistributorResult.init(distributorID:requestingBundleID:)();

  v68 = 0;
LABEL_42:
  v76 = type metadata accessor for AppDistributorResult();
  return (*(*(v76 - 8) + 56))(v67, v68, 1, v76);
}

id sub_100273F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10027401C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10027404C()
{
  result = qword_10077F5D0;
  if (!qword_10077F5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077F5D0);
  }

  return result;
}

unint64_t sub_100274098()
{
  result = qword_10077F900;
  if (!qword_10077F900)
  {
    type metadata accessor for InternalError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F900);
  }

  return result;
}

double sub_1002740F0()
{
  v1 = 0.0;
  mach_timebase_info(&v1);
  result = v1;
  qword_10077F5D8 = *&v1;
  return result;
}

uint64_t sub_100274154()
{
  sub_1001F0C48(&qword_10077F5E8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_10077F5E0 = result;
  return result;
}

BOOL sub_100274198(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    static Logger.daemon.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_100625FA0();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%@] No hit test info", v8, 0xCu);
      sub_1001F8084(v9);
    }

    (*(v3 + 8))(v5, v2);
  }

  return a1 != 0;
}

void sub_100274320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a4;
  v117 = a5;
  v114 = a2;
  v115 = a3;
  v6 = type metadata accessor for SecureButtonActionRequest.Action();
  v119 = *(v6 - 8);
  v120 = v6;
  __chkstk_darwin(v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureButtonActionRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v121 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v118 = &v106 - v18;
  v19 = __chkstk_darwin(v17);
  v113 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v106 - v22;
  v23 = __chkstk_darwin(v21);
  v111 = &v106 - v24;
  v25 = __chkstk_darwin(v23);
  v110 = &v106 - v26;
  v27 = __chkstk_darwin(v25);
  v109 = &v106 - v28;
  __chkstk_darwin(v27);
  v30 = &v106 - v29;
  static Logger.daemon.getter();
  v31 = *(v10 + 16);
  v122 = v9;
  v31(v12, a1, v9);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v107 = v14;
    v35 = v34;
    v36 = swift_slowAlloc();
    v106 = a1;
    v37 = v36;
    v123[0] = v36;
    *v35 = 136446210;
    SecureButtonActionRequest.action.getter();
    v38 = SecureButtonActionRequest.Action.stringValue.getter();
    v108 = v13;
    v40 = v39;
    (*(v119 + 8))(v8, v120);
    (*(v10 + 8))(v12, v122);
    v41 = sub_1002346CC(v38, v40, v123);
    v13 = v108;

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Authenticating message for request %{public}s", v35, 0xCu);
    sub_10000710C(v37);

    v14 = v107;
  }

  else
  {

    (*(v10 + 8))(v12, v122);
  }

  v42 = *(v14 + 8);
  v42(v30, v13);
  v43 = SecureButtonActionRequest.authenticationMessage.getter();
  if ([v43 originIdentifier]!= 0xC181BADB23D8497BLL)
  {
    goto LABEL_18;
  }

  v44 = [objc_opt_self() sharedInstance];
  v45 = [v44 authenticateMessage:v43];

  if (v45 != 2)
  {
    static Logger.daemon.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v13;
      v63 = swift_slowAlloc();
      *v61 = 138412546;
      v64 = sub_100625FA0();
      *(v61 + 4) = v64;
      *v63 = v64;
      *(v61 + 12) = 2050;
      *(v61 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%@] Authenticated message status is invalid: %{public}ld", v61, 0x16u);
      sub_1001F8084(v63);
      v13 = v62;

      v65 = v43;
    }

    else
    {
      v65 = v59;
      v59 = v43;
    }

    v73 = v121;
    goto LABEL_48;
  }

  v123[0] = v114;
  v123[1] = v115;
  v123[2] = v116;
  v123[3] = v117;
  v46 = BSVersionedPIDForAuditToken();
  if ([v43 versionedPID]!= v46)
  {
    static Logger.daemon.getter();
    v66 = v43;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = v13;
      v71 = swift_slowAlloc();
      *v69 = 138412802;
      v72 = sub_100625FA0();
      *(v69 + 4) = v72;
      *v71 = v72;
      *(v69 + 12) = 2050;
      *(v69 + 14) = v46;
      *(v69 + 22) = 2050;
      *(v69 + 24) = [v66 versionedPID];

      _os_log_impl(&_mh_execute_header, v67, v68, "[%@] Authenticated message vpid mismatch. Got %{public}lld, expected %{public}lld", v69, 0x20u);
      sub_1001F8084(v71);
      v13 = v70;
    }

    else
    {

      v67 = v66;
    }

    v73 = v118;
    goto LABEL_48;
  }

  v47 = mach_continuous_time();
  v48 = [v43 timestamp];
  v49 = v47 > v48;
  v50 = v47 - v48;
  if (!v49)
  {
    static Logger.daemon.getter();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v77 = swift_slowAlloc();
      v78 = v13;
      v79 = swift_slowAlloc();
      *v77 = 138412546;
      v80 = sub_100625FA0();
      *(v77 + 4) = v80;
      *v79 = v80;
      *(v77 + 12) = 2050;
      *(v77 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v74, v75, "[%@] Invalid message timestamp %{public}llu", v77, 0x16u);
      sub_1001F8084(v79);
      v13 = v78;

      v81 = v43;
    }

    else
    {
      v81 = v74;
      v74 = v43;
    }

    v73 = v113;
LABEL_48:
    v42(v73, v13);
    return;
  }

  if (qword_10077E4F8 != -1)
  {
    swift_once();
  }

  v51 = off_10077F5E0;
  os_unfair_lock_lock(off_10077F5E0 + 6);
  v52 = *(v51 + 2);
  os_unfair_lock_unlock(v51 + 6);
  if (v52 >= v48)
  {
    static Logger.daemon.getter();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = sub_100625FA0();
      *(v84 + 4) = v86;
      *v85 = v86;
      _os_log_impl(&_mh_execute_header, v82, v83, "[%@] Invalid message timestamp, possible replay", v84, 0xCu);
      sub_1001F8084(v85);

      v87 = v43;
    }

    else
    {
      v87 = v82;
      v82 = v43;
    }

    v73 = v112;
    goto LABEL_48;
  }

  os_unfair_lock_lock(v51 + 6);
  *(v51 + 2) = v48;
  os_unfair_lock_unlock(v51 + 6);
  if (qword_10077E4F0 != -1)
  {
    swift_once();
  }

  if (is_mul_ok(v50, qword_10077F5D8))
  {
    LODWORD(v53) = HIDWORD(qword_10077F5D8);
    v54 = (v50 * qword_10077F5D8) / v53 / 1000000000.0;
    if (v54 >= 3.0)
    {
      static Logger.daemon.getter();
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412546;
        v92 = sub_100625FA0();
        *(v90 + 4) = v92;
        *v91 = v92;
        *(v90 + 12) = 2050;
        *(v90 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v88, v89, "[%@] Message is too old: %{public}f", v90, 0x16u);
        sub_1001F8084(v91);

        v93 = v43;
      }

      else
      {
        v93 = v88;
        v88 = v43;
      }

      v73 = v111;
      goto LABEL_48;
    }

    v55 = [v43 hitTestInformationFromStartEvent];
    v56 = sub_100274198(v55);

    if (!v56)
    {
      static Logger.daemon.getter();
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v96 = 138412290;
        v98 = sub_100625FA0();
        *(v96 + 4) = v98;
        *v97 = v98;
        _os_log_impl(&_mh_execute_header, v94, v95, "[%@] Start event hit test info is invalid", v96, 0xCu);
        sub_1001F8084(v97);

        v99 = v43;
      }

      else
      {
        v99 = v94;
        v94 = v43;
      }

      v73 = v110;
      goto LABEL_48;
    }

    v57 = [v43 hitTestInformationFromEndEvent];
    v58 = sub_100274198(v57);

    if (!v58)
    {
      static Logger.daemon.getter();
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = 138412290;
        v104 = sub_100625FA0();
        *(v102 + 4) = v104;
        *v103 = v104;
        _os_log_impl(&_mh_execute_header, v100, v101, "[%@] End event hit test info is invalid", v102, 0xCu);
        sub_1001F8084(v103);

        v105 = v43;
      }

      else
      {
        v105 = v100;
        v100 = v43;
      }

      v73 = v109;
      goto LABEL_48;
    }

LABEL_18:

    return;
  }

  __break(1u);
}

void *sub_100274FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = sub_1001F0C48(&unk_1007843E0);
  LOWORD(v15) = 283;
  v17 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  *(&v15 + 1) = &off_100757D08;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v15, inited + 32);
  v7 = sub_1002751D8(a1, a2, a3);
  v13 = sub_1001F0C48(&qword_10077F608);
  LOBYTE(v12) = 1;
  v14 = sub_100213FA0(&qword_10077F610, &qword_10077F608);
  *(&v12 + 1) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10069E680;
  sub_100236238(&v12, v8 + 32);
  sub_1001F0C48(&unk_1007843F0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10069F6E0;
  *(v9 + 32) = inited;
  *(v9 + 40) = v8;
  v10 = sub_1005AE994(v9);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v10;
}

void *sub_1002751D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&qword_10077F5F8);
  v23 = v6;
  v24 = sub_100213FA0(&qword_10077F600, &qword_10077F5F8);
  v7 = sub_10020A748(&v22);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
  *v7 = 9;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v22, inited + 32);
  if (a3)
  {
    v11 = sub_100275464(a2, a3);
    v20 = sub_1001F0C48(&qword_10077F608);
    LOBYTE(v19) = 0;
    v21 = sub_100213FA0(&qword_10077F610, &qword_10077F608);
    *(&v19 + 1) = v11;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_10069E680;
    sub_100236238(&v19, v12 + 32);
    sub_1001F0C48(&unk_1007843F0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10069E680;
    *(v13 + 32) = v12;
    v14 = v13 + 32;
    v15 = sub_1005AE994(v13);
    swift_setDeallocating();
    sub_1000032A8(v14, &qword_10077FA00);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  sub_1001F0C48(&unk_1007843F0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10069F6E0;
  *(v16 + 32) = inited;
  *(v16 + 40) = v15;
  v17 = sub_1005AE994(v16);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v17;
}

void *sub_100275464(uint64_t a1, uint64_t a2)
{
  v14 = sub_1001F0C48(&qword_10077F618);
  v15 = sub_100213FA0(&qword_10077F620, &qword_10077F618);
  LOBYTE(v13) = 9;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v13, inited + 32);
  v11 = sub_1001F0C48(&unk_10077FDB0);
  v12 = sub_100213FA0(&unk_1007843D0, &unk_10077FDB0);
  LOWORD(v9) = 5;
  *(&v9 + 1) = a1;
  v10 = a2;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10069E680;
  sub_100236238(&v9, v5 + 32);
  sub_1001F0C48(&unk_1007843F0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10069F6E0;
  *(v6 + 32) = inited;
  *(v6 + 40) = v5;

  v7 = sub_1005AE994(v6);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v7;
}

void *sub_100275634(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077F5F8);
  v12 = v2;
  v13 = sub_100213FA0(&qword_10077F600, &qword_10077F5F8);
  v3 = sub_10020A748(&v11);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 16))(v3 + v4, a1, v5);
  *v3 = 14;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v11, inited + 32);
  sub_1001F0C48(&unk_1007843F0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10069E680;
  *(v7 + 32) = inited;
  v8 = v7 + 32;
  v9 = sub_1005AE994(v7);
  swift_setDeallocating();
  sub_1000032A8(v8, &qword_10077FA00);
  return v9;
}

void sub_1002757A0(void **a1, void *a2)
{
  v61 = type metadata accessor for Logger();
  v4 = *(v61 - 8);
  __chkstk_darwin(v61);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v7 - 8);
  v9 = &v51[-v8];
  v10 = *a1;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v12 = sub_100235740(&v68, v10, v11);
  v14 = v13;
  if (*(&v69 + 1))
  {
    sub_10000710C(&v68);
  }

  v15 = *(v14 + 16);

  v16 = v12;
  if (v15)
  {
    type metadata accessor for AppInstallEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = (v4 + 8);
    v17 = 4;
    *&v18 = 138413314;
    v52 = v18;
    v58 = v14;
    v59 = a2;
    v56 = v16;
    v57 = v9;
    v67 = v6;
    while (1)
    {
      v19 = [objc_allocWithZone(ObjCClassFromMetadata) initWithPersistentID:*(v14 + 8 * v17) onConnection:v16];
      if (([v19 existsInDatabase] & 1) == 0)
      {

        goto LABEL_46;
      }

      v71 = v17;
      v20 = sub_100535D44(22, v19);
      v22 = v21 ? v20 : 16718;
      v63 = v22;
      v23 = v21 ? v21 : 0xE200000000000000;
      v24 = sub_100535D44(5, v19);
      v26 = v25 ? v24 : 16718;
      v64 = v26;
      v27 = v25 ? v25 : 0xE200000000000000;
      v28 = sub_100535ED0(27, v19);
      v29 = v28 == 8 ? 0 : v28;
      v65 = v29;
      sub_100535A10(v19, v9);
      v30 = type metadata accessor for UUID();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v9, 1, v30) == 1)
      {
        sub_1000032A8(v9, &unk_100780A00);
        v32 = 0xE200000000000000;
        v62 = 16718;
      }

      else
      {
        v62 = UUID.uuidString.getter();
        v33 = v9;
        v32 = v34;
        (*(v31 + 8))(v33, v30);
      }

      v35 = v67;
      static Logger.install.getter();
      v36 = a2;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v66 = v38;
      v39 = v38;
      v40 = v37;
      if (os_log_type_enabled(v37, v39))
      {
        break;
      }

      (*v55)(v35, v61);
      v9 = v57;
      v14 = v58;
LABEL_6:
      v17 = v71 + 1;
      sub_100235C9C(v19);

      a2 = v59;
      v16 = v56;
      if ((v17 - 4) >= *(v14 + 16))
      {
        goto LABEL_44;
      }
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v42;
    *&v68 = v53;
    *v41 = v52;
    *(v41 + 4) = v36;
    *v42 = a2;
    *(v41 + 12) = 2082;
    v43 = v36;
    v44 = sub_1002346CC(v63, v23, &v68);

    *(v41 + 14) = v44;
    *(v41 + 22) = 2082;
    v45 = sub_1002346CC(v64, v27, &v68);

    *(v41 + 24) = v45;
    *(v41 + 32) = 2080;
    v46 = sub_1002346CC(v62, v32, &v68);

    *(v41 + 34) = v46;
    *(v41 + 42) = 2080;
    if (v65 <= 3u)
    {
      v9 = v57;
      if (v65 > 1u)
      {
        v14 = v58;
        if (v65 == 2)
        {
          v47 = 0xE700000000000000;
          v48 = 0x6C6C6174736E69;
        }

        else
        {
          v47 = 0xE900000000000065;
          v48 = 0x6C626D6174736F70;
        }
      }

      else
      {
        v14 = v58;
        v47 = 0xE800000000000000;
        if (v65)
        {
          v48 = 0x64616F6C6E776F64;
        }

        else
        {
          v48 = 0x656C626D61657270;
        }
      }

      goto LABEL_43;
    }

    v9 = v57;
    if (v65 > 5u)
    {
      v14 = v58;
      if (v65 == 6)
      {
        v47 = 0xE800000000000000;
        v48 = 0x64656873696E6966;
        goto LABEL_43;
      }

      v47 = 0xE600000000000000;
      v49 = 1818845542;
    }

    else
    {
      v14 = v58;
      if (v65 == 4)
      {
        v48 = 0x656C6C65636E6163;
        v47 = 0xE900000000000064;
LABEL_43:
        v50 = sub_1002346CC(v48, v47, &v68);

        *(v41 + 44) = v50;
        _os_log_impl(&_mh_execute_header, v40, v66, "[%@] Removing stale install with logKey: %{public}s bundleID: %{public}s coordinatorID: %s phase: %s", v41, 0x34u);
        sub_1000032A8(v54, &qword_10077F920);

        swift_arrayDestroy();

        (*v55)(v67, v61);
        goto LABEL_6;
      }

      v47 = 0xE600000000000000;
      v49 = 1937072496;
    }

    v48 = v49 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    goto LABEL_43;
  }

LABEL_44:

  v19 = v16;
LABEL_46:
}

void *sub_100275E34()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F6E0;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_100275F84;
  v1[3] = 0;
  v1[4] = 0x74736E695F707061;
  v1[5] = 0xEB000000006C6C61;
  *(inited + 96) = &type metadata for SQLiteTable;
  *(inited + 104) = &off_10076CDE8;
  v2 = swift_allocObject();
  *(inited + 72) = v2;
  v2[2] = sub_100277938;
  v2[3] = 0;
  v2[4] = 0x6B6361705F707061;
  v2[5] = 0xEB00000000656761;
  v3 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  return v3;
}

void *sub_100275F84()
{
  v294[0] = 0x5F746E756F636361;
  v294[1] = 0xEA00000000006469;
  v294[2] = 0x52454745544E49;
  v294[3] = 0xE700000000000000;
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v298 = 1;
  v289[0] = 0x697461725F656761;
  v289[1] = 0xEA0000000000676ELL;
  v289[2] = 0x52454745544E49;
  v289[3] = 0xE700000000000000;
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v293 = 1;
  strcpy(v282, "apple_item_id");
  v282[7] = -4864;
  v283 = 0x52454745544E49;
  v284 = 0xE700000000000000;
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v288 = 1;
  v277[0] = 0xD000000000000010;
  v277[1] = 0x80000001006C29B0;
  v277[2] = 0x52454745544E49;
  v277[3] = 0xE700000000000000;
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  v281 = 1;
  v272[0] = 0x5F6B726F77747261;
  v272[1] = 0xEB000000006C7275;
  v0 = 0xE400000000000000;
  v272[2] = 1112493122;
  v272[3] = 0xE400000000000000;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  v276 = 1;
  v267[0] = 0x695F656C646E7562;
  v267[1] = 0xE900000000000064;
  v267[2] = 1415071060;
  v267[3] = 0xE400000000000000;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v271 = 1;
  v262[0] = 0x6E5F656C646E7562;
  v262[1] = 0xEB00000000656D61;
  v262[2] = 1415071060;
  v262[3] = 0xE400000000000000;
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 1;
  strcpy(v255, "bundle_version");
  v255[15] = -18;
  v256 = 1415071060;
  v257 = 0xE400000000000000;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 1;
  v250[0] = 0x695F746E65696C63;
  v250[1] = 0xE900000000000064;
  v250[2] = 1415071060;
  v250[3] = 0xE400000000000000;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 1;
  strcpy(v243, "coordinator_id");
  v243[15] = -18;
  v244 = 1145656661;
  v245 = 0xE400000000000000;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v249 = 1;
  v238[0] = 0xD000000000000016;
  v238[1] = 0x80000001006C2A10;
  v238[2] = 1415071060;
  v238[3] = 0xE400000000000000;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 1;
  strcpy(v231, "failure_error");
  v231[7] = -4864;
  v232 = 1112493122;
  v233 = 0xE400000000000000;
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 1;
  v226[0] = 0xD00000000000001ELL;
  v226[1] = 0x80000001006C2A40;
  v226[2] = 0x52454745544E49;
  v226[3] = 0xE700000000000000;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 1;
  v221[0] = 0xD000000000000016;
  v221[1] = 0x80000001006C2A60;
  v221[2] = 0x52454745544E49;
  v221[3] = 0xE700000000000000;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 1;
  v216[0] = 0x5F6C6C6174736E69;
  v216[1] = 0xEA00000000006469;
  v216[2] = 1145656661;
  v216[3] = 0xE400000000000000;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 1;
  strcpy(v209, "install_path");
  HIBYTE(v209[6]) = 0;
  v209[7] = -5120;
  v210 = 1415071060;
  v211 = 0xE400000000000000;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 1;
  strcpy(v202, "install_type");
  HIBYTE(v202[6]) = 0;
  v202[7] = -5120;
  v203 = 0x52454745544E49;
  v204 = 0xE700000000000000;
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 1;
  v197[0] = 0x746E65746E69;
  v197[1] = 0xE600000000000000;
  v1 = swift_dynamicCastMetatype();
  v2 = 0uLL;
  v3 = 1415071060;
  if (!v1)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v0 = 0xE700000000000000;
      v3 = 0x52454745544E49;
    }

    else
    {
      v3 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v3 = 1145656661;
        }

        else
        {
          v3 = 1112493122;
        }
      }
    }

    v2 = 0uLL;
  }

  v197[2] = v3;
  v197[3] = v0;
  v198 = v2;
  v199 = v2;
  v200 = v2;
  v201 = 1;
  v191[0] = 0xD000000000000016;
  v191[1] = 0x80000001006C2AB0;
  v191[2] = 0x52454745544E49;
  v191[3] = 0xE700000000000000;
  v193 = &type metadata for Bool;
  v194 = &protocol witness table for Bool;
  v195 = &protocol witness table for Bool;
  v192 = 0;
  v196 = 1;
  v186[0] = 0xD000000000000014;
  v186[1] = 0x80000001006C2B10;
  v4 = swift_dynamicCastMetatype();
  v5 = 0xE400000000000000;
  v6 = 1415071060;
  v7 = 0xE400000000000000;
  if (!v4)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v7 = 0xE700000000000000;
      v6 = 0x52454745544E49;
    }

    else
    {
      v6 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v6 = 1145656661;
        }

        else
        {
          v6 = 1112493122;
        }
      }

      v7 = 0xE400000000000000;
    }
  }

  v186[2] = v6;
  v186[3] = v7;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 1;
  v181[0] = 0xD000000000000014;
  v181[1] = 0x80000001006C2B30;
  v181[2] = 1112493122;
  v181[3] = 0xE400000000000000;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 1;
  v175[0] = 0xD000000000000014;
  v175[1] = 0x80000001006C2AD0;
  v175[2] = 0x52454745544E49;
  v175[3] = 0xE700000000000000;
  v177 = &type metadata for Bool;
  v178 = &protocol witness table for Bool;
  v179 = &protocol witness table for Bool;
  v176 = 0;
  v180 = 1;
  v170[0] = 0x74616470755F7369;
  v170[1] = 0xE900000000000065;
  v170[2] = 0x52454745544E49;
  v170[3] = 0xE700000000000000;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 1;
  v165[0] = 0xD000000000000011;
  v165[1] = 0x80000001006C2AF0;
  v165[2] = 0x52454745544E49;
  v165[3] = 0xE700000000000000;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 1;
  v160[0] = 0x79656B5F676F6CLL;
  v160[1] = 0xE700000000000000;
  type metadata accessor for LogKey();
  v8 = swift_dynamicCastMetatype();
  v9 = 0uLL;
  v10 = 1415071060;
  if (!v8)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v5 = 0xE700000000000000;
      v10 = 0x52454745544E49;
    }

    else
    {
      v10 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v10 = 1145656661;
        }

        else
        {
          v10 = 1112493122;
        }
      }
    }

    v9 = 0uLL;
  }

  v160[2] = v10;
  v160[3] = v5;
  v161 = v9;
  v162 = v9;
  v163 = v9;
  v164 = 1;
  v155[0] = 0xD000000000000010;
  v155[1] = 0x80000001006C2B50;
  v11 = 0xE400000000000000;
  v155[2] = 1112493122;
  v155[3] = 0xE400000000000000;
  v156 = v9;
  v157 = v9;
  v158 = v9;
  v159 = 1;
  v150[0] = 0x616E6F73726570;
  v150[1] = 0xE700000000000000;
  v12 = 1415071060;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v11 = 0xE700000000000000;
      v12 = 0x52454745544E49;
    }

    else
    {
      v12 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v12 = 1145656661;
        }

        else
        {
          v12 = 1112493122;
        }
      }
    }
  }

  v150[2] = v12;
  v150[3] = v11;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 1;
  v145[0] = 0x6573616870;
  v145[1] = 0xE500000000000000;
  v13 = swift_dynamicCastMetatype();
  v14 = 0uLL;
  v15 = 0xE400000000000000;
  v16 = 1415071060;
  v17 = 0xE400000000000000;
  if (!v13)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v17 = 0xE700000000000000;
      v16 = 0x52454745544E49;
    }

    else
    {
      v16 = 1279346002;
      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v16 = 1145656661;
        }

        else
        {
          v16 = 1112493122;
        }

        v17 = 0xE400000000000000;
      }
    }

    v14 = 0uLL;
  }

  v145[2] = v16;
  v145[3] = v17;
  v146 = v14;
  v147 = v14;
  v148 = v14;
  v149 = 1;
  v140[0] = 0x6C6F686563616C70;
  v140[1] = 0xEF6C72755F726564;
  v140[2] = 1112493122;
  v140[3] = 0xE400000000000000;
  v141 = v14;
  v142 = v14;
  v143 = v14;
  v144 = 1;
  v135[0] = 0x6D726F6674616C70;
  v135[1] = 0xE800000000000000;
  v135[2] = 1112493122;
  v135[3] = 0xE400000000000000;
  v136 = v14;
  v137 = v14;
  v138 = v14;
  v139 = 1;
  v130[0] = 0xD000000000000015;
  v130[1] = 0x80000001006C2B90;
  v130[2] = 1112493122;
  v130[3] = 0xE400000000000000;
  v131 = v14;
  v132 = v14;
  v133 = v14;
  v134 = 1;
  v125[0] = 0x797469726F697270;
  v125[1] = 0xE800000000000000;
  v18 = 1415071060;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v15 = 0xE700000000000000;
      v18 = 0x52454745544E49;
    }

    else
    {
      v18 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v18 = 1145656661;
        }

        else
        {
          v18 = 1112493122;
        }
      }
    }
  }

  v125[2] = v18;
  v125[3] = v15;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 1;
  v120[0] = 0xD00000000000001ALL;
  v120[1] = 0x80000001006C2BB0;
  v19 = 0xE400000000000000;
  v120[2] = 1415071060;
  v120[3] = 0xE400000000000000;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 1;
  v115[0] = 0x74706965636572;
  v115[1] = 0xE700000000000000;
  v115[2] = 1112493122;
  v115[3] = 0xE400000000000000;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 1;
  v110[0] = 0x656372756F73;
  v110[1] = 0xE600000000000000;
  v20 = swift_dynamicCastMetatype();
  v21 = 0uLL;
  v22 = 1415071060;
  v23 = 0xE400000000000000;
  if (!v20)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v23 = 0xE700000000000000;
      v22 = 0x52454745544E49;
    }

    else
    {
      v22 = 1279346002;
      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v22 = 1145656661;
        }

        else
        {
          v22 = 1112493122;
        }

        v23 = 0xE400000000000000;
      }
    }

    v21 = 0uLL;
  }

  v110[2] = v22;
  v110[3] = v23;
  v111 = v21;
  v112 = v21;
  v113 = v21;
  v114 = 1;
  strcpy(v103, "store_metadata");
  v103[15] = -18;
  v104 = 1112493122;
  v105 = 0xE400000000000000;
  v106 = v21;
  v107 = v21;
  v108 = v21;
  v109 = 1;
  v98[0] = 0x6F745F7469647561;
  v98[1] = 0xEB000000006E656BLL;
  v98[2] = 1112493122;
  v98[3] = 0xE400000000000000;
  v99 = v21;
  v100 = v21;
  v101 = v21;
  v102 = 1;
  strcpy(v91, "developer_id");
  HIBYTE(v91[6]) = 0;
  v91[7] = -5120;
  v92 = 1415071060;
  v93 = 0xE400000000000000;
  v94 = v21;
  v95 = v21;
  v96 = v21;
  v97 = 1;
  v86[0] = 0x7562697274736964;
  v86[1] = 0xEB00000000726F74;
  v24 = 1415071060;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v19 = 0xE700000000000000;
      v24 = 0x52454745544E49;
    }

    else
    {
      v24 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v24 = 1145656661;
        }

        else
        {
          v24 = 1112493122;
        }
      }
    }
  }

  v86[2] = v24;
  v86[3] = v19;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 1;
  v81[0] = 0xD000000000000016;
  v81[1] = 0x80000001006C2C10;
  v81[2] = 1415071060;
  v81[3] = 0xE400000000000000;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 1;
  strcpy(v73, "is_marketplace");
  v73[15] = -18;
  v74 = 0x52454745544E49;
  v75 = 0xE700000000000000;
  v77 = &type metadata for Bool;
  v78 = &protocol witness table for Bool;
  v79 = &protocol witness table for Bool;
  v76 = 0;
  v80 = 1;
  v25._countAndFlagsBits = 2019846495;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 2019846495;
  v26._object = 0xE400000000000000;
  String.append(_:)(v26);
  sub_1001F0C48(&unk_100786ED0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006A00A0;
  *(v27 + 56) = &type metadata for SQLiteColumn;
  *(v27 + 64) = &off_10076CDE0;
  v28 = swift_allocObject();
  *(v27 + 32) = v28;
  sub_1002783D8(v294, v28 + 16);
  *(v27 + 96) = &type metadata for SQLiteColumn;
  *(v27 + 104) = &off_10076CDE0;
  v29 = swift_allocObject();
  *(v27 + 72) = v29;
  sub_1002783D8(v289, v29 + 16);
  *(v27 + 136) = &type metadata for SQLiteColumn;
  *(v27 + 144) = &off_10076CDE0;
  v30 = swift_allocObject();
  *(v27 + 112) = v30;
  sub_1002783D8(v282, v30 + 16);
  *(v27 + 176) = &type metadata for SQLiteColumn;
  *(v27 + 184) = &off_10076CDE0;
  v31 = swift_allocObject();
  *(v27 + 152) = v31;
  sub_1002783D8(v277, v31 + 16);
  *(v27 + 216) = &type metadata for SQLiteColumn;
  *(v27 + 224) = &off_10076CDE0;
  v32 = swift_allocObject();
  *(v27 + 192) = v32;
  sub_1002783D8(v272, v32 + 16);
  *(v27 + 256) = &type metadata for SQLiteColumn;
  *(v27 + 264) = &off_10076CDE0;
  v33 = swift_allocObject();
  *(v27 + 232) = v33;
  sub_1002783D8(v267, v33 + 16);
  *(v27 + 296) = &type metadata for SQLiteColumn;
  *(v27 + 304) = &off_10076CDE0;
  v34 = swift_allocObject();
  *(v27 + 272) = v34;
  sub_1002783D8(v262, v34 + 16);
  *(v27 + 336) = &type metadata for SQLiteColumn;
  *(v27 + 344) = &off_10076CDE0;
  v35 = swift_allocObject();
  *(v27 + 312) = v35;
  sub_1002783D8(v255, v35 + 16);
  *(v27 + 376) = &type metadata for SQLiteColumn;
  *(v27 + 384) = &off_10076CDE0;
  v36 = swift_allocObject();
  *(v27 + 352) = v36;
  sub_1002783D8(v250, v36 + 16);
  *(v27 + 416) = &type metadata for SQLiteColumn;
  *(v27 + 424) = &off_10076CDE0;
  v37 = swift_allocObject();
  *(v27 + 392) = v37;
  sub_1002783D8(v243, v37 + 16);
  *(v27 + 456) = &type metadata for SQLiteColumn;
  *(v27 + 464) = &off_10076CDE0;
  v38 = swift_allocObject();
  *(v27 + 432) = v38;
  sub_1002783D8(v238, v38 + 16);
  *(v27 + 496) = &type metadata for SQLiteColumn;
  *(v27 + 504) = &off_10076CDE0;
  v39 = swift_allocObject();
  *(v27 + 472) = v39;
  sub_1002783D8(v231, v39 + 16);
  *(v27 + 536) = &type metadata for SQLiteColumn;
  *(v27 + 544) = &off_10076CDE0;
  v40 = swift_allocObject();
  *(v27 + 512) = v40;
  sub_1002783D8(v226, v40 + 16);
  *(v27 + 576) = &type metadata for SQLiteColumn;
  *(v27 + 584) = &off_10076CDE0;
  v41 = swift_allocObject();
  *(v27 + 552) = v41;
  sub_1002783D8(v221, v41 + 16);
  *(v27 + 616) = &type metadata for SQLiteColumn;
  *(v27 + 624) = &off_10076CDE0;
  v42 = swift_allocObject();
  *(v27 + 592) = v42;
  sub_1002783D8(v216, v42 + 16);
  *(v27 + 656) = &type metadata for SQLiteColumn;
  *(v27 + 664) = &off_10076CDE0;
  v43 = swift_allocObject();
  *(v27 + 632) = v43;
  sub_1002783D8(v209, v43 + 16);
  *(v27 + 696) = &type metadata for SQLiteColumn;
  *(v27 + 704) = &off_10076CDE0;
  v44 = swift_allocObject();
  *(v27 + 672) = v44;
  sub_1002783D8(v202, v44 + 16);
  *(v27 + 736) = &type metadata for SQLiteColumn;
  *(v27 + 744) = &off_10076CDE0;
  v45 = swift_allocObject();
  *(v27 + 712) = v45;
  sub_1002783D8(v197, v45 + 16);
  *(v27 + 776) = &type metadata for SQLiteColumn;
  *(v27 + 784) = &off_10076CDE0;
  v46 = swift_allocObject();
  *(v27 + 752) = v46;
  sub_1002783D8(v191, v46 + 16);
  *(v27 + 816) = &type metadata for SQLiteColumn;
  *(v27 + 824) = &off_10076CDE0;
  v47 = swift_allocObject();
  *(v27 + 792) = v47;
  sub_1002783D8(v186, v47 + 16);
  *(v27 + 856) = &type metadata for SQLiteColumn;
  *(v27 + 864) = &off_10076CDE0;
  v48 = swift_allocObject();
  *(v27 + 832) = v48;
  sub_1002783D8(v181, v48 + 16);
  *(v27 + 896) = &type metadata for SQLiteColumn;
  *(v27 + 904) = &off_10076CDE0;
  v49 = swift_allocObject();
  *(v27 + 872) = v49;
  sub_1002783D8(v175, v49 + 16);
  *(v27 + 936) = &type metadata for SQLiteColumn;
  *(v27 + 944) = &off_10076CDE0;
  v50 = swift_allocObject();
  *(v27 + 912) = v50;
  sub_1002783D8(v170, v50 + 16);
  *(v27 + 976) = &type metadata for SQLiteColumn;
  *(v27 + 984) = &off_10076CDE0;
  v51 = swift_allocObject();
  *(v27 + 952) = v51;
  sub_1002783D8(v165, v51 + 16);
  *(v27 + 1016) = &type metadata for SQLiteColumn;
  *(v27 + 1024) = &off_10076CDE0;
  v52 = swift_allocObject();
  *(v27 + 992) = v52;
  sub_1002783D8(v160, v52 + 16);
  *(v27 + 1056) = &type metadata for SQLiteColumn;
  *(v27 + 1064) = &off_10076CDE0;
  v53 = swift_allocObject();
  *(v27 + 1032) = v53;
  sub_1002783D8(v155, v53 + 16);
  *(v27 + 1096) = &type metadata for SQLiteColumn;
  *(v27 + 1104) = &off_10076CDE0;
  v54 = swift_allocObject();
  *(v27 + 1072) = v54;
  sub_1002783D8(v150, v54 + 16);
  *(v27 + 1136) = &type metadata for SQLiteColumn;
  *(v27 + 1144) = &off_10076CDE0;
  v55 = swift_allocObject();
  *(v27 + 1112) = v55;
  sub_1002783D8(v145, v55 + 16);
  *(v27 + 1176) = &type metadata for SQLiteColumn;
  *(v27 + 1184) = &off_10076CDE0;
  v56 = swift_allocObject();
  *(v27 + 1152) = v56;
  sub_1002783D8(v140, v56 + 16);
  *(v27 + 1216) = &type metadata for SQLiteColumn;
  *(v27 + 1224) = &off_10076CDE0;
  v57 = swift_allocObject();
  *(v27 + 1192) = v57;
  sub_1002783D8(v135, v57 + 16);
  *(v27 + 1256) = &type metadata for SQLiteColumn;
  *(v27 + 1264) = &off_10076CDE0;
  v58 = swift_allocObject();
  *(v27 + 1232) = v58;
  sub_1002783D8(v130, v58 + 16);
  *(v27 + 1296) = &type metadata for SQLiteColumn;
  *(v27 + 1304) = &off_10076CDE0;
  v59 = swift_allocObject();
  *(v27 + 1272) = v59;
  sub_1002783D8(v125, v59 + 16);
  *(v27 + 1336) = &type metadata for SQLiteColumn;
  *(v27 + 1344) = &off_10076CDE0;
  v60 = swift_allocObject();
  *(v27 + 1312) = v60;
  sub_1002783D8(v120, v60 + 16);
  *(v27 + 1376) = &type metadata for SQLiteColumn;
  *(v27 + 1384) = &off_10076CDE0;
  v61 = swift_allocObject();
  *(v27 + 1352) = v61;
  sub_1002783D8(v115, v61 + 16);
  *(v27 + 1416) = &type metadata for SQLiteColumn;
  *(v27 + 1424) = &off_10076CDE0;
  v62 = swift_allocObject();
  *(v27 + 1392) = v62;
  sub_1002783D8(v110, v62 + 16);
  *(v27 + 1456) = &type metadata for SQLiteColumn;
  *(v27 + 1464) = &off_10076CDE0;
  v63 = swift_allocObject();
  *(v27 + 1432) = v63;
  sub_1002783D8(v103, v63 + 16);
  *(v27 + 1496) = &type metadata for SQLiteColumn;
  *(v27 + 1504) = &off_10076CDE0;
  v64 = swift_allocObject();
  *(v27 + 1472) = v64;
  sub_1002783D8(v98, v64 + 16);
  *(v27 + 1536) = &type metadata for SQLiteColumn;
  *(v27 + 1544) = &off_10076CDE0;
  v65 = swift_allocObject();
  *(v27 + 1512) = v65;
  sub_1002783D8(v91, v65 + 16);
  *(v27 + 1576) = &type metadata for SQLiteColumn;
  *(v27 + 1584) = &off_10076CDE0;
  v66 = swift_allocObject();
  *(v27 + 1552) = v66;
  sub_1002783D8(v86, v66 + 16);
  *(v27 + 1616) = &type metadata for SQLiteColumn;
  *(v27 + 1624) = &off_10076CDE0;
  v67 = swift_allocObject();
  *(v27 + 1592) = v67;
  sub_1002783D8(v81, v67 + 16);
  *(v27 + 1656) = &type metadata for SQLiteColumn;
  *(v27 + 1664) = &off_10076CDE0;
  v68 = swift_allocObject();
  *(v27 + 1632) = v68;
  sub_1002783D8(v73, v68 + 16);
  *(v27 + 1696) = &type metadata for SQLiteIndex;
  *(v27 + 1704) = &off_10076CDD8;
  v69 = swift_allocObject();
  *(v27 + 1672) = v69;
  *(v69 + 16) = 0x695F656C646E7562;
  *(v69 + 24) = 0xE900000000000064;
  *(v69 + 32) = 0x695F656C646E7562;
  *(v69 + 40) = 0xE900000000000064;
  *(v69 + 48) = 1;
  *(v27 + 1736) = &type metadata for SQLiteIndex;
  *(v27 + 1744) = &off_10076CDD8;
  v70 = swift_allocObject();
  *(v27 + 1712) = v70;
  *(v70 + 16) = 0xD000000000000016;
  *(v70 + 24) = 0x80000001006C2A10;
  *(v70 + 32) = 0xD000000000000016;
  *(v70 + 40) = 0x80000001006C2A10;
  *(v70 + 48) = 1;
  v71 = sub_1005A83A0(v27);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100278434(v81);
  sub_100278434(v86);
  sub_100278434(v91);
  sub_100278434(v98);
  sub_100278434(v103);
  sub_100278434(v110);
  sub_100278434(v115);
  sub_100278434(v120);
  sub_100278434(v125);
  sub_100278434(v130);
  sub_100278434(v135);
  sub_100278434(v140);
  sub_100278434(v145);
  sub_100278434(v150);
  sub_100278434(v155);
  sub_100278434(v160);
  sub_100278434(v165);
  sub_100278434(v170);
  sub_100278434(v181);
  sub_100278434(v186);
  sub_100278434(v197);
  sub_100278434(v202);
  sub_100278434(v209);
  sub_100278434(v216);
  sub_100278434(v221);
  sub_100278434(v226);
  sub_100278434(v231);
  sub_100278434(v238);
  sub_100278434(v243);
  sub_100278434(v250);
  sub_100278434(v255);
  sub_100278434(v262);
  sub_100278434(v267);
  sub_100278434(v272);
  sub_100278434(v277);
  sub_100278434(v282);
  sub_100278434(v289);
  sub_100278434(v294);
  sub_100278434(v73);
  sub_100278434(v175);
  sub_100278434(v191);
  return v71;
}

void *sub_100277938()
{
  strcpy(v120, "bytes_offset");
  HIBYTE(v120[6]) = 0;
  v120[7] = -5120;
  v121 = 0x52454745544E49;
  v122 = 0xE700000000000000;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 1;
  strcpy(v113, "cipher_digest");
  v113[7] = -4864;
  v0 = 0xE400000000000000;
  v114 = 1112493122;
  v115 = 0xE400000000000000;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 1;
  v108[0] = 0x73736572706D6F63;
  v108[1] = 0xEF657A69735F6465;
  v108[2] = 0x52454745544E49;
  v108[3] = 0xE700000000000000;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 1;
  v103[0] = 0x6F72705F61746164;
  v103[1] = 0xEF64695F6573696DLL;
  v103[2] = 1415071060;
  v103[3] = 0xE400000000000000;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 1;
  v98[0] = 0x747365676964;
  v98[1] = 0xE600000000000000;
  v98[2] = 1112493122;
  v98[3] = 0xE400000000000000;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 1;
  strcpy(v91, "disk_location");
  v91[7] = -4864;
  v92 = 1415071060;
  v93 = 0xE400000000000000;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 1;
  v86[0] = 0x6974707972636E65;
  v86[1] = 0xEA00000000006E6FLL;
  v1 = swift_dynamicCastMetatype();
  v2 = 0uLL;
  v3 = 1415071060;
  if (!v1)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v0 = 0xE700000000000000;
      v3 = 0x52454745544E49;
    }

    else
    {
      v3 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v3 = 1145656661;
        }

        else
        {
          v3 = 1112493122;
        }
      }
    }

    v2 = 0uLL;
  }

  v86[2] = v3;
  v86[3] = v0;
  v87 = v2;
  v88 = v2;
  v89 = v2;
  v90 = 1;
  v81[0] = 0x74616D726F66;
  v81[1] = 0xE600000000000000;
  v4 = swift_dynamicCastMetatype();
  v5 = 0xE400000000000000;
  v6 = 1415071060;
  v7 = 0xE400000000000000;
  if (!v4)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v7 = 0xE700000000000000;
      v6 = 0x52454745544E49;
    }

    else
    {
      v6 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v6 = 1145656661;
        }

        else
        {
          v6 = 1112493122;
        }
      }

      v7 = 0xE400000000000000;
    }
  }

  v81[2] = v6;
  v81[3] = v7;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 1;
  v75[0] = 0x6B636F6C625F7369;
  v75[1] = 0xEA00000000006465;
  v75[2] = 0x52454745544E49;
  v75[3] = 0xE700000000000000;
  v77 = &type metadata for Bool;
  v78 = &protocol witness table for Bool;
  v79 = &protocol witness table for Bool;
  v76 = 0;
  v80 = 1;
  v70[0] = 0xD000000000000012;
  v70[1] = 0x80000001006C3D30;
  v70[2] = 0x52454745544E49;
  v70[3] = 0xE700000000000000;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 1;
  v65[0] = 0x695F746E65726170;
  v65[1] = 0xE900000000000064;
  v65[2] = 1112493122;
  v65[3] = 0xE400000000000000;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 1;
  strcpy(v58, "request_count");
  v58[7] = -4864;
  v59 = 0x52454745544E49;
  v60 = 0xE700000000000000;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 1;
  strcpy(v51, "verifier_state");
  v51[15] = -18;
  v52 = 1112493122;
  v53 = 0xE400000000000000;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  v46[0] = 1701869940;
  v46[1] = 0xE400000000000000;
  v8 = swift_dynamicCastMetatype();
  v9 = 0uLL;
  v10 = 1415071060;
  if (!v8)
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v5 = 0xE700000000000000;
      v10 = 0x52454745544E49;
    }

    else
    {
      v10 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v10 = 1145656661;
        }

        else
        {
          v10 = 1112493122;
        }
      }
    }

    v9 = 0uLL;
  }

  v46[2] = v10;
  v46[3] = v5;
  v47 = v9;
  v48 = v9;
  v49 = v9;
  v50 = 1;
  v41[0] = 0xD000000000000011;
  v41[1] = 0x80000001006C3D70;
  v41[2] = 0x52454745544E49;
  v41[3] = 0xE700000000000000;
  v42 = v9;
  v43 = v9;
  v44 = v9;
  v45 = 1;
  v36[0] = 7107189;
  v36[1] = 0xE300000000000000;
  v36[2] = 1112493122;
  v36[3] = 0xE400000000000000;
  v37 = v9;
  v38 = v9;
  v39 = v9;
  v40 = 1;
  v31[0] = 0x746E6169726176;
  v31[1] = 0xE700000000000000;
  v31[2] = 1415071060;
  v31[3] = 0xE400000000000000;
  v32 = v9;
  v33 = v9;
  v34 = v9;
  v35 = 1;
  sub_1001F0C48(&unk_100786ED0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006A00B0;
  *(v11 + 56) = &type metadata for SQLiteColumn;
  *(v11 + 64) = &off_10076CDE0;
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  sub_1002783D8(v120, v12 + 16);
  *(v11 + 96) = &type metadata for SQLiteColumn;
  *(v11 + 104) = &off_10076CDE0;
  v13 = swift_allocObject();
  *(v11 + 72) = v13;
  sub_1002783D8(v113, v13 + 16);
  *(v11 + 136) = &type metadata for SQLiteColumn;
  *(v11 + 144) = &off_10076CDE0;
  v14 = swift_allocObject();
  *(v11 + 112) = v14;
  sub_1002783D8(v108, v14 + 16);
  *(v11 + 176) = &type metadata for SQLiteColumn;
  *(v11 + 184) = &off_10076CDE0;
  v15 = swift_allocObject();
  *(v11 + 152) = v15;
  sub_1002783D8(v103, v15 + 16);
  *(v11 + 216) = &type metadata for SQLiteColumn;
  *(v11 + 224) = &off_10076CDE0;
  v16 = swift_allocObject();
  *(v11 + 192) = v16;
  sub_1002783D8(v98, v16 + 16);
  *(v11 + 256) = &type metadata for SQLiteColumn;
  *(v11 + 264) = &off_10076CDE0;
  v17 = swift_allocObject();
  *(v11 + 232) = v17;
  sub_1002783D8(v91, v17 + 16);
  *(v11 + 296) = &type metadata for SQLiteColumn;
  *(v11 + 304) = &off_10076CDE0;
  v18 = swift_allocObject();
  *(v11 + 272) = v18;
  sub_1002783D8(v86, v18 + 16);
  *(v11 + 336) = &type metadata for SQLiteColumn;
  *(v11 + 344) = &off_10076CDE0;
  v19 = swift_allocObject();
  *(v11 + 312) = v19;
  sub_1002783D8(v81, v19 + 16);
  *(v11 + 376) = &type metadata for SQLiteColumn;
  *(v11 + 384) = &off_10076CDE0;
  v20 = swift_allocObject();
  *(v11 + 352) = v20;
  sub_1002783D8(v75, v20 + 16);
  *(v11 + 416) = &type metadata for SQLiteColumn;
  *(v11 + 424) = &off_10076CDE0;
  v21 = swift_allocObject();
  *(v11 + 392) = v21;
  sub_1002783D8(v70, v21 + 16);
  *(v11 + 456) = &type metadata for SQLiteColumn;
  *(v11 + 464) = &off_10076CDE0;
  v22 = swift_allocObject();
  *(v11 + 432) = v22;
  sub_1002783D8(v65, v22 + 16);
  *(v11 + 496) = &type metadata for SQLiteColumn;
  *(v11 + 504) = &off_10076CDE0;
  v23 = swift_allocObject();
  *(v11 + 472) = v23;
  sub_1002783D8(v58, v23 + 16);
  *(v11 + 536) = &type metadata for SQLiteColumn;
  *(v11 + 544) = &off_10076CDE0;
  v24 = swift_allocObject();
  *(v11 + 512) = v24;
  sub_1002783D8(v51, v24 + 16);
  *(v11 + 576) = &type metadata for SQLiteColumn;
  *(v11 + 584) = &off_10076CDE0;
  v25 = swift_allocObject();
  *(v11 + 552) = v25;
  sub_1002783D8(v46, v25 + 16);
  *(v11 + 616) = &type metadata for SQLiteColumn;
  *(v11 + 624) = &off_10076CDE0;
  v26 = swift_allocObject();
  *(v11 + 592) = v26;
  sub_1002783D8(v41, v26 + 16);
  *(v11 + 656) = &type metadata for SQLiteColumn;
  *(v11 + 664) = &off_10076CDE0;
  v27 = swift_allocObject();
  *(v11 + 632) = v27;
  sub_1002783D8(v36, v27 + 16);
  *(v11 + 696) = &type metadata for SQLiteColumn;
  *(v11 + 704) = &off_10076CDE0;
  v28 = swift_allocObject();
  *(v11 + 672) = v28;
  sub_1002783D8(v31, v28 + 16);
  v29 = sub_1005A83A0(v11);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100278434(v31);
  sub_100278434(v36);
  sub_100278434(v41);
  sub_100278434(v46);
  sub_100278434(v51);
  sub_100278434(v58);
  sub_100278434(v65);
  sub_100278434(v70);
  sub_100278434(v81);
  sub_100278434(v86);
  sub_100278434(v91);
  sub_100278434(v98);
  sub_100278434(v103);
  sub_100278434(v108);
  sub_100278434(v113);
  sub_100278434(v120);
  sub_100278434(v75);
  return v29;
}

uint64_t sub_100278488(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100278508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v12 = a5;
  v13 = a1;
  v14 = a2;
  v6 = sub_1001F0C48(&qword_10077F780);
  v7 = sub_1001F0C48(&unk_10077F940);
  return sub_1002785EC(v10, sub_100279E50, v11, v6, v7, a5, &protocol self-conformance witness table for Error, &v9);
}

uint64_t sub_1002785EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1002786F4(uint64_t a1)
{
  v2 = sub_10027ACFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100278730(uint64_t a1)
{
  v2 = sub_10027ACFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027876C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  *v8 = v1[4];
  *&v8[12] = *(v1 + 76);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 92;
  *&v9[12] = v7;
  v10 = v9;
  sub_100279DF0();
  result = DataProtocol.copyBytes<A>(to:)();
  *(v5 + 16) = 92;
  *a1 = v5;
  return result;
}

__n128 sub_100278850@<Q0>(uint64_t a1@<X8>)
{
  memset(&v5, 0, sizeof(v5));
  MAD_MD5_Init(&v5);
  v3 = *&v5.A;
  result = *&v5.Nl;
  *(v6 + 12) = *&v5.data[13];
  v4 = *&v5.data[6];
  v6[0] = *&v5.data[10];
  *(a1 + 32) = *&v5.data[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v6[0];
  *(a1 + 76) = *(v6 + 12);
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

const void *sub_1002788FC(const void *data, uint64_t a2)
{
  if (data)
  {
    v3 = a2 - data;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return MAD_MD5_Update(v2, data, v3);
  }

  __break(1u);
  return data;
}

double sub_10027892C@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  *&v6.data[2] = v1[2];
  *&v6.data[6] = v3;
  *&v6.data[10] = v1[4];
  *&v6.data[13] = *(v1 + 76);
  v4 = v1[1];
  *&v6.A = *v1;
  *&v6.Nl = v4;
  MAD_MD5_Final(md, &v6);
  result = md[0];
  *a1 = *md;
  return result;
}

uint64_t sub_1002789DC(uint64_t a1)
{
  v2 = sub_100279CC8();

  return Digest.description.getter(a1, v2);
}

Swift::Int sub_100278A18()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int sub_100278B08()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

uint64_t sub_100278B84@<X0>(uint64_t *a1@<X8>)
{
  sub_100279CC8();
  result = Digest.makeIterator()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100278C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100279CC8();

  return static Digest.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100278C5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10027AE00(a1, &qword_10077F788, &unk_1006A0680, sub_10027ACFC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100278CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v14 = a7;
  v15 = a1;
  v16 = a2;
  v8 = sub_1001F0C48(&qword_10077F7B8);
  v9 = sub_1001F0C48(&unk_10077F940);
  return sub_1002785EC(v12, sub_10027ADBC, v13, v8, v9, a7, &protocol self-conformance witness table for Error, &v11);
}

uint64_t sub_100278DE4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v8 = sub_1001F0C48(a3);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_100006D8C(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[3] = a2;
  sub_1001F0C48(&qword_10077F798);
  sub_10027AD50(&qword_10077F7B0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100278F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100278FF4(uint64_t a1)
{
  v2 = sub_10027AFB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100279030(uint64_t a1)
{
  v2 = sub_10027AFB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027906C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 104;
  v10[0] = v8;
  v10[1] = v10;
  sub_100279DF0();
  result = DataProtocol.copyBytes<A>(to:)();
  *(v6 + 16) = 104;
  *a1 = v6;
  return result;
}

__n128 sub_100279148@<Q0>(uint64_t a1@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA256_Init(&v8);
  v3 = *v8.count;
  result = *&v8.hash[2];
  v4 = *&v8.wbuf[14];
  v5 = *&v8.wbuf[10];
  v6 = *&v8.hash[6];
  v7 = *&v8.wbuf[2];
  *(a1 + 64) = *&v8.wbuf[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

const void *sub_1002791E8(const void *data, uint64_t a2)
{
  if (data)
  {
    v3 = a2 - data;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA256_Update(v2, data, v3);
  }

  __break(1u);
  return data;
}

double sub_100279218@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 80);
  *&v8.wbuf[6] = *(v1 + 64);
  *&v8.wbuf[10] = v3;
  *&v8.wbuf[14] = *(v1 + 96);
  v4 = *(v1 + 16);
  *v8.count = *v1;
  *&v8.hash[2] = v4;
  v5 = *(v1 + 48);
  *&v8.hash[6] = *(v1 + 32);
  *&v8.wbuf[2] = v5;
  CC_SHA256_Final(md, &v8);
  sub_10027AA98(md, v10, v10);
  if (v11)
  {
    __break(1u);
  }

  result = *v10;
  v7 = v10[1];
  *a1 = v10[0];
  a1[1] = v7;
  return result;
}

uint64_t sub_1002792EC(uint64_t a1)
{
  v2 = sub_1002798D4();

  return Digest.description.getter(a1, v2);
}

Swift::Int sub_100279328()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int sub_100279418()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

uint64_t sub_100279494@<X0>(uint64_t *a1@<X8>)
{
  sub_1002798D4();
  result = Digest.makeIterator()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002794EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002798D4();

  return static Digest.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100279540@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10027AE00(a1, &qword_10077F7C0, &unk_1006A06A0, sub_10027AFB8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10027960C()
{
  result = qword_10077F678;
  if (!qword_10077F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F678);
  }

  return result;
}

unint64_t sub_100279660()
{
  result = qword_10077F680;
  if (!qword_10077F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F680);
  }

  return result;
}

unint64_t sub_1002796B4()
{
  result = qword_10077F688;
  if (!qword_10077F688)
  {
    sub_1001F76D0(&qword_10077F690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F688);
  }

  return result;
}

unint64_t sub_10027971C()
{
  result = qword_10077F698;
  if (!qword_10077F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F698);
  }

  return result;
}

unint64_t sub_100279774()
{
  result = qword_10077F6A0;
  if (!qword_10077F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6A0);
  }

  return result;
}

unint64_t sub_1002797CC()
{
  result = qword_10077F6A8;
  if (!qword_10077F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6A8);
  }

  return result;
}

unint64_t sub_100279824()
{
  result = qword_10077F6B0;
  if (!qword_10077F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6B0);
  }

  return result;
}

unint64_t sub_10027987C()
{
  result = qword_10077F6B8;
  if (!qword_10077F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6B8);
  }

  return result;
}

unint64_t sub_1002798D4()
{
  result = qword_10077F6C0;
  if (!qword_10077F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6C0);
  }

  return result;
}

unint64_t sub_10027992C()
{
  result = qword_10077F6C8;
  if (!qword_10077F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6C8);
  }

  return result;
}

unint64_t sub_100279980(uint64_t a1)
{
  result = sub_1002799A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002799A8()
{
  result = qword_10077F6F8;
  if (!qword_10077F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F6F8);
  }

  return result;
}

uint64_t sub_100279A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100279A64()
{
  result = qword_10077F700;
  if (!qword_10077F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F700);
  }

  return result;
}

unint64_t sub_100279AB8()
{
  result = qword_10077F708;
  if (!qword_10077F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F708);
  }

  return result;
}

unint64_t sub_100279B10()
{
  result = qword_10077F710;
  if (!qword_10077F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F710);
  }

  return result;
}

unint64_t sub_100279B68()
{
  result = qword_10077F718;
  if (!qword_10077F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F718);
  }

  return result;
}

unint64_t sub_100279BC0()
{
  result = qword_10077F720;
  if (!qword_10077F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F720);
  }

  return result;
}

unint64_t sub_100279C18()
{
  result = qword_10077F728;
  if (!qword_10077F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F728);
  }

  return result;
}

unint64_t sub_100279C70()
{
  result = qword_10077F730;
  if (!qword_10077F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F730);
  }

  return result;
}

unint64_t sub_100279CC8()
{
  result = qword_10077F738;
  if (!qword_10077F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F738);
  }

  return result;
}

unint64_t sub_100279D20()
{
  result = qword_10077F740;
  if (!qword_10077F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F740);
  }

  return result;
}

unint64_t sub_100279D74(uint64_t a1)
{
  result = sub_100279D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100279D9C()
{
  result = qword_10077F770;
  if (!qword_10077F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F770);
  }

  return result;
}

unint64_t sub_100279DF0()
{
  result = qword_10077F778;
  if (!qword_10077F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F778);
  }

  return result;
}

uint64_t sub_100279E50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 16;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_100279E94()
{
  sub_10027987C();
  result = dispatch thunk of Sequence.makeIterator()();
  v1 = v22;
  v2 = *(v21 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v22 == v2)
  {
    v4 = 0;
LABEL_3:

    v5 = v3[3];
    if (v5 < 2)
    {
      return v3;
    }

    v6 = v5 >> 1;
    v7 = __OFSUB__(v6, v4);
    v8 = v6 - v4;
    if (!v7)
    {
      v3[2] = v8;
      return v3;
    }
  }

  else
  {
    if (v22 < v2)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v22 >= *(v21 + 16))
        {
LABEL_28:
          __break(1u);
        }

        else
        {
          v4 = 0;
          v9 = &_swiftEmptyArrayStorage[4];
          v10 = v2 - 1;
          v20 = v2 - 1;
          while (1)
          {
            v11 = *(v21 + 32 + v1);
            if (!v4)
            {
              v12 = v3[3];
              if (((v12 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_31;
              }

              v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
              if (v13 <= 1)
              {
                v14 = 1;
              }

              else
              {
                v14 = v13;
              }

              sub_1001F0C48(&qword_10077EF80);
              v15 = swift_allocObject();
              v16 = 2 * j__malloc_size(v15) - 64;
              v15[2] = v14;
              v15[3] = v16;
              v17 = (v15 + 4);
              v18 = v3[3] >> 1;
              if (v3[2])
              {
                if (v15 != v3 || v17 >= v3 + v18 + 32)
                {
                  memmove(v15 + 4, v3 + 4, v18);
                }

                v3[2] = 0;
              }

              v9 = (v17 + v18);
              v4 = (v16 >> 1) - v18;

              v3 = v15;
              v10 = v20;
            }

            v7 = __OFSUB__(v4--, 1);
            if (v7)
            {
              break;
            }

            *v9 = v11;
            if (v10 == v1)
            {
              goto LABEL_3;
            }

            ++v1;
            ++v9;
            if (v1 >= *(v21 + 16))
            {
              goto LABEL_28;
            }
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027A050()
{
  sub_100279C70();
  result = dispatch thunk of Sequence.makeIterator()();
  v1 = v22;
  v2 = *(v21 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v22 == v2)
  {
    v4 = 0;
LABEL_3:

    v5 = v3[3];
    if (v5 < 2)
    {
      return v3;
    }

    v6 = v5 >> 1;
    v7 = __OFSUB__(v6, v4);
    v8 = v6 - v4;
    if (!v7)
    {
      v3[2] = v8;
      return v3;
    }
  }

  else
  {
    if (v22 < v2)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v22 >= *(v21 + 16))
        {
LABEL_28:
          __break(1u);
        }

        else
        {
          v4 = 0;
          v9 = &_swiftEmptyArrayStorage[4];
          v10 = v2 - 1;
          v20 = v2 - 1;
          while (1)
          {
            v11 = *(v21 + 32 + v1);
            if (!v4)
            {
              v12 = v3[3];
              if (((v12 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_31;
              }

              v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
              if (v13 <= 1)
              {
                v14 = 1;
              }

              else
              {
                v14 = v13;
              }

              sub_1001F0C48(&qword_10077EF80);
              v15 = swift_allocObject();
              v16 = 2 * j__malloc_size(v15) - 64;
              v15[2] = v14;
              v15[3] = v16;
              v17 = (v15 + 4);
              v18 = v3[3] >> 1;
              if (v3[2])
              {
                if (v15 != v3 || v17 >= v3 + v18 + 32)
                {
                  memmove(v15 + 4, v3 + 4, v18);
                }

                v3[2] = 0;
              }

              v9 = (v17 + v18);
              v4 = (v16 >> 1) - v18;

              v3 = v15;
              v10 = v20;
            }

            v7 = __OFSUB__(v4--, 1);
            if (v7)
            {
              break;
            }

            *v9 = v11;
            if (v10 == v1)
            {
              goto LABEL_3;
            }

            ++v1;
            ++v9;
            if (v1 >= *(v21 + 16))
            {
              goto LABEL_28;
            }
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027A208(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10027987C();
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_12:
    a3 = 0;
LABEL_13:
    v8 = v11;
    v9 = v12;
LABEL_14:
    *a1 = v8;
    a1[1] = v9;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v11;
    v9 = *(v11 + 16);
    while (1)
    {
      if (v12 == v9)
      {
        a3 = v7;
        goto LABEL_14;
      }

      if (v12 >= v9)
      {
        break;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v10 = *(v11 + 32 + v12++);
      *(a2 + v7) = v10;
      if (a3 - 1 == v7)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027A2E8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100279C70();
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_12:
    a3 = 0;
LABEL_13:
    v8 = v11;
    v9 = v12;
LABEL_14:
    *a1 = v8;
    a1[1] = v9;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v11;
    v9 = *(v11 + 16);
    while (1)
    {
      if (v12 == v9)
      {
        a3 = v7;
        goto LABEL_14;
      }

      if (v12 >= v9)
      {
        break;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v10 = *(v11 + 32 + v12++);
      *(a2 + v7) = v10;
      if (a3 - 1 == v7)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10027A3C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10027A544(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10027A69C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10027A7F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for XPCApp();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

__int128 *sub_10027AA98@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = a2 - result == 32;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  v5 = 0uLL;
  v6 = 0uLL;
  if (v3)
  {
    v5 = *result;
    v6 = result[1];
  }

  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v4;
  return result;
}

uint64_t sub_10027AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  if (a1)
  {
    if (*(a1 + 16) != 92)
    {

      v10 = 0;
      num = 0;
      v4 = 1;
      v5 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      goto LABEL_7;
    }

    memmove(&__dst, (a1 + 32), 0x5CuLL);
  }

  else
  {
    result = CC_MD5_Init(&__dst);
  }

  v4 = 0;
  v5 = *&__dst.A;
  v6 = *&__dst.Nl;
  v7 = *&__dst.data[2];
  v8 = *&__dst.data[6];
  v9 = *&__dst.data[10];
  v10 = *&__dst.data[14];
  num = __dst.num;
LABEL_7:
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = num;
  *(a2 + 92) = v4;
  return result;
}

uint64_t sub_10027AC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  if (a1)
  {
    if (*(a1 + 16) != 104)
    {

      v11 = 0;
      v4 = 1;
      v5 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      goto LABEL_7;
    }

    memmove(&__dst, (a1 + 32), 0x68uLL);
  }

  else
  {
    result = CC_SHA256_Init(&__dst);
  }

  v4 = 0;
  v5 = *__dst.count;
  v6 = *&__dst.hash[2];
  v7 = *&__dst.hash[6];
  v8 = *&__dst.wbuf[2];
  v9 = *&__dst.wbuf[6];
  v10 = *&__dst.wbuf[10];
  v11 = *&__dst.wbuf[14];
LABEL_7:
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *(a2 + 104) = v4;
  return result;
}

unint64_t sub_10027ACFC()
{
  result = qword_10077F790;
  if (!qword_10077F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F790);
  }

  return result;
}

uint64_t sub_10027AD50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_10077F798);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027ADBC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 32;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

void *sub_10027AE00(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1001F0C48(a2);
  v14 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = sub_100006D8C(a1, a1[3]);
  a4();
  v11 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1001F0C48(&qword_10077F798);
    sub_10027AD50(&qword_10077F7A0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v9, v7);
    v11 = v15;
    sub_10000710C(a1);
  }

  return v11;
}

unint64_t sub_10027AFB8()
{
  result = qword_10077F7C8;
  if (!qword_10077F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7C8);
  }

  return result;
}

__n128 sub_10027B02C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10027B050(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 92))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027B070(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 92) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ResumableHash.MD5Digest(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResumableHash.MD5Digest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResumableHash.MD5Digest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10027B138(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10027B164(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027B184(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

__n128 sub_10027B1E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_10027B218()
{
  result = qword_10077F7D8;
  if (!qword_10077F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7D8);
  }

  return result;
}

unint64_t sub_10027B270()
{
  result = qword_10077F7E0;
  if (!qword_10077F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7E0);
  }

  return result;
}

unint64_t sub_10027B2C8()
{
  result = qword_10077F7E8;
  if (!qword_10077F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7E8);
  }

  return result;
}

unint64_t sub_10027B320()
{
  result = qword_10077F7F0;
  if (!qword_10077F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7F0);
  }

  return result;
}

unint64_t sub_10027B378()
{
  result = qword_10077F7F8;
  if (!qword_10077F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F7F8);
  }

  return result;
}

unint64_t sub_10027B3D0()
{
  result = qword_10077F800;
  if (!qword_10077F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F800);
  }

  return result;
}

uint64_t sub_10027B42C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v25[2] = *(v3 - 8);
  v25[3] = v3;
  __chkstk_darwin(v3);
  v25[1] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSEligibilityAnswer();
  v25[0] = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  v11 = type metadata accessor for OSEligibilityResult();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v25 - v17;
  __chkstk_darwin(v16);
  v20 = v25 - v19;
  if (*(a2 + 32))
  {
    static OSEligibilityResult.result(for:)();
    v18 = v15;
  }

  else
  {
    static OSEligibilityResult.result(for:auditToken:)();
  }

  (*(v12 + 32))(v20, v18, v11);
  OSEligibilityResult.answer.getter();
  v21 = v25[0];
  (*(v25[0] + 104))(v8, enum case for OSEligibilityAnswer.eligible(_:), v5);
  v22 = static OSEligibilityAnswer.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v8, v5);
  v23(v10, v5);
  (*(v12 + 8))(v20, v11);
  return v22 & 1;
}

uint64_t sub_10027B898(uint64_t a1)
{
  sub_1001F0C48(&qword_10077F808);
  v1 = type metadata accessor for OSEligibilityDomain();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10069E990;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for OSEligibilityDomain.hydrogen(_:), v1);
  v7(v6 + v3, enum case for OSEligibilityDomain.helium(_:), v1);
  v7(v6 + 2 * v3, enum case for OSEligibilityDomain.argon(_:), v1);
  v7(v6 + 3 * v3, enum case for OSEligibilityDomain.potassium(_:), v1);
  v7(v6 + 4 * v3, enum case for OSEligibilityDomain.carbon(_:), v1);
  v7(v6 + 5 * v3, enum case for OSEligibilityDomain.lithium(_:), v1);
  if (sub_10027B42C(v6, a1) & 1) != 0 || (sub_10027B42C(v6 + v3, a1) & 1) != 0 || (sub_10027B42C(v6 + 2 * v3, a1) & 1) != 0 || (sub_10027B42C(v6 + 3 * v3, a1) & 1) != 0 || (sub_10027B42C(v6 + 4 * v3, a1))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10027B42C(v6 + 5 * v3, a1);
  }

  return v8 & 1;
}

uint64_t sub_10027BAC8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100757D30);
  sub_1002FC188(&unk_100757D50);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1368;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "handleLaunchAppRequest";
  *(v35 + 40) = 22;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 0;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A1370;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A1378, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_10027C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  type metadata accessor for DDMDeclaration(0);
  v8[5] = swift_task_alloc();
  v8[6] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for AppLaunchRequest.Target();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v11 = type metadata accessor for AppLaunchRequest();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027C1D4, 0, 0);
}

uint64_t sub_10027C1D4()
{
  v26 = v0;
  sub_100302E04(&qword_10077FF40, &type metadata accessor for AppLaunchRequest);
  sub_100302E04(&qword_10077FF48, &type metadata accessor for AppLaunchRequest);
  decodeXPCValues<A>(from:)();
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  AppLaunchRequest.target.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == enum case for AppLaunchRequest.Target.app(_:))
  {
    v7 = v0[13];
    (*(v0[12] + 96))(v7, v0[11]);
    v8 = *v7;
    v9 = v7[1];
    v0[17] = v9;
    static Logger.install.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1002346CC(v8, v9, &v25);
      _os_log_impl(&_mh_execute_header, v10, v11, "Handling app launch request for: %{public}s", v16, 0xCu);
      sub_10000710C(v17);
    }

    (*(v15 + 8))(v13, v14);
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_10027C6C8;

    return sub_10036FECC(v8, v9, 0, 0);
  }

  else if (v6 == enum case for AppLaunchRequest.Target.managedApp(_:))
  {
    v19 = v0[13];
    (*(v0[12] + 96))(v19, v0[11]);
    v0[20] = *(v19 + 8);
    if (*(v19 + 16))
    {
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];

      type metadata accessor for InternalError();
      sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v21 + 8))(v20, v22);

      v1 = v0[1];

      return v1();
    }

    else
    {
      v23 = v0[4];
      v0[21] = *v0[13];
      v24 = *(*sub_100006D8C((v23 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v23 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      v0[22] = v24;

      return _swift_task_switch(sub_10027C978, v24, 0);
    }
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10027C6C8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10027C8B8;
  }

  else
  {
    v2 = sub_10027C7F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027C7F8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027C8B8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027C978()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = *(v0[22] + 112);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_10027CA68;
  v6 = v0[6];

  return (sub_1003B0094)(v6, sub_100302FC0, v4, v3);
}

uint64_t sub_10027CA68()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);

  if (v0)
  {

    v4 = sub_10027CE34;
    v5 = v3;
  }

  else
  {

    v4 = sub_10027CBF0;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10027CBF0()
{
  v22 = v0;
  v2 = v0[5];
  v1 = v0[6];
  static Logger.install.getter();
  sub_10030173C(v1, v2, type metadata accessor for DDMDeclaration);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[5];
  if (v5)
  {
    v20 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = *(v9 + 48);
    v13 = *(v9 + 56);

    sub_1003017A4(v9, type metadata accessor for DDMDeclaration);
    v14 = sub_1002346CC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling app launch request for: %{public}s", v10, 0xCu);
    sub_10000710C(v11);

    (*(v6 + 8))(v20, v8);
  }

  else
  {

    sub_1003017A4(v9, type metadata accessor for DDMDeclaration);
    (*(v6 + 8))(v7, v8);
  }

  v15 = v0[6];
  v17 = *(v15 + 48);
  v16 = *(v15 + 56);
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_10027CF5C;

  return sub_10036FECC(v17, v16, 0, 0);
}

uint64_t sub_10027CE34()
{

  return _swift_task_switch(sub_10027CE9C, 0, 0);
}

uint64_t sub_10027CE9C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10027CF5C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10027D150;
  }

  else
  {
    v2 = sub_10027D070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027D070()
{
  v1 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1003017A4(v1, type metadata accessor for DDMDeclaration);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10027D150()
{
  v1 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1003017A4(v1, type metadata accessor for DDMDeclaration);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10027D264(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100757D70);
  sub_1002FC188(&unk_100757D90);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1348;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "discoverRestores";
  *(v35 + 40) = 16;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A1350;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A1358, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_10027D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v9 = type metadata accessor for DiscoverRestoresRequest();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027D87C, 0, 0);
}

uint64_t sub_10027D87C()
{
  sub_100302E04(&qword_10077FF30, &type metadata accessor for DiscoverRestoresRequest);
  sub_100302E04(&qword_10077FF38, &type metadata accessor for DiscoverRestoresRequest);
  decodeXPCValues<A>(from:)();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10027DA10;

  return sub_100324268(v0 + 16);
}

uint64_t sub_10027DA10()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10027DCC4;
  }

  else
  {
    v2 = sub_10027DB24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027DB24()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v20 = *(v0 + 112);
  v3 = *(v0 + 104) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v16 = *(v0 + 56);
  v14 = *(v0 + 72);
  v4 = *(*sub_100006D8C(v3, *(v3 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);

  v19 = DiscoverRestoresRequest.accountID.getter();
  v6 = v5;
  v18 = DiscoverRestoresRequest.promptToInstallDistributors.getter();
  *(v0 + 168) = v14;
  *(v0 + 152) = v16;
  *(v0 + 184) = 0;
  v7 = *(v3 + 24);
  v17 = *(v3 + 40);
  v13 = *(v3 + 72);
  v15 = *(v3 + 56);
  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = sub_100006D8C(v3, v7);
  sub_10046413C(v0 + 16, 2, 0, 0, v19, v6, v18, (v0 + 152), v10, v4, v7, v17, v15, v13, v8, v9);

  sub_10000710C(v0 + 16);
  (*(v1 + 8))(v2, v20);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10027DCC4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

void sub_10027DD74(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_100007158(v13, v15);
}

uint64_t sub_10027DE50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100757DB0);
  sub_1002FC188(&unk_100757DD0);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1328;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "prioritizeApp";
  *(v35 + 40) = 13;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A1330;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A1338, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_10027E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v9 = type metadata accessor for PrioritizeAppRequest();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027E468, 0, 0);
}

uint64_t sub_10027E468()
{
  sub_100302E04(&qword_10077FF20, &type metadata accessor for PrioritizeAppRequest);
  sub_100302E04(&qword_10077FF28, &type metadata accessor for PrioritizeAppRequest);
  decodeXPCValues<A>(from:)();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10027E5FC;

  return sub_100324268(v0 + 16);
}

uint64_t sub_10027E5FC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10027DCC4;
  }

  else
  {
    v2 = sub_10027E710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E710()
{
  v1 = v0[15];
  v2 = v0[16];
  v18 = v0[14];
  v16 = v0[9];
  v17 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[13] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v6 = *(*sub_100006D8C(v5, *(v5 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  v7 = *(v5 + 24);
  v14 = *(v5 + 56);
  v15 = *(v5 + 40);
  v13 = *(v5 + 72);
  v8 = *(v5 + 88);
  v9 = *(v5 + 96);
  v10 = sub_100006D8C(v5, v7);

  sub_100464A80(v2, (v0 + 2), v4, v3, v16, v17, v10, v6, v7, v15, *(&v15 + 1), v14, v13, v8, v9);

  sub_10000710C((v0 + 2));
  (*(v1 + 8))(v2, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10027E8A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v53 = sub_1001F6740(&off_100757DF0);
  sub_1002FC188(&unk_100757E10);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A1308;
  *(v21 + 24) = v20;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v52 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v49 = v29;
    [v26 auditToken];
    v44 = v58;
    v46 = v57;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v44 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v50[80] + 49) & ~v50[80];
  v31 = v30 + v14;
  v50 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v48 = v18;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "promoteApps";
  *(v35 + 40) = 11;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = v53;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A1310;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A1318, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_10027EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v9 = type metadata accessor for PromoteAppsRequest();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027EEBC, 0, 0);
}

uint64_t sub_10027EEBC()
{
  sub_100302E04(&qword_10077FF10, &type metadata accessor for PromoteAppsRequest);
  sub_100302E04(&qword_10077FF18, &type metadata accessor for PromoteAppsRequest);
  decodeXPCValues<A>(from:)();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10027F050;

  return sub_100324268(v0 + 16);
}

uint64_t sub_10027F050()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100302F6C;
  }

  else
  {
    v2 = sub_10027F164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027F164()
{
  v1 = v0[15];
  v2 = v0[16];
  v18 = v0[14];
  v16 = v0[9];
  v17 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[13] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
  v6 = *(*sub_100006D8C(v5, *(v5 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
  v7 = *(v5 + 24);
  v14 = *(v5 + 56);
  v15 = *(v5 + 40);
  v13 = *(v5 + 72);
  v8 = *(v5 + 88);
  v9 = *(v5 + 96);
  v10 = sub_100006D8C(v5, v7);

  sub_1004650C0(v2, (v0 + 2), v4, v3, v16, v17, v10, v6, v7, v15, *(&v15 + 1), v14, v13, v8, v9);

  sub_10000710C((v0 + 2));
  (*(v1 + 8))(v2, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10027F2F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A12E0;
  *(v21 + 24) = v20;
  v52 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v53 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v50 = v29;
    [v26 auditToken];
    v46 = v58;
    v48 = v57;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v46 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v51[80] + 49) & ~v51[80];
  v31 = v30 + v14;
  v51 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = v18;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "DiagnosticRequest";
  *(v35 + 40) = 17;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v50;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v46;
  *v36 = v48;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v52;
  *v39 = &unk_1006A12E8;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A12F0, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_10027F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  v13 = type metadata accessor for Logger();
  v8[19] = v13;
  v8[20] = *(v13 - 8);
  v8[21] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v8[22] = swift_task_alloc();
  v14 = type metadata accessor for LogKey.Prefix();
  v8[23] = v14;
  v8[24] = *(v14 - 8);
  v8[25] = swift_task_alloc();
  v15 = type metadata accessor for DiagnosticRequestType();
  v8[26] = v15;
  v8[27] = *(v15 - 8);
  v8[28] = swift_task_alloc();
  v16 = type metadata accessor for DiagnosticRequest();
  v8[29] = v16;
  v8[30] = *(v16 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v17 = swift_task_alloc();
  v8[34] = v17;
  *v17 = v8;
  v17[1] = sub_10027FAB8;

  return sub_100323C0C(a2, a3, a4, a5);
}

uint64_t sub_10027FAB8()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10027FC58, 0, 0);
  }
}

uint64_t sub_10027FC58()
{
  v91 = v0;
  v1 = v0 + 29;
  v2 = v0[35];
  sub_100302E04(&qword_10077FF00, &type metadata accessor for DiagnosticRequest);
  sub_100302E04(&qword_10077FF08, &type metadata accessor for DiagnosticRequest);
  decodeXPCValues<A>(from:)();
  if (v2)
  {
    sub_1001F0C48(&unk_100784480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v4;
    swift_getErrorValue();
    v5 = *(v0[13] - 8);
    swift_task_alloc();
    (*(v5 + 16))();
    v6 = String.init<A>(describing:)();
    v8 = v7;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v6;
    *(inited + 56) = v8;
    sub_100528684(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &unk_10077F9B0);
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 initWithDomain:v10 code:-1 userInfo:isa];

    swift_willThrow();

    v12 = v0[1];
LABEL_9:

    return v12();
  }

  v13 = v0[28];
  v15 = v0 + 27;
  v14 = v0[27];
  v16 = v0[26];
  DiagnosticRequest.requestType.getter();
  v17 = (*(v14 + 88))(v13, v16);
  if (v17 == enum case for DiagnosticRequestType.displayRestoreMarketplaceForPromotion(_:))
  {
    v18 = v0[28];
    v19 = v0[18];
    (*(v0[27] + 96))(v18, v0[26]);
    v20 = *v18;
    v21 = v18[1];
    v22 = (v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    sub_100006D8C(v22, v22[3]);
    v23 = v22[3];
    v24 = v22[9];
    v25 = sub_100006D8C(v22, v23);

    v26 = v20;
    v27 = v0 + 33;
    sub_10046D278(v26, v21, v25, v23, v24);
LABEL_7:

    v15 = v0 + 30;
LABEL_8:
    (*(*v15 + 8))(*v27, *v1);

    v12 = v0[1];
    goto LABEL_9;
  }

  if (v17 == enum case for DiagnosticRequestType.displayRestoreGenericMarketplace(_:))
  {
    v28 = v0[28];
    v29 = v0[18];
    (*(v0[27] + 96))(v28, v0[26]);
    v30 = *v28;
    v31 = v28[1];
    v32 = (v29 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    sub_100006D8C(v32, v32[3]);
    v33 = v32[3];
    v34 = v32[9];
    v35 = sub_100006D8C(v32, v33);

    v36 = v30;
    v27 = v0 + 33;
    sub_10046D298(v36, v31, v35, v33, v34);
    goto LABEL_7;
  }

  if (v17 == enum case for DiagnosticRequestType.migrate(_:))
  {
    v38 = v0[18];
    (*(v0[24] + 104))(v0[25], enum case for LogKey.Prefix.migrator(_:), v0[23]);
    v39 = objc_allocWithZone(type metadata accessor for LogKey());
    v40 = LogKey.init(prefix:)();
    sub_10062611C();

    v41 = (v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    v42 = *(v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24);
    v43 = *(v38 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 40);
    v44 = v41[6];
    v45 = v41[7];
    v46 = sub_100006D8C(v41, v42);
    v47 = swift_task_alloc();
    v0[36] = v47;
    *v47 = v0;
    v47[1] = sub_1002806D0;

    return sub_100622884(v46, 1, v42, v43, v44, v45);
  }

  else
  {
    if (v17 != enum case for DiagnosticRequestType.reset(_:))
    {
      v60 = v0[32];
      v61 = v0[33];
      v62 = v0[29];
      v63 = v0[30];
      static Logger.install.getter();
      v64 = *(v63 + 16);
      v64(v60, v61, v62);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      v67 = os_log_type_enabled(v65, v66);
      v88 = v0[32];
      v89 = v0[33];
      if (v67)
      {
        log = v65;
        v68 = v0[30];
        v69 = v0[31];
        v70 = v0[29];
        v85 = v0[20];
        v86 = v0[19];
        v87 = v0[21];
        buf = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v90 = v83;
        *buf = 136446210;
        v64(v69, v88, v70);
        v71 = String.init<A>(describing:)();
        v73 = v72;
        v74 = *(v68 + 8);
        v74(v88, v70);
        v75 = sub_1002346CC(v71, v73, &v90);

        *(buf + 4) = v75;
        _os_log_impl(&_mh_execute_header, log, v66, "Handling unknown request: %{public}s", buf, 0xCu);
        sub_10000710C(v83);

        (*(v85 + 8))(v87, v86);
        v74(v89, v70);
      }

      else
      {
        v77 = v0[29];
        v76 = v0[30];
        v78 = v0[20];
        v79 = v0[21];
        v80 = v0[19];

        v81 = *(v76 + 8);
        v81(v88, v77);
        (*(v78 + 8))(v79, v80);
        v81(v89, v77);
      }

      v1 = v0 + 26;
      v27 = v0 + 28;
      goto LABEL_8;
    }

    v48 = v0[22];
    v49 = v0[18];
    (*(v0[24] + 104))(v0[25], enum case for LogKey.Prefix.general(_:), v0[23]);
    v50 = objc_allocWithZone(type metadata accessor for LogKey());
    v51 = LogKey.init(prefix:)();
    v0[37] = v51;
    sub_100625B04();
    v52 = (v49 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    v53 = *(*sub_100006D8C((v49 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v49 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
    v55 = swift_allocObject();
    v55[2] = 0;
    v55[3] = 0;
    v55[4] = v51;
    v55[5] = v53;

    v56 = v51;
    sub_1004A673C(0, 0, v48, &unk_1006A12F8, v55);

    v57 = *(*sub_100006D8C(v52, v52[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    v0[38] = v57;

    v58 = swift_task_alloc();
    v0[39] = v58;
    *(v58 + 16) = v56;
    v59 = swift_task_alloc();
    v0[40] = v59;
    *v59 = v0;
    v59[1] = sub_1002808A0;

    return sub_10052F328(sub_10052F328, sub_100302850, v58, v57);
  }
}

uint64_t sub_1002806D0()
{

  return _swift_task_switch(sub_1002807CC, 0, 0);
}

uint64_t sub_1002807CC()
{
  (*(v0[30] + 8))(v0[33], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002808A0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100280AB4;
  }

  else
  {
    v2 = sub_1002809D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002809D4()
{
  v1 = v0[37];

  (*(v0[30] + 8))(v0[33], v0[29]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100280AB4()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];

  (*(v4 + 8))(v2, v3);
  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  swift_getErrorValue();
  v7 = *(v0[13] - 8);
  swift_task_alloc();
  (*(v7 + 16))();
  v8 = String.init<A>(describing:)();
  v10 = v9;

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  sub_100528684(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &unk_10077F9B0);
  v11 = objc_allocWithZone(NSError);
  v12 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 initWithDomain:v12 code:-1 userInfo:isa];

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100280D90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A12B8;
  *(v21 + 24) = v20;
  v52 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v53 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v50 = v29;
    [v26 auditToken];
    v46 = v58;
    v48 = v57;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v46 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v51[80] + 49) & ~v51[80];
  v31 = v30 + v14;
  v51 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = v18;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "RestoreRequest";
  *(v35 + 40) = 14;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v50;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v46;
  *v36 = v48;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v52;
  *v39 = &unk_1006A12C0;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A12C8, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_1002812B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  sub_1001F0C48(&unk_100780380);
  v8[19] = swift_task_alloc();
  v13 = type metadata accessor for LogKey.Prefix();
  v8[20] = v13;
  v8[21] = *(v13 - 8);
  v8[22] = swift_task_alloc();
  v14 = type metadata accessor for RestoreRequestType();
  v8[23] = v14;
  v8[24] = *(v14 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v15 = type metadata accessor for RestoreRequest();
  v8[27] = v15;
  v8[28] = *(v15 - 8);
  v8[29] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[30] = v16;
  *v16 = v8;
  v16[1] = sub_1002814E8;

  return sub_100323C0C(a2, a3, a4, a5);
}

uint64_t sub_1002814E8()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100281668, 0, 0);
  }
}

uint64_t sub_100281668()
{
  v1 = v0[31];
  sub_100302E04(&qword_10077FEF0, &type metadata accessor for RestoreRequest);
  sub_100302E04(&qword_10077FEF8, &type metadata accessor for RestoreRequest);
  decodeXPCValues<A>(from:)();
  if (v1)
  {
    sub_1001F0C48(&unk_100784480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v3;
    swift_getErrorValue();
    v4 = *(v0[13] - 8);
    swift_task_alloc();
    (*(v4 + 16))();
    v5 = String.init<A>(describing:)();
    v7 = v6;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    sub_100528684(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &unk_10077F9B0);
    v8 = objc_allocWithZone(NSError);
    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 initWithDomain:v9 code:-1 userInfo:isa];

    swift_willThrow();

    v11 = v0[1];
  }

  else
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    RestoreRequest.requestType.getter();
    (*(v15 + 104))(v13, enum case for RestoreRequestType.reset(_:), v14);
    v16 = static RestoreRequestType.== infix(_:_:)();
    v17 = *(v15 + 8);
    v17(v13, v14);
    v17(v12, v14);
    if (v16)
    {
      v18 = v0[19];
      v19 = v0[18];
      (*(v0[21] + 104))(v0[22], enum case for LogKey.Prefix.general(_:), v0[20]);
      v20 = objc_allocWithZone(type metadata accessor for LogKey());
      v21 = LogKey.init(prefix:)();
      sub_100625B04();
      v22 = *(*sub_100006D8C((v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v21;
      v24[5] = v22;
      swift_retain_n();
      v25 = v21;
      sub_1004A673C(0, 0, v18, &unk_1006A12D0, v24);
    }

    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_100281B94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100757EB0);
  sub_1002FC188(&unk_100757ED0);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A1298;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "addOrUpdateManagedApp";
  *(v37 + 40) = 21;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A12A0;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A12A8, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_100282134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  v9 = type metadata accessor for ManagedAppDeclaration();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest();
  v8[22] = updated;
  v8[23] = *(updated - 8);
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_100282254, 0, 0);
}

uint64_t sub_100282254()
{
  sub_100302E04(&qword_10077FEE0, &type metadata accessor for DDMAddOrUpdateManagedAppRequest);
  sub_100302E04(&qword_10077FEE8, &type metadata accessor for DDMAddOrUpdateManagedAppRequest);
  decodeXPCValues<A>(from:)();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1002823F4;

  return sub_100324690(v0 + 88);
}

uint64_t sub_1002823F4()
{

  return _swift_task_switch(sub_1002824F0, 0, 0);
}

uint64_t sub_1002824F0()
{
  v1 = (*(v0 + 144) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
  *(v0 + 208) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);

  DDMAddOrUpdateManagedAppRequest.app.getter();
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[10];
  v5 = v1[12];
  v12 = *(v1 + 3);
  v6 = v1[3];
  v7 = sub_100006D8C(v1, v6);
  *(v0 + 40) = v12;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  v8 = sub_10020A748((v0 + 16));
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_100282670;
  v10 = *(v0 + 168);

  return sub_10023B4DC(v10, v0 + 88, v0 + 16);
}

uint64_t sub_100282670()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);

  if (v0)
  {
    v3 = sub_100282870;
  }

  else
  {
    sub_10000710C((v2 + 2));
    v3 = sub_1002827D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002827D4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_10000710C((v0 + 11));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100282870()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_10000710C((v0 + 11));
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_10028294C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100757EF0);
  sub_1002FC188(&unk_100757F10);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v4;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A1278;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "removeManagedApp";
  *(v37 + 40) = 16;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A1280;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A1288, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_100282EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[17] = a6;
  return _swift_task_switch(sub_100282F10, 0, 0);
}

uint64_t sub_100282F10()
{
  decodeXPCValues<A>(from:)();
  v1 = v0[16];
  v0[20] = v0[15];
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100283028;

  return sub_100324690((v0 + 10));
}

uint64_t sub_100283028()
{

  return _swift_task_switch(sub_100283124, 0, 0);
}

uint64_t sub_100283124()
{
  v1 = (v0[19] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
  v0[23] = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[10];
  v6 = v1[12];
  v7 = sub_100006D8C(v1, v2);
  v0[5] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v8 = sub_10020A748(v0 + 2);
  (*(*(v2 - 8) + 16))(v8, v7, v2);

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_100283280;
  v11 = v0[20];
  v10 = v0[21];

  return sub_10024C860(v11, v10, (v0 + 10), (v0 + 2));
}

uint64_t sub_100283280()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100283428;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002833C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002833C4()
{
  sub_10000710C(v0 + 80);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100283428()
{
  sub_10000710C(v0 + 80);
  sub_10000710C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002834C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F0C48(&unk_100780380);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_1001F0C48(&qword_10077F8D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = enum case for LogKey.Prefix.ddm(_:);
  v18 = type metadata accessor for LogKey.Prefix();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  v52 = sub_1001F6740(&off_100757F30);
  sub_1002FC188(&unk_100757F50);
  v51 = swift_allocObject();
  *(v51 + 16) = v3;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = objc_opt_self();
  v22 = v3;
  v23 = [v21 currentConnection];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v26 = swift_dynamicCast();
    v27 = v58;
    if (!v26)
    {
      v27 = 0;
    }

    v50 = v27;
    [v24 auditToken];
    v45 = v57;
    v46 = v56;
  }

  else
  {
    v50 = 0;
    v46 = 0u;
    v45 = 0u;
  }

  v59 = v24 == 0;
  sub_100005934(v9, v7, &unk_100780380);
  sub_100005934(v16, v14, &qword_10077F8D0);
  v28 = *(v11 + 80);
  v47 = v24;
  v29 = (v28 + 49) & ~v28;
  v30 = v29 + v12;
  v49 = v9;
  v31 = (v29 + v12) & 0xFFFFFFFFFFFFFFF8;
  v44 = v7;
  v32 = (v31 + 75) & 0xFFFFFFFFFFFFFFF8;
  v48 = v16;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = "currentDeclarationKeys";
  *(v34 + 40) = 22;
  *(v34 + 48) = 2;
  sub_10020A668(v14, v34 + v29, &qword_10077F8D0);
  *(v34 + v30) = 0;
  *(v34 + v31 + 8) = v50;
  v35 = v34 + ((v31 + 19) & 0xFFFFFFFFFFFFFFF8);
  v36 = v45;
  *v35 = v46;
  *(v35 + 16) = v36;
  *(v35 + 32) = v59;
  v37 = v34 + ((v31 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v37 = v52;
  *(v37 + 8) = 1;
  v38 = (v34 + v32);
  v39 = v51;
  *v38 = &unk_1006A1230;
  v38[1] = v39;
  v40 = (v34 + v33);
  v41 = v55;
  *v40 = v54;
  v40[1] = v41;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v44, &unk_1006A1240, v34);

  swift_unknownObjectRelease();

  sub_1000032A8(v49, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}

uint64_t sub_100283A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a1;
  v7[4] = a7;
  v8 = type metadata accessor for Logger();
  v7[5] = v8;
  v7[6] = *(v8 - 8);
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_100283AC0, 0, 0);
}

uint64_t sub_100283AC0()
{
  v0[8] = *(*sub_100006D8C((v0[4] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v0[4] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100283B88;

  return sub_10024FD34();
}

uint64_t sub_100283B88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_100283F10;
  }

  else
  {
    v4 = sub_100283C9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100283C9C()
{
  v20 = v0;

  static Logger.ddm.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 80);
    v16 = *(v0 + 48);
    v17 = *(v0 + 40);
    v18 = *(v0 + 56);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v4 = 138412546;
    v7 = sub_100625FA0();
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2082;
    *(v0 + 16) = v3;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = sub_1002346CC(v8, v9, &v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Returning current declaration keys:\n%{public}s", v4, 0x16u);
    sub_1000032A8(v5, &qword_10077F920);

    sub_10000710C(v6);

    (*(v16 + 8))(v18, v17);
  }

  else
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);
  }

  **(v0 + 24) = *(v0 + 80);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100283F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100283FB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v53 = *(v13 - 8);
  v14 = *(v53 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.ddm(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100757F70);
  sub_1002FC188(&unk_100757F90);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v54 = v21;
  v21[4] = v4;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v62;
    if (!v28)
    {
      v29 = 0;
    }

    v52 = v29;
    [v26 auditToken];
    v48 = v61;
    v49 = v60;
  }

  else
  {
    v52 = 0;
    v49 = 0u;
    v48 = 0u;
  }

  v63 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v30 = v55;
  sub_100005934(v17, v55, &qword_10077F8D0);
  v31 = v53[80];
  v50 = v26;
  v51 = v12;
  v32 = (v31 + 49) & ~v31;
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v53 = v17;
  v47 = v10;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "getDeclarationStatus";
  *(v37 + 40) = 20;
  *(v37 + 48) = 2;
  sub_10020A668(v30, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 0;
  *(v37 + v34 + 8) = v52;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v48;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v54;
  *v41 = &unk_1006A11D8;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v47, &unk_1006A11E8, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v53, &qword_10077F8D0);
}

uint64_t sub_100284504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v14;
  v8[18] = a1;
  v8[19] = a7;
  v9 = type metadata accessor for Logger();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FE90);
  v8[26] = swift_task_alloc();
  v10 = type metadata accessor for ManagedAppStatus();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v11 = type metadata accessor for DDMDeclarationStatusRequest();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002846E4, 0, 0);
}

uint64_t sub_1002846E4()
{
  sub_100302E04(&qword_10077FE98, &type metadata accessor for DDMDeclarationStatusRequest);
  sub_100302E04(&qword_10077FEA0, &type metadata accessor for DDMDeclarationStatusRequest);
  decodeXPCValues<A>(from:)();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1002848B8;

  return sub_100324690(v0 + 16);
}

uint64_t sub_1002848B8()
{

  return _swift_task_switch(sub_1002849B4, 0, 0);
}

uint64_t sub_1002849B4()
{
  v1 = DDMDeclarationStatusRequest.declarationKey.getter();
  v0[36] = v1;
  v0[37] = v2;
  v3 = v0[21];
  if (v2)
  {
    v4 = v1;
    v5 = v2;
    v6 = (v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    v0[38] = *(*sub_100006D8C((v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);
    v7 = v6[3];
    v8 = v6[10];
    v9 = sub_100006D8C(v6, v7);
    v0[15] = v7;
    v0[16] = v8;
    v10 = sub_10020A748(v0 + 12);
    (*(*(v7 - 8) + 16))(v10, v9, v7);

    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_100284C2C;
    v12 = v0[26];

    return sub_1002501BC(v12, v4, v5, (v0 + 2), (v0 + 12));
  }

  else
  {
    v14 = (v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    v0[41] = *(*sub_100006D8C((v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);

    v15 = sub_100625FA0();
    v0[42] = v15;
    v16 = v14[3];
    v17 = v14[10];
    v18 = sub_100006D8C(v14, v16);
    v0[10] = v16;
    v0[11] = v17;
    v19 = sub_10020A748(v0 + 7);
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    v20 = swift_task_alloc();
    v0[43] = v20;
    *v20 = v0;
    v20[1] = sub_100284D60;

    return sub_10025131C((v0 + 2), v15, (v0 + 7));
  }
}

uint64_t sub_100284C2C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_1002856FC;
  }

  else
  {
    sub_10000710C(v2 + 96);
    v3 = sub_100284E9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100284D60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_1002857E8;
  }

  else
  {
    sub_10000710C(v3 + 56);
    v4 = sub_1002852D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100284E9C()
{
  v46 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 256);

    sub_1000032A8(v3, &qword_10077FE90);
    sub_10000710C(v0 + 16);
    (*(v5 + 8))(v4, v6);
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v44 = *(v2 + 32);
    v44(v8, v3, v1);
    static Logger.ddm.getter();
    (*(v2 + 16))(v9, v8, v1);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 296);
    if (v12)
    {
      v14 = *(v0 + 288);
      v15 = *(v0 + 224);
      v39 = *(v0 + 240);
      v40 = *(v0 + 216);
      v41 = *(v0 + 184);
      v42 = *(v0 + 176);
      v43 = *(v0 + 200);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v16 = 138412802;
      v18 = sub_100625FA0();
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1002346CC(v14, v13, &v45);

      *(v16 + 14) = v19;
      *(v16 + 22) = 2082;
      v20 = _s22ManagedAppDistribution0aB6StatusVs23CustomStringConvertible0abC6DaemonsADP11descriptionSSvgTW_0();
      v22 = v21;
      (*(v15 + 8))(v39, v40);
      v23 = sub_1002346CC(v20, v22, &v45);

      *(v16 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Returning current status for '%{public}s': %{public}s", v16, 0x20u);
      sub_1000032A8(v17, &qword_10077F920);

      swift_arrayDestroy();

      (*(v41 + 8))(v43, v42);
    }

    else
    {
      v24 = *(v0 + 240);
      v25 = *(v0 + 216);
      v26 = *(v0 + 224);
      v27 = *(v0 + 200);
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);

      (*(v26 + 8))(v24, v25);
      (*(v29 + 8))(v27, v28);
    }

    v31 = *(v0 + 264);
    v30 = *(v0 + 272);
    v33 = *(v0 + 248);
    v32 = *(v0 + 256);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    sub_1001F0C48(&qword_10077FEA8);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_10069E680;
    v44(v7 + v36, v33, v35);
    sub_10000710C(v0 + 16);
    (*(v31 + 8))(v30, v32);
  }

  **(v0 + 144) = v7;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1002852D8()
{
  v50 = v0;
  static Logger.ddm.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v41 = v2;
    log = v1;
    v3 = *(v0 + 352);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v4 = 138412546;
    v7 = sub_100625FA0();
    *(v4 + 4) = v7;
    v40 = v5;
    *v5 = v7;
    *(v4 + 12) = 2082;
    v8 = *(v3 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v38 = v6;
      v39 = v4;
      v10 = *(v0 + 352);
      v11 = *(v0 + 224);
      v49 = _swiftEmptyArrayStorage;
      sub_100526304(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v12 = *(v11 + 16);
      v11 += 16;
      v13 = v10 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v43 = *(v11 + 56);
      v45 = v12;
      v14 = (v11 - 8);
      do
      {
        v15 = *(v0 + 232);
        v16 = *(v0 + 216);
        v45(v15, v13, v16);
        v17 = _s22ManagedAppDistribution0aB6StatusVs23CustomStringConvertible0abC6DaemonsADP11descriptionSSvgTW_0();
        v19 = v18;
        (*v14)(v15, v16);
        v49 = v9;
        v21 = v9[2];
        v20 = v9[3];
        if (v21 >= v20 >> 1)
        {
          sub_100526304((v20 > 1), v21 + 1, 1);
          v9 = v49;
        }

        v9[2] = v21 + 1;
        v22 = &v9[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v13 += v43;
        --v8;
      }

      while (v8);
      v6 = v38;
      v4 = v39;
    }

    v29 = *(v0 + 264);
    v46 = *(v0 + 256);
    v47 = *(v0 + 272);
    v30 = *(v0 + 184);
    v44 = *(v0 + 192);
    v31 = *(v0 + 176);
    *(v0 + 136) = v9;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    v35 = sub_1002346CC(v32, v34, &v48);

    *(v4 + 14) = v35;
    _os_log_impl(&_mh_execute_header, log, v41, "[%@] Returning current status for all declarations:\n%{public}s", v4, 0x16u);
    sub_1000032A8(v40, &qword_10077F920);

    sub_10000710C(v6);

    (*(v30 + 8))(v44, v31);
    sub_10000710C(v0 + 16);
    (*(v29 + 8))(v47, v46);
  }

  else
  {
    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v25 = *(v0 + 256);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);

    (*(v27 + 8))(v26, v28);
    sub_10000710C(v0 + 16);
    (*(v23 + 8))(v24, v25);
  }

  **(v0 + 144) = *(v0 + 352);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1002856FC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  sub_10000710C((v0 + 2));
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 12));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002857E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  sub_10000710C((v0 + 2));
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t _s22ManagedAppDistribution0aB6StatusVs23CustomStringConvertible0abC6DaemonsADP11descriptionSSvgTW_0()
{
  v36 = type metadata accessor for ManagedAppStatus.Reason();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ManagedAppStatus.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v6._countAndFlagsBits = ManagedAppStatus.declarationIdentifier.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x6C646E7562207B20;
  v7._object = 0xEE00203D20444965;
  String.append(_:)(v7);
  v8._countAndFlagsBits = ManagedAppStatus.bundleID.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x206574617473202CLL;
  v9._object = 0xEA0000000000203DLL;
  String.append(_:)(v9);
  ManagedAppStatus.state.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v3 + 8))(v5, v2);
  v10._countAndFlagsBits = 0x6E6F73616572202CLL;
  v10._object = 0xED00005B203D2073;
  String.append(_:)(v10);
  v11 = ManagedAppStatus.reasons.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100526304(0, v12, 0);
    v13 = v37;
    v15 = *(v0 + 16);
    v14 = v0 + 16;
    v16 = *(v14 + 64);
    v32 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v33 = *(v14 + 56);
    v34 = v15;
    do
    {
      v19 = v35;
      v18 = v36;
      v34(v35, v17, v36);
      v20 = ManagedAppStatus.Reason.rawValue.getter();
      v22 = v21;
      (*(v14 - 8))(v19, v18);
      v37 = v13;
      v24 = v13[2];
      v23 = v13[3];
      if (v24 >= v23 >> 1)
      {
        sub_100526304((v23 > 1), v24 + 1, 1);
        v13 = v37;
      }

      v13[2] = v24 + 1;
      v25 = &v13[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v17 += v33;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v37 = v13;
  sub_1001F0C48(&unk_10077FB40);
  sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 8200285;
  v30._object = 0xE300000000000000;
  String.append(_:)(v30);
  return v38;
}

uint64_t sub_100285CFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F0C48(&unk_100780380);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_1001F0C48(&qword_10077F8D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for LogKey.Prefix();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1006A11B8;
  *(v18 + 24) = v17;
  v50 = v18;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = objc_opt_self();
  v21 = v3;
  v51 = v17;

  v22 = [v20 currentConnection];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v25 = swift_dynamicCast();
    v26 = v57;
    if (!v25)
    {
      v26 = 0;
    }

    v49 = v26;
    [v23 auditToken];
    v43 = v56;
    v46 = v55;
  }

  else
  {
    v49 = 0;
    v46 = 0u;
    v43 = 0u;
  }

  v58 = v23 == 0;
  sub_100005934(v9, v7, &unk_100780380);
  sub_100005934(v15, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v27 = *(v11 + 80);
  v44 = v23;
  v45 = v7;
  v28 = (v27 + 49) & ~v27;
  v29 = v28 + v12;
  v47 = v9;
  v48 = v15;
  v30 = (v28 + v12) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 75) & 0xFFFFFFFFFFFFFFF8;
  v32 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = "resetManagedAppInstallHistory";
  *(v34 + 40) = 29;
  *(v34 + 48) = 2;
  sub_10020A668(v32, v34 + v28, &qword_10077F8D0);
  *(v34 + v29) = 0;
  v35 = v50;
  *(v34 + v30 + 8) = v49;
  v36 = v34 + ((v30 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v43;
  *v36 = v46;
  *(v36 + 16) = v37;
  *(v36 + 32) = v58;
  v38 = v34 + ((v30 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v34 + v31);
  *v39 = &unk_1006A11C0;
  v39[1] = v35;
  v40 = (v34 + v33);
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A11C8, v34);

  swift_unknownObjectRelease();

  sub_1000032A8(v47, &unk_100780380);
  return sub_1000032A8(v48, &qword_10077F8D0);
}