uint64_t sub_1001F2E58()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 1320) = v3;
  *v3 = v2;
  v3[1] = sub_1001F2F98;

  return sub_1001F3BC0();
}

uint64_t sub_1001F2F98()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2 = sub_1001F3938;
  }

  else
  {
    v2 = sub_1001F30AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F30AC()
{
  v1 = *(v0 + 1104);

  static Logger.install.getter();
  sub_1001F5A04(v1, v0 + 224);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v0 + 1296);
    v13 = *(v0 + 1256);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  else
  {
    v13 = *(v0 + 1256);
  }

  v8 = v2;
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1184);

  v9(v13, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001F3324()
{
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v2 = sub_1001F36B4;
  }

  else
  {
    v2 = sub_1001F3438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F3438()
{
  v1 = v0[138];
  static Logger.install.getter();
  sub_1001F5A04(v1, (v0 + 80));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[138];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + 96);
    v13 = v0[152];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  else
  {
    v13 = v0[152];
  }

  v9 = v0[160];
  v10 = v0[148];

  v9(v13, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001F36B4()
{
  v1 = v0[138];
  static Logger.install.getter();
  sub_1001F5A04(v1, (v0 + 67));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[138];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + 96);
    v14 = v0[151];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  else
  {
    v14 = v0[151];
  }

  v9 = v2;
  v10 = v0[160];
  v11 = v0[148];

  v10(v14, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001F3938()
{
  v1 = *(v0 + 1104);

  static Logger.install.getter();
  sub_1001F5A04(v1, v0 + 120);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v0 + 1296);
    v12 = *(v0 + 1200);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Finished background asset relay task", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  else
  {
    v12 = *(v0 + 1200);
  }

  v8 = *(v0 + 1280);
  v9 = *(v0 + 1184);

  v8(v12, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001F3BC0()
{
  v1[41] = v0;
  v2 = type metadata accessor for AppInstallRequestType();
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[47] = v3;
  v1[48] = *(v3 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_1001F3D0C, 0, 0);
}

void sub_1001F3D0C()
{
  v69 = v0;
  v1 = v0[41];
  if (*(v1 + 40))
  {
    static Logger.install.getter();
    sub_1001F5A04(v1, (v0 + 2));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v1);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[41];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = *(v4 + 96);
      *(v5 + 4) = v7;
      *v6 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] No essential max install size provided", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v10 = v0[48];
    v9 = v0[49];
    v11 = v0[47];

    (*(v10 + 8))(v9, v11);
    goto LABEL_21;
  }

  v12 = *(v1 + 32);
  v13 = *(v1 + 80);
  v14 = v13 + v12;
  v0[52] = v13 + v12;
  if (__CFADD__(v13, v12))
  {
    __break(1u);
    return;
  }

  v15 = sub_1001F468C();
  v16 = v15;
  if ((v15 & 0x8000000000000000) == 0 && v15 >= v14)
  {
    goto LABEL_21;
  }

  v17 = v0[41];
  static Logger.install.getter();
  sub_1001F5A04(v17, (v0 + 15));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_1001F5A3C(v17);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[41];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412802;
    v23 = *(v20 + 96);
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 2050;
    *(v21 + 14) = v14;
    *(v21 + 22) = 2050;
    *(v21 + 24) = v16;
    v24 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Insufficient space. %{public}llu needed, %{public}lld available", v21, 0x20u);
    sub_1000032A8(v22, &qword_10077F920);
  }

  v66 = v14;
  v25 = v0[51];
  v27 = v0[47];
  v26 = v0[48];
  v28 = v0[45];
  v29 = v0[46];
  v30 = v0[42];
  v31 = v0[43];
  v32 = v0[41];

  v33 = *(v26 + 8);
  v33(v25, v27);
  v34 = *(*(v32 + 88) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v35 = *(*v34 + class metadata base offset for ManagedBuffer + 16);
  v36 = (*(*v34 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v34 + v36));
  v64 = v34 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
  v65 = *(v31 + 16);
  v65(v29, v64 + v35, v30);
  os_unfair_lock_unlock((v34 + v36));
  (*(v31 + 32))(v28, v29, v30);
  v37 = (*(v31 + 88))(v28, v30);
  if (v37 == enum case for AppInstallRequestType.automaticUpdate(_:) || v37 == enum case for AppInstallRequestType.update(_:) || v37 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v37 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    v63 = v35;
    v67 = v33;
    v39 = v0[41];
    static Logger.install.getter();
    sub_1001F5A04(v39, (v0 + 28));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    sub_1001F5A3C(v39);
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[50];
    v44 = v0[47];
    if (v42)
    {
      v62 = v0[50];
      v46 = v0[43];
      v45 = v0[44];
      v58 = v0[42];
      v61 = v41;
      v47 = v0[41];
      v48 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = v60;
      *v48 = 138412546;
      v49 = *(v47 + 96);
      *(v48 + 4) = v49;
      *v59 = v49;
      *(v48 + 12) = 2082;
      v50 = v49;
      os_unfair_lock_lock((v34 + v36));
      v65(v45, v64 + v63, v58);
      os_unfair_lock_unlock((v34 + v36));
      v51 = AppInstallRequestType.rawValue.getter();
      v53 = v52;
      (*(v46 + 8))(v45, v58);
      v54 = sub_1002346CC(v51, v53, &v68);

      *(v48 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v40, v61, "[%@] Not failing for insufficient space for update of type: %{public}s", v48, 0x16u);
      sub_1000032A8(v59, &qword_10077F920);

      sub_10000710C(v60);

      v56 = v44;
      v55 = v62;
    }

    else
    {

      v55 = v43;
      v56 = v44;
    }

    v67(v55, v56);
LABEL_21:

    v57 = v0[1];

    v57();
    return;
  }

  (*(v0[43] + 8))(v0[45], v0[42]);
  v38 = swift_task_alloc();
  v0[53] = v38;
  *v38 = v0;
  v38[1] = sub_1001F43D0;

  sub_1001F4CB4(v66);
}

uint64_t sub_1001F43D0()
{

  return _swift_task_switch(sub_1001F44CC, 0, 0);
}

uint64_t sub_1001F44CC()
{
  v1 = type metadata accessor for MarketplaceKitError();
  sub_1001F6398(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  v3 = v2;
  v4 = [objc_opt_self() bytes];
  sub_100006190(0, &qword_10077E900);
  Measurement.init(value:unit:)();
  (*(*(v1 - 8) + 104))(v3, enum case for MarketplaceKitError.insufficientStorageSpace(_:), v1);
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001F468C()
{
  v1 = v0;
  v28 = type metadata accessor for Logger();
  v2 = *(v28 - 8);
  v3 = __chkstk_darwin(v28);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = type metadata accessor for URLResourceValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  sub_1001F0C48(&qword_10077E920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v15 = NSURLVolumeAvailableCapacityForImportantUsageKey;
  sub_1001F5C78(inited);
  swift_setDeallocating();
  sub_1001F643C(inited + 32);
  v29 = v12;
  URL.resourceValues(forKeys:)();

  v16 = URLResourceValues.volumeAvailableCapacityForImportantUsage.getter();
  if (v17)
  {
    static Logger.install.getter();
    sub_1001F5A04(v1, v33);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1001F5A3C(v1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v2;
      v22 = v21;
      *v20 = 138412290;
      v23 = *(v1 + 96);
      *(v20 + 4) = v23;
      *v21 = v23;
      v24 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Failure to get available capacity", v20, 0xCu);
      sub_1000032A8(v22, &qword_10077F920);
      v2 = v27;
    }

    (*(v2 + 8))(v6, v28);
    (*(v8 + 8))(v10, v7);
    (*(v30 + 8))(v29, v31);
    return 0;
  }

  else
  {
    v26 = v16;
    (*(v8 + 8))(v10, v7);
    (*(v30 + 8))(v29, v31);
    return v26;
  }
}

uint64_t sub_1001F4CB4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_1001F0C48(&qword_10077E908);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001F4E44, 0, 0);
}

uint64_t sub_1001F4E44()
{
  v1 = v0[16];
  static Logger.install.getter();
  sub_1001F5A04(v1, (v0 + 2));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1001F5A3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + 96);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Displaying insufficient space for essential assets dialog", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  v50 = v0[24];
  v47 = v0[23];
  v13 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v44 = v0[18];
  v45 = v0[17];
  v16 = v0[16];
  v17 = v0[15];

  (*(v9 + 8))(v10, v12);
  v18 = sub_1001F6204(v17);
  v20 = v19;
  sub_100631A5C(*v16, *(v16 + 8), v11);
  sub_100631DE0(v18, v20, v50);

  sub_100632164(v47);
  sub_10063217C(v44);
  (*(v14 + 56))(v44, 0, 1, v15);
  v21 = *(v14 + 16);
  v21(v13, v11, v15);
  v22 = sub_1005909DC(v13);
  v52 = v23;
  v53 = v22;
  v21(v13, v50, v15);
  v24 = sub_1005909DC(v13);
  v49 = v25;
  v51 = v24;
  v21(v13, v47, v15);
  v26 = sub_1005909DC(v13);
  v46 = v27;
  v48 = v26;
  sub_100005934(v44, v45, &qword_10077E908);
  if ((*(v14 + 48))(v45, 1, v15) == 1)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = v0[21];
    v31 = v0[22];
    v33 = v0[19];
    v32 = v0[20];
    (*(v32 + 32))(v31, v0[17], v33);
    v21(v30, v31, v33);
    v28 = sub_1005909DC(v30);
    v29 = v34;
    (*(v32 + 8))(v31, v33);
  }

  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v38 = v0[19];
  v39 = v0[20];
  v40 = v0[18];
  type metadata accessor for SystemAlert();
  v41 = swift_allocObject();
  v0[29] = v41;
  swift_defaultActor_initialize();
  sub_1000032A8(v40, &qword_10077E908);
  v42 = *(v39 + 8);
  v42(v37, v38);
  v42(v36, v38);
  v42(v35, v38);
  *(v41 + 112) = v53;
  *(v41 + 120) = v52;
  *(v41 + 128) = v51;
  *(v41 + 136) = v49;
  *(v41 + 144) = v48;
  *(v41 + 152) = v46;
  *(v41 + 160) = v28;
  *(v41 + 168) = v29;
  *(v41 + 176) = 0;

  return _swift_task_switch(sub_1001F523C, v41, 0);
}

uint64_t sub_1001F523C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 240) = qword_100786178;

  return _swift_task_switch(sub_1001F52D4, v1, 0);
}

uint64_t sub_1001F52D4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = sub_1001F6398(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1001F540C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 33, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1001F540C()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_1001F5538, v1, 0);
}

uint64_t sub_1001F5538()
{

  *(v0 + 265) = *(v0 + 264);

  return _swift_task_switch(sub_1001F55A8, 0, 0);
}

uint64_t sub_1001F55A8()
{
  if (!*(v0 + 265))
  {
    sub_1001F5678();
  }

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001F5678()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1001F0C48(&unk_1007809F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v28[-v10 - 8];
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    sub_100005934(v11, v9, &unk_1007809F0);
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    v17 = 0;
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      URL._bridgeToObjectiveC()(v16);
      v17 = v18;
      (*(v15 + 8))(v9, v14);
    }

    sub_100528684(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v13 openSensitiveURL:v17 withOptions:isa];

    if ((v20 & 1) == 0)
    {
      static Logger.install.getter();
      sub_1001F5A04(v1, v28);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      sub_1001F5A3C(v1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = *(v1 + 96);
        *(v23 + 4) = v25;
        *v24 = v25;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Failed to open storage management", v23, 0xCu);
        sub_1000032A8(v24, &qword_10077F920);
      }

      (*(v3 + 8))(v5, v2);
    }

    return sub_1000032A8(v11, &unk_1007809F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F5A6C()
{
  v7 = 0u;
  v8 = 0u;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v0 = [objc_opt_self() standardUserDefaults];
    if (!v0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = String._bridgeToObjectiveC()();
    v0 = [v1 initWithSuiteName:v2];

    if (!v0)
    {
      goto LABEL_11;
    }
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v6[0] = v9;
  v6[1] = v10;
  if (*(&v10 + 1))
  {
    sub_1000032A8(&v7, &qword_100783A30);
    sub_1001F6498(v6, &v9);
    if (*(&v10 + 1))
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1000032A8(&v9, &qword_100783A30);
    return 2;
  }

LABEL_11:
  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_10;
  }

LABEL_12:
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

void *sub_1001F5C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E928);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001F5E6C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:1];
  [v4 setFormatterBehavior:1040];
  [v4 setMinimumFractionDigits:a2];
  v5 = [v4 stringFromNumber:a1];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1001F5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = [objc_opt_self() preferredLanguages];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v7 = objc_allocWithZone(NSBundle);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithPath:v8];

  if (v9)
  {
    v10 = [v9 localizations];
    if (!v10)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = Array._bridgeToObjectiveC()().super.isa;
    }

    v11 = [objc_opt_self() preferredLocalizationsFromArray:v10 forPreferences:isa];

    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
    if (*(v12 + 16))
    {

      v14 = String._bridgeToObjectiveC()();
    }

    else
    {

      v14 = 0;
    }

    v17 = [v9 localizedStringForKey:v13 value:0 table:0 localization:v14];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001F0C48(&qword_10077E910);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10069E680;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1001F63E8();
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;

    v16 = String.init(format:_:)();
  }

  else
  {

    v15._countAndFlagsBits = 0x736574796220;
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    return a3;
  }

  return v16;
}

uint64_t sub_1001F6204(double a1)
{
  v1 = 1.0e12;
  if (a1 >= 1.0e12)
  {
    v7 = 0;
LABEL_10:
    v8 = &off_100756E90 + 2 * v7;
    v9 = v8[4];
    v10 = v8[5];
    v11 = round(a1 / v1 * 10.0) / 10.0;
    v12 = objc_allocWithZone(NSNumber);

    v13 = [v12 initWithDouble:v11];
    v14 = sub_1001F5E6C(v13, 0);
    v16 = v15;

    v6 = sub_1001F5F3C(v9, v10, v14, v16);

    goto LABEL_11;
  }

  v1 = 1000000000.0;
  if (a1 >= 1000000000.0)
  {
    v7 = 1;
    goto LABEL_10;
  }

  v1 = 1000000.0;
  if (a1 >= 1000000.0)
  {
    v7 = 2;
    goto LABEL_10;
  }

  v1 = 1000.0;
  if (a1 >= 1000.0)
  {
    v7 = 3;
    goto LABEL_10;
  }

  v2 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v3 = sub_1001F5E6C(v2, 0);
  v5 = v4;

  v6 = sub_1001F5F3C(0xD000000000000012, 0x80000001006C4140, v3, v5);
LABEL_11:

  return v6;
}

uint64_t sub_1001F6398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001F63E8()
{
  result = qword_10077E918;
  if (!qword_10077E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E918);
  }

  return result;
}

uint64_t sub_1001F643C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1001F6498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int sub_1001F64A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100783A60);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100783A70);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        result = static ManagedAppDeclaration.ManagementScope.== infix(_:_:)();
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E940);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v3;
    v30 = a1 + 32;
    v28 = v1;
    while (1)
    {
      v6 = (v30 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v31 = v4;
      if (v9)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v19 = (v17 + 32 * v13);
          result = *v19;
          v21 = v19[2];
          v20 = v19[3];
          v22 = *v19 == v8 && v19[1] == v7;
          if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v20)
            {
              if (v9)
              {
                v23 = v21 == v10 && v20 == v9;
                if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {

LABEL_4:

                  v1 = v28;
                  v3 = v29;
                  goto LABEL_5;
                }
              }
            }

            else if (!v9)
            {
              goto LABEL_4;
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v1 = v28;
        v18 = v29;
        v17 = *(v29 + 48);
      }

      else
      {
        v18 = v29;
      }

      *(v5 + 8 * v14) = v15 | v16;
      v24 = (v17 + 32 * v13);
      *v24 = v8;
      v24[1] = v7;
      v24[2] = v10;
      v24[3] = v9;
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v3 = v18;
      *(v18 + 16) = v27;
LABEL_5:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_1001F6964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_10077E948);
    v45 = v1;
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v52 = v3 + 56;
    v43 = v3;
    v44 = a1 + 32;
    while (1)
    {
      v6 = (v44 + (v4 << 6));
      v7 = v6[1];
      v54 = *v6;
      v55 = v7;
      v8 = v6[3];
      v56 = v6[2];
      v57 = v8;
      v9 = BYTE8(v56);
      v11 = *(&v7 + 1);
      v10 = v56;
      v13 = *(&v54 + 1);
      v12 = v7;
      v14 = v54;
      Hasher.init(_seed:)();
      sub_1001F71F4(&v54, v53);
      v51 = v14;
      String.hash(into:)();
      v48 = v12;
      Hasher._combine(_:)(v12);
      v49 = v11;
      Hasher._combine(_:)(v11);
      v50 = v10;
      Hasher._combine(_:)(v10);
      v15 = v57;
      v47 = v9;
      Hasher._combine(_:)(v9);
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = *(v52 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      v22 = *(v3 + 48);
      if (((1 << v18) & v20) != 0)
      {
        v46 = v4;
        v23 = ~v17;
        v24 = v22;
        do
        {
          v25 = v22 + (v18 << 6);
          result = *v25;
          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          v28 = *(v25 + 32);
          v29 = *(v25 + 40);
          v30 = *(v25 + 48);
          v31 = *(v25 + 56);
          v32 = *v25 == v51 && *(v25 + 8) == v13;
          if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v22 = v24, (result & 1) != 0))
          {
            v33 = v27 == v48 && v26 == v49;
            v34 = v33 && v28 == v50;
            if (v34 && ((v47 ^ v29) & 1) == 0)
            {
              v35 = v30 == v15 && v31 == *(&v15 + 1);
              if (v35 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v22 = v24, (result & 1) != 0))
              {
                sub_1001F7250(&v54);
                v5 = v45;
                v4 = v46;
                v3 = v43;
                goto LABEL_4;
              }
            }
          }

          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = *(v52 + 8 * (v18 >> 6));
          v21 = 1 << v18;
        }

        while ((v20 & (1 << v18)) != 0);
        v3 = v43;
        v22 = *(v43 + 48);
        v5 = v45;
        v4 = v46;
      }

      else
      {
        v5 = v45;
      }

      *(v52 + 8 * v19) = v20 | v21;
      v36 = (v22 + (v18 << 6));
      v37 = v54;
      v38 = v55;
      v39 = v57;
      v36[2] = v56;
      v36[3] = v39;
      *v36 = v37;
      v36[1] = v38;
      v40 = *(v3 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v3 + 16) = v42;
LABEL_4:
      if (++v4 == v5)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1001F6C18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001F0C48(&unk_100783A10);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1001F6F08(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_1001F0C48(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_100006190(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_100006190(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

__n128 sub_1001F72A4(uint64_t a1, __int128 *a2)
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

uint64_t sub_1001F72D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1001F7318(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_1001F7380()
{
  v22[0] = type metadata accessor for Restore();
  v1 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 120);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100526304(0, v5, 0);
    v6 = v23;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = v22[0];
    do
    {
      sub_1001F75AC(v7, v3);
      v10 = &v3[*(v9 + 36)];
      v12 = *v10;
      v11 = *(v10 + 1);

      sub_1001F7610(v3);
      v23 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_100526304((v13 > 1), v14 + 1, 1);
        v9 = v22[0];
        v6 = v23;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v12;
      v15[5] = v11;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v23 = 0xD000000000000011;
  v24 = 0x80000001006C4210;
  v22[1] = v6;
  sub_1001F0C48(&unk_10077FB40);
  sub_1001F766C();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8200285;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  return v23;
}

uint64_t sub_1001F75AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Restore();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F7610(uint64_t a1)
{
  v2 = type metadata accessor for Restore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F766C()
{
  result = qword_1007803B0;
  if (!qword_1007803B0)
  {
    sub_1001F76D0(&unk_10077FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007803B0);
  }

  return result;
}

uint64_t sub_1001F76D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1001F7718(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001F773C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1001F7784(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001F77F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001F7808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F7850(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001F78B0()
{
  v1[22] = v0;
  v2 = type metadata accessor for Logger();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001F79A8, 0, 0);
}

uint64_t sub_1001F79A8()
{
  *(v0 + 216) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 216));

  if (!*(v0 + 216) || !AppBooleanValue)
  {
    v4 = *(v0 + 176);
    sub_100006D8C(v4, v4[3]);

    v5 = sub_1000071AC();
    *(v0 + 144) = 0xD000000000000012;
    *(v0 + 152) = 0x80000001006C2DF0;
    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 144;
    v7 = sub_10020A1BC(sub_1001F7FFC, v6, v5);

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 176);
      static Logger.daemon.getter();
      v27 = v0 + 16;
      sub_1001F801C(v8, v0 + 16);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 208);
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v26 = v12;
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = *(v0 + 56);
        sub_1001F8054(v27);
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Install sheet is enabled for App Store but no other marketplace has ever been installed, disabling", v15, 0xCu);
        sub_1001F8084(v16);

        (*(v13 + 8))(v26, v14);
      }

      else
      {

        sub_1001F8054(v27);
        (*(v13 + 8))(v12, v14);
      }

      sub_100006D8C(*(v0 + 176), v4[3]);

      v18 = sub_1000071AC();
      *(v0 + 160) = 0xD000000000000012;
      *(v0 + 168) = 0x80000001006C2DF0;
      v19 = swift_task_alloc();
      *(v19 + 16) = v0 + 160;
      v20 = sub_10020A1BC(sub_1001F80EC, v19, v18);

      if ((v20 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100009530(0, *(v18 + 16) + 1, 1, v18);
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          v18 = sub_100009530((v21 > 1), v22 + 1, 1, v18);
        }

        *(v18 + 16) = v22 + 1;
        v23 = v18 + 16 * v22;
        *(v23 + 32) = 0xD000000000000012;
        *(v23 + 40) = 0x80000001006C2DF0;
      }

      sub_100651160(v18);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001F7F40()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1001F7F70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_1001F78B0();
}

uint64_t sub_1001F8084(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077F920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001F8108(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v75) = a5;
  LODWORD(v74) = a4;
  v76 = a3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_10077E950);
  v10 = __chkstk_darwin(v9 - 8);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v65 - v12;
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v68 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v65 - v19;
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v81 = &v65 - v23;
  v24 = __chkstk_darwin(v22);
  v80 = &v65 - v25;
  v26 = __chkstk_darwin(v24);
  v79 = &v65 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v65 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v65 - v32;
  __chkstk_darwin(v31);
  v78 = &v65 - v34;
  v35 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v35 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v33 = v30;
  }

  else
  {
    if (v74)
    {
      v36 = "network.cellular.title.update";
    }

    else
    {
      v36 = ".title.update.roamingGeneric";
    }

    if (v74)
    {
      v37 = 0xD000000000000025;
    }

    else
    {
      v37 = 0xD00000000000001DLL;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._object = (v36 | 0x8000000000000000);
    v38._countAndFlagsBits = v37;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
    v39._countAndFlagsBits = a1;
    v39._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v39);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  v41 = *(v15 + 32);
  v42 = v78;
  v41(v78, v33, v14);
  v43 = *(v15 + 16);
  v43(v79, v42, v14);
  sub_1001F8FEC(v76, v75 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v45 = result;
    MobileGestalt_get_wapiCapability();

    String.LocalizationValue.init(stringLiteral:)();
    v46 = v77;
    v66 = v41;
    v67 = v15 + 32;
    (v41)();
    (*(v15 + 56))(v46, 0, 1, v14);
    if (qword_10077E558 != -1)
    {
      swift_once();
    }

    v47 = qword_1007B88B0;
    v43(v20, v79, v14);
    v48 = v47;
    static Locale.current.getter();
    v65 = v48;
    v49 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v50;
    v76 = v49;
    v43(v20, v80, v14);
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v71 = v51;
    v43(v20, v81, v14);
    static Locale.current.getter();
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v69 = v53;
    v70 = v52;
    v54 = v73;
    sub_1001F9140(v46, v73);
    v55 = 0;
    v56 = 0;
    if ((*(v15 + 48))(v54, 1, v14) != 1)
    {
      v66(v20, v54, v14);
      v43(v68, v20, v14);
      static Locale.current.getter();
      v57 = v65;
      v55 = String.init(localized:table:bundle:locale:comment:)();
      v56 = v58;
      (*(v15 + 8))(v20, v14);
    }

    type metadata accessor for SystemAlert();
    v59 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_1001F91B0(v77);
    v60 = *(v15 + 8);
    v60(v81, v14);
    v60(v80, v14);
    v60(v79, v14);
    v60(v78, v14);
    v61 = v75;
    *(v59 + 112) = v76;
    *(v59 + 120) = v61;
    v63 = v70;
    v62 = v71;
    *(v59 + 128) = v74;
    *(v59 + 136) = v62;
    v64 = v69;
    *(v59 + 144) = v63;
    *(v59 + 152) = v64;
    *(v59 + 160) = v55;
    *(v59 + 168) = v56;
    *(v59 + 176) = 0;
    return v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001F887C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, int a5)
{
  LODWORD(v79) = a5;
  v80 = a3;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&qword_10077E950);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v69 - v13;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = __chkstk_darwin(v19);
  v76 = &v69 - v23;
  v24 = __chkstk_darwin(v22);
  v85 = &v69 - v25;
  v26 = __chkstk_darwin(v24);
  v84 = &v69 - v27;
  v28 = __chkstk_darwin(v26);
  v83 = &v69 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v69 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v69 - v34;
  __chkstk_darwin(v33);
  v82 = &v69 - v36;
  v37 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v37 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v35 = v32;
  }

  else
  {
    if (a4)
    {
      v38 = "network.cellular.title.download";
    }

    else
    {
      v38 = ".title.download.roamingGeneric";
    }

    if (a4)
    {
      v39 = 0xD000000000000027;
    }

    else
    {
      v39 = 0xD00000000000001FLL;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._object = (v38 | 0x8000000000000000);
    v40._countAndFlagsBits = v39;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
    v41._countAndFlagsBits = a1;
    v41._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  v43 = *(v16 + 32);
  v44 = v82;
  v43(v82, v35, v15);
  v45 = *(v16 + 16);
  v45(v83, v44, v15);
  sub_1001F8FEC(v80, v79 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v47 = result;
    MobileGestalt_get_wapiCapability();

    v48 = v76;
    String.LocalizationValue.init(stringLiteral:)();
    v49 = v81;
    v70 = v43;
    v71 = v16 + 32;
    v43(v81, v48, v15);
    (*(v16 + 56))(v49, 0, 1, v15);
    if (qword_10077E558 != -1)
    {
      swift_once();
    }

    v50 = qword_1007B88B0;
    v45(v21, v83, v15);
    v51 = v50;
    static Locale.current.getter();
    v69 = v51;
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v79 = v53;
    v80 = v52;
    v45(v21, v84, v15);
    static Locale.current.getter();
    v54 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v55;
    v76 = v54;
    v45(v21, v85, v15);
    static Locale.current.getter();
    v56 = String.init(localized:table:bundle:locale:comment:)();
    v73 = v57;
    v74 = v56;
    v58 = v49;
    v59 = v78;
    sub_1001F9140(v58, v78);
    v60 = 0;
    v61 = 0;
    if ((*(v16 + 48))(v59, 1, v15) != 1)
    {
      v70(v21, v59, v15);
      v45(v72, v21, v15);
      static Locale.current.getter();
      v62 = v69;
      v60 = String.init(localized:table:bundle:locale:comment:)();
      v61 = v63;
      (*(v16 + 8))(v21, v15);
    }

    type metadata accessor for SystemAlert();
    v64 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_1001F91B0(v81);
    v65 = *(v16 + 8);
    v65(v85, v15);
    v65(v84, v15);
    v65(v83, v15);
    v65(v82, v15);
    v66 = v79;
    *(v64 + 112) = v80;
    *(v64 + 120) = v66;
    v67 = v75;
    *(v64 + 128) = v76;
    *(v64 + 136) = v67;
    v68 = v73;
    *(v64 + 144) = v74;
    *(v64 + 152) = v68;
    *(v64 + 160) = v60;
    *(v64 + 168) = v61;
    *(v64 + 176) = 0;
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F8FEC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (a1 < 1)
  {

    return String.LocalizationValue.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    if (a2)
    {
      v5 = 0xD000000000000022;
      v6 = 0x80000001006C43F0;
    }

    else
    {
      v6 = 0x80000001006C43C0;
      v5 = 0xD000000000000020;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v5);
    v8._countAndFlagsBits = sub_10051CB0C(a1);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v8);

    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    return String.LocalizationValue.init(stringInterpolation:)();
  }
}

uint64_t sub_1001F9140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077E950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F91B0(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077E950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F9218(uint64_t a1, uint64_t a2)
{
  v3[359] = v2;
  v3[358] = a2;
  v3[357] = a1;
  sub_1001F0C48(&unk_100784390);
  v3[360] = swift_task_alloc();
  v4 = type metadata accessor for CellularIdentity();
  v3[361] = v4;
  v3[362] = *(v4 - 8);
  v3[363] = swift_task_alloc();
  v3[364] = type metadata accessor for EvaluatorDownload();
  v3[365] = swift_task_alloc();
  v5 = type metadata accessor for Platform();
  v3[366] = v5;
  v3[367] = *(v5 - 8);
  v3[368] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[369] = v6;
  v3[370] = *(v6 - 8);
  v3[371] = swift_task_alloc();
  v3[372] = type metadata accessor for AppInstall();
  v3[373] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v3[374] = swift_task_alloc();
  v3[375] = swift_task_alloc();
  v3[376] = swift_task_alloc();
  v7 = type metadata accessor for AppPackage();
  v3[377] = v7;
  v3[378] = *(v7 - 8);
  v3[379] = swift_task_alloc();
  v3[380] = swift_task_alloc();
  v8 = sub_1001F0C48(&unk_100784B60);
  v3[381] = v8;
  v3[382] = *(v8 - 8);
  v3[383] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v3[384] = v9;
  v3[385] = *(v9 - 8);
  v3[386] = swift_task_alloc();
  v3[387] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v3[388] = swift_task_alloc();
  v3[389] = swift_task_alloc();
  v3[390] = swift_task_alloc();
  v3[391] = swift_task_alloc();
  v3[392] = swift_task_alloc();
  v3[393] = swift_task_alloc();
  v3[394] = type metadata accessor for PlaceholderPromiseBuilder();
  v3[395] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v3[396] = v10;
  v3[397] = *(v10 - 8);
  v3[398] = swift_task_alloc();
  v3[399] = swift_task_alloc();
  v3[400] = swift_task_alloc();
  v3[401] = swift_task_alloc();
  v3[402] = swift_task_alloc();
  v3[403] = swift_task_alloc();
  v3[404] = swift_task_alloc();
  v3[405] = swift_task_alloc();
  v3[406] = swift_task_alloc();
  v3[407] = swift_task_alloc();
  v3[408] = swift_task_alloc();
  v3[409] = swift_task_alloc();
  v3[410] = swift_task_alloc();
  v3[411] = swift_task_alloc();
  v3[412] = swift_task_alloc();
  v3[413] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v3[414] = swift_task_alloc();
  v3[415] = swift_task_alloc();
  v3[416] = swift_task_alloc();
  v3[417] = type metadata accessor for CreateCoordinatorTask();
  v3[418] = swift_task_alloc();
  v3[419] = type metadata accessor for ADPPrepareInstallTask();
  v3[420] = swift_task_alloc();
  v3[421] = swift_task_alloc();
  v3[422] = swift_task_alloc();
  v3[423] = swift_task_alloc();
  v3[424] = swift_task_alloc();
  v3[425] = swift_task_alloc();
  v3[426] = swift_task_alloc();
  v3[427] = swift_task_alloc();
  v3[428] = swift_task_alloc();
  v3[429] = swift_task_alloc();
  v3[430] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[431] = v11;
  v3[432] = *(v11 - 8);
  v3[433] = swift_task_alloc();
  v3[434] = swift_task_alloc();
  v3[435] = swift_task_alloc();
  v3[436] = swift_task_alloc();
  v3[437] = swift_task_alloc();
  v3[438] = swift_task_alloc();
  v3[439] = swift_task_alloc();

  return _swift_task_switch(sub_1001F9964, 0, 0);
}

uint64_t sub_1001F9964()
{
  v1 = *(v0 + 3440);
  v2 = *(v0 + 2872);
  static Logger.install.getter();
  sub_10020ADF8(v2, v1, type metadata accessor for ADPPrepareInstallTask);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 3440);
  if (v5)
  {
    v7 = *(v0 + 3352);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v6 + *(v7 + 28));
    sub_10020AE60(v6, type metadata accessor for ADPPrepareInstallTask);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Preparing install", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_10020AE60(v6, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(*(v0 + 3456) + 8))(*(v0 + 3512), *(v0 + 3448));
  sub_100204918();
  sub_10020687C();
  *(v0 + 3520) = v11;
  v93 = v11;
  v12 = *(v0 + 3328);
  v13 = *(v0 + 3304);
  v14 = *(v0 + 3176);
  v15 = *(v0 + 3168);
  v16 = *(v0 + 2872);
  v17 = *(*(v0 + 3352) + 20);
  *(v0 + 4236) = v17;
  v18 = type metadata accessor for ADP();
  *(v0 + 3528) = v18;
  v19 = *(v18 + 24);
  *(v0 + 4244) = v19;
  v20 = v16 + v19 + v17;
  v98 = *(v20 + 3);
  *(v0 + 3536) = v98;
  v92 = v20;
  v21 = *(v20 + 4);
  *(v0 + 3544) = v21;
  v22 = type metadata accessor for FilePath();
  *(v0 + 3552) = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  *(v0 + 3560) = v24;
  *(v0 + 3568) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v25 = 1;
  v88 = v24;
  v90 = v22;
  (v24)(v12, 1, 1);
  v26 = *v16;
  *(v0 + 3576) = v26;
  v27 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v0 + 3584) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v99 = v27;
  v28 = *(v26 + v27);
  v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  v105 = v21;

  os_unfair_lock_lock((v28 + v30));
  v31 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  *(v0 + 3592) = v31;
  v101 = v31;
  v32 = v28 + *(v31 + 28);
  v33 = *(v14 + 16);
  *(v0 + 3600) = v33;
  *(v0 + 3608) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v102 = v33;
  v33(v13, v32 + v29, v15);
  os_unfair_lock_unlock((v28 + v30));
  v34 = *(v14 + 88);
  *(v0 + 3616) = v34;
  *(v0 + 3624) = (v14 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v87 = v34;
  v35 = v34(v13, v15);
  v36 = enum case for AppInstallRequestType.update(_:);
  *(v0 + 4248) = enum case for AppInstallRequestType.update(_:);
  v85 = v36;
  if (v35 != v36)
  {
    if (v35 == enum case for AppInstallRequestType.promotion(_:))
    {
      v25 = 3;
    }

    else if (v35 == enum case for AppInstallRequestType.restore(_:))
    {
      v25 = 2;
    }

    else
    {
      (*(*(v0 + 3176) + 8))(*(v0 + 3304), *(v0 + 3168));
      v25 = 0;
    }
  }

  v96 = v25;
  v37 = *(v0 + 3352);
  v38 = *(v0 + 3344);
  v39 = *(v0 + 3336);
  v94 = *(v0 + 3328);
  v40 = *(v0 + 3296);
  v41 = *(v0 + 3168);
  v42 = *(v26 + v99);
  v43 = *(v0 + 2872);
  v86 = v26;
  v44 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
  v45 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v42 + v45));
  v102(v40, v42 + *(v101 + 28) + v44, v41);
  os_unfair_lock_unlock((v42 + v45));
  v46 = sub_1003720A4(v40);
  v47 = *(v43 + *(v37 + 28));
  *(v0 + 3632) = v47;
  *v38 = v98;
  v38[1] = v105;
  sub_10020A668(v94, v38 + v39[5], &qword_10077E958);
  *(v38 + v39[6]) = xmmword_10069E880;
  *(v38 + v39[7]) = v96;
  *(v38 + v39[8]) = v46;
  *(v38 + v39[9]) = v47;
  v48 = v47;
  *(v0 + 3640) = sub_10047541C();
  v49 = *(v0 + 3144);
  v50 = *(v0 + 2872);
  v51 = *(*(v0 + 3352) + 24);
  *(v0 + 4252) = v51;
  v52 = (v50 + v51);
  v53 = *(type metadata accessor for MediaAPIMetadata() + 28);
  *(v0 + 4256) = v53;
  sub_100005934(v52 + v53, v49, &unk_1007809F0);
  v97 = v48;
  if (v52[3])
  {
    v106 = v52[2];
    v95 = v52[3];
  }

  else
  {
    v106 = *v52;
    v95 = v52[1];
  }

  v54 = *(v0 + 3288);
  v55 = *(v0 + 3280);
  v56 = *(v0 + 3272);
  v57 = *(v0 + 3168);
  v88(*(v0 + 3320), 1, 1, v90);
  v91 = *(v92 + 5);
  *(v0 + 3648) = v91;
  v58 = *(v92 + 6);
  *(v0 + 3656) = v58;
  v59 = *(v86 + v99);
  v89 = v92[186];
  v60 = *(*v59 + class metadata base offset for ManagedBuffer + 16);
  v61 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL;

  v100 = v58;

  os_unfair_lock_lock((v59 + v61));
  v102(v54, v59 + *(v101 + 28) + v60, v57);
  os_unfair_lock_unlock((v59 + v61));
  v102(v55, v54, v57);
  v102(v56, v54, v57);
  v62 = v87(v56, v57);
  v63 = enum case for AppInstallRequestType.automaticInstall(_:);
  *(v0 + 4260) = enum case for AppInstallRequestType.automaticInstall(_:);
  if (v62 == v63)
  {
    goto LABEL_14;
  }

  if (v62 == enum case for AppInstallRequestType.install(_:))
  {
    v64 = 2;
    goto LABEL_17;
  }

  if (v62 == enum case for AppInstallRequestType.automaticUpdate(_:))
  {
LABEL_14:
    v64 = 0;
  }

  else
  {
    v64 = 2;
    if (v62 != v85 && v62 != enum case for AppInstallRequestType.promotion(_:))
    {
      v64 = 0;
      if (v62 != enum case for AppInstallRequestType.restore(_:) && v62 != enum case for AppInstallRequestType.deviceVPP(_:) && v62 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v62 != enum case for AppInstallRequestType.userVPP(_:) && v62 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v62 != enum case for AppInstallRequestType.upp(_:) && v62 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_17:
  v104 = *(v0 + 3320);
  v65 = *(v0 + 3288);
  v66 = *(v0 + 3176);
  v67 = *(v0 + 3168);
  v68 = *(v0 + 3160);
  v69 = *(v0 + 3152);
  v70 = *(v0 + 3144);
  v71 = *(v0 + 3136);
  v72 = *(v0 + 3080);
  v73 = *(v0 + 3072);
  v103 = sub_100372410(*(v0 + 3280), v64);
  v74 = *(v66 + 8);
  *(v0 + 3664) = v74;
  *(v0 + 3672) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v65, v67);
  LOBYTE(v67) = v92[185];
  *(v0 + 1277) = v67;
  v75 = v69[13];
  v76 = *(v72 + 56);
  *(v0 + 3680) = v76;
  *(v0 + 3688) = (v72 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v76(v68 + v75, 1, 1, v73);
  *(v68 + v69[11]) = 0;
  sub_10020A668(v70, v68, &unk_1007809F0);
  v77 = (v68 + v69[5]);
  *v77 = v98;
  v77[1] = v105;
  v78 = (v68 + v69[6]);
  *v78 = v106;
  v78[1] = v95;
  sub_10020A668(v104, v68 + v69[7], &qword_10077E958);
  v79 = (v68 + v69[8]);
  *v79 = v91;
  v79[1] = v100;
  *(v68 + v69[9]) = v89 & 1;
  *(v68 + v69[10]) = v103;
  *(v68 + v69[12]) = v67 & 1;
  *(v68 + v69[14]) = v93;
  *(v68 + v69[15]) = v97;
  v76(v71, 1, 1, v73);
  v80 = v97;
  v81 = v93;
  v82 = swift_task_alloc();
  *(v0 + 3696) = v82;
  *v82 = v0;
  v82[1] = sub_1001FA788;
  v83 = *(v0 + 3136);

  return sub_10032FAF0(v83);
}

uint64_t sub_1001FA788(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 3704) = a1;
  *(v4 + 3712) = v1;

  if (v1)
  {
    v6 = *(v4 + 3136);

    sub_1000032A8(v6, &unk_1007809F0);

    return _swift_task_switch(sub_1001FAAF0, 0, 0);
  }

  else
  {
    sub_1000032A8(*(v4 + 3136), &unk_1007809F0);
    v7 = swift_task_alloc();
    *(v4 + 3720) = v7;
    *v7 = v5;
    v7[1] = sub_1001FA9A0;
    v8 = *(v4 + 3640);

    return sub_100207814(v8, a1);
  }
}

uint64_t sub_1001FA9A0()
{
  v2 = *v1;
  *(*v1 + 3728) = v0;

  if (v0)
  {

    v3 = sub_1001FB9D4;
  }

  else
  {
    v3 = sub_1001FAF14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FAAF0()
{
  v1 = *(v0 + 3344);
  v2 = *(v0 + 3160);

  sub_10020AE60(v2, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v1, type metadata accessor for CreateCoordinatorTask);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FAF14()
{
  v63 = *(v0 + 3680);
  v1 = *(v0 + 4236);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3120);
  v4 = *(v0 + 3080);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 2872);
  v7 = v6 + *(v0 + 4252);
  v8 = *(type metadata accessor for ADPPreflightResultingMetadata(0) + 20);
  *(v0 + 4264) = v8;
  v9 = v7 + v8;
  v10 = *(v4 + 16);
  *(v0 + 3736) = v10;
  *(v0 + 3744) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v3, v6 + v1, v5);
  v63(v3, 0, 1, v5);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v3, &unk_1007809F0);
  v11 = *(v4 + 48);
  *(v0 + 3752) = v11;
  *(v0 + 3760) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v12 = v11(v2, 1, v5);
  v13 = *(v0 + 3128);
  if (v12 == 1)
  {

    sub_1000032A8(v13, &unk_1007809F0);
    v14 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v15 = enum case for MarketplaceKitError.invalidManifest(_:);
    v64 = *(v14 - 8);
    v16 = *(v64 + 104);
    v16(v17, enum case for MarketplaceKitError.invalidManifest(_:), v14);
    v18 = _convertErrorToNSError(_:)();

    v19 = IXCreateUserPresentableError();

    if (v19)
    {
      v20 = *(v0 + 3640);
      v21 = _convertErrorToNSError(_:)();
      *(v0 + 2848) = 0;
      v22 = [v20 cancelForReason:v21 client:28 error:v0 + 2848];

      v23 = *(v0 + 2848);
      if (!v22)
      {
        v40 = v23;
        v27 = _convertNSErrorToError(_:)();

        swift_willThrow();
LABEL_10:
        v41 = *(v0 + 3368);
        v42 = *(v0 + 2872);
        static Logger.install.getter();
        sub_10020ADF8(v42, v41, type metadata accessor for ADPPrepareInstallTask);
        swift_errorRetain();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 3368);
        if (v45)
        {
          v47 = *(v0 + 3352);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412546;
          v50 = *(v46 + *(v47 + 28));
          sub_10020AE60(v46, type metadata accessor for ADPPrepareInstallTask);
          *(v48 + 4) = v50;
          *v49 = v50;
          *(v48 + 12) = 2114;
          swift_errorRetain();
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 14) = v51;
          v49[1] = v51;
          _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v48, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        else
        {

          sub_10020AE60(v46, type metadata accessor for ADPPrepareInstallTask);
        }

        (*(*(v0 + 3456) + 8))(*(v0 + 3472), *(v0 + 3448));
        *(v0 + 2840) = v27;
        swift_errorRetain();
        sub_1001F0C48(&unk_10077F940);
        v52 = swift_dynamicCast();
        v53 = *(v64 + 56);
        v54 = *(v0 + 2880);
        if (v52)
        {
          v53(*(v0 + 2880), 0, 1, v14);
          v55 = (*(v64 + 88))(v54, v14);
          v56 = enum case for MarketplaceKitError.cancelled(_:);
          (*(v64 + 8))(v54, v14);
          if (v55 == v56)
          {
            v57 = 3;
LABEL_18:
            v58 = *(v0 + 3704);
            v59 = *(v0 + 3640);
            v60 = *(v0 + 3344);
            v61 = *(v0 + 3160);
            sub_1005F6C58(v57, *(*(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
            swift_willThrow();

            sub_10020AE60(v61, type metadata accessor for PlaceholderPromiseBuilder);
            sub_10020AE60(v60, type metadata accessor for CreateCoordinatorTask);

            v62 = *(v0 + 8);

            return v62();
          }
        }

        else
        {
          v53(*(v0 + 2880), 1, 1, v14);
          sub_1000032A8(v54, &unk_100784390);
        }

        v57 = 1;
        goto LABEL_18;
      }

      v24 = v23;
    }

    v25 = swift_allocError();
    v16(v26, v15, v14);
    v27 = v25;
    swift_willThrow();
    goto LABEL_10;
  }

  v28 = *(v0 + 3096);
  v29 = *(v0 + 3080);
  v30 = *(v0 + 3072);
  v31 = *(v0 + 2864);
  v32 = *(v29 + 32);
  *(v0 + 3784) = v32;
  *(v0 + 3792) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v28, v13, v30);
  v34 = *(v9 + 48);
  v33 = *(v9 + 56);
  v35 = *(v31 + 24);
  v65 = *(v31 + 40);
  v36 = sub_100006D8C(v31, v35);
  *(v0 + 2472) = v35;
  *(v0 + 2480) = v65;
  v37 = sub_10020A748((v0 + 2448));
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  v38 = swift_task_alloc();
  *(v0 + 3800) = v38;
  *v38 = v0;
  v38[1] = sub_1001FC594;

  return sub_100208028(v0 + 640, v34, v33, v0 + 2448);
}

uint64_t sub_1001FB9D4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 239;
  v10 = v0[463];
  v4 = v0[383];
  v5 = v0[382];
  v6 = v0[381];
  v7 = _convertErrorToNSError(_:)();
  v1[471] = v7;
  v1[2] = v1;
  v1[3] = sub_1001FBBD4;
  swift_continuation_init();
  v1[246] = v6;
  v8 = sub_10020A748(v1 + 243);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[239] = _NSConcreteStackBlock;
  v1[240] = 1107296256;
  v1[241] = sub_10020A518;
  v1[242] = &unk_10075BE00;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001FBBD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 3776) = v1;
  if (v1)
  {
    v2 = sub_1001FC148;
  }

  else
  {
    v2 = sub_1001FBD10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FBD10()
{
  v1 = *(v0 + 3704);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3344);
  v4 = *(v0 + 3160);

  swift_willThrow();
  sub_10020AE60(v4, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v3, type metadata accessor for CreateCoordinatorTask);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001FC148()
{
  swift_willThrow();

  v1 = *(v0 + 3704);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3344);
  v4 = *(v0 + 3160);

  swift_willThrow();
  sub_10020AE60(v4, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v3, type metadata accessor for CreateCoordinatorTask);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001FC594()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 656);
  *(v3 + 477) = *(v3 + 40);
  v3[476] = v0;
  *(v3 + 479) = v4;
  *(v3 + 1278) = *(v3 + 672);
  *(v3 + 481) = *(v3 + 85);
  v3[483] = v2[87];
  *(v3 + 242) = *(v3 + 44);
  v3[486] = v2[90];
  *(v3 + 1279) = *(v3 + 728);
  v3[487] = v2[92];
  v3[488] = v2[93];

  if (v0)
  {

    v5 = sub_100203270;
  }

  else
  {
    sub_10000710C((v3 + 306));
    v5 = sub_1001FC788;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001FC788()
{
  v464 = v0;
  v1 = v0[488];
  v394 = v0 + 136;
  v2 = v0[487];
  v3 = *(v0 + 1279);
  v4 = v0[486];
  v5 = v0[485];
  v6 = v0[482];
  v7 = v0[481];
  v8 = *(v0 + 1278);
  v9 = v0[480];
  v10 = v0[479];
  v11 = (v0[359] + *(v0 + 1063) + *(v0 + 1066));
  *(v0 + 47) = *(v0 + 477);
  v0[96] = v10;
  v0[97] = v9;
  *(v0 + 784) = v8;
  v0[99] = v7;
  v0[100] = v6;
  *(v0 + 101) = *(v0 + 483);
  v0[103] = v5;
  v0[104] = v4;
  *(v0 + 840) = v3;
  v0[106] = v2;
  v0[107] = v1;
  sub_100005934((v0 + 94), (v0 + 108), &qword_10077E960);
  sub_100007158(v5, v4);

  v398 = v0 + 94;
  sub_100005934((v0 + 94), (v0 + 122), &qword_10077E960);
  sub_100007158(v10, v9);

  v377 = *(v0 + 48);
  v380 = *(v0 + 47);
  v372 = *(v0 + 50);
  v374 = *(v0 + 49);
  v368 = v0[103];
  v370 = v0[102];
  v350 = v0[104];
  v352 = v0[105];
  v364 = v0[107];
  v366 = v0[106];
  v362 = v11[3];
  v0[489] = v362;
  v383 = v11[5];
  v12 = sub_1003375D8(v11[4]);
  if (v14 == 1)
  {
    v346 = 0;
    v348 = 0;
    v354 = 0;
    v356 = 0;
    v358 = 0u;
    v360 = xmmword_10069E890;
    v341 = xmmword_10069E890;
    v344 = 0u;
  }

  else
  {
    v16 = v14;
    v17 = v15;
    if (v12)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    if (v15 && *(v15 + 16))
    {
      v19 = v12;
      v20 = v13;

      sub_10033D260(v18, 0, 0, v20, v17, v0 + 294);
      v13 = v20;
      v12 = v19;
      v358 = *(v0 + 147);
      v360 = *(v0 + 148);
      v354 = v0[299];
      v356 = v0[298];
    }

    else
    {
      v358 = 0u;
      v360 = xmmword_10069E890;
      v354 = 0;
      v356 = 0;
    }

    sub_10033B2B8(v12 & 1, v13, v16);
    v341 = *(v0 + 151);
    v344 = *(v0 + 150);
    v346 = v0[305];
    v348 = v0[304];
  }

  v21 = *(v0[359] + *(v0 + 1063) + *(v0 + 1066) + 16);
  v22 = (*sub_100006D8C(v0[358], *(v0[358] + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v24 = v22[4];
  v23 = v22[5];
  v25 = v22[3];
  *(v0 + 1183) = *(v22 + 95);
  *(v0 + 72) = v24;
  *(v0 + 73) = v23;
  *(v0 + 71) = v25;
  v27 = v22[1];
  v26 = v22[2];
  *v394 = *v22;
  *(v0 + 69) = v27;
  *(v0 + 70) = v26;
  v389 = v0[136];
  v28 = v0[137];
  v29 = *(v21 + 16);
  sub_10020A7AC(v394, (v0 + 174));

  sub_10020A7AC(v394, (v0 + 160));
  v402 = v28;

  v391 = v21;

  v456 = v29;
  if (!v29)
  {
LABEL_23:

    sub_10020A92C(v394);

    sub_10020A92C(v394);
    v45 = 0;
    v46 = 0;
    goto LABEL_47;
  }

  v30 = 0;
  v418 = v0 + 343;
  v31 = (v0 + 262);
  v32 = v0[476];
  v33 = (v21 + 80);
  while (1)
  {
    v34 = *(v33 - 5);
    v451 = *(v33 - 4);
    v35 = *(v33 - 1);
    v434 = *(v33 - 2);
    v441 = *(v33 - 3);
    v36 = *v33;
    v37 = v0[138];
    v429 = *(v33 - 6);
    v0[345] = v429;
    v0[346] = v34;
    v38 = swift_task_alloc();
    *(v38 + 16) = v0 + 345;

    v445 = v37;
    LOBYTE(v37) = sub_10020A1BC(sub_10020A808, v38, v37);

    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!v36)
    {
      goto LABEL_21;
    }

    v39 = v0[143];
    v40 = v39 < v451;
    if (v39 == v451)
    {
      v41 = v0[144];
      v40 = v41 < v441;
      if (v41 == v441)
      {
        break;
      }
    }

    if (!v40)
    {
      goto LABEL_21;
    }

LABEL_15:

    ++v30;
    v33 += 7;

    if (v456 == v30)
    {
      goto LABEL_23;
    }
  }

  if (v0[145] < v434)
  {
    goto LABEL_15;
  }

LABEL_21:
  v42 = v429;
  v0[255] = v429;
  v0[256] = v34;
  v0[257] = v451;
  v0[258] = v441;
  v0[259] = v434;
  v43 = v35;
  v0[260] = v35;
  v414 = v0;
  v0[261] = v36;
  if (v456 - 1 != v30)
  {
    v47 = v30 + 1;
    v48 = v391 + 32;
LABEL_25:
    v339 = v43;
    v49 = (v48 + 56 * v47);
    for (i = v47; ; ++i)
    {
      v51 = v456;
      if (i >= v456)
      {
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v52 = *v49;
      v53 = v49[1];
      v54 = v49[2];
      *(v31 + 48) = *(v49 + 6);
      *(v31 + 16) = v53;
      *(v31 + 32) = v54;
      *v31 = v52;
      v51 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_157;
      }

      v424 = i + 1;
      v0 = v414;
      v404 = v414[262];
      v409 = v414[263];
      v414[343] = v404;
      v414[344] = v409;
      v55 = swift_task_alloc();
      *(v55 + 16) = v418;
      v35 = v31;
      sub_10020A87C(v31, (v414 + 269));
      v30 = sub_10020A1BC(sub_10020B0E4, v55, v445);

      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v56 = v414[264];
      v30 = v414[265];
      v386 = v414[267];
      v57 = v414[268];
      if (!v57)
      {
        goto LABEL_36;
      }

      v58 = v414[143];
      v59 = v58 < v56;
      if (v58 == v56)
      {
        v60 = v414[144];
        v59 = v60 < v30;
        if (v60 == v30)
        {
          v59 = v414[145] < v414[266];
        }
      }

      if (v59)
      {
LABEL_26:
        v31 = v35;
        sub_10020A8D8(v35);
        if (v424 == v456)
        {
          goto LABEL_41;
        }
      }

      else
      {
LABEL_36:
        v336 = v414[266];
        if (sub_10020A414(v35, v414 + 255, v389, v402))
        {

          v44 = v409;
          v414[255] = v404;
          v414[256] = v409;
          v414[257] = v56;
          v414[258] = v30;
          v61 = v57;
          v36 = v57;
          v434 = v336;
          v441 = v30;
          v414[259] = v336;
          v42 = v404;
          v451 = v56;
          v43 = v386;
          v414[260] = v386;
          v34 = v409;
          v429 = v404;
          v414[261] = v61;
          v47 = v424;
          v48 = v391 + 32;
          v31 = v35;
          if (v424 != v456)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }

        sub_10020A8D8(v35);
        v414[255] = v429;
        v414[256] = v34;
        v414[257] = v451;
        v414[258] = v441;
        v414[259] = v434;
        v414[260] = v339;
        v414[261] = v36;
        v31 = v35;
        if (v424 == v456)
        {
LABEL_41:
          v42 = v429;
          v44 = v34;
          v43 = v339;
          goto LABEL_42;
        }
      }

      v49 = (v49 + 56);
    }
  }

  v44 = v34;
LABEL_42:
  v61 = v36;
LABEL_43:
  v62 = v61;

  sub_10020A92C(v394);

  sub_10020A92C(v394);
  if (v62)
  {
    v462 = 14897;
    v463 = 0xE200000000000000;
    v63._countAndFlagsBits = v42;
    v63._object = v44;
    String.append(_:)(v63);
    v64._countAndFlagsBits = 47;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    v65 = v43;
    v66 = v62;
  }

  else
  {
    v462 = 14896;
    v463 = 0xE200000000000000;
    v65 = v42;
    v66 = v44;
  }

  String.append(_:)(*&v65);

  v45 = v462;
  v46 = v463;
  v0 = v414;
LABEL_47:
  v419 = v46;
  v435 = v45;
  v451 = v0 + 223;
  v0[491] = v46;
  v0[490] = v45;
  v410 = v0[467];
  v67 = v0[460];
  v68 = v0[390];
  v405 = v0[387];
  v69 = v0[384];
  v70 = v0[380];
  v71 = v0[377];
  v425 = v0[376];
  v430 = v68;
  v72 = v0[370];
  v73 = v0[369];
  v74 = *(v72 + 56);
  v0[492] = v74;
  v0[493] = (v72 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v74();
  v67(v68, 1, 1, v69);
  v410(v70 + v71[19], v405, v69);
  *(v0 + 247) = 0u;
  *(v0 + 249) = 0u;
  *(v0 + 251) = 0u;
  *(v0 + 253) = 0u;
  v75 = v71[8];
  (v74)(v70 + v75, 1, 1, v73);
  v76 = v71[10];
  v77 = v70 + v71[9];
  v67(v70 + v76, 1, 1, v69);
  v78 = v70 + v71[18];
  v79 = (v70 + v71[20]);
  v80 = (v70 + v71[21]);
  v80[2] = 0u;
  v80[3] = 0u;
  *v80 = 0u;
  v80[1] = 0u;
  *v70 = 0;
  *(v70 + 8) = 0;
  *(v70 + 16) = v344;
  *(v70 + 32) = v341;
  *(v70 + 48) = v348;
  *(v70 + 56) = v346;
  *(v70 + 64) = v362;
  sub_100005934(v398, (v0 + 66), &qword_10077E960);

  sub_10020AD90(v425, v70 + v75, &unk_100780A00);
  *v77 = v358;
  *(v77 + 16) = v360;
  *(v77 + 32) = v356;
  *(v77 + 40) = v354;
  sub_10020AD90(v430, v70 + v76, &unk_1007809F0);
  v81 = v70 + v71[11];
  *v81 = v380;
  *(v81 + 16) = v377;
  *(v81 + 32) = v374;
  *(v81 + 48) = v372;
  *(v81 + 64) = v370;
  *(v81 + 72) = v368;
  *(v81 + 80) = v350 & 0xCFFFFFFFFFFFFFFFLL;
  *(v81 + 88) = v352 & 1 | 0x4000000000000000;
  *(v81 + 96) = v366;
  *(v81 + 104) = v364;
  *(v70 + v71[12]) = 0;
  *(v70 + v71[13]) = 0;
  *(v70 + v71[14]) = 0;
  *(v70 + v71[15]) = 0;
  *(v70 + v71[16]) = 0;
  *(v70 + v71[17]) = 0;
  *v78 = v383;
  *(v78 + 8) = 0;
  *v79 = v435;
  v79[1] = v419;
  sub_10020AD90((v0 + 247), v80, &qword_10077E968);
  v35 = sub_1003627C4(0, 1, 1, _swiftEmptyArrayStorage);
  v30 = v35[2];
  v51 = v35[3];
  v32 = v30 + 1;
  if (v30 >= v51 >> 1)
  {
LABEL_158:
    v35 = sub_1003627C4(v51 > 1, v32, 1, v35);
  }

  v0[494] = v35;
  v82 = v0[443];
  v83 = v0[442];
  v84 = v0[380];
  v85 = v0[378];
  v86 = v0[359];
  v87 = (v86 + *(v0 + 1063) + *(v0 + 1066));
  v88 = v86 + *(v0 + 1059) + *(v0 + 1061);
  v35[2] = v32;
  v89 = *(v85 + 80);
  *(v0 + 1067) = v89;
  v90 = *(v85 + 72);
  v0[495] = v90;
  sub_10020AEC0(v84, v35 + ((v89 + 32) & ~v89) + v90 * v30, type metadata accessor for AppPackage);
  v91 = *(v88 + 200);
  v93 = v87[2];
  v92 = v87[3];
  v94 = v87[1];
  *v451 = *v87;
  v451[1] = v94;
  v451[2] = v93;
  v451[3] = v92;
  sub_10033776C(v451, v83, v82, v91, (v0 + 201));
  if (!v0[202])
  {
LABEL_51:
    v0[514] = v35;
    v106 = v0[450];
    v107 = v0[449];
    v442 = v106;
    v447 = v0[448];
    v108 = v0[447];
    v436 = v0[408];
    v453 = v0[407];
    v457 = v0[406];
    v109 = v0[397];
    v110 = v0[396];
    v111 = *(v108 + v447);
    v112 = *(*v111 + class metadata base offset for ManagedBuffer + 16);
    v113 = (*(*v111 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v111 + v113));
    v106(v436, v111 + *(v107 + 28) + v112, v110);
    os_unfair_lock_unlock((v111 + v113));
    v114 = *(v108 + v447);
    v115 = *(*v114 + class metadata base offset for ManagedBuffer + 16);
    v116 = (*(*v114 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v114 + v116));
    v442(v453, v114 + *(v107 + 28) + v115, v110);
    os_unfair_lock_unlock((v114 + v116));
    v117 = enum case for AppInstallRequestType.restore(_:);
    *(v0 + 1068) = enum case for AppInstallRequestType.restore(_:);
    v118 = *(v109 + 104);
    v325 = v117;
    v118(v457);
    sub_10020AF28(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v119 = v0[458];
    v120 = v0[407];
    v121 = v0[406];
    v122 = v0[396];
    if (v0[347] == v0[339] && v0[348] == v0[340])
    {
      v119(v0[406], v0[396]);
      v119(v120, v122);
    }

    else
    {
      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v119(v121, v122);
      v119(v120, v122);

      if ((v123 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v124 = v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
    if (*(v124 + 8))
    {
      v125 = 0xE200000000000000;
      v126 = 16718;
    }

    else
    {
      v137 = *v124;
      v138 = v0[359];
      if (*v124 != *(v138 + *(v0 + 1059) + *(v0 + 1061) + 8))
      {
        v460 = v118;
        v168 = v0[429];
        v169 = v0[428];
        v170 = v0[427];
        static Logger.install.getter();
        sub_10020ADF8(v138, v168, type metadata accessor for ADPPrepareInstallTask);
        sub_10020ADF8(v138, v169, type metadata accessor for ADPPrepareInstallTask);
        sub_10020ADF8(v138, v170, type metadata accessor for ADPPrepareInstallTask);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.default.getter();
        v173 = os_log_type_enabled(v171, v172);
        v443 = v0[458];
        if (v173)
        {
          v174 = v0[441];
          v432 = v0[431];
          v438 = v0[438];
          v175 = v0[429];
          v411 = v172;
          v176 = v0[428];
          v399 = v0[427];
          v406 = v171;
          v177 = v0[419];
          v427 = v0[408];
          v416 = v0[432];
          v421 = v0[396];
          v178 = swift_slowAlloc();
          v395 = swift_slowAlloc();
          v462 = swift_slowAlloc();
          *v178 = 138413058;
          v179 = *(v175 + *(v177 + 28));
          sub_10020AE60(v175, type metadata accessor for ADPPrepareInstallTask);
          *(v178 + 4) = v179;
          *v395 = v179;
          *(v178 + 12) = 2082;
          v180 = v176 + *(v177 + 20) + *(v174 + 24);
          v181 = *(v180 + 24);
          v182 = *(v180 + 32);

          sub_10020AE60(v176, type metadata accessor for ADPPrepareInstallTask);
          v183 = sub_1002346CC(v181, v182, &v462);

          *(v178 + 14) = v183;
          *(v178 + 22) = 2080;
          v0[352] = v137;
          v184 = dispatch thunk of CustomStringConvertible.description.getter();
          v186 = sub_1002346CC(v184, v185, &v462);

          *(v178 + 24) = v186;
          *(v178 + 32) = 2080;
          v0[353] = *(v399 + *(v177 + 20) + *(v174 + 24) + 8);
          v187 = dispatch thunk of CustomStringConvertible.description.getter();
          v189 = v188;
          sub_10020AE60(v399, type metadata accessor for ADPPrepareInstallTask);
          v190 = sub_1002346CC(v187, v189, &v462);

          *(v178 + 34) = v190;
          _os_log_impl(&_mh_execute_header, v406, v411, "[%@][%{public}s] Moving installType to restoreUpdate requestVersion: %s newVersion: %s", v178, 0x2Au);
          sub_1000032A8(v395, &qword_10077F920);

          swift_arrayDestroy();

          (*(v416 + 8))(v438, v432);
          v192 = v421;
          v191 = v427;
        }

        else
        {
          v193 = v0[438];
          v194 = v0[432];
          v195 = v0[431];
          v196 = v0[429];
          v197 = v0[428];
          v198 = v0[427];
          v199 = v0[408];
          v200 = v0[396];

          sub_10020AE60(v198, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v197, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v196, type metadata accessor for ADPPrepareInstallTask);
          (*(v194 + 8))(v193, v195);
          v191 = v199;
          v192 = v200;
        }

        v443(v191, v192);
        (v460)(v0[408], enum case for AppInstallRequestType.restoreUpdate(_:), v0[396]);
        goto LABEL_69;
      }

      v0[354] = v137;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    v139 = v0[426];
    v140 = v0[425];
    v141 = v0[424];
    v142 = v0[359];
    v0[341] = v126;
    v0[342] = v125;
    v143 = String.init<A>(_:)();
    v145 = v144;
    static Logger.install.getter();
    sub_10020ADF8(v142, v139, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v142, v140, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v142, v141, type metadata accessor for ADPPrepareInstallTask);

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v146, v147))
    {
      v448 = v0[432];
      v454 = v0[431];
      v459 = v0[437];
      v148 = v0[426];
      v437 = v147;
      v149 = v0[425];
      v420 = v0[441];
      v426 = v0[424];
      v150 = v0[419];
      v151 = swift_slowAlloc();
      v431 = swift_slowAlloc();
      v462 = swift_slowAlloc();
      *v151 = 138413058;
      v415 = v143;
      v152 = *(v148 + *(v150 + 28));
      sub_10020AE60(v148, type metadata accessor for ADPPrepareInstallTask);
      *(v151 + 4) = v152;
      *v431 = v152;
      *(v151 + 12) = 2082;
      v153 = v149 + *(v150 + 20) + *(v420 + 24);
      v154 = *(v153 + 24);
      v155 = *(v153 + 32);

      sub_10020AE60(v149, type metadata accessor for ADPPrepareInstallTask);
      v156 = sub_1002346CC(v154, v155, &v462);

      *(v151 + 14) = v156;
      *(v151 + 22) = 2080;
      v157 = sub_1002346CC(v415, v145, &v462);

      *(v151 + 24) = v157;
      *(v151 + 32) = 2080;
      v0[351] = *(v426 + *(v150 + 20) + *(v420 + 24) + 8);
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      sub_10020AE60(v426, type metadata accessor for ADPPrepareInstallTask);
      v161 = sub_1002346CC(v158, v160, &v462);

      *(v151 + 34) = v161;
      _os_log_impl(&_mh_execute_header, v146, v437, "[%@][%{public}s] Leaving installType as restore requestVersion: %s newVersion: %s", v151, 0x2Au);
      sub_1000032A8(v431, &qword_10077F920);

      swift_arrayDestroy();

      (*(v448 + 8))(v459, v454);
    }

    else
    {
      v162 = v0[437];
      v163 = v0[432];
      v164 = v0[431];
      v165 = v0[426];
      v166 = v0[425];
      v167 = v0[424];

      sub_10020AE60(v167, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v166, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v165, type metadata accessor for ADPPrepareInstallTask);
      (*(v163 + 8))(v162, v164);
    }

LABEL_69:
    v387 = v0[492];
    v201 = v0[455];
    v449 = *(v0 + 1062);
    v439 = v0[452];
    v407 = v0[450];
    v428 = v0[449];
    v412 = v0[448];
    v381 = v0[447];
    v400 = v0[445];
    v396 = v0[444];
    v202 = *(v0 + 1061);
    v203 = *(v0 + 1059);
    v378 = v0[414];
    v392 = v0[408];
    v384 = v0[405];
    v422 = v0[404];
    v433 = v0[403];
    v204 = v0[397];
    v205 = v0[396];
    v206 = v0[374];
    v375 = v0[371];
    v207 = v0[359];
    v208 = (v207 + *(v0 + 1063));
    v209 = v0[370];
    v371 = *(v207 + v203 + v202 + 16);
    v373 = *(v207 + v203 + v202 + 8);
    v210 = v0[369];
    sub_100005934(v208 + *(v0 + 1064), v0[388], &unk_1007809F0);
    v461 = *v208;
    v0[515] = *v208;
    v211 = v208[1];
    v0[516] = v211;

    v455 = v211;

    v212 = [v201 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v387(v206, 0, 1, v210);
    (*(v209 + 16))(v375, v381 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v210);
    v400(v378, 1, 1, v396);
    v407(v384, v392, v205);
    v213 = *&v412[v381];
    v214 = *(*v213 + class metadata base offset for ManagedBuffer + 16);
    v215 = (*(*v213 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v213 + v215));
    v407(v422, v213 + *(v428 + 28) + v214, v205);
    os_unfair_lock_unlock((v213 + v215));
    v216 = *(v204 + 32);
    v216(v433, v422, v205);
    v217 = v439(v433, v205);
    v218 = enum case for AppInstallRequestType.automaticUpdate(_:);
    *(v0 + 1069) = enum case for AppInstallRequestType.automaticUpdate(_:);
    v219 = v449;
    v450 = v218;
    v220 = v217 == v219 || v217 == v218;
    v221 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
    *(v0 + 1070) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
    v444 = v221;
    v222 = v220 || v217 == v221;
    v223 = enum case for AppInstallRequestType.userVPPUpdate(_:);
    *(v0 + 1071) = enum case for AppInstallRequestType.userVPPUpdate(_:);
    v326 = v223;
    v224 = v222 || v217 == v223;
    v225 = v224;
    if (!v224)
    {
      (v0[458])(v0[403], v0[396]);
    }

    v226 = *(v0 + 1065);
    v227 = v0[452];
    v228 = v0[402];
    v229 = v0[396];
    (v0[450])(v228, v0[408], v229);
    v230 = v227(v228, v229);
    if (v230 == v226)
    {
      goto LABEL_84;
    }

    if (v230 == enum case for AppInstallRequestType.install(_:))
    {
      goto LABEL_86;
    }

    if (v230 == v450)
    {
LABEL_84:
      v231 = 0;
      goto LABEL_87;
    }

    if (v230 == *(v0 + 1062))
    {
LABEL_86:
      v231 = 1;
    }

    else
    {
      v231 = 1;
      if (v230 != enum case for AppInstallRequestType.promotion(_:))
      {
        v231 = 0;
        if (v230 != v325 && v230 != enum case for AppInstallRequestType.deviceVPP(_:) && v230 != v444 && v230 != enum case for AppInstallRequestType.userVPP(_:) && v230 != v326 && v230 != enum case for AppInstallRequestType.upp(_:) && v230 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

LABEL_87:
    v390 = v231;
    v388 = v216;
    v337 = v0[492];
    v232 = v0[460];
    v355 = v0[456];
    v357 = v0[457];
    v423 = v0[449];
    v393 = v0[447];
    v401 = v0[448];
    v335 = v0[444];
    v345 = v0[443];
    v340 = v0[442];
    v342 = v0[445];
    v413 = v0[441];
    v397 = v0[440];
    v367 = v0[414];
    v379 = v0[405];
    v376 = v0[396];
    v361 = v0[390];
    v331 = v0[388];
    v233 = v0[384];
    v351 = v0[374];
    v234 = v0[373];
    v235 = v0[372];
    v369 = *(v0 + 1277) & 1;
    v408 = v0[359] + *(v0 + 1059);
    v417 = (v408 + *(v0 + 1061));
    v236 = *(v393 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
    v353 = v0[371];
    v349 = v0[370];
    v237 = v0[369];
    v329 = v237;
    v365 = v0[368];
    v382 = v0[367];
    v385 = v0[366];
    v232();
    v359 = v236;
    static Platform.current.getter();
    v238 = v235[9];
    (v232)(v234 + v238, 1, 1, v233);
    v239 = v235[13];
    *(v0 + 1072) = v239;
    v240 = (v234 + v239);
    v347 = v225;
    v241 = v235[14];
    v337(v234 + v241, 1, 1, v237);
    v242 = (v234 + v235[15]);
    v327 = v235[16];
    v328 = v235[20];
    v342(v234 + v328, 1, 1, v335);
    v403 = (v234 + v235[22]);
    v330 = v235[26];
    v332 = v235[30];
    v333 = v235[29];
    (v232)(v234 + v332, 1, 1, v233);
    v243 = v235[34];
    v334 = v235[33];
    static Platform.current.getter();
    v338 = v235[35];
    v244 = v234 + v235[36];
    *v244 = xmmword_10069E8A0;
    v245 = v235[39];
    v343 = v235[38];
    *(v0 + 1073) = v245;
    *(v234 + v245) = xmmword_10069E8A0;
    v246 = v235[40];
    *(v0 + 1074) = v246;
    v247 = (v234 + v246);
    *v247 = 0;
    v247[1] = 0;
    v248 = v234 + v235[41];
    v363 = (v234 + v235[42]);
    *v234 = 0;
    *(v234 + 8) = 0;
    *(v234 + 16) = 1;
    *(v234 + 24) = 0;
    *(v234 + 32) = 1;
    *(v234 + 40) = v371;
    *(v234 + 48) = 0;
    *(v234 + 56) = v373;
    *(v234 + 64) = 0;
    sub_10020AD90(v331, v234 + v238, &unk_1007809F0);
    v249 = (v234 + v235[10]);
    *v249 = v340;
    v249[1] = v345;
    v250 = (v234 + v235[11]);
    *v250 = v461;
    v250[1] = v455;
    v251 = (v234 + v235[12]);
    *v251 = v355;
    v251[1] = v357;
    *v240 = 0;
    v240[1] = 0;

    sub_10020AD90(v351, v234 + v241, &unk_100780A00);
    *v242 = 0;
    v242[1] = 0;
    *(v234 + v327) = 0;
    v252 = v235[17];
    *(v0 + 1075) = v252;
    *(v234 + v252) = 0;
    *(v234 + v235[18]) = 0;
    (*(v349 + 32))(v234 + v235[19], v353, v329);
    sub_10020AD90(v367, v234 + v328, &qword_10077E958);
    v388(v234 + v235[21], v379, v376);
    *(v234 + v235[23]) = 0;
    *(v234 + v235[24]) = 0;
    *(v234 + v235[25]) = v369;
    *(v234 + v330) = v347;
    *(v234 + v235[27]) = v390;
    *(v234 + v235[28]) = v359;
    *(v234 + v333) = 2;
    sub_10020AD90(v361, v234 + v332, &unk_1007809F0);
    v253 = (v234 + v235[32]);
    *v253 = 0;
    v253[1] = 0;
    *(v234 + v334) = 0;
    (*(v382 + 40))(v234 + v243, v365, v385);
    *(v234 + v338) = 2;
    sub_1001CEE68(*v244, *(v244 + 8));
    *v244 = xmmword_10069E8A0;
    *(v234 + v235[37]) = 4;
    *(v234 + v343) = v397;
    v254 = *(v393 + v401);
    v255 = *(*v254 + class metadata base offset for ManagedBuffer + 16);
    v256 = (*(*v254 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v254 + v256));
    sub_10020A980(v254 + v255, (v0 + 317));
    os_unfair_lock_unlock((v254 + v256));
    v257 = v0[320];
    sub_100006D8C(v0 + 317, v257);
    *v248 = sub_10056D600(v257);
    *(v248 + 8) = v259;
    *(v248 + 16) = v258 & 1;
    sub_10000710C((v0 + 317));
    v260 = (v408 + v413[5]);
    v261 = v260[1];
    *v363 = *v260;
    v363[1] = v261;
    v262 = *(v393 + v401);
    v263 = *(*v262 + class metadata base offset for ManagedBuffer + 16);
    v264 = (*(*v262 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v262 + v264));
    v265 = (v262 + *(v423 + 32) + v263);
    v267 = *v265;
    v266 = v265[1];

    os_unfair_lock_unlock((v262 + v264));
    *v403 = v267;
    v403[1] = v266;
    v269 = v417[21];
    if (v269)
    {
      v268 = 0xEB00000000656361;
      if (v417[20] == 0x6C7074656B72616DLL && v269 == 0xEB00000000656361)
      {
        LOBYTE(v270) = 1;
      }

      else
      {
        LOBYTE(v270) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (*(v0[359] + *(v0 + 1059) + *(v0 + 1061) + 184) == 1)
    {
      LOBYTE(v270) = 0;
    }

    else
    {
      v270 = v417[22] & 1;
    }

    v271 = v0[359] + *(v0 + 1059) + *(v0 + 1061);
    *(v0[373] + *(v0[372] + 172)) = v270 & 1;
    v272 = *(v271 + 72);
    v0[517] = v272;
    v273 = *(v271 + 80);
    v398[3449] = v273;
    v274 = *(v271 + 81);
    *(v0 + 1266) = *(v271 + 84);
    *(v0 + 1263) = v274;
    v275 = *(v271 + 88);
    v0[518] = v275;
    v276 = *(v271 + 96);
    v398[3450] = v276;
    v277 = *(v271 + 113);
    *(v0 + 1199) = *(v271 + 97);
    *(v0 + 1215) = v277;
    LOBYTE(v271) = *(v271 + 129);
    v398[3451] = v271;
    if (v271)
    {
      v278 = v0[489];
    }

    else
    {
      v278 = v0[489];
      if ((v276 & 1) == 0)
      {
        v279 = __CFADD__(v278, v275);
        v278 += v275;
        if (v279)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }
      }

      if ((v273 & 1) == 0)
      {
        v279 = __CFADD__(v278, v272);
        v278 += v272;
        if (v279)
        {
LABEL_161:
          __break(1u);
        }
      }
    }

    v280 = *(v0 + 1062);
    v281 = v0[452];
    v282 = v0[401];
    v283 = v0[396];
    (v0[450])(v282, v0[408], v283, v268);
    v284 = v281(v282, v283);
    v285 = 2;
    if (v284 != v450 && v284 != v280 && v284 != v444 && v284 != v326)
    {
      (v0[458])(v0[401], v0[396]);
      v285 = 0;
    }

    v286 = *(v0 + 1065);
    v287 = v0[452];
    v288 = v0[400];
    v289 = v0[396];
    (v0[450])(v288, v0[408], v289);
    v290 = v287(v288, v289);
    if (v290 != v286)
    {
      if (v290 == enum case for AppInstallRequestType.install(_:))
      {
        goto LABEL_120;
      }

      if (v290 != v450)
      {
        if (v290 == *(v0 + 1062) || v290 == enum case for AppInstallRequestType.promotion(_:))
        {
          goto LABEL_120;
        }

        if (v290 != v325 && v290 != enum case for AppInstallRequestType.deviceVPP(_:) && v290 != v444 && v290 != enum case for AppInstallRequestType.userVPP(_:) && v290 != v326 && v290 != enum case for AppInstallRequestType.upp(_:) && v290 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

    v285 |= 1u;
LABEL_120:
    v291 = v0[460];
    v292 = v0[384];
    v293 = v0[365];
    (v0[467])(v293, v0[387], v292);
    v291(v293, 0, 1, v292);
    if ((v278 & 0x8000000000000000) == 0)
    {
      v440 = *(v0 + 1065);
      v294 = v0[454];
      v295 = v0[452];
      v296 = v0[450];
      v297 = v0[448];
      v298 = v0[447];
      v299 = v0[408];
      v300 = v0[399];
      v301 = v0[396];
      v302 = v0[365];
      v303 = v0[364];
      v304 = v303[9];
      v305 = (v302 + v303[5]);
      *v305 = v461;
      v305[1] = v455;
      *(v302 + v303[6]) = v278;
      *(v302 + v303[7]) = 2;
      *(v302 + v304) = 3;
      *(v302 + v303[10]) = v285;
      *(v302 + v303[8]) = v294;
      v306 = *(v298 + v297);
      v307 = *(*v306 + class metadata base offset for ManagedBuffer + 16);
      v308 = (*(*v306 + 48) + 3) & 0x1FFFFFFFCLL;
      v309 = v294;
      os_unfair_lock_lock((v306 + v308));
      sub_10020A980(v306 + v307, (v0 + 312));
      os_unfair_lock_unlock((v306 + v308));
      v0[519] = sub_1001F0C48(&qword_10077E970);
      v310 = swift_dynamicCast();
      v398[3489] = v310;
      v311 = v0[335];
      v312 = v0[336];
      v0[520] = v312;
      v296(v300, v299, v301);
      v313 = v295(v300, v301);
      if (v313 == v440)
      {
        goto LABEL_122;
      }

      if (v313 == enum case for AppInstallRequestType.install(_:))
      {
        v314 = 1;
        goto LABEL_125;
      }

      if (v313 == v450)
      {
LABEL_122:
        v314 = 0;
      }

      else
      {
        v314 = 1;
        if (v313 != *(v0 + 1062) && v313 != enum case for AppInstallRequestType.promotion(_:))
        {
          v314 = 0;
          if (v313 != v325 && v313 != enum case for AppInstallRequestType.deviceVPP(_:) && v313 != v444 && v313 != enum case for AppInstallRequestType.userVPP(_:) && v313 != v326 && v313 != enum case for AppInstallRequestType.upp(_:) && v313 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }
      }

LABEL_125:
      v315 = v310 == 0;
      if (v310)
      {
        v316 = v312;
      }

      else
      {
        v316 = 0;
      }

      if (v315)
      {
        v317 = 0;
      }

      else
      {
        v317 = v311;
      }

      v318 = v0[447];
      *(v0 + 1076) = *(v0[372] + 124);
      sub_10020A980(v318 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, (v0 + 327));
      v319 = v0[330];
      v320 = v0[331];
      v321 = sub_100006D8C(v0 + 327, v319);
      static CellularIdentity.current()();
      v322 = swift_task_alloc();
      v0[521] = v322;
      *v322 = v0;
      v322[1] = sub_100200FF0;
      v323 = v0[365];
      v324 = v0[363];

      return sub_1005C9BD8(v323, v317, v316, v324, v314, v321, v319, v320);
    }

    __break(1u);
    goto LABEL_160;
  }

  v446 = v0[204];
  v452 = v0[203];
  v95 = v0[469];
  v96 = v0[467];
  v97 = v0[460];
  v98 = *(v0 + 1059);
  v99 = v0[390];
  v100 = v0[389];
  v101 = v0[384];
  v102 = v0[359];
  v0[222] = v0[213];
  v103 = *(v0 + 211);
  *(v0 + 109) = *(v0 + 209);
  *(v0 + 110) = v103;
  v104 = *(v0 + 207);
  *(v0 + 107) = *(v0 + 205);
  *(v0 + 108) = v104;
  v96(v99, v102 + v98, v101);
  v97(v99, 0, 1, v101);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v99, &unk_1007809F0);
  if (v95(v100, 1, v101) == 1)
  {
    v105 = v0[389];
    sub_1000032A8((v0 + 201), &qword_10077E978);
    sub_1000032A8(v105, &unk_1007809F0);
    goto LABEL_51;
  }

  v127 = v0[358];
  (v0[473])(v0[386], v0[389], v0[384]);
  *(v0 + 166) = *(v0 + 110);
  v0[334] = v0[222];

  v0[496] = sub_1003375D8(v128);
  v0[497] = v129;
  v0[498] = v130;
  v0[499] = v131;
  v132 = *(v127 + 24);
  v458 = *(v127 + 40);
  v133 = sub_100006D8C(v127, v132);
  v0[291] = v132;
  *(v0 + 146) = v458;
  v134 = sub_10020A748(v0 + 288);
  (*(*(v132 - 8) + 16))(v134, v133, v132);
  v135 = swift_task_alloc();
  v0[500] = v135;
  *v135 = v0;
  v135[1] = sub_1001FEE7C;

  return sub_100208028((v0 + 52), v452, v446, (v0 + 288));
}

uint64_t sub_1001FEE7C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 432);
  *(v3 + 251) = *(v3 + 26);
  v3[501] = v0;
  *(v3 + 252) = v4;
  *(v3 + 1391) = *(v3 + 448);
  v3[506] = v2[57];
  v3[507] = v2[58];
  *(v3 + 254) = *(v3 + 59);
  *(v3 + 255) = *(v3 + 61);
  *(v3 + 1503) = *(v3 + 504);
  v3[512] = v2[64];
  v3[513] = v2[65];

  if (v0)
  {
    v5 = v3[498];
    v6 = v3[497];
    v7 = v3[496];

    sub_10020AA94(v7, v6, v5);
    sub_10020AADC((v3 + 332));

    v8 = sub_1002039A8;
  }

  else
  {
    sub_1000032A8((v3 + 201), &qword_10077E978);
    sub_10000710C((v3 + 288));
    v8 = sub_1001FF0D4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001FF0D4()
{
  v369 = v0;
  v1 = *(v0 + 4104);
  v362 = (v0 + 1848);
  v2 = *(v0 + 4096);
  v3 = *(v0 + 1503);
  v4 = *(v0 + 4088);
  v5 = *(v0 + 4080);
  v6 = *(v0 + 4056);
  v7 = *(v0 + 4048);
  v8 = *(v0 + 1391);
  v9 = *(v0 + 4040);
  v10 = *(v0 + 4032);
  v367 = *(v0 + 3984);
  *(v0 + 304) = *(v0 + 4016);
  *(v0 + 320) = v10;
  *(v0 + 328) = v9;
  *(v0 + 336) = v8;
  *(v0 + 344) = v7;
  *(v0 + 352) = v6;
  *(v0 + 360) = *(v0 + 4064);
  *(v0 + 376) = v5;
  *(v0 + 384) = v4;
  *(v0 + 392) = v3;
  *(v0 + 400) = v2;
  *(v0 + 408) = v1;
  sub_100005934(v0 + 304, v0 + 192, &qword_10077E960);
  sub_100007158(v5, v4);

  sub_100005934(v0 + 304, v0 + 80, &qword_10077E960);
  sub_100007158(v10, v9);

  v353 = *(v0 + 320);
  v358 = *(v0 + 304);
  v343 = *(v0 + 352);
  v349 = *(v0 + 336);
  v335 = *(v0 + 376);
  v339 = *(v0 + 368);
  v326 = *(v0 + 408);
  v330 = *(v0 + 400);
  v318 = *(v0 + 392) & 1 | 0x4000000000000000;
  v322 = *(v0 + 384) & 0xCFFFFFFFFFFFFFFFLL;
  if (v367 == 1)
  {
    (*(v0 + 3936))(*(v0 + 3000), 1, 1, *(v0 + 2952));
    v312 = 0;
    v316 = 0;
    v305 = 0;
    v303 = 0;
    v294 = 0u;
    v297 = 0u;
    v300 = xmmword_10069E890;
    v291 = xmmword_10069E890;
  }

  else
  {
    v11 = *(v0 + 3992);
    v12 = *(v0 + 3984);
    v13 = *(v0 + 3976);
    v14 = *(v0 + 3968);
    v15 = *(v0 + 3936);
    v16 = *(v0 + 3000);
    v17 = *(v0 + 2952);
    sub_10020AB30(v14, v13, v12);
    sub_10033B2B8(v14 & 1, v13, v12);
    v291 = *(v0 + 2272);
    v294 = *(v0 + 2256);
    v312 = *(v0 + 2288);
    v316 = *(v0 + 2296);

    v15(v16, 1, 1, v17);
    sub_10033B2B8(v14 & 1, v13, v11);
    v297 = *(v0 + 2208);
    v300 = *(v0 + 2224);
    v305 = *(v0 + 2240);
    v303 = *(v0 + 2248);
  }

  v308 = *(v0 + 3952);
  v282 = *(v0 + 3928);
  v288 = *(v0 + 3920);
  v18 = *(v0 + 3736);
  v274 = *(v0 + 3936);
  v19 = *(v0 + 3680);
  v284 = *(v0 + 3120);
  v20 = *(v0 + 3088);
  v21 = *(v0 + 3072);
  v22 = *(v0 + 3032);
  v23 = *(v0 + 3016);
  v280 = *(v0 + 3000);
  v24 = *(v0 + 2952);
  v276 = *(v0 + 2656);
  v19();
  sub_10020AADC(v0 + 2656);
  v286 = *(v0 + 2672);
  v18(v22 + v23[19], v20, v21);
  *v362 = 0u;
  *(v0 + 1864) = 0u;
  *(v0 + 1880) = 0u;
  *(v0 + 1896) = 0u;
  v25 = v23[8];
  v274(v22 + v25, 1, 1, v24);
  v26 = v23[10];
  v27 = v22 + v23[9];
  (v19)(v22 + v26, 1, 1, v21);
  v278 = v22 + v23[18];
  v28 = (v22 + v23[20]);
  v29 = (v22 + v23[21]);
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = v294;
  *(v22 + 32) = v291;
  *(v22 + 48) = v312;
  *(v22 + 56) = v316;
  *(v22 + 64) = v276;

  sub_10020AD90(v280, v22 + v25, &unk_100780A00);
  *v27 = v297;
  *(v27 + 16) = v300;
  *(v27 + 32) = v305;
  *(v27 + 40) = v303;
  sub_10020AD90(v284, v22 + v26, &unk_1007809F0);
  v30 = v22 + v23[11];
  *v30 = v358;
  *(v30 + 16) = v353;
  *(v30 + 32) = v349;
  *(v30 + 48) = v343;
  *(v30 + 64) = v339;
  *(v30 + 72) = v335;
  *(v30 + 80) = v322;
  *(v30 + 88) = v318;
  *(v30 + 96) = v330;
  *(v30 + 104) = v326;
  *(v22 + v23[12]) = 0;
  *(v22 + v23[13]) = 0;
  *(v22 + v23[14]) = 0;
  *(v22 + v23[15]) = 0;
  *(v22 + v23[16]) = 0;
  *(v22 + v23[17]) = 1;
  *v278 = v286;
  *(v278 + 8) = 0;
  *v28 = v288;
  v28[1] = v282;
  sub_10020AD90(v362, v29, &qword_10077E968);
  v32 = *(v308 + 16);
  v31 = *(v308 + 24);
  v33 = *(v0 + 3952);
  if (v32 >= v31 >> 1)
  {
    v33 = sub_1003627C4(v31 > 1, v32 + 1, 1, *(v0 + 3952));
  }

  v34 = *(v0 + 3960);
  v35 = *(v0 + 3088);
  v36 = *(v0 + 3080);
  v37 = *(v0 + 3072);
  v38 = *(v0 + 3032);
  v39 = (*(v0 + 4268) + 32) & ~*(v0 + 4268);
  sub_1000032A8(v0 + 304, &qword_10077E960);
  (*(v36 + 8))(v35, v37);
  *(v33 + 16) = v32 + 1;
  sub_10020AEC0(v38, v33 + v39 + v34 * v32, type metadata accessor for AppPackage);
  *(v0 + 4112) = v33;
  v40 = *(v0 + 3600);
  v350 = v40;
  v41 = *(v0 + 3592);
  v354 = *(v0 + 3584);
  v42 = *(v0 + 3576);
  v344 = *(v0 + 3264);
  v359 = *(v0 + 3256);
  v363 = *(v0 + 3248);
  v43 = *(v0 + 3176);
  v44 = *(v0 + 3168);
  v45 = *(v42 + v354);
  v46 = *(*v45 + class metadata base offset for ManagedBuffer + 16);
  v47 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v45 + v47));
  v40(v344, v45 + *(v41 + 28) + v46, v44);
  os_unfair_lock_unlock((v45 + v47));
  v48 = *(v42 + v354);
  v49 = *(*v48 + class metadata base offset for ManagedBuffer + 16);
  v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v48 + v50));
  v350(v359, v48 + *(v41 + 28) + v49, v44);
  os_unfair_lock_unlock((v48 + v50));
  v51 = enum case for AppInstallRequestType.restore(_:);
  *(v0 + 4272) = enum case for AppInstallRequestType.restore(_:);
  v52 = *(v43 + 104);
  v251 = v51;
  v52(v363);
  sub_10020AF28(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v53 = *(v0 + 3664);
  v54 = *(v0 + 3256);
  v55 = *(v0 + 3248);
  v56 = *(v0 + 3168);
  if (*(v0 + 2776) == *(v0 + 2712) && *(v0 + 2784) == *(v0 + 2720))
  {
    v53(*(v0 + 3248), *(v0 + 3168));
    v53(v54, v56);
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v53(v55, v56);
    v53(v54, v56);

    if ((v57 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v58 = *(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  if (*(v58 + 8))
  {
    v59 = 0xE200000000000000;
    v60 = 16718;
  }

  else
  {
    v61 = *v58;
    v62 = *(v0 + 2872);
    if (*v58 != *(v62 + *(v0 + 4236) + *(v0 + 4244) + 8))
    {
      v365 = v52;
      v92 = *(v0 + 3432);
      v93 = *(v0 + 3424);
      v94 = *(v0 + 3416);
      static Logger.install.getter();
      sub_10020ADF8(v62, v92, type metadata accessor for ADPPrepareInstallTask);
      sub_10020ADF8(v62, v93, type metadata accessor for ADPPrepareInstallTask);
      sub_10020ADF8(v62, v94, type metadata accessor for ADPPrepareInstallTask);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      v97 = os_log_type_enabled(v95, v96);
      v351 = *(v0 + 3664);
      if (v97)
      {
        v98 = *(v0 + 3528);
        v341 = *(v0 + 3448);
        v346 = *(v0 + 3504);
        v99 = *(v0 + 3432);
        v323 = v96;
        v100 = *(v0 + 3424);
        v313 = *(v0 + 3416);
        v319 = v95;
        v101 = *(v0 + 3352);
        v337 = *(v0 + 3264);
        v328 = *(v0 + 3456);
        v332 = *(v0 + 3168);
        v102 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v368[0] = swift_slowAlloc();
        *v102 = 138413058;
        v103 = *(v99 + *(v101 + 28));
        sub_10020AE60(v99, type metadata accessor for ADPPrepareInstallTask);
        *(v102 + 4) = v103;
        *v309 = v103;
        *(v102 + 12) = 2082;
        v104 = v100 + *(v101 + 20) + *(v98 + 24);
        v105 = *(v104 + 24);
        v106 = *(v104 + 32);

        sub_10020AE60(v100, type metadata accessor for ADPPrepareInstallTask);
        v107 = sub_1002346CC(v105, v106, v368);

        *(v102 + 14) = v107;
        *(v102 + 22) = 2080;
        *(v0 + 2816) = v61;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = sub_1002346CC(v108, v109, v368);

        *(v102 + 24) = v110;
        *(v102 + 32) = 2080;
        *(v0 + 2824) = *(v313 + *(v101 + 20) + *(v98 + 24) + 8);
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v112;
        sub_10020AE60(v313, type metadata accessor for ADPPrepareInstallTask);
        v114 = sub_1002346CC(v111, v113, v368);

        *(v102 + 34) = v114;
        _os_log_impl(&_mh_execute_header, v319, v323, "[%@][%{public}s] Moving installType to restoreUpdate requestVersion: %s newVersion: %s", v102, 0x2Au);
        sub_1000032A8(v309, &qword_10077F920);

        swift_arrayDestroy();

        (*(v328 + 8))(v346, v341);
        v116 = v332;
        v115 = v337;
      }

      else
      {
        v117 = *(v0 + 3504);
        v118 = *(v0 + 3456);
        v119 = *(v0 + 3448);
        v120 = *(v0 + 3432);
        v121 = *(v0 + 3424);
        v122 = *(v0 + 3416);
        v123 = *(v0 + 3264);
        v124 = *(v0 + 3168);

        sub_10020AE60(v122, type metadata accessor for ADPPrepareInstallTask);
        sub_10020AE60(v121, type metadata accessor for ADPPrepareInstallTask);
        sub_10020AE60(v120, type metadata accessor for ADPPrepareInstallTask);
        (*(v118 + 8))(v117, v119);
        v115 = v123;
        v116 = v124;
      }

      v351(v115, v116);
      (v365)(*(v0 + 3264), enum case for AppInstallRequestType.restoreUpdate(_:), *(v0 + 3168));
      goto LABEL_21;
    }

    *(v0 + 2832) = v61;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v63 = *(v0 + 3408);
  v64 = *(v0 + 3400);
  v65 = *(v0 + 3392);
  v66 = *(v0 + 2872);
  *(v0 + 2728) = v60;
  *(v0 + 2736) = v59;
  v67 = String.init<A>(_:)();
  v69 = v68;
  static Logger.install.getter();
  sub_10020ADF8(v66, v63, type metadata accessor for ADPPrepareInstallTask);
  sub_10020ADF8(v66, v64, type metadata accessor for ADPPrepareInstallTask);
  sub_10020ADF8(v66, v65, type metadata accessor for ADPPrepareInstallTask);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v364 = *(v0 + 3496);
    v355 = *(v0 + 3456);
    v360 = *(v0 + 3448);
    v72 = *(v0 + 3408);
    v345 = v71;
    v73 = *(v0 + 3400);
    v331 = *(v0 + 3528);
    v336 = *(v0 + 3392);
    v74 = *(v0 + 3352);
    v75 = swift_slowAlloc();
    v340 = swift_slowAlloc();
    v368[0] = swift_slowAlloc();
    *v75 = 138413058;
    v327 = v67;
    v76 = *(v72 + *(v74 + 28));
    sub_10020AE60(v72, type metadata accessor for ADPPrepareInstallTask);
    *(v75 + 4) = v76;
    *v340 = v76;
    *(v75 + 12) = 2082;
    v77 = v73 + *(v74 + 20) + *(v331 + 24);
    v78 = *(v77 + 24);
    v79 = *(v77 + 32);

    sub_10020AE60(v73, type metadata accessor for ADPPrepareInstallTask);
    v80 = sub_1002346CC(v78, v79, v368);

    *(v75 + 14) = v80;
    *(v75 + 22) = 2080;
    v81 = sub_1002346CC(v327, v69, v368);

    *(v75 + 24) = v81;
    *(v75 + 32) = 2080;
    *(v0 + 2808) = *(v336 + *(v74 + 20) + *(v331 + 24) + 8);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_10020AE60(v336, type metadata accessor for ADPPrepareInstallTask);
    v85 = sub_1002346CC(v82, v84, v368);

    *(v75 + 34) = v85;
    _os_log_impl(&_mh_execute_header, v70, v345, "[%@][%{public}s] Leaving installType as restore requestVersion: %s newVersion: %s", v75, 0x2Au);
    sub_1000032A8(v340, &qword_10077F920);

    swift_arrayDestroy();

    (*(v355 + 8))(v364, v360);
  }

  else
  {
    v86 = *(v0 + 3496);
    v87 = *(v0 + 3456);
    v88 = *(v0 + 3448);
    v89 = *(v0 + 3408);
    v90 = *(v0 + 3400);
    v91 = *(v0 + 3392);

    sub_10020AE60(v91, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AE60(v90, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AE60(v89, type metadata accessor for ADPPrepareInstallTask);
    (*(v87 + 8))(v86, v88);
  }

LABEL_21:
  v301 = *(v0 + 3936);
  v125 = *(v0 + 3640);
  v356 = *(v0 + 4248);
  v347 = *(v0 + 3616);
  v320 = *(v0 + 3600);
  v338 = *(v0 + 3592);
  v324 = *(v0 + 3584);
  v295 = *(v0 + 3576);
  v314 = *(v0 + 3560);
  v310 = *(v0 + 3552);
  v126 = *(v0 + 4244);
  v127 = *(v0 + 4236);
  v292 = *(v0 + 3312);
  v306 = *(v0 + 3264);
  v298 = *(v0 + 3240);
  v333 = *(v0 + 3232);
  v342 = *(v0 + 3224);
  v128 = *(v0 + 3176);
  v129 = *(v0 + 3168);
  v130 = *(v0 + 2992);
  v131 = *(v0 + 2872);
  v132 = (v131 + *(v0 + 4252));
  v133 = *(v0 + 2960);
  v285 = *(v131 + v127 + v126 + 16);
  v287 = *(v131 + v127 + v126 + 8);
  v289 = *(v0 + 2968);
  v134 = *(v0 + 2952);
  sub_100005934(v132 + *(v0 + 4256), *(v0 + 3104), &unk_1007809F0);
  v366 = *v132;
  *(v0 + 4120) = *v132;
  v135 = v132[1];
  *(v0 + 4128) = v135;

  v361 = v135;

  v136 = [v125 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v301(v130, 0, 1, v134);
  (*(v133 + 16))(v289, v295 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v134);
  v314(v292, 1, 1, v310);
  v320(v298, v306, v129);
  v137 = *(v295 + v324);
  v138 = *(*v137 + class metadata base offset for ManagedBuffer + 16);
  v139 = (*(*v137 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v137 + v139));
  v320(v333, v137 + *(v338 + 28) + v138, v129);
  os_unfair_lock_unlock((v137 + v139));
  v140 = *(v128 + 32);
  v140(v342, v333, v129);
  v141 = v347(v342, v129);
  v142 = enum case for AppInstallRequestType.automaticUpdate(_:);
  *(v0 + 4276) = enum case for AppInstallRequestType.automaticUpdate(_:);
  v143 = v356;
  v357 = v142;
  v144 = v141 == v143 || v141 == v142;
  v145 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  *(v0 + 4280) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v352 = v145;
  v146 = v144 || v141 == v145;
  v147 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  *(v0 + 4284) = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v252 = v147;
  v148 = v146 || v141 == v147;
  v149 = v148;
  if (!v148)
  {
    (*(v0 + 3664))(*(v0 + 3224), *(v0 + 3168));
  }

  v150 = *(v0 + 4260);
  v151 = *(v0 + 3616);
  v152 = *(v0 + 3216);
  v153 = *(v0 + 3168);
  (*(v0 + 3600))(v152, *(v0 + 3264), v153);
  v154 = v151(v152, v153);
  if (v154 == v150)
  {
    goto LABEL_36;
  }

  if (v154 == enum case for AppInstallRequestType.install(_:))
  {
    goto LABEL_38;
  }

  if (v154 == v357)
  {
LABEL_36:
    v155 = 0;
    goto LABEL_39;
  }

  if (v154 == *(v0 + 4248))
  {
LABEL_38:
    v155 = 1;
  }

  else
  {
    v155 = 1;
    if (v154 != enum case for AppInstallRequestType.promotion(_:))
    {
      v155 = 0;
      if (v154 != v251 && v154 != enum case for AppInstallRequestType.deviceVPP(_:) && v154 != v352 && v154 != enum case for AppInstallRequestType.userVPP(_:) && v154 != v252 && v154 != enum case for AppInstallRequestType.upp(_:) && v154 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_39:
  v304 = v155;
  v262 = *(v0 + 3936);
  v302 = v140;
  v156 = *(v0 + 3680);
  v270 = *(v0 + 3648);
  v271 = *(v0 + 3656);
  v334 = *(v0 + 3592);
  v307 = *(v0 + 3576);
  v315 = *(v0 + 3584);
  v157 = *(v0 + 3552);
  v266 = *(v0 + 3544);
  v263 = *(v0 + 3560);
  v265 = *(v0 + 3536);
  v325 = *(v0 + 3528);
  v311 = *(v0 + 3520);
  v279 = *(v0 + 3312);
  v290 = *(v0 + 3240);
  v283 = *(v0 + 3168);
  v273 = *(v0 + 3120);
  v258 = *(v0 + 3104);
  v158 = *(v0 + 3072);
  v268 = *(v0 + 2992);
  v159 = *(v0 + 2984);
  v293 = v149;
  v160 = *(v0 + 2976);
  v281 = *(v0 + 1277) & 1;
  v321 = *(v0 + 2872) + *(v0 + 4236);
  v329 = (v321 + *(v0 + 4244));
  v161 = *(v307 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  v269 = *(v0 + 2968);
  v267 = *(v0 + 2960);
  v162 = *(v0 + 2952);
  v256 = v162;
  v277 = *(v0 + 2944);
  v296 = *(v0 + 2936);
  v299 = *(v0 + 2928);
  v156();
  v272 = v161;
  static Platform.current.getter();
  v163 = v160[9];
  (v156)(v159 + v163, 1, 1, v158);
  v164 = v160[13];
  *(v0 + 4288) = v164;
  v165 = (v159 + v164);
  v253 = v160[14];
  v262(v159 + v253, 1, 1, v162);
  v166 = (v159 + v160[15]);
  v254 = v160[16];
  v255 = v160[20];
  v263(v159 + v255, 1, 1, v157);
  v317 = (v159 + v160[22]);
  v257 = v160[26];
  v259 = v160[30];
  v260 = v160[29];
  (v156)(v159 + v259, 1, 1, v158);
  v167 = v160[34];
  v261 = v160[33];
  static Platform.current.getter();
  v264 = v160[35];
  v168 = v159 + v160[36];
  *v168 = xmmword_10069E8A0;
  v170 = v160[38];
  v169 = v160[39];
  *(v0 + 4292) = v169;
  *(v159 + v169) = xmmword_10069E8A0;
  v171 = v160[40];
  *(v0 + 4296) = v171;
  v172 = (v159 + v171);
  *v172 = 0;
  v172[1] = 0;
  v173 = v159 + v160[41];
  v275 = (v159 + v160[42]);
  *v159 = 0;
  *(v159 + 8) = 0;
  *(v159 + 16) = 1;
  *(v159 + 24) = 0;
  *(v159 + 32) = 1;
  *(v159 + 40) = v285;
  *(v159 + 48) = 0;
  *(v159 + 56) = v287;
  *(v159 + 64) = 0;
  sub_10020AD90(v258, v159 + v163, &unk_1007809F0);
  v174 = (v159 + v160[10]);
  *v174 = v265;
  v174[1] = v266;
  v175 = (v159 + v160[11]);
  *v175 = v366;
  v175[1] = v361;
  v176 = (v159 + v160[12]);
  *v176 = v270;
  v176[1] = v271;
  *v165 = 0;
  v165[1] = 0;

  sub_10020AD90(v268, v159 + v253, &unk_100780A00);
  *v166 = 0;
  v166[1] = 0;
  *(v159 + v254) = 0;
  v177 = v160[17];
  *(v0 + 4300) = v177;
  *(v159 + v177) = 0;
  *(v159 + v160[18]) = 0;
  (*(v267 + 32))(v159 + v160[19], v269, v256);
  sub_10020AD90(v279, v159 + v255, &qword_10077E958);
  v302(v159 + v160[21], v290, v283);
  *(v159 + v160[23]) = 0;
  *(v159 + v160[24]) = 0;
  *(v159 + v160[25]) = v281;
  *(v159 + v257) = v293;
  *(v159 + v160[27]) = v304;
  *(v159 + v160[28]) = v272;
  *(v159 + v260) = 2;
  sub_10020AD90(v273, v159 + v259, &unk_1007809F0);
  v178 = (v159 + v160[32]);
  *v178 = 0;
  v178[1] = 0;
  *(v159 + v261) = 0;
  (*(v296 + 40))(v159 + v167, v277, v299);
  *(v159 + v264) = 2;
  sub_1001CEE68(*v168, *(v168 + 8));
  *v168 = xmmword_10069E8A0;
  *(v159 + v160[37]) = 4;
  *(v159 + v170) = v311;
  v179 = *(v307 + v315);
  v180 = *(*v179 + class metadata base offset for ManagedBuffer + 16);
  v181 = (*(*v179 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v179 + v181));
  sub_10020A980(v179 + v180, v0 + 2536);
  os_unfair_lock_unlock((v179 + v181));
  v182 = *(v0 + 2560);
  sub_100006D8C((v0 + 2536), v182);
  *v173 = sub_10056D600(v182);
  *(v173 + 8) = v184;
  *(v173 + 16) = v183 & 1;
  sub_10000710C(v0 + 2536);
  v185 = (v321 + *(v325 + 20));
  v186 = v185[1];
  *v275 = *v185;
  v275[1] = v186;
  v187 = *(v307 + v315);
  v188 = *(*v187 + class metadata base offset for ManagedBuffer + 16);
  v189 = (*(*v187 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v187 + v189));
  v190 = (v187 + *(v334 + 32) + v188);
  v192 = *v190;
  v191 = v190[1];

  os_unfair_lock_unlock((v187 + v189));
  *v317 = v192;
  v317[1] = v191;
  v194 = v329[21];
  if (v194)
  {
    v193 = 0xEB00000000656361;
    if (v329[20] == 0x6C7074656B72616DLL && v194 == 0xEB00000000656361)
    {
      LOBYTE(v195) = 1;
    }

    else
    {
      LOBYTE(v195) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (*(*(v0 + 2872) + *(v0 + 4236) + *(v0 + 4244) + 184) == 1)
  {
    LOBYTE(v195) = 0;
  }

  else
  {
    v195 = v329[22] & 1;
  }

  v196 = *(v0 + 2872) + *(v0 + 4236) + *(v0 + 4244);
  *(*(v0 + 2984) + *(*(v0 + 2976) + 172)) = v195 & 1;
  v197 = *(v196 + 72);
  *(v0 + 4136) = v197;
  v198 = *(v196 + 80);
  *(v0 + 4201) = v198;
  v199 = *(v196 + 81);
  *(v0 + 1266) = *(v196 + 84);
  *(v0 + 1263) = v199;
  v200 = *(v196 + 88);
  *(v0 + 4144) = v200;
  v201 = *(v196 + 96);
  *(v0 + 4202) = v201;
  v202 = *(v196 + 113);
  *(v0 + 1199) = *(v196 + 97);
  *(v0 + 1215) = v202;
  LOBYTE(v196) = *(v196 + 129);
  *(v0 + 4203) = v196;
  if (v196)
  {
    v203 = *(v0 + 3912);
  }

  else
  {
    v203 = *(v0 + 3912);
    if ((v201 & 1) == 0)
    {
      v204 = __CFADD__(v203, v200);
      v203 += v200;
      if (v204)
      {
        goto LABEL_109;
      }
    }

    if ((v198 & 1) == 0)
    {
      v204 = __CFADD__(v203, v197);
      v203 += v197;
      if (v204)
      {
LABEL_110:
        __break(1u);
      }
    }
  }

  v205 = *(v0 + 4248);
  v206 = *(v0 + 3616);
  v207 = *(v0 + 3208);
  v208 = *(v0 + 3168);
  (*(v0 + 3600))(v207, *(v0 + 3264), v208, v193);
  v209 = v206(v207, v208);
  v210 = 2;
  if (v209 != v357 && v209 != v205 && v209 != v352 && v209 != v252)
  {
    (*(v0 + 3664))(*(v0 + 3208), *(v0 + 3168));
    v210 = 0;
  }

  v211 = *(v0 + 4260);
  v212 = *(v0 + 3616);
  v213 = *(v0 + 3200);
  v214 = *(v0 + 3168);
  (*(v0 + 3600))(v213, *(v0 + 3264), v214);
  v215 = v212(v213, v214);
  if (v215 == v211)
  {
    goto LABEL_70;
  }

  if (v215 != enum case for AppInstallRequestType.install(_:))
  {
    if (v215 != v357)
    {
      if (v215 == *(v0 + 4248) || v215 == enum case for AppInstallRequestType.promotion(_:))
      {
        goto LABEL_72;
      }

      if (v215 != v251 && v215 != enum case for AppInstallRequestType.deviceVPP(_:) && v215 != v352 && v215 != enum case for AppInstallRequestType.userVPP(_:) && v215 != v252 && v215 != enum case for AppInstallRequestType.upp(_:) && v215 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

LABEL_70:
    v210 |= 1u;
  }

LABEL_72:
  v216 = *(v0 + 3680);
  v217 = *(v0 + 3072);
  v218 = *(v0 + 2920);
  (*(v0 + 3736))(v218, *(v0 + 3096), v217);
  v216(v218, 0, 1, v217);
  if (v203 < 0)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v348 = *(v0 + 4260);
  v219 = *(v0 + 3632);
  v220 = *(v0 + 3616);
  v221 = *(v0 + 3600);
  v222 = *(v0 + 3584);
  v223 = *(v0 + 3576);
  v224 = *(v0 + 3264);
  v225 = *(v0 + 3192);
  v226 = *(v0 + 3168);
  v227 = *(v0 + 2920);
  v228 = *(v0 + 2912);
  v229 = v228[9];
  v230 = (v227 + v228[5]);
  *v230 = v366;
  v230[1] = v361;
  *(v227 + v228[6]) = v203;
  *(v227 + v228[7]) = 2;
  *(v227 + v229) = 3;
  *(v227 + v228[10]) = v210;
  *(v227 + v228[8]) = v219;
  v231 = *(v223 + v222);
  v232 = *(*v231 + class metadata base offset for ManagedBuffer + 16);
  v233 = (*(*v231 + 48) + 3) & 0x1FFFFFFFCLL;
  v234 = v219;
  os_unfair_lock_lock((v231 + v233));
  sub_10020A980(v231 + v232, v0 + 2496);
  os_unfair_lock_unlock((v231 + v233));
  *(v0 + 4152) = sub_1001F0C48(&qword_10077E970);
  v235 = swift_dynamicCast();
  *(v0 + 4241) = v235;
  v236 = *(v0 + 2680);
  v237 = *(v0 + 2688);
  *(v0 + 4160) = v237;
  v221(v225, v224, v226);
  v238 = v220(v225, v226);
  if (v238 == v348)
  {
    goto LABEL_74;
  }

  if (v238 == enum case for AppInstallRequestType.install(_:))
  {
    v239 = 1;
    goto LABEL_77;
  }

  if (v238 == v357)
  {
LABEL_74:
    v239 = 0;
  }

  else
  {
    v239 = 1;
    if (v238 != *(v0 + 4248) && v238 != enum case for AppInstallRequestType.promotion(_:))
    {
      v239 = 0;
      if (v238 != v251 && v238 != enum case for AppInstallRequestType.deviceVPP(_:) && v238 != v352 && v238 != enum case for AppInstallRequestType.userVPP(_:) && v238 != v252 && v238 != enum case for AppInstallRequestType.upp(_:) && v238 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_77:
  v240 = v235 == 0;
  if (v235)
  {
    v241 = v237;
  }

  else
  {
    v241 = 0;
  }

  if (v240)
  {
    v242 = 0;
  }

  else
  {
    v242 = v236;
  }

  v243 = *(v0 + 3576);
  *(v0 + 4304) = *(*(v0 + 2976) + 124);
  sub_10020A980(v243 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 2616);
  v244 = *(v0 + 2640);
  v245 = *(v0 + 2648);
  v246 = sub_100006D8C((v0 + 2616), v244);
  static CellularIdentity.current()();
  v247 = swift_task_alloc();
  *(v0 + 4168) = v247;
  *v247 = v0;
  v247[1] = sub_100200FF0;
  v248 = *(v0 + 2920);
  v249 = *(v0 + 2904);

  return sub_1005C9BD8(v248, v242, v241, v249, v239, v246, v244, v245);
}

uint64_t sub_100200FF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2904);
  v4 = *(*v1 + 2896);
  v5 = *(*v1 + 2888);
  *(v2 + 4176) = a1;

  (*(v4 + 8))(v3, v5);
  sub_10000710C(v2 + 2616);

  return _swift_task_switch(sub_10020118C, 0, 0);
}

uint64_t sub_10020118C()
{
  v1 = *(v0 + 2984) + *(v0 + 4304);
  v2 = *(v0 + 4176) & 0x1010101;
  *v1 = v2;
  if (HIBYTE(v2) == 1 && (*(v1 + 2) & 1) == 0)
  {
    v3 = *(v0 + 3264);
    v4 = *(v0 + 3168);
    v100 = *(v0 + 3096);
    v5 = *(v0 + 3080);
    v98 = *(v0 + 3664);
    v99 = *(v0 + 3072);
    v102 = *(v0 + 2984);
    v6 = *(v0 + 2920);

    v7 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v8 = swift_allocError();
    v9 = *(v7 - 8);
    v97 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v9 + 104))(v10);
    swift_willThrow();
    sub_1000032A8(v0 + 752, &qword_10077E960);
    sub_1000032A8(v0 + 752, &qword_10077E960);
    sub_10020AE60(v6, type metadata accessor for EvaluatorDownload);
    v98(v3, v4);
    (*(v5 + 8))(v100, v99);
    sub_10020AE60(v102, type metadata accessor for AppInstall);
    v11 = *(v0 + 3368);
    v12 = *(v0 + 2872);
    static Logger.install.getter();
    sub_10020ADF8(v12, v11, type metadata accessor for ADPPrepareInstallTask);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 3368);
    if (v15)
    {
      v17 = *(v0 + 3352);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v16 + *(v17 + 28));
      sub_10020AE60(v16, type metadata accessor for ADPPrepareInstallTask);
      *(v18 + 4) = v20;
      *v19 = v20;
      *(v18 + 12) = 2114;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      v19[1] = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v18, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_10020AE60(v16, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(*(v0 + 3456) + 8))(*(v0 + 3472), *(v0 + 3448));
    *(v0 + 2840) = v8;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    v74 = swift_dynamicCast();
    v75 = *(v9 + 56);
    v76 = *(v0 + 2880);
    if (v74)
    {
      v75(*(v0 + 2880), 0, 1, v7);
      v77 = (*(v9 + 88))(v76, v7);
      (*(v9 + 8))(v76, v7);
      if (v77 == v97)
      {
        v78 = 3;
LABEL_22:
        v79 = *(v0 + 3704);
        v80 = *(v0 + 3640);
        v81 = *(v0 + 3344);
        v82 = *(v0 + 3160);
        sub_1005F6C58(v78, *(*(v0 + 3576) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
        swift_willThrow();

        sub_10020AE60(v82, type metadata accessor for PlaceholderPromiseBuilder);
        sub_10020AE60(v81, type metadata accessor for CreateCoordinatorTask);

        v83 = *(v0 + 8);

        return v83();
      }
    }

    else
    {
      v75(*(v0 + 2880), 1, 1, v7);
      sub_1000032A8(v76, &unk_100784390);
    }

    v78 = 1;
    goto LABEL_22;
  }

  v22 = *(*(v0 + 3576) + *(v0 + 3584));
  v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  sub_10020A980(v22 + v23, v0 + 2576);
  os_unfair_lock_unlock((v22 + v24));
  if (swift_dynamicCast())
  {
    v25 = (*(v0 + 2984) + *(v0 + 4288));
    v26 = *(v0 + 2704);
    *v25 = *(v0 + 2696);
    v25[1] = v26;
  }

  v27 = (v0 + 1231);
  v28 = (v0 + 1270);
  v29 = *(v0 + 3352);
  v30 = *(v0 + 2872);
  v31 = (*(v0 + 2984) + *(v0 + 4296));
  v32 = v30 + *(v0 + 4252);
  v33 = *(v32 + 40);
  *v31 = *(v32 + 32);
  v31[1] = v33;
  v34 = v30 + *(v29 + 32);
  if (*(v34 + 32))
  {
  }

  else
  {
    v35 = *(v0 + 2984) + *(v0 + 4292);
    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    v38 = *(v34 + 8);
    *(v0 + 4204) = *v34;
    *(v0 + 4212) = v38;
    *(v0 + 4220) = v37;
    *(v0 + 4228) = v36;

    v39 = sub_10020A9E4((v0 + 4204), 32);
    v41 = v40;
    sub_1001CEE68(*v35, *(v35 + 8));
    *v35 = v39;
    *(v35 + 8) = v41;
  }

  v42 = *(v0 + 4203);
  v43 = *(v0 + 4202);
  *(v0 + 4200) = *(v0 + 4201);
  *v28 = *(v0 + 1263);
  *(v0 + 1273) = *(v0 + 1266);
  *(v0 + 4240) = v43;
  v44 = *(v0 + 1215);
  *v27 = *(v0 + 1199);
  *(v0 + 1247) = v44;
  if (v42)
  {

    v45 = *(v0 + 3376);
    v46 = *(v0 + 2872);
    static Logger.install.getter();
    sub_10020ADF8(v46, v45, type metadata accessor for ADPPrepareInstallTask);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 3704);
    v51 = *(v0 + 3640);
    v52 = *(v0 + 3376);
    if (v49)
    {
      v53 = *(v0 + 3352);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = *(v52 + *(v53 + 28));
      sub_10020AE60(v52, type metadata accessor for ADPPrepareInstallTask);
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%@] Successfully prepared the install", v54, 0xCu);
      sub_1000032A8(v55, &qword_10077F920);

      sub_1000032A8(v0 + 752, &qword_10077E960);
      sub_1000032A8(v0 + 752, &qword_10077E960);
    }

    else
    {

      sub_1000032A8(v0 + 752, &qword_10077E960);
      sub_1000032A8(v0 + 752, &qword_10077E960);
      sub_10020AE60(v52, type metadata accessor for ADPPrepareInstallTask);
    }

    v96 = *(v0 + 3664);
    v95 = *(v0 + 3344);
    v84 = *(v0 + 3264);
    v85 = *(v0 + 3168);
    v86 = *(v0 + 3160);
    v87 = *(v0 + 3096);
    v88 = *(v0 + 3080);
    v89 = *(v0 + 3072);
    v90 = *(v0 + 2984);
    v91 = *(v0 + 2920);
    v92 = *(v0 + 2856);
    (*(*(v0 + 3456) + 8))();
    sub_10020AE60(v91, type metadata accessor for EvaluatorDownload);
    v96(v84, v85);
    (*(v88 + 8))(v87, v89);
    sub_10020AE60(v86, type metadata accessor for PlaceholderPromiseBuilder);
    sub_10020AE60(v95, type metadata accessor for CreateCoordinatorTask);
    sub_10020ADF8(v90, v92, type metadata accessor for AppInstall);
    sub_10020AE60(v90, type metadata accessor for AppInstall);

    v93 = *(v0 + 8);
    v94 = *(v0 + 4112);

    return v93(v94);
  }

  else
  {
    v57 = *(v0 + 4144);
    v58 = *(v0 + 4136);
    v59 = *(v0 + 4128);
    v60 = *(v0 + 3632);
    v61 = *(v0 + 3576);
    v101 = *(v0 + 4120);
    v103 = *(v0 + 1824);
    *(*(v0 + 2984) + *(v0 + 4300)) = 1;
    *(v0 + 2792) = &_swiftEmptyDictionarySingleton;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B7938(v57, v43 & 1, v62, v63);
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B7938(v58, *(v0 + 4200), v64, v65);
    v66 = *(v0 + 4200);
    LODWORD(v104) = *v28;
    *(&v104 + 3) = *(v0 + 1273);
    v67 = *(v0 + 4240);
    v105 = *v27;
    v106 = *(v0 + 1247);

    v68 = [v60 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v69._countAndFlagsBits = 0x545241422FLL;
    v69._object = 0xE500000000000000;
    String.append(_:)(v69);
    v70 = objc_allocWithZone(type metadata accessor for LogKey());
    v71 = LogKey.init(string:)();
    *(v0 + 1504) = v101;
    *(v0 + 1512) = v59;
    *(v0 + 1520) = v58;
    *(v0 + 1528) = v66;
    *(v0 + 1529) = v104;
    *(v0 + 1532) = *(&v104 + 3);
    *(v0 + 1536) = v57;
    *(v0 + 1544) = v67;
    *(v0 + 1545) = v105;
    *(v0 + 1561) = v106;
    *(v0 + 1584) = v103;
    *(v0 + 1592) = v61;
    *(v0 + 1600) = v71;
    v72 = swift_task_alloc();
    *(v0 + 4184) = v72;
    *v72 = v0;
    v72[1] = sub_100202430;

    return sub_1001F1D7C();
  }
}

uint64_t sub_100202430()
{
  *(*v1 + 4192) = v0;

  if (v0)
  {

    v2 = sub_100204148;
  }

  else
  {
    v2 = sub_1002025B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002025B4()
{
  v67 = *(v0 + 4260);
  v66 = *(v0 + 3616);
  v1 = *(v0 + 3600);
  v2 = *(v0 + 3264);
  v3 = *(v0 + 3184);
  v4 = *(v0 + 3168);
  sub_10020911C(*(v0 + 2792));
  v5 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() descriptorWithAppBundleIdentifier:v5 appStoreMetadata:isa client:0];

  v1(v3, v2, v4);
  v8 = v66(v3, v4);
  if (v8 == v67)
  {
    goto LABEL_2;
  }

  if (v8 == enum case for AppInstallRequestType.install(_:))
  {
    v9 = 1;
    goto LABEL_5;
  }

  if (v8 == *(v0 + 4276))
  {
LABEL_2:
    v9 = 0;
  }

  else
  {
    v9 = 1;
    if (v8 != *(v0 + 4248) && v8 != enum case for AppInstallRequestType.promotion(_:))
    {
      v9 = 0;
      if (v8 != *(v0 + 4272) && v8 != enum case for AppInstallRequestType.deviceVPP(_:) && v8 != *(v0 + 4280) && v8 != enum case for AppInstallRequestType.userVPP(_:) && v8 != *(v0 + 4284) && v8 != enum case for AppInstallRequestType.upp(_:) && v8 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

LABEL_5:
  v10 = *(v0 + 4304);
  v11 = *(v0 + 2984);

  [v7 setUserInitiated:v9];

  v12 = *(v11 + v10);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    [v7 setCellularPolicy:3];
  }

  v13 = [objc_allocWithZone(BAAppStoreClient) init];
  *(v0 + 2800) = 0;
  v14 = [v13 prepareForAppInstallWithDescriptor:v7 error:v0 + 2800];
  v15 = *(v0 + 2800);
  v16 = *(v0 + 2872);
  if (!v14)
  {
    v17 = (v0 + 3464);
    v28 = *(v0 + 3360);
    v29 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.install.getter();
    sub_10020ADF8(v16, v28, type metadata accessor for ADPPrepareInstallTask);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 3360);
    if (v32)
    {
      v34 = *(v0 + 3352);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412546;
      v37 = *(v33 + *(v34 + 28));
      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
      *(v35 + 4) = v37;
      *v36 = v37;
      v17 = (v0 + 3464);
      *(v35 + 12) = 2114;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      v36[1] = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Failed to send prepare descriptor to Background Assets: %{public}@", v35, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_1001F5A3C(v0 + 1504);

      goto LABEL_27;
    }

    sub_1001F5A3C(v0 + 1504);

    v40 = v33;
LABEL_26:
    sub_10020AE60(v40, type metadata accessor for ADPPrepareInstallTask);
    goto LABEL_27;
  }

  v17 = (v0 + 3488);
  v18 = *(v0 + 3384);
  v19 = v15;
  static Logger.install.getter();
  sub_10020ADF8(v16, v18, type metadata accessor for ADPPrepareInstallTask);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 3384);
  if (!v22)
  {

    sub_1001F5A3C(v0 + 1504);
    v40 = v23;
    goto LABEL_26;
  }

  v24 = *(v0 + 3352);
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  *v25 = 138412290;
  v27 = *(v23 + *(v24 + 28));
  sub_10020AE60(v23, type metadata accessor for ADPPrepareInstallTask);
  *(v25 + 4) = v27;
  *v26 = v27;
  _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Sent prepare descriptor to Background Assets", v25, 0xCu);
  sub_1000032A8(v26, &qword_10077F920);

  sub_1001F5A3C(v0 + 1504);
LABEL_27:
  (*(*(v0 + 3456) + 8))(*v17, *(v0 + 3448));
  v41 = *(v0 + 3376);
  v42 = *(v0 + 2872);
  static Logger.install.getter();
  sub_10020ADF8(v42, v41, type metadata accessor for ADPPrepareInstallTask);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 3704);
  v47 = *(v0 + 3640);
  v48 = *(v0 + 3376);
  if (v45)
  {
    v49 = *(v0 + 3352);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = *(v48 + *(v49 + 28));
    sub_10020AE60(v48, type metadata accessor for ADPPrepareInstallTask);
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Successfully prepared the install", v50, 0xCu);
    sub_1000032A8(v51, &qword_10077F920);

    sub_1000032A8(v0 + 752, &qword_10077E960);
    sub_1000032A8(v0 + 752, &qword_10077E960);
  }

  else
  {

    sub_1000032A8(v0 + 752, &qword_10077E960);
    sub_1000032A8(v0 + 752, &qword_10077E960);
    sub_10020AE60(v48, type metadata accessor for ADPPrepareInstallTask);
  }

  v65 = *(v0 + 3664);
  v64 = *(v0 + 3344);
  v53 = *(v0 + 3264);
  v54 = *(v0 + 3168);
  v55 = *(v0 + 3160);
  v56 = *(v0 + 3096);
  v57 = *(v0 + 3080);
  v58 = *(v0 + 3072);
  v59 = *(v0 + 2984);
  v60 = *(v0 + 2920);
  v61 = *(v0 + 2856);
  (*(*(v0 + 3456) + 8))();
  sub_10020AE60(v60, type metadata accessor for EvaluatorDownload);
  v65(v53, v54);
  (*(v57 + 8))(v56, v58);
  sub_10020AE60(v55, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v64, type metadata accessor for CreateCoordinatorTask);
  sub_10020ADF8(v59, v61, type metadata accessor for AppInstall);
  sub_10020AE60(v59, type metadata accessor for AppInstall);

  v62 = *(v0 + 8);
  v63 = *(v0 + 4112);

  return v62(v63);
}

uint64_t sub_100203270()
{
  (*(v0[385] + 8))(v0[387], v0[384]);
  sub_10000710C((v0 + 306));
  v1 = v0[476];
  v2 = v0[421];
  v3 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v3, v2, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[421];
  if (v6)
  {
    v8 = v0[419];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = *(v7 + *(v8 + 28));
    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v7, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v13 = type metadata accessor for MarketplaceKitError();
  v14 = swift_dynamicCast();
  v15 = *(*(v13 - 8) + 56);
  v16 = v0[360];
  if (v14)
  {
    v17 = *(v13 - 8);
    v15(v0[360], 0, 1, v13);
    v18 = (*(v17 + 88))(v16, v13);
    v19 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v17 + 8))(v16, v13);
    if (v18 == v19)
    {
      v20 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v15(v0[360], 1, 1, v13);
    sub_1000032A8(v16, &unk_100784390);
  }

  v20 = 1;
LABEL_9:
  v21 = v0[463];
  v22 = v0[455];
  v23 = v0[418];
  v24 = v0[395];
  sub_1005F6C58(v20, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v24, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v23, type metadata accessor for CreateCoordinatorTask);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002039A8()
{
  v1 = v0[387];
  v2 = v0[386];
  v3 = v0[385];
  v4 = v0[384];
  sub_1000032A8((v0 + 201), &qword_10077E978);
  sub_1000032A8((v0 + 94), &qword_10077E960);
  sub_1000032A8((v0 + 94), &qword_10077E960);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  sub_10000710C((v0 + 288));
  v6 = v0[501];
  v7 = v0[421];
  v8 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v8, v7, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[421];
  if (v11)
  {
    v13 = v0[419];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    v16 = *(v12 + *(v13 + 28));
    sub_10020AE60(v12, type metadata accessor for ADPPrepareInstallTask);
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    v15[1] = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v14, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v12, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v6;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v18 = type metadata accessor for MarketplaceKitError();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  v21 = v0[360];
  if (v19)
  {
    v22 = *(v18 - 8);
    v20(v0[360], 0, 1, v18);
    v23 = (*(v22 + 88))(v21, v18);
    v24 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v22 + 8))(v21, v18);
    if (v23 == v24)
    {
      v25 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v20(v0[360], 1, 1, v18);
    sub_1000032A8(v21, &unk_100784390);
  }

  v25 = 1;
LABEL_9:
  v26 = v0[463];
  v27 = v0[455];
  v28 = v0[418];
  v29 = v0[395];
  sub_1005F6C58(v25, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v29, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v28, type metadata accessor for CreateCoordinatorTask);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100204148()
{
  v1 = v0[458];
  v2 = v0[408];
  v3 = v0[396];
  v4 = v0[385];
  v5 = v0[384];
  v33 = v0[387];
  v34 = v0[373];
  v6 = v0[365];
  sub_1001F5A3C((v0 + 188));
  sub_1000032A8((v0 + 94), &qword_10077E960);
  sub_1000032A8((v0 + 94), &qword_10077E960);
  sub_10020AE60(v6, type metadata accessor for EvaluatorDownload);
  v1(v2, v3);
  (*(v4 + 8))(v33, v5);
  sub_10020AE60(v34, type metadata accessor for AppInstall);
  v7 = v0[524];
  v8 = v0[421];
  v9 = v0[359];
  static Logger.install.getter();
  sub_10020ADF8(v9, v8, type metadata accessor for ADPPrepareInstallTask);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[421];
  if (v12)
  {
    v14 = v0[419];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = *(v13 + *(v14 + 28));
    sub_10020AE60(v13, type metadata accessor for ADPPrepareInstallTask);
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    v16[1] = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Preparing install failed, cancelling coordinator: %{public}@", v15, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_10020AE60(v13, type metadata accessor for ADPPrepareInstallTask);
  }

  (*(v0[432] + 8))(v0[434], v0[431]);
  v0[355] = v7;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v19 = type metadata accessor for MarketplaceKitError();
  v20 = swift_dynamicCast();
  v21 = *(*(v19 - 8) + 56);
  v22 = v0[360];
  if (v20)
  {
    v23 = *(v19 - 8);
    v21(v0[360], 0, 1, v19);
    v24 = (*(v23 + 88))(v22, v19);
    v25 = enum case for MarketplaceKitError.cancelled(_:);
    (*(v23 + 8))(v22, v19);
    if (v24 == v25)
    {
      v26 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    v21(v0[360], 1, 1, v19);
    sub_1000032A8(v22, &unk_100784390);
  }

  v26 = 1;
LABEL_9:
  v27 = v0[463];
  v28 = v0[455];
  v29 = v0[418];
  v30 = v0[395];
  sub_1005F6C58(v26, *(v0[447] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt), 0);
  swift_willThrow();

  sub_10020AE60(v30, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10020AE60(v29, type metadata accessor for CreateCoordinatorTask);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100204918()
{
  v1 = v0;
  v246 = type metadata accessor for ADPPrepareInstallTask();
  v2 = __chkstk_darwin(v246);
  v243 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v245 = (&v222 - v5);
  v6 = __chkstk_darwin(v4);
  v240 = (&v222 - v7);
  v8 = __chkstk_darwin(v6);
  v231 = &v222 - v9;
  v10 = __chkstk_darwin(v8);
  v229 = &v222 - v11;
  v12 = __chkstk_darwin(v10);
  v235 = &v222 - v13;
  v14 = __chkstk_darwin(v12);
  v226 = &v222 - v15;
  v16 = __chkstk_darwin(v14);
  v225 = &v222 - v17;
  v18 = __chkstk_darwin(v16);
  v233 = &v222 - v19;
  v20 = __chkstk_darwin(v18);
  v228 = &v222 - v21;
  v22 = __chkstk_darwin(v20);
  v241 = (&v222 - v23);
  __chkstk_darwin(v22);
  v237 = (&v222 - v24);
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v247 = v25;
  v248 = v26;
  v27 = __chkstk_darwin(v25);
  v244 = &v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v222 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v222 - v33;
  v35 = __chkstk_darwin(v32);
  v230 = &v222 - v36;
  v37 = __chkstk_darwin(v35);
  v234 = &v222 - v38;
  v39 = __chkstk_darwin(v37);
  v227 = &v222 - v40;
  v41 = __chkstk_darwin(v39);
  v224 = &v222 - v42;
  v43 = __chkstk_darwin(v41);
  v232 = &v222 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v222 - v46;
  __chkstk_darwin(v45);
  v236 = (&v222 - v48);
  v49 = *v1;
  v238 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v239 = v49;
  v50 = *(&v49->isa + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v51 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
  v52 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v50 + v52));
  v53 = (v50 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 32) + v51);
  v55 = *v53;
  v54 = v53[1];

  os_unfair_lock_unlock((v50 + v52));
  if (!v54)
  {
    static Logger.install.getter();
    v72 = v245;
    sub_10020ADF8(v1, v245, type metadata accessor for ADPPrepareInstallTask);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = *(v72 + *(v246 + 28));
      sub_10020AE60(v72, type metadata accessor for ADPPrepareInstallTask);
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Missing required install verification token", v75, 0xCu);
      sub_1000032A8(v76, &qword_10077F920);
    }

    else
    {

      sub_10020AE60(v72, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(v248 + 8))(v31, v247);
    goto LABEL_31;
  }

  v245 = v1;
  v56 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v56 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    static Logger.install.getter();
    v86 = v240;
    sub_10020ADF8(v245, v240, type metadata accessor for ADPPrepareInstallTask);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      v91 = *(v86 + *(v246 + 28));
      sub_10020AE60(v86, type metadata accessor for ADPPrepareInstallTask);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "[%@] Install verification token is empty", v89, 0xCu);
      sub_1000032A8(v90, &qword_10077F920);
    }

    else
    {

      sub_10020AE60(v86, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(v248 + 8))(v34, v247);
LABEL_31:
    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v129 = 0xD00000000000002BLL;
    v129[1] = 0x80000001006C4550;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v57 = v55;
  has_internal_content = os_variant_has_internal_content();
  v59 = v245;
  v60 = v241;
  if (has_internal_content)
  {
    LOBYTE(v250) = 0;
    v61 = String._bridgeToObjectiveC()();
    v62 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v61, v62, &v250);

    if (v250)
    {
      if (AppBooleanValue)
      {

        v64 = v236;
        static Logger.install.getter();
        v65 = v59;
        v66 = v237;
        sub_10020ADF8(v65, v237, type metadata accessor for ADPPrepareInstallTask);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          v71 = *(v66 + *(v246 + 28));
          sub_10020AE60(v66, type metadata accessor for ADPPrepareInstallTask);
          *(v69 + 4) = v71;
          *v70 = v71;
          _os_log_impl(&_mh_execute_header, v67, v68, "[%@] Skipping install verification token validation due to internal default", v69, 0xCu);
          sub_1000032A8(v70, &qword_10077F920);
        }

        else
        {

          sub_10020AE60(v66, type metadata accessor for ADPPrepareInstallTask);
        }

        return (*(v248 + 8))(v64, v247);
      }
    }
  }

  static Logger.install.getter();
  sub_10020ADF8(v59, v60, type metadata accessor for ADPPrepareInstallTask);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = *(v60 + *(v246 + 28));
    v83 = v60;
    v84 = v57;
    v85 = v82;
    sub_10020AE60(v83, type metadata accessor for ADPPrepareInstallTask);
    *(v80 + 4) = v85;
    *v81 = v85;
    v57 = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "[%@] Beginning install verification token validation", v80, 0xCu);
    sub_1000032A8(v81, &qword_10077F920);
    v59 = v245;
  }

  else
  {

    sub_10020AE60(v60, type metadata accessor for ADPPrepareInstallTask);
  }

  v93 = v242;
  v92 = v243;
  v94 = v248 + 8;
  v95 = *(v248 + 8);
  v95(v47, v247);
  v242 = 0x80000001006C4580;

  sub_1005A9F58(v57, v54, v253);
  if (v93)
  {

    v223 = 0xD000000000000021;
    v96 = v244;
LABEL_21:
    static Logger.install.getter();
    sub_10020ADF8(v59, v92, type metadata accessor for ADPPrepareInstallTask);
    v97 = v242;

    swift_errorRetain();
    v98 = v92;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v248 = v94;
      v102 = v101;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v241 = v95;
      v245 = v104;
      v250 = v104;
      *v102 = 138412802;
      v105 = v97;
      v106 = *(v98 + *(v246 + 28));
      sub_10020AE60(v98, type metadata accessor for ADPPrepareInstallTask);
      *(v102 + 4) = v106;
      *v103 = v106;
      *(v102 + 12) = 2080;
      v107 = sub_1002346CC(v223, v105, &v250);

      *(v102 + 14) = v107;
      *(v102 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      __chkstk_darwin(ErrorValue);
      (*(v110 + 16))(&v222 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
      v111 = String.init<A>(describing:)();
      v113 = sub_1002346CC(v111, v112, &v250);

      *(v102 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v99, v100, "[%@] Failed to %s: %{public}s", v102, 0x20u);
      sub_1000032A8(v103, &qword_10077F920);

      swift_arrayDestroy();

      v241(v244, v247);
    }

    else
    {

      sub_10020AE60(v98, type metadata accessor for ADPPrepareInstallTask);
      v95(v96, v247);
    }

    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v114 = 0;
    v114[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v248 = v94;
  v254 = v253[2];
  v255 = v253[3];
  v256 = v253[4];
  v257 = v253[5];
  sub_1005A9044();
  v241 = v95;
  if ((v117 & 1) == 0)
  {
    v118 = v116;
    sub_1005A9350();
    if ((v120 & 1) == 0)
    {
      v141 = v119;
      v142 = v245 + *(v246 + 20);
      v143 = type metadata accessor for ADP();
      v144 = &v142[*(v143 + 6)];
      if (v118 != *(v144 + 2) || v141 != *(v144 + 1))
      {
        v240 = v143;

        v145 = v232;
        static Logger.install.getter();
        v146 = v245;
        v147 = v228;
        sub_10020ADF8(v245, v228, type metadata accessor for ADPPrepareInstallTask);
        v148 = v233;
        sub_10020ADF8(v146, v233, type metadata accessor for ADPPrepareInstallTask);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v237 = v152;
          v239 = swift_slowAlloc();
          v252[0] = v239;
          *v151 = 138412802;
          v153 = v246;
          v154 = *(v147 + *(v246 + 28));
          LODWORD(v238) = v150;
          v155 = v154;
          v236 = type metadata accessor for ADPPrepareInstallTask;
          sub_10020AE60(v147, type metadata accessor for ADPPrepareInstallTask);
          *(v151 + 4) = v155;
          *v152 = v155;
          *(v151 + 12) = 2082;
          v249 = v118;
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          v251 = v156;
          v157._countAndFlagsBits = 58;
          v157._object = 0xE100000000000000;
          String.append(_:)(v157);
          v249 = v141;
          v158._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v158);

          v159 = sub_1002346CC(v250, v251, v252);

          *(v151 + 14) = v159;
          *(v151 + 22) = 2082;
          v160 = v233;
          v161 = v233 + *(v153 + 20) + *(v240 + 6);
          v250 = *(v161 + 16);
          v250 = dispatch thunk of CustomStringConvertible.description.getter();
          v251 = v162;
          v163._countAndFlagsBits = 58;
          v163._object = 0xE100000000000000;
          String.append(_:)(v163);
          v249 = *(v161 + 8);
          v164._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v164);

          v165 = v250;
          v166 = v251;
          sub_10020AE60(v160, v236);
          v167 = sub_1002346CC(v165, v166, v252);

          *(v151 + 24) = v167;
          _os_log_impl(&_mh_execute_header, v149, v238, "[%@] Version metadata from install verification token doesn't match the requested app: %{public}s != %{public}s", v151, 0x20u);
          sub_1000032A8(v237, &qword_10077F920);

          swift_arrayDestroy();

          v168 = v232;
        }

        else
        {

          sub_10020AE60(v148, type metadata accessor for ADPPrepareInstallTask);
          sub_10020AE60(v147, type metadata accessor for ADPPrepareInstallTask);
          v168 = v145;
        }

        v94 = v248;
        v95 = v241;
        v241(v168, v247);
        v185 = v243;
        v96 = v244;
        type metadata accessor for InternalError();
        sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v186 = 0xD00000000000002FLL;
        v186[1] = 0x80000001006C4600;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_10020AD3C(v253);
        v223 = 0xD000000000000021;
        v59 = v245;
        v92 = v185;
        goto LABEL_21;
      }
    }
  }

  v121 = *(&v239->isa + v238);
  v122 = *(*v121 + class metadata base offset for ManagedBuffer + 16);
  v123 = (*(*v121 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v121 + v123));
  sub_10020A980(v121 + v122, &v250);
  os_unfair_lock_unlock((v121 + v123));

  sub_1001F0C48(&qword_10077E970);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v128 = 0xD000000000000021;
LABEL_33:
    v96 = v244;
    v59 = v245;
    goto LABEL_34;
  }

  v125 = v252[0];
  v124 = v252[1];
  v126 = objc_allocWithZone(LSApplicationRecord);

  v127 = sub_10049E57C(v125, v124, 0);
  v128 = 0xD000000000000027;
  v96 = v244;
  v59 = v245;
  v169 = v127;
  v242 = 0x80000001006C45D0;
  if ([v127 isProfileValidated])
  {

    goto LABEL_34;
  }

  v187 = [v169 iTunesMetadata];
  v188 = [v187 storeItemIdentifier];

  if (!v188)
  {
    v196 = v227;
    static Logger.install.getter();
    v197 = v226;
    sub_10020ADF8(v245, v226, type metadata accessor for ADPPrepareInstallTask);

    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v250 = v240;
      *v200 = 138412546;
      v202 = *(v197 + *(v246 + 28));
      v203 = v197;
      v204 = v202;
      sub_10020AE60(v203, type metadata accessor for ADPPrepareInstallTask);
      *(v200 + 4) = v204;
      *v201 = v204;
      *(v200 + 12) = 2082;
      v205 = sub_1002346CC(v125, v124, &v250);

      *(v200 + 14) = v205;
      _os_log_impl(&_mh_execute_header, v198, v199, "[%@] Expected installing app isn't present: %{public}s", v200, 0x16u);
      sub_1000032A8(v201, &qword_10077F920);

      sub_10000710C(v240);

      v206 = v227;
    }

    else
    {

      sub_10020AE60(v197, type metadata accessor for ADPPrepareInstallTask);
      v206 = v196;
    }

    v94 = v248;
    v241(v206, v247);
    v96 = v244;
    v223 = 0xD000000000000027;
    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v208 = 0;
    v208[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10020AD3C(v253);
    v59 = v245;
    v95 = v241;
    v92 = v243;
    goto LABEL_21;
  }

  v189 = [v169 iTunesMetadata];
  v190 = [v189 storeItemIdentifier];

  v250 = v190;
  v191 = dispatch thunk of CustomStringConvertible.description.getter();
  v193 = v192;
  v194 = v255;
  if (__PAIR128__(v192, v191) == v255)
  {

    v128 = 0xD000000000000027;
    goto LABEL_33;
  }

  v240 = v191;
  v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v128 = 0xD000000000000027;
  v96 = v244;
  if ((v207 & 1) == 0)
  {
    v223 = 0xD000000000000027;
    v209 = v224;
    static Logger.install.getter();
    sub_10020ADF8(v245, v225, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ACE0(v253, &v250);

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    sub_10020AD3C(v253);

    LODWORD(v238) = v211;
    v239 = v210;
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v250 = v237;
      *v212 = 138412802;
      v214 = v225;
      v215 = *(v225 + *(v246 + 28));
      sub_10020AE60(v214, type metadata accessor for ADPPrepareInstallTask);
      *(v212 + 4) = v215;
      *v213 = v215;
      *(v212 + 12) = 2082;

      v216 = sub_1002346CC(v194, *(&v194 + 1), &v250);

      *(v212 + 14) = v216;
      v96 = v244;
      *(v212 + 22) = 2082;
      v217 = sub_1002346CC(v240, v193, &v250);

      *(v212 + 24) = v217;
      v218 = v239;
      _os_log_impl(&_mh_execute_header, v239, v238, "[%@] iss supplied in token doesn't match the expected app: %{public}s != %{public}s", v212, 0x20u);
      sub_1000032A8(v213, &qword_10077F920);

      swift_arrayDestroy();

      v219 = v224;
    }

    else
    {

      sub_10020AE60(v225, type metadata accessor for ADPPrepareInstallTask);
      v219 = v209;
    }

    v94 = v248;
    v241(v219, v247);
    v220 = v243;
    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v221 = xmmword_10069E8B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10020AD3C(v253);
    v59 = v245;
    v95 = v241;
    v92 = v220;
    goto LABEL_21;
  }

  v59 = v245;
LABEL_34:
  v130 = v254;
  v131 = v59 + *(v246 + 20);
  v132 = type metadata accessor for ADP();
  if (v130 != *(v131 + *(v132 + 24) + 24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    static Logger.install.getter();
    sub_10020ADF8(v59, v229, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v59, v231, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ACE0(v253, &v250);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    sub_10020AD3C(v253);
    v172 = os_log_type_enabled(v170, v171);
    v223 = v128;
    if (v172)
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v239 = v170;
      v175 = v174;
      v240 = swift_slowAlloc();
      v250 = v240;
      *v173 = 138412802;
      v176 = v229;
      v177 = *(v229 + *(v246 + 28));
      LODWORD(v238) = v171;
      v178 = v231;
      v237 = type metadata accessor for ADPPrepareInstallTask;
      sub_10020AE60(v176, type metadata accessor for ADPPrepareInstallTask);
      *(v173 + 4) = v177;
      *v175 = v177;
      *(v173 + 12) = 2082;

      v179 = sub_1002346CC(v130, *(&v130 + 1), &v250);

      *(v173 + 14) = v179;
      *(v173 + 22) = 2082;
      v59 = v245;
      v180 = v178 + *(v246 + 20) + *(v132 + 24);
      v181 = *(v180 + 24);
      v182 = *(v180 + 32);

      sub_10020AE60(v178, v237);
      v183 = sub_1002346CC(v181, v182, &v250);

      *(v173 + 24) = v183;
      v184 = v239;
      _os_log_impl(&_mh_execute_header, v239, v238, "[%@] bid supplied in token doesn't match the expected app: %{public}s != %{public}s", v173, 0x20u);
      sub_1000032A8(v175, &qword_10077F920);

      swift_arrayDestroy();

      v96 = v244;
    }

    else
    {

      sub_10020AE60(v231, type metadata accessor for ADPPrepareInstallTask);
      sub_10020AE60(v229, type metadata accessor for ADPPrepareInstallTask);
    }

    v94 = v248;
    v95 = v241;
    v241(v230, v247);
    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v195 = xmmword_10069E8C0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_10020AD3C(v253);
    v92 = v243;
    goto LABEL_21;
  }

  sub_10020AD3C(v253);
  v133 = v234;
  static Logger.install.getter();
  v134 = v59;
  v135 = v235;
  sub_10020ADF8(v134, v235, type metadata accessor for ADPPrepareInstallTask);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v138 = 138412290;
    v140 = *(v135 + *(v246 + 28));
    sub_10020AE60(v135, type metadata accessor for ADPPrepareInstallTask);
    *(v138 + 4) = v140;
    *v139 = v140;
    _os_log_impl(&_mh_execute_header, v136, v137, "[%@] Successfully validated the verification token", v138, 0xCu);
    sub_1000032A8(v139, &qword_10077F920);
  }

  else
  {

    sub_10020AE60(v135, type metadata accessor for ADPPrepareInstallTask);
  }

  return (v241)(v133, v247);
}

void sub_10020687C()
{
  v123 = type metadata accessor for URLComponents();
  v117 = *(v123 - 8);
  __chkstk_darwin(v123);
  v113 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v3 - 8);
  v118 = &v112 - v4;
  v5 = type metadata accessor for URL();
  v125 = *(v5 - 8);
  v126 = v5;
  __chkstk_darwin(v5);
  v114 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809F0);
  v8 = __chkstk_darwin(v7 - 8);
  v115 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v122 = &v112 - v11;
  __chkstk_darwin(v10);
  v116 = &v112 - v12;
  v13 = [objc_allocWithZone(MIStoreMetadata) init];
  v14 = type metadata accessor for ADPPrepareInstallTask();
  v15 = (v0 + *(v14 + 24));
  v16 = v15[7];
  v120 = v15[6];
  v121 = v16;
  v17 = String._bridgeToObjectiveC()();
  [v13 setArtistName:v17];

  v18 = v0 + *(v14 + 20);
  v19 = *(type metadata accessor for ADP() + 24);
  v124 = v18;
  v20 = &v18[v19];
  v21 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*&v18[v19 + 16]];
  [v13 setItemID:v21];

  v22 = v15[3];
  v127 = v1;
  if (!v22)
  {
  }

  v23 = String._bridgeToObjectiveC()();

  [v13 setItemName:v23];

  v24 = [v13 itemName];
  [v13 setShortItemName:v24];

  v119 = *(v20 + 3);
  v25 = String._bridgeToObjectiveC()();
  [v13 setSoftwareVersionBundleID:v25];

  v26 = String._bridgeToObjectiveC()();
  [v13 setBundleVersion:v26];

  v27 = String._bridgeToObjectiveC()();
  [v13 setBundleShortVersionString:v27];

  v28 = type metadata accessor for MediaAPIMetadata();
  v29 = String._bridgeToObjectiveC()();
  [v13 setRatingLabel:v29];

  v30 = [objc_allocWithZone(NSNumber) initWithInteger:*(v15 + v28[12])];
  [v13 setRatingRank:v30];

  v31 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(v20 + 1)];
  [v13 setSoftwareVersionExternalIdentifier:v31];

  v32 = v28[9];
  v131 = v15;
  v33 = v15 + v32;
  if ((v33[8] & 1) == 0)
  {
    v34 = [objc_allocWithZone(NSNumber) initWithInteger:*v33];
    [v13 setGenreID:v34];
  }

  v35 = v131;
  if (*(v131 + v28[10] + 8))
  {
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  [v13 setGenre:v36];

  isa = *(v35 + v28[13]);
  if (isa)
  {
    sub_100006190(0, &qword_10077E990);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v13 setSubGenres:isa];

  v38 = v20[185];
  if (v38 != 2)
  {
    [v13 setLaunchProhibited:v38 & 1];
  }

  v39 = v20[186];
  if (v39 != 2)
  {
    [v13 setHasMessagesExtension:v39 & 1];
  }

  v40 = [objc_allocWithZone(MIStoreMetadataDistributor) init];
  v41 = *v0;
  v42 = *(*v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v43 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
  v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v42 + v44));
  sub_10020A980(v42 + v43, v130);
  os_unfair_lock_unlock((v42 + v44));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v45 = v128;
    v46 = v129;

    v47 = String._bridgeToObjectiveC()();

    [v40 setDistributorID:v47];

    v48 = String._bridgeToObjectiveC()();

    [v13 setSourceApp:v48];

    v49 = objc_allocWithZone(LSApplicationRecord);
    v50 = v127;
    v51 = sub_10049E57C(v45, v46, 0);
    if (v50)
    {

      sub_10000710C(v130);
      return;
    }

    v57 = v51;
    v121 = v41;
    v127 = 0;
    sub_1001F0C48(&qword_10077E988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v59 = [v57 localizedName];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    *(inited + 48) = v60;
    *(inited + 56) = v62;
    sub_1005288C8(inited);
    swift_setDeallocating();
    sub_1000032A8(inited + 32, &qword_100784360);
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v40 setLocalizedDistributorName:v63];

    v64 = [v57 iTunesMetadata];
    v65 = [v64 distributorInfo];

    v66 = [v65 developerName];
    [v40 setDeveloperName:v66];

    v67 = [v57 iTunesMetadata];
    v68 = [v67 storeItemIdentifier];

    if (v68)
    {
      v69 = [v57 iTunesMetadata];
      v70 = [v69 storeItemIdentifier];

      v71 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v70];
      [v40 setMarketplaceItemID:v71];

      v72 = [v57 iTunesMetadata];
      v73 = [v72 distributorInfo];

      v74 = [v73 domain];
      [v40 setMarketplaceDomain:v74];
    }

    v55 = v126;
    v56 = v125;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      __break(1u);
      return;
    }

    v52 = String._bridgeToObjectiveC()();
    [v40 setDistributorID:v52];

    v53 = String._bridgeToObjectiveC()();
    [v40 setDeveloperName:v53];

    v121 = v41;
    if (*(v41 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID + 8))
    {

      v54 = String._bridgeToObjectiveC()();

      [v13 setSourceApp:v54];
    }

    v55 = v126;
    v56 = v125;
  }

  sub_10000710C(v130);
  sub_1005D6710();
  if (v75)
  {
    v76 = String._bridgeToObjectiveC()();

    [v40 setDomain:v76];

    v77 = String._bridgeToObjectiveC()();

    [v40 setAccountID:v77];

    URL._bridgeToObjectiveC()(v78);
    v80 = v79;
    [v40 setSourceURL:v79];

    v81 = v131;
    v82 = String._bridgeToObjectiveC()();
    [v40 setDeveloperID:v82];

    v83 = v81 + v28[14];
    v84 = v122;
    v85 = v123;
    if (*(v83 + 8))
    {
      v86 = v116;
      URL.init(string:)();
      if ((*(v56 + 48))(v86, 1, v55) == 1)
      {
        v88 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v87);
        v84 = v122;
        v85 = v123;
        v88 = v91;
        (*(v56 + 8))(v86, v55);
      }

      [v40 setSupportPageURL:v88];
    }

    sub_100005934(v121 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, v84, &unk_1007809F0);
    v92 = *(v56 + 48);
    if (v92(v84, 1, v55) == 1)
    {
      sub_1000032A8(v84, &unk_1007809F0);
      v93 = v118;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v94 = *(v117 + 48);
      if (!v94(v93, 1, v85))
      {
        URLComponents.path.setter();
        v93 = v118;
        v85 = v123;
      }

      if (v94(v93, 1, v85))
      {
        (*(v125 + 56))(v115, 1, 1, v126);
        v95 = 0;
      }

      else
      {
        v101 = v117;
        v102 = v93;
        v103 = v113;
        (*(v117 + 16))(v113, v102, v85);
        v104 = v115;
        URLComponents.url.getter();
        (*(v101 + 8))(v103, v85);
        v105 = v104;
        v106 = v104;
        v107 = v126;
        v108 = v92(v106, 1, v126);
        v110 = v125;
        if (v108 == 1)
        {
          v95 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v109);
          v95 = v111;
          (*(v110 + 8))(v105, v107);
        }

        v93 = v118;
      }

      [v40 setShareURL:v95];

      sub_1000032A8(v93, &unk_1007803A0);
    }

    else
    {
      v96 = v84;
      v97 = v114;
      (*(v56 + 32))(v114, v96, v55);
      URL._bridgeToObjectiveC()(v98);
      v100 = v99;
      [v40 setShareURL:v99];

      (*(v56 + 8))(v97, v55);
    }

    [v13 setDistributorInfo:v40];
    [v13 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006190(0, &qword_1007813E0);
    swift_dynamicCast();
  }

  else
  {
    v89 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v89 - 8) + 104))(v90, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:), v89);
    swift_willThrow();
  }
}

uint64_t sub_100207814(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_1002078A4, 0, 0);
}

uint64_t sub_1002078A4()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setPlaceholderPromise:*(v0 + 32) error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v7 = *(v0 + 8);
    v3 = v2;
    v4 = v7;
  }

  else
  {
    v5 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1002079A8(uint64_t a1, int *a2)
{
  v2[18] = a1;
  v4 = sub_1001F0C48(&unk_100784B60);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[22] = v5;
  *v5 = v2;
  v5[1] = sub_100207B04;

  return v7();
}

uint64_t sub_100207B04()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100207C40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100207C40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v10 = v1[18];
  v7 = _convertErrorToNSError(_:)();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_100207E0C;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_10020A748(v1 + 14);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10020A518;
  v1[13] = &unk_10075BE28;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100207E0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100207F98;
  }

  else
  {
    v2 = sub_100207F1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100207F1C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100207F98()
{
  swift_willThrow();

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100208028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for ADPPrepareInstallTask();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for ADP();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for ADPNewLicenseTask(0);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002081BC, 0, 0);
}

uint64_t sub_1002081BC()
{
  v1 = **(v0 + 48);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 40);

  os_unfair_lock_unlock((v3 + v5));
  if (v6)
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v40 = *(v0 + 40);
    v41 = *(v0 + 136);
    v43 = *(v0 + 24);
    v44 = *(v0 + 32);
    sub_10020ADF8(v11 + *(v10 + 20), v9, type metadata accessor for ADP);
    v42 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt);
    v12 = *(v1 + v2);
    v13 = *(*v12 + class metadata base offset for ManagedBuffer + 16);
    v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v12 + v14));
    sub_10020A980(v12 + v13, v7);
    os_unfair_lock_unlock((v12 + v14));
    v39 = *(v11 + *(v10 + 28));
    v15 = type metadata accessor for NewLicenseBatch(0);
    v16 = &v7[v15[8]];
    *(v16 + 3) = type metadata accessor for DecoratedHTTP();
    *(v16 + 4) = &off_100762548;
    *v16 = v6;
    sub_10020AB78(v40, &v7[v8[7]]);
    v17 = (v9 + *(v41 + 20));
    v19 = *v17;
    v18 = v17[1];
    v20 = v15[7];
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 16))(&v7[v20], v9, v21);
    v22 = v9 + *(v41 + 24);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = v39;

    sub_10020AE60(v9, type metadata accessor for ADP);
    *(v7 + 5) = v19;
    *(v7 + 6) = v18;
    *(v7 + 7) = v43;
    *(v7 + 8) = v44;
    *&v7[v15[9]] = v24;
    *&v7[v15[10]] = v23;
    v7[v8[5]] = v42;
    *&v7[v8[6]] = v25;

    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = sub_100208708;

    return sub_1003AD104();
  }

  else
  {
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    static Logger.install.getter();
    sub_10020ADF8(v29, v28, type metadata accessor for ADPPrepareInstallTask);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 64);
    if (v32)
    {
      v34 = *(v0 + 56);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = *(v33 + *(v34 + 28));
      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] No agent available, failing", v35, 0xCu);
      sub_1000032A8(v36, &qword_10077F920);
    }

    else
    {

      sub_10020AE60(v33, type metadata accessor for ADPPrepareInstallTask);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    type metadata accessor for InternalError();
    sub_10020AF28(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_100208708(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100209028;
  }

  else
  {
    v4 = sub_10020881C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020881C()
{
  v65 = v0;
  v1 = v0[22];
  v2 = v0[6];
  *(swift_task_alloc() + 16) = v2;
  sub_100209998(sub_10020ABDC, v1, &v58);

  v3 = v64;
  v4 = v0[22];
  if (v64)
  {
    v5 = v59;
    v7 = v60;
    v6 = v61;
    v8 = v62;
    v55 = v58;
    v56 = v63;
    v9 = (v4 + 24);
    v10 = *(v4 + 16) + 1;
    while (--v10)
    {
      v11 = v9;
      v9 += 7;
      if (*(v11 + 40) == 1 && v11[1] == v59)
      {
        log = v60;
        v51 = v62;
        v12 = v0[20];
        v13 = v0[2];
        v14 = *(v9 - 4);
        v15 = *(v9 - 3);
        v16 = *v9;
        v48 = *(v9 - 5);
        v49 = *(v9 - 1);
        v53 = v61;
        sub_10020ABFC(v14, v15);

        sub_10020AE60(v12, type metadata accessor for ADPNewLicenseTask);

        *v13 = v55;
        *(v13 + 8) = v5;
        *(v13 + 16) = log;
        *(v13 + 24) = v53;
        *(v13 + 32) = v51 & 1;
        *(v13 + 40) = v56;
        *(v13 + 48) = v3;
        *(v13 + 56) = v5;
        *(v13 + 64) = v48;
        *(v13 + 72) = v14;
        *(v13 + 80) = v15;
        *(v13 + 88) = 1;
        *(v13 + 96) = v49;
        *(v13 + 104) = v16;
        v17 = v0[1];
        goto LABEL_16;
      }
    }

    v30 = v0[11];
    v31 = v0[6];

    static Logger.install.getter();
    sub_10020ADF8(v31, v30, type metadata accessor for ADPPrepareInstallTask);
    sub_10020AC50(v55, v5, v7, v6, v8, v56, v3);
    sub_10020AC50(v55, v5, v7, v6, v8, v56, v3);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v7;
    v36 = v0[11];
    if (v34)
    {
      v52 = v8;
      v37 = v0[7];
      v38 = swift_slowAlloc();
      v54 = v6;
      v39 = swift_slowAlloc();
      *v38 = 138412546;
      v40 = *(v36 + *(v37 + 28));
      sub_10020AE60(v36, type metadata accessor for ADPPrepareInstallTask);
      *(v38 + 4) = v40;
      *v39 = v40;
      v8 = v52;
      *(v38 + 12) = 2050;
      sub_10020AC98(v55, v5, v35, v54, v52, v56, v3);
      *(v38 + 14) = v5;
      sub_10020AC98(v55, v5, v35, v54, v52, v56, v3);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Unable to find license key with id: %{public}llu", v38, 0x16u);
      sub_1000032A8(v39, &qword_10077F920);
      v6 = v54;
    }

    else
    {
      sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);

      sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);
      sub_10020AE60(v36, type metadata accessor for ADPPrepareInstallTask);
    }

    v42 = v0[20];
    (*(v0[13] + 8))(v0[16], v0[12]);
    v45 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, enum case for MarketplaceKitError.invalidLicense(_:), v45);
    swift_willThrow();
    sub_10020AC98(v55, v5, v35, v6, v8, v56, v3);
  }

  else
  {
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[6];

    static Logger.install.getter();
    sub_10020ADF8(v20, v18, type metadata accessor for ADPPrepareInstallTask);
    sub_10020ADF8(v20, v19, type metadata accessor for ADPPrepareInstallTask);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v57 = v0[17];
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[7];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      v28 = *(v23 + *(v25 + 28));
      sub_10020AE60(v23, type metadata accessor for ADPPrepareInstallTask);
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2050;
      v29 = *(v24 + *(v25 + 20) + *(v57 + 24) + 16);
      sub_10020AE60(v24, type metadata accessor for ADPPrepareInstallTask);
      *(v26 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Unable to find app key with id: %{public}llu", v26, 0x16u);
      sub_1000032A8(v27, &qword_10077F920);
    }

    else
    {
      v41 = v0[10];
      sub_10020AE60(v0[9], type metadata accessor for ADPPrepareInstallTask);

      sub_10020AE60(v41, type metadata accessor for ADPPrepareInstallTask);
    }

    v42 = v0[20];
    (*(v0[13] + 8))(v0[15], v0[12]);
    v43 = type metadata accessor for MarketplaceKitError();
    sub_10020AF28(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, enum case for MarketplaceKitError.invalidLicense(_:), v43);
    swift_willThrow();
  }

  sub_10020AE60(v42, type metadata accessor for ADPNewLicenseTask);

  v17 = v0[1];
LABEL_16:

  return v17();
}

uint64_t sub_100209028()
{
  sub_10020AE60(*(v0 + 160), type metadata accessor for ADPNewLicenseTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020911C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_100786EA0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1001F6498(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1001F6498(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1001F6498(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1002093D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_10077E998);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10020A6D0(*(a1 + 56) + 32 * v11, v32);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v15 = v31;
        sub_1001F6498(v30, &v23);

        sub_1001F0C48(&qword_100783A30);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_10052213C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v1[6] + 16 * result) = v15;
          v8 = result;

          result = sub_10020AD90(&v24, v1[7] + 32 * v8, &qword_100783A30);
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v1[6] + 16 * result) = v15;
          v17 = (v1[7] + 32 * result);
          v18 = v25;
          *v17 = v24;
          v17[1] = v18;
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10020965C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_100786EA0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10020A6D0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1001F6498(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1001F6498(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1001F6498(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1001F6498(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_100209924(uint64_t *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  v3 = *a1;
  v4 = a2 + *(type metadata accessor for ADPPrepareInstallTask() + 20);
  return v3 == *(v4 + *(type metadata accessor for ADP() + 24) + 16);
}

uint64_t sub_100209998@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 80);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 16);
      v11 = *(v7 - 4);
      v12 = *(v7 - 3);
      v17 = *(v7 - 3);
      *&v18 = v11;
      *(&v18 + 1) = v12;
      v19 = v10;
      v20 = v8;
      v21 = v9;
      sub_10020ABFC(v11, v12);

      result = v6(&v17);
      if (v3)
      {
        sub_100007158(v18, *(&v18 + 1));
      }

      v13 = v21;
      if (result)
      {
        break;
      }

      sub_100007158(v18, *(&v18 + 1));

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v18;
    *a3 = v17;
    *(a3 + 16) = v16;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    *(a3 + 48) = v13;
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_100209AA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v12 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v13[0] = v7;
      v13[1] = v6;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v13[5] = v11;

      result = v14(v13);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

uint64_t sub_100209CA4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_10020ADF8(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_10020AE60(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_10020AE60(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_10020AEC0(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

void sub_100209E44(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
    sub_10020AF28(&qword_10077E9A0, type metadata accessor for InstallCoordinationInstallObserver.Observer);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_1001DFE18();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10020A098(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_10020A1BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10020A268(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_1001DFDA4(v8, v9, v10);
      v11 = a1(v14);
      sub_1001DFEBC(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 24;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10020A33C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 40);
    do
    {
      v9 = v7;
      v10 = v8[5];
      v11 = *v8;
      v15[0] = *(v8 - 1);
      v15[1] = v11;
      v12 = *(v8 + 3);
      v16 = *(v8 + 1);
      v17 = v12;
      v18 = v10;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 7;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_10020A414(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1 == a3 && a1[1] == a4;
  if (v6)
  {
    v14 = *a2 == a3 && a2[1] == a4;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 1;
    }

    goto LABEL_19;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v10 = a3;
  v11 = v9;
  if (*a2 == v10 && a2[1] == a4)
  {
    if (v9)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((v11 & 1) == 0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if ((v13 & 1) == 0)
  {
    return 1;
  }

LABEL_19:
  if (!a1[6])
  {
    return 1;
  }

  v15 = a1[2];
  v16 = a1[3];
  v17 = a2[2];
  v18 = a2[3];
  v6 = v18 == v16;
  v19 = v18 < v16;
  if (v6)
  {
    v19 = a2[4] < a1[4];
  }

  if (v17 == v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17 < v15;
  }

  return !a2[6] || v20;
}

void sub_10020A518(uint64_t a1, void *a2)
{
  sub_100006190(0, &qword_10077E980);
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_1001F0C48(&unk_100784B60);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784B60);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t type metadata accessor for ADPPrepareInstallTask()
{
  result = qword_10077EA00;
  if (!qword_10077EA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020A610(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10020A668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001F0C48(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020A6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10020A748(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10020A824(void *a1)
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

uint64_t sub_10020A980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10020A9E4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100630BCC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_10020AA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10020AB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10020AB78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10020ABFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10020AC50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_10020ABFC(a3, a4);
  }

  return result;
}

uint64_t sub_10020AC98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_100007158(a3, a4);
  }

  return result;
}

uint64_t sub_10020AD90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001F0C48(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020ADF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020AEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AF28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10020AF98()
{
  type metadata accessor for ADPInstallConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ADP();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ADPPreflightResultingMetadata(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LogKey();
        if (v3 <= 0x3F)
        {
          sub_10020B064();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10020B064()
{
  if (!qword_10077EA10)
  {
    type metadata accessor for audit_token_t(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077EA10);
    }
  }
}

uint64_t sub_10020B100(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10020B194;

  return sub_10020B28C(a2);
}

uint64_t sub_10020B194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10020B28C(uint64_t a1)
{
  v1[54] = a1;
  v2 = sub_1001F0C48(&qword_10077EA50);
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_10077EA58);
  v1[58] = v3;
  v1[59] = *(v3 - 8);
  v1[60] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[61] = v4;
  v1[62] = *(v4 - 8);
  v1[63] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v1[64] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[65] = v5;
  v1[66] = *(v5 - 8);
  v1[67] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[68] = v6;
  v1[69] = *(v6 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v7 = type metadata accessor for AccountIdentity();
  v1[76] = v7;
  v8 = *(v7 - 8);
  v1[77] = v8;
  v1[78] = *(v8 + 64);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v9 = type metadata accessor for BagService();
  v1[81] = v9;
  v1[82] = *(v9 - 8);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();

  return _swift_task_switch(sub_10020B620, 0, 0);
}

id sub_10020B620()
{
  v0[85] = [objc_allocWithZone(AMSURLSession) init];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2 = result;
    v3 = v0[84];
    v4 = v0[82];
    v5 = v0[81];
    v6 = v0[54];
    v0[86] = [result ams_activeiTunesAccount];

    v7 = *sub_100006D8C(v6, v6[3]);
    v8 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService;
    v9 = *(v4 + 16);
    v0[87] = v9;
    v0[88] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7 + v8, v5);
    v10 = swift_task_alloc();
    v0[89] = v10;
    *v10 = v0;
    v10[1] = sub_10020B784;

    return sub_100324268((v0 + 34));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10020B784()
{
  v2 = *v1;
  v2[90] = v0;

  v3 = v2[84];
  v4 = v2[82];
  v5 = v2[81];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_10020DCFC;
  }

  else
  {
    v2[91] = v7;
    v2[92] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_10020B908;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10020B908()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 432);
  type metadata accessor for AMSCachedBag();
  v7 = sub_100006D8C(v6, v6[3]);
  v2(v4, *v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v5);
  *(v0 + 744) = static AMSCachedBag.makeBag(bagService:)();
  v1(v4, v5);
  if (v3)
  {
    v8 = [*(v0 + 688) ams_accountID];
    *(v0 + 752) = v8;
    if (v8)
    {
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      v13 = v8;
      AccountIdentity.init(amsAccountID:)();
      type metadata accessor for AccountCachedServerData();
      v14 = static AccountCachedServerData.shared.getter();
      *(v0 + 760) = v14;
      v15 = sub_100625FA0();
      *(v0 + 768) = v15;
      (*(v11 + 16))(v10, v9, v12);
      v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v17 = swift_allocObject();
      *(v0 + 776) = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = 10;
      (*(v11 + 32))(v17 + v16, v10, v12);
      v18 = v14;
      v19 = swift_task_alloc();
      *(v0 + 784) = v19;
      *v19 = v0;
      v19[1] = sub_10020C608;

      return sub_10021023C(v15, 1, sub_100211FAC, v17);
    }
  }

  static Logger.updates.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = sub_100625FA0();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Unable to fetch country code for account. Falling back to the bag's value.", v23, 0xCu);
    sub_1000032A8(v24, &qword_10077F920);
  }

  v26 = *(v0 + 600);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);

  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_100006D8C((v0 + 272), *(v0 + 296));
  v30 = sub_100364C04();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    v34 = sub_1002106AC();
    if (*(v34 + 2))
    {
      static Logger.updates.getter();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412546;
        v39 = sub_100625FA0();
        *(v37 + 4) = v39;
        *v38 = v39;
        *(v37 + 12) = 2048;
        *(v37 + 14) = *(v34 + 2);

        _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Fetching age ratings for %ld apps.", v37, 0x16u);
        sub_1000032A8(v38, &qword_10077F920);
      }

      else
      {
      }

      v52 = *(v0 + 584);
      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v96 = *(v0 + 528);
      v98 = *(v0 + 520);
      v94 = *(v0 + 512);
      v55 = *(v53 + 8);
      *(v0 + 800) = v55;
      *(v0 + 808) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v55(v52, v54);
      v56 = *(v0 + 296);
      v57 = sub_100006D8C((v0 + 272), v56);
      v58 = *(v56 - 8);
      v59 = swift_task_alloc();
      (*(v58 + 16))(v59, v57, v56);
      v92 = sub_100364C2C();
      v61 = v60;

      _StringGuts.grow(_:)(19);

      v62._countAndFlagsBits = v32;
      v62._object = v33;
      String.append(_:)(v62);
      v63._countAndFlagsBits = 0x737070612FLL;
      v63._object = 0xE500000000000000;
      String.append(_:)(v63);
      sub_10020E7D0(v34, v32, v33, (v0 + 312));
      v65 = *(v0 + 336);
      v64 = *(v0 + 344);
      sub_100006D8C((v0 + 312), v65);
      (*(v64 + 8))(v65, v64);
      sub_1005D6FB4(v92, v61, v94);
      sub_10000710C(v0 + 312);
      if ((*(v96 + 48))(v94, 1, v98))
      {
        v82 = sub_1000032A8(*(v0 + 512), &unk_1007809F0);
        __break(1u);
      }

      else
      {
        v66 = *(v0 + 744);
        v90 = *(v0 + 688);
        v91 = *(v0 + 680);
        v67 = *(v0 + 536);
        v68 = *(v0 + 528);
        v69 = *(v0 + 520);
        v70 = *(v0 + 512);
        v97 = *(v0 + 472);
        v93 = *(v0 + 464);
        v95 = *(v0 + 480);
        (*(v58 + 8))(v59, v56);

        (*(v68 + 32))(v67, v70, v69);

        v71 = objc_allocWithZone(AMSMediaTokenService);
        swift_unknownObjectRetain();
        v72 = String._bridgeToObjectiveC()();
        v73 = [v71 initWithClientIdentifier:v72 bag:v66];
        *(v0 + 816) = v73;
        swift_unknownObjectRelease();

        [v73 setAccount:v90];
        [v73 setSession:v91];
        v74 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v73];
        [v91 setProtocolHandler:v74];

        v75 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
        [v91 setResponseDecoder:v75];

        v76 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v73 bag:v66];
        *(v0 + 824) = v76;
        [v76 setAccount:v90];
        URL._bridgeToObjectiveC()(v77);
        v79 = v78;
        v80 = [v76 requestWithURL:v78];
        *(v0 + 832) = v80;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 408;
        *(v0 + 24) = sub_10020D298;
        swift_continuation_init();
        *(v0 + 200) = v93;
        v81 = sub_10020A748((v0 + 176));
        sub_100006190(0, &qword_10077EA60);
        *(v0 + 840) = sub_1001F0C48(&unk_10077F940);
        CheckedContinuation.init(continuation:function:)();
        (*(v97 + 32))(v81, v95, v93);
        *(v0 + 144) = _NSConcreteStackBlock;
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_1004C2240;
        *(v0 + 168) = &unk_10075BE50;
        [v80 resultWithCompletion:?];
        (*(v97 + 8))(v81, v93);
        v82 = v0 + 16;
      }

      return _swift_continuation_await(v82);
    }

    static Logger.updates.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = sub_100625FA0();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%@] No applicable apps installed to sync age rating.", v48, 0xCu);
      sub_1000032A8(v49, &qword_10077F920);

      v51 = *(v0 + 688);
    }

    else
    {
      v51 = v46;
      v46 = *(v0 + 688);
    }

    v83 = *(v0 + 680);
    v86 = *(v0 + 592);
    v87 = *(v0 + 552);
    v88 = *(v0 + 544);

    swift_unknownObjectRelease();
    (*(v87 + 8))(v86, v88);
  }

  else
  {
    static Logger.updates.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = sub_100625FA0();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Unable to fetch country code from the account and bag.", v42, 0xCu);
      sub_1000032A8(v43, &qword_10077F920);

      v45 = *(v0 + 688);
    }

    else
    {
      v45 = v40;
      v40 = *(v0 + 688);
    }

    v83 = *(v0 + 680);
    v84 = *(v0 + 568);
    v85 = *(v0 + 544);

    swift_unknownObjectRelease();
    v29(v84, v85);
  }

  sub_10000710C(v0 + 272);
  [v83 finishTasksAndInvalidate];

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10020C608(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[47] = v2;
  v3[48] = a1;
  v3[49] = a2;
  v3[99] = a2;

  return _swift_task_switch(sub_10020C72C, 0, 0);
}

uint64_t sub_10020C72C()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = *(v0 + 384);
    v8 = *(v0 + 792);
  }

  else
  {
    static Logger.updates.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_100625FA0();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Unable to fetch country code for account. Falling back to the bag's value.", v11, 0xCu);
      sub_1000032A8(v12, &qword_10077F920);
    }

    v14 = *(v0 + 600);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);

    v17 = *(v15 + 8);
    v17(v14, v16);
    sub_100006D8C((v0 + 272), *(v0 + 296));
    v18 = sub_100364C04();
    if (!v19)
    {
      static Logger.updates.getter();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = sub_100625FA0();
        *(v69 + 4) = v71;
        *v70 = v71;
        _os_log_impl(&_mh_execute_header, v67, v68, "[%@] Unable to fetch country code from the account and bag.", v69, 0xCu);
        sub_1000032A8(v70, &qword_10077F920);

        v72 = *(v0 + 688);
      }

      else
      {
        v72 = v67;
        v67 = *(v0 + 688);
      }

      v63 = *(v0 + 680);
      v73 = *(v0 + 568);
      v74 = *(v0 + 544);

      swift_unknownObjectRelease();
      v17(v73, v74);
      goto LABEL_23;
    }

    v7 = v18;
    v8 = v19;
  }

  v20 = sub_1002106AC();
  if (*(v20 + 2))
  {
    static Logger.updates.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      v25 = sub_100625FA0();
      *(v23 + 4) = v25;
      *v24 = v25;
      *(v23 + 12) = 2048;
      *(v23 + 14) = *(v20 + 2);

      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Fetching age ratings for %ld apps.", v23, 0x16u);
      sub_1000032A8(v24, &qword_10077F920);
    }

    else
    {
    }

    v32 = *(v0 + 584);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v83 = *(v0 + 528);
    v85 = *(v0 + 520);
    v81 = *(v0 + 512);
    v35 = *(v33 + 8);
    *(v0 + 800) = v35;
    *(v0 + 808) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v32, v34);
    v36 = *(v0 + 296);
    v37 = sub_100006D8C((v0 + 272), v36);
    v38 = *(v36 - 8);
    v39 = swift_task_alloc();
    (*(v38 + 16))(v39, v37, v36);
    v79 = sub_100364C2C();
    v41 = v40;

    _StringGuts.grow(_:)(19);

    v42._countAndFlagsBits = v7;
    v42._object = v8;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0x737070612FLL;
    v43._object = 0xE500000000000000;
    String.append(_:)(v43);
    sub_10020E7D0(v20, v7, v8, (v0 + 312));
    v44 = *(v0 + 336);
    v45 = *(v0 + 344);
    sub_100006D8C((v0 + 312), v44);
    (*(v45 + 8))(v44, v45);
    sub_1005D6FB4(v79, v41, v81);
    sub_10000710C(v0 + 312);
    if ((*(v83 + 48))(v81, 1, v85))
    {
      v62 = sub_1000032A8(*(v0 + 512), &unk_1007809F0);
      __break(1u);
    }

    else
    {
      v46 = *(v0 + 744);
      v77 = *(v0 + 688);
      v78 = *(v0 + 680);
      v47 = *(v0 + 536);
      v48 = *(v0 + 528);
      v49 = *(v0 + 520);
      v50 = *(v0 + 512);
      v84 = *(v0 + 472);
      v80 = *(v0 + 464);
      v82 = *(v0 + 480);
      (*(v38 + 8))(v39, v36);

      (*(v48 + 32))(v47, v50, v49);

      v51 = objc_allocWithZone(AMSMediaTokenService);
      swift_unknownObjectRetain();
      v52 = String._bridgeToObjectiveC()();
      v53 = [v51 initWithClientIdentifier:v52 bag:v46];
      *(v0 + 816) = v53;
      swift_unknownObjectRelease();

      [v53 setAccount:v77];
      [v53 setSession:v78];
      v54 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v53];
      [v78 setProtocolHandler:v54];

      v55 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
      [v78 setResponseDecoder:v55];

      v56 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v53 bag:v46];
      *(v0 + 824) = v56;
      [v56 setAccount:v77];
      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      v60 = [v56 requestWithURL:v58];
      *(v0 + 832) = v60;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 408;
      *(v0 + 24) = sub_10020D298;
      swift_continuation_init();
      *(v0 + 200) = v80;
      v61 = sub_10020A748((v0 + 176));
      sub_100006190(0, &qword_10077EA60);
      *(v0 + 840) = sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v84 + 32))(v61, v82, v80);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1004C2240;
      *(v0 + 168) = &unk_10075BE50;
      [v60 resultWithCompletion:?];
      (*(v84 + 8))(v61, v80);
      v62 = v0 + 16;
    }

    return _swift_continuation_await(v62);
  }

  static Logger.updates.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = sub_100625FA0();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%@] No applicable apps installed to sync age rating.", v28, 0xCu);
    sub_1000032A8(v29, &qword_10077F920);

    v31 = *(v0 + 688);
  }

  else
  {
    v31 = v26;
    v26 = *(v0 + 688);
  }

  v63 = *(v0 + 680);
  v64 = *(v0 + 592);
  v65 = *(v0 + 552);
  v66 = *(v0 + 544);

  swift_unknownObjectRelease();
  (*(v65 + 8))(v64, v66);
LABEL_23:
  sub_10000710C(v0 + 272);
  [v63 finishTasksAndInvalidate];

  v75 = *(v0 + 8);

  return v75();
}