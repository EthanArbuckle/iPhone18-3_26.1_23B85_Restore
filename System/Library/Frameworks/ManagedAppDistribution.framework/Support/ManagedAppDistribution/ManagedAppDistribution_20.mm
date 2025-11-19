void sub_100320B70()
{
  v1 = *(v0 + 24);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100320BEC()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100320C74(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int sub_100320D14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_1003F98D4(v4, v1);
  return Hasher._finalize()();
}

void sub_100320D74(uint64_t a1)
{
  v3 = *v1;
  Hasher._combine(_:)(*(v1 + 8));

  sub_1003F98D4(a1, v3);
}

Swift::Int sub_100320DC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_1003F98D4(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_100320E20(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return sub_1003F1030(v4, v5);
}

unint64_t sub_100320E50(uint64_t a1)
{
  v3 = sub_1001F0C48(&qword_1007805E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for POSIXError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v19 = &v46 - v18;
  if (!*(a1 + 16))
  {
    return sub_100528684(_swiftEmptyArrayStorage);
  }

  v47 = v17;
  v48 = v7;
  v49 = v16;
  v50 = v15;
  error = 0;
  sub_100320898(a1);
  type metadata accessor for CFString(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = SecTaskCopyValuesForEntitlements(v1, isa, &error);

  if (v21)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v23 = error;
      if (error)
      {
        goto LABEL_6;
      }

LABEL_14:
      static Logger.daemon.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Error obtaining entitlements: Unknown error.", v36, 2u);
      }

      goto LABEL_21;
    }

    v51 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    result = v51;
    if (v51)
    {
      return result;
    }
  }

  v23 = error;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_6:
  type metadata accessor for CFError(0);
  sub_100324048(&qword_1007805F0, type metadata accessor for CFError);
  v24 = swift_allocError();
  *v25 = v23;
  v51 = v24;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v26 = swift_dynamicCast();
  v27 = v48;
  v28 = *(v48 + 56);
  if (v26)
  {
    v28(v5, 0, 1, v6);
    (*(v27 + 32))(v9, v5, v6);
    sub_100324048(&qword_1007805F8, &type metadata accessor for POSIXError);
    _BridgedStoredNSError.code.getter();
    v29 = POSIXErrorCode.rawValue.getter();
    v30 = POSIXErrorCode.rawValue.getter();
    v19 = v47;
    if (v29 == v30)
    {
      static Logger.daemon.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Process exited before entitlements could be obtained.", v33, 2u);
      }

      (*(v49 + 8))(v14, v50);
      (*(v48 + 8))(v9, v6);
      goto LABEL_22;
    }

    (*(v27 + 8))(v9, v6);
  }

  else
  {
    v28(v5, 1, 1, v6);
    sub_1000032A8(v5, &qword_1007805E8);
    v19 = v47;
  }

  static Logger.daemon.getter();
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315138;
    swift_getErrorValue();
    v41 = Error.localizedDescription.getter();
    v43 = sub_1002346CC(v41, v42, &v51);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "Error obtaining entitlements: %s", v39, 0xCu);
    sub_10000710C(v40);
  }

  else
  {
  }

LABEL_21:
  (*(v49 + 8))(v19, v50);
LABEL_22:
  v44 = type metadata accessor for ManagedAppDistributionError();
  sub_100324048(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
  swift_allocError();
  (*(*(v44 - 8) + 104))(v45, enum case for ManagedAppDistributionError.unrecoverableError(_:), v44);
  return swift_willThrow();
}

uint64_t sub_1003215A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16))
  {
    v8 = sub_10052213C(a2, a3);
    if (v9)
    {
      sub_10020A6D0(*(a1 + 56) + 32 * v8, &v18);
      if (!a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_100323B90(&v18, &v16);
      if (*(&v17 + 1))
      {
        sub_1001F0C48(&unk_10077FB40);
        v11 = swift_dynamicCast();
        if (v11)
        {
          *&v16 = a4;
          *(&v16 + 1) = a5;
          __chkstk_darwin(v11);
          v14[2] = &v16;
          v10 = sub_10020A1BC(sub_1001F80EC, v14, v15);

          sub_1000032A8(&v18, &qword_100783A30);
          return v10 & 1;
        }

        v12 = &v18;
      }

      else
      {
        sub_1000032A8(&v18, &qword_100783A30);
        v12 = &v16;
      }

      goto LABEL_14;
    }
  }

  v18 = 0u;
  v19 = 0u;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = v18;
  v17 = v19;
  if (!*(&v19 + 1))
  {
    v12 = &v16;
LABEL_14:
    sub_1000032A8(v12, &qword_100783A30);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v10 = 0;
    return v10 & 1;
  }

  v10 = v15;
  return v10 & 1;
}

SecTaskRef sub_10032178C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v23 = HIDWORD(a4);
  v11 = type metadata accessor for Logger();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  token.val[0] = v7;
  token.val[1] = v8;
  token.val[2] = v6;
  token.val[3] = v9;
  token.val[4] = v5;
  token.val[5] = v10;
  token.val[6] = v4;
  token.val[7] = v23;
  result = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!result)
  {
    v15 = v21;
    static Logger.daemon.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error creating SecTask", v18, 2u);
    }

    (*(v15 + 8))(v13, v11);
    v19 = type metadata accessor for ManagedAppDistributionError();
    sub_100324048(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for ManagedAppDistributionError.unrecoverableError(_:), v19);
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_1003219DC(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);

      sub_1003F1870(&v9, v7, v6, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_100321A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  if (os_variant_has_internal_content() && (a1 == 0xD000000000000010 && 0x80000001006C5750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    static Logger.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v14 = 1;
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "We’re running an internal OS build, and the “hosting app” is actually madctl. Allowing MAD usage…", v13, 2u);
    v14 = 1;
  }

  else
  {
    static Logger.daemon.getter();
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      v14 = 0;
      v10 = v8;
      goto LABEL_12;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v11, v15, "Either we’re not running an internal OS build or the hosting app isn’t actually madctl.", v16, 2u);
    v14 = 0;
    v10 = v8;
  }

LABEL_12:

  (*(v5 + 8))(v10, v4);
  return v14;
}

uint64_t sub_100321CC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DMCAppsScope();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsClient();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100321E48, 0, 0);
}

uint64_t sub_100321E48()
{
  (*(v0[9] + 104))(v0[10], enum case for DMCAppsScope.system(_:), v0[8]);
  DMCAppsClient.init(scope:)();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100321F24;
  v3 = v0[2];
  v2 = v0[3];

  return DMCAppsClient.isManaged(bundleID:persona:)(v3, v2, 0, 0);
}

uint64_t sub_100321F24(char a1)
{
  v4 = *v2;
  *(v4 + 120) = v1;

  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *(v4 + 88);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1003222FC;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1003220B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003220B0()
{
  v19 = v0;
  if (*(v0 + 128) == 1)
  {
    static Logger.daemon.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1002346CC(v8, v7, &v18);
    v11 = "Hosting app “%s” is managed in system scope. Allowing MAD usage…";
  }

  else
  {
    static Logger.daemon.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v1, v2);
    v6 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    if (!v12)
    {
      goto LABEL_7;
    }

    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1002346CC(v14, v13, &v18);
    v11 = "Hosting app “%s” isn’t managed.";
  }

  _os_log_impl(&_mh_execute_header, v1, v2, v11, v9, 0xCu);
  sub_10000710C(v10);

LABEL_7:

  (*(v6 + 8))(v4, v5);

  v15 = *(v0 + 8);
  v16 = *(v0 + 128);

  return v15(v16);
}

uint64_t sub_1003222FC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10032238C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v55 = a6;
  v53 = a4;
  v54 = a5;
  v56 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v51 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v52 = &v50 - v16;
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  static Logger.daemon.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = v9;
    v22 = v8;
    v23 = v12;
    v24 = v21;
    v25 = swift_slowAlloc();
    v57 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1002346CC(a1, a2, &v57);
    _os_log_impl(&_mh_execute_header, v19, v20, "Checking whether hosting app “%s” was installed for development (e.g., from Xcode)…", v24, 0xCu);
    sub_10000710C(v25);

    v12 = v23;
    v8 = v22;
    v9 = v50;
  }

  v26 = *(v9 + 8);
  v26(v18, v8);
  v28 = v53;
  v27 = v54;
  v29 = v55;
  if (audit_token_t.isDevSigned.getter(v56, v53, v54, v55))
  {
    v30 = v52;
    static Logger.daemon.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v8;
      v35 = swift_slowAlloc();
      v57 = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_1002346CC(a1, a2, &v57);
      _os_log_impl(&_mh_execute_header, v31, v32, "Hosting app “%s” was indeed installed for development. Allowing MAD usage…", v33, 0xCu);
      sub_10000710C(v35);

      v36 = v52;
LABEL_6:
      v37 = v34;
LABEL_14:
      v26(v36, v37);
      return 1;
    }

    goto LABEL_13;
  }

  if (os_variant_has_internal_content() && (audit_token_t.isPlatformSigned.getter(v56, v28, v27, v29) & 1) != 0)
  {
    v30 = v51;
    static Logger.daemon.getter();

    v31 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v38))
    {
      v39 = swift_slowAlloc();
      v34 = v8;
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1002346CC(a1, a2, &v57);
      _os_log_impl(&_mh_execute_header, v31, v38, "We’re running an internal OS build, and hosting app “%s” was installed with an ad-hoc code signature. Allowing MAD usage…", v39, 0xCu);
      sub_10000710C(v40);

      v36 = v51;
      goto LABEL_6;
    }

LABEL_13:

    v36 = v30;
    v37 = v8;
    goto LABEL_14;
  }

  static Logger.daemon.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v56 = v12;
    v44 = v43;
    v45 = v8;
    v46 = swift_slowAlloc();
    v57 = v46;
    *v44 = 136315138;
    *(v44 + 4) = sub_1002346CC(a1, a2, &v57);
    _os_log_impl(&_mh_execute_header, v41, v42, "Hosting app “%s” wasn’t installed for development.", v44, 0xCu);
    sub_10000710C(v46);

    v47 = v56;
    v48 = v45;
  }

  else
  {

    v47 = v12;
    v48 = v8;
  }

  v26(v47, v48);
  return 0;
}

uint64_t sub_100322914(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 280) = a5;
  *(v6 + 288) = a6;
  *(v6 + 264) = a3;
  *(v6 + 272) = a4;
  *(v6 + 386) = a2;
  *(v6 + 256) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 296) = v7;
  *(v6 + 304) = *(v7 - 8);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_100322A04, 0, 0);
}

uint64_t sub_100322A04()
{
  v97 = v0;
  v1 = sub_10032178C(*(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  *(v0 + 344) = v1;
  v2 = v1;
  v3 = *(v0 + 256);

  v4 = sub_1003219DC(&off_100757E30, v3);
  sub_1002FC188(&unk_100757E50);
  v95 = sub_100320E50(v4);
  v6 = *(v0 + 386);

  v7 = *(v3 + 16);
  if (v6)
  {
    if (v7)
    {
      v90 = v2;
      v8 = v3 + 56;
      v9 = -1;
      v10 = -1 << *(v3 + 32);
      if (-v10 < 64)
      {
        v9 = ~(-1 << -v10);
      }

      v11 = v9 & *(v3 + 56);
      v12 = (63 - v10) >> 6;

      v13 = 0;
      v14 = v95;
      v93 = v3;
      while (v11)
      {
LABEL_15:
        v16 = (*(v3 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v11)))));
        v17 = v16[1];
        v88 = v16[2];
        v18 = v16[3];
        if (*(v14 + 16))
        {
          v19 = *v16;
          v20 = v16[3];

          v21 = sub_10052213C(v19, v17);
          if (v22)
          {
            sub_10020A6D0(*(v14 + 56) + 32 * v21, v0 + 16);
          }

          else
          {
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
          }

          v3 = v93;
        }

        else
        {
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          v20 = v18;
        }

        v11 &= v11 - 1;
        if (v20)
        {
          sub_100323B90(v0 + 16, v0 + 80);
          if (!*(v0 + 104))
          {
            goto LABEL_100;
          }

          sub_1001F0C48(&unk_10077FB40);
          if ((swift_dynamicCast() & 1) == 0)
          {

            v70 = v0 + 16;
            goto LABEL_80;
          }

          v24 = *(v0 + 240);
          *(v0 + 208) = v88;
          *(v0 + 216) = v20;
          v25 = swift_task_alloc();
          *(v25 + 16) = v0 + 208;
          v89 = sub_10020A1BC(sub_1001F7FFC, v25, v24);

          v14 = v95;

          sub_1000032A8(v0 + 16, &qword_100783A30);

          if ((v89 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {

          v23 = *(v0 + 32);
          *(v0 + 48) = *(v0 + 16);
          *(v0 + 64) = v23;
          if (!*(v0 + 72))
          {

            v70 = v0 + 48;
            goto LABEL_80;
          }

          if ((swift_dynamicCast() & 1) == 0 || (*(v0 + 384) & 1) == 0)
          {
LABEL_29:

            goto LABEL_81;
          }
        }
      }

      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          goto LABEL_57;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_15;
        }
      }

LABEL_99:
      __break(1u);
LABEL_100:

      sub_1000032A8(v0 + 16, &qword_100783A30);
      v70 = v0 + 80;
LABEL_80:
      sub_1000032A8(v70, &qword_100783A30);
LABEL_81:
      if (os_variant_has_internal_content())
      {
        static Logger.daemon.getter();

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v71 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 328);
        v62 = *(v0 + 296);
        v61 = *(v0 + 304);
        if (v71)
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v96[0] = v64;
          *v63 = 136446210;
          sub_100323B3C();
          v72 = Set.description.getter();
          v66 = v60;
          v74 = sub_1002346CC(v72, v73, v96);

          *(v63 + 4) = v74;
          v69 = "[INTERNAL ONLY] Missing at least one of the required entitlements: %{public}s";
LABEL_84:
          _os_log_impl(&_mh_execute_header, v57, v58, v69, v63, 0xCu);
          sub_10000710C(v64);

          (*(v61 + 8))(v66, v62);
        }

        else
        {
LABEL_86:

          (*(v61 + 8))(v60, v62);
        }
      }

      else
      {
LABEL_85:
      }

LABEL_87:
      v56 = 0;
      goto LABEL_88;
    }

LABEL_74:

    v56 = 1;
LABEL_88:

    v75 = *(v0 + 8);

    return v75(v56);
  }

  if (!v7)
  {
    goto LABEL_74;
  }

  v90 = v2;
  v26 = v3 + 56;
  v27 = -1;
  v28 = -1 << *(v3 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v3 + 56);
  v30 = (63 - v28) >> 6;

  v31 = 0;
  v32 = v95;
  v94 = v3;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v29)
        {
          while (1)
          {
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
              goto LABEL_99;
            }

            if (v33 >= v30)
            {
              break;
            }

            v29 = *(v26 + 8 * v33);
            ++v31;
            if (v29)
            {
              v31 = v33;
              goto LABEL_39;
            }
          }

          if (!os_variant_has_internal_content())
          {
            goto LABEL_85;
          }

          static Logger.daemon.getter();

          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          v59 = os_log_type_enabled(v57, v58);
          v60 = *(v0 + 336);
          v62 = *(v0 + 296);
          v61 = *(v0 + 304);
          if (v59)
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v96[0] = v64;
            *v63 = 136446210;
            sub_100323B3C();
            v65 = Set.description.getter();
            v66 = v60;
            v68 = sub_1002346CC(v65, v67, v96);

            *(v63 + 4) = v68;
            v69 = "[INTERNAL ONLY] Missing any of the possible entitlements: %{public}s";
            goto LABEL_84;
          }

          goto LABEL_86;
        }

LABEL_39:
        v34 = (*(v3 + 48) + ((v31 << 11) | (32 * __clz(__rbit64(v29)))));
        v35 = v34[1];
        v91 = v34[2];
        v36 = v34[3];
        if (*(v32 + 16))
        {
          v37 = *v34;

          v38 = sub_10052213C(v37, v35);
          if (v39)
          {
            sub_10020A6D0(*(v32 + 56) + 32 * v38, v0 + 112);
          }

          else
          {
            *(v0 + 112) = 0u;
            *(v0 + 128) = 0u;
          }

          v3 = v94;
        }

        else
        {
          *(v0 + 112) = 0u;
          *(v0 + 128) = 0u;
        }

        v29 &= v29 - 1;
        if (!v36)
        {
          break;
        }

        sub_100323B90(v0 + 112, v0 + 176);
        if (*(v0 + 200))
        {
          sub_1001F0C48(&unk_10077FB40);
          if ((swift_dynamicCast() & 1) == 0)
          {

            v40 = v0 + 112;
            goto LABEL_55;
          }

          v42 = *(v0 + 248);
          *(v0 + 224) = v91;
          *(v0 + 232) = v36;
          v43 = swift_task_alloc();
          *(v43 + 16) = v0 + 224;
          v92 = sub_10020A1BC(sub_1001F80EC, v43, v42);

          v32 = v95;

          sub_1000032A8(v0 + 112, &qword_100783A30);

          if (v92)
          {
            goto LABEL_57;
          }
        }

        else
        {

          sub_1000032A8(v0 + 112, &qword_100783A30);
          sub_1000032A8(v0 + 176, &qword_100783A30);
        }
      }

      v41 = *(v0 + 128);
      *(v0 + 144) = *(v0 + 112);
      *(v0 + 160) = v41;
      if (*(v0 + 168))
      {
        break;
      }

      v40 = v0 + 144;
LABEL_55:
      sub_1000032A8(v40, &qword_100783A30);
    }
  }

  while ((swift_dynamicCast() & 1) == 0 || (*(v0 + 385) & 1) == 0);
LABEL_57:

  if (!*(v3 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), Hasher._combine(_:)(1u), String.hash(into:)(), v44 = Hasher._finalize()(), v45 = v3 + 56, v46 = -1 << *(v3 + 32), v47 = v44 & ~v46, ((*(v3 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0))
  {
LABEL_78:

    v56 = 1;
    goto LABEL_88;
  }

  v48 = ~v46;
  v49 = *(v3 + 48);
  while (1)
  {
    v50 = (v49 + 32 * v47);
    v52 = v50[2];
    v51 = v50[3];
    v53 = *v50 == 0xD000000000000037 && 0x80000001006C2D70 == v50[1];
    if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v51)
      {
        v54 = v52 == 0x2D646567616E616DLL && v51 == 0xEB00000000707061;
        if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }
    }

    v47 = (v47 + 1) & v48;
    if (((*(v45 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  v55 = sub_1003215A0(v95, 0xD000000000000024, 0x80000001006C2C40, 0, 0);

  if (v55)
  {

    v56 = 1;
    goto LABEL_88;
  }

  v76 = audit_token_t.signingIdentifier.getter(*(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  *(v0 + 352) = v76;
  *(v0 + 360) = v77;
  v2 = v90;
  if (!v77)
  {
    static Logger.daemon.getter();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 304);
    v84 = *(v0 + 312);
    v85 = *(v0 + 296);
    if (v82)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Unable to obtain bundle identifier from audit token. Disallowing MAD usage…", v86, 2u);
    }

    (*(v83 + 8))(v84, v85);
    goto LABEL_87;
  }

  v78 = v77;
  v79 = v76;
  if (sub_100321A80(v76, v77))
  {
    goto LABEL_74;
  }

  v87 = swift_task_alloc();
  *(v0 + 368) = v87;
  *v87 = v0;
  v87[1] = sub_100323668;

  return sub_100321CC4(v79, v78);
}

uint64_t sub_100323668(char a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_100323A9C;
  }

  else
  {
    *(v4 + 387) = a1 & 1;
    v5 = sub_100323794;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100323794()
{
  v24 = v0;
  if (*(v0 + 387) == 1)
  {
    goto LABEL_2;
  }

  v3 = *(v0 + 376);
  v4 = sub_10032238C(*(v0 + 352), *(v0 + 360), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  if (v3)
  {
  }

  else
  {
    if (v4)
    {
LABEL_2:

      v1 = *(v0 + 8);
      v2 = 1;
      goto LABEL_11;
    }

    static Logger.daemon.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 360);
    if (v7)
    {
      v9 = *(v0 + 352);
      v10 = *(v0 + 320);
      v11 = *(v0 + 296);
      v12 = *(v0 + 304);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = sub_1002346CC(v9, v8, &v23);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Hosting app “%s” isn’t madctl, isn’t managed, and wasn’t installed for development. Disallowing MAD usage…", v13, 0xCu);
      sub_10000710C(v14);

      (*(v12 + 8))(v10, v11);
    }

    else
    {
      v16 = *(v0 + 320);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);

      (*(v18 + 8))(v16, v17);
    }

    v19 = *(v0 + 344);
    v20 = type metadata accessor for ManagedAppDistributionError();
    sub_100324048(&qword_10077FD80, &type metadata accessor for ManagedAppDistributionError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for ManagedAppDistributionError.appNotManaged(_:), v20);
    swift_willThrow();
  }

  v1 = *(v0 + 8);
  v2 = 0;
LABEL_11:

  return v1(v2);
}

uint64_t sub_100323A9C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_100323B3C()
{
  result = qword_1007805E0;
  if (!qword_1007805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805E0);
  }

  return result;
}

uint64_t sub_100323B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100783A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100323C00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100323C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100323C30, 0, 0);
}

uint64_t sub_100323C30()
{
  if (os_variant_has_internal_content())
  {
    v1 = sub_1001F6740(&off_100757E70);
    v0[6] = v1;
    sub_1002FC188(&unk_100757E90);
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100323DC0;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    return sub_100322914(v1, 1, v5, v6, v3, v4);
  }

  else
  {
    type metadata accessor for InternalError();
    sub_100324048(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100323DC0(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_100323FE4;
  }

  else
  {

    *(v4 + 72) = a1 & 1;
    v5 = sub_100323EF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100323EF4()
{
  if (*(v0 + 72) != 1)
  {
    type metadata accessor for InternalError();
    sub_100324048(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100323FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100324048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for HTTPError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1003240B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t sub_1003240F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100324168(uint64_t result, int a2, int a3)
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

unint64_t sub_1003241BC()
{
  result = qword_100780600;
  if (!qword_100780600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780600);
  }

  return result;
}

unint64_t sub_100324214()
{
  result = qword_100780608;
  if (!qword_100780608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780608);
  }

  return result;
}

uint64_t sub_100324268(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_100324300;

  return sub_100324F98((v2 + 7));
}

uint64_t sub_100324300()
{

  if (v0)
  {

    v1 = sub_1003244F0;
  }

  else
  {
    v1 = sub_100324418;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100324418()
{
  v1 = *(v0 + 96);
  sub_1001DFDBC((v0 + 56), v0 + 16);
  v7 = *(v0 + 40);
  v2 = *(v0 + 40);
  v3 = sub_100006D8C((v0 + 16), v2);
  *(v1 + 24) = v7;
  v4 = sub_10020A748(v1);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_10000710C(v0 + 16);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003244F0()
{
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_10032540C(v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10032459C;
  v2 = *(v0 + 96);

  return sub_100324A90(v2);
}

uint64_t sub_10032459C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100324690(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_100324784;

  return sub_100324A90((v1 + 2));
}

uint64_t sub_100324784()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100324968;
  }

  else
  {
    v2 = sub_100324898;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100324898()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = *(v0 + 40);
  v3 = sub_100006D8C((v0 + 16), v2);
  *(v1 + 24) = v7;
  v4 = sub_10020A748(v1);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_10000710C(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100324968()
{
  static Logger.general.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to load bag from network or storage", v3, 2u);
  }

  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  *(v7 + 24) = &type metadata for EmptyBag;
  *(v7 + 32) = sub_100325474();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100324A90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = swift_task_alloc();
  type metadata accessor for BagService.UpdatePolicy();
  v2[10] = swift_task_alloc();
  type metadata accessor for BagService.ExpiredDataUsage();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for BagService.Policy();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100324BD4, 0, 0);
}

uint64_t sub_100324BD4()
{
  static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100324CBC;
  v2 = *(v0 + 112);

  return BagService.createBag(policy:)(v0 + 16, v2);
}

uint64_t sub_100324CBC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100324F0C;
  }

  else
  {
    v5 = sub_100324E2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100324E2C()
{
  sub_1001F0C48(&qword_100780610);
  sub_1001F0C48(&unk_10077FE00);
  swift_dynamicCast();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100324F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100324F98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = swift_task_alloc();
  type metadata accessor for BagService.UpdatePolicy();
  v2[10] = swift_task_alloc();
  type metadata accessor for BagService.ExpiredDataUsage();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for BagService.Policy();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003250DC, 0, 0);
}

uint64_t sub_1003250DC()
{
  static BagService.ExpiredDataUsage.notPermitted.getter();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1003251BC;
  v2 = *(v0 + 112);

  return BagService.createBag(policy:)(v0 + 16, v2);
}

uint64_t sub_1003251BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100325554;
  }

  else
  {
    v5 = sub_10032532C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10032532C()
{
  sub_1001F0C48(&qword_100780610);
  sub_1001F0C48(&qword_100780618);
  swift_dynamicCast();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032540C(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100780620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100325474()
{
  result = qword_100780628;
  if (!qword_100780628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780628);
  }

  return result;
}

uint64_t sub_1003254D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100325558(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = type metadata accessor for DDMJournal(0);
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  sub_1001F0C48(&qword_100780700);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  if (a2)
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

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_100325698, v6, v8);
}

uint64_t sub_100325698()
{
  v1 = v0[3];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v4;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100325794;
  v8 = v0[8];

  return sub_1003AD60C(v8, sub_100328A64, v6, v5);
}

uint64_t sub_100325794()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_100325A10;
  }

  else
  {
    v5 = sub_1003258EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003258EC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_100328A84(v0[8], v1);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[7];
  if (v4 == 1)
  {
    sub_1000032A8(v5, &qword_100780700);
    v6 = 1;
  }

  else
  {
    v7 = v0[6];
    v8 = v0[2];
    v9 = v0[3];
    sub_100328920(v5, v7);
    *(v9 + 16) = *v7;
    *(v9 + 24) = 0;
    sub_100328920(v7, v8);
    v6 = 0;
  }

  (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100325A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100325A88@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = sub_100325B78(a2, a3, a4 & 1);
  v9 = sub_100327F1C(&off_100758F90, 0, v8, sub_100327EA8, 0, v7);

  if (v9)
  {
    result = sub_1003A81EC(v9, a5);
    if (v5)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for DDMJournal(0);
  return (*(*(v12 - 8) + 56))(a5, v11, 1, v12);
}

void *sub_100325B78(uint64_t a1, uint64_t a2, char a3)
{
  v17 = sub_1001F0C48(&qword_100780710);
  LOWORD(v16) = 3;
  v18 = sub_100213FA0(&qword_100780718, &qword_100780710);
  *(&v16 + 1) = a1;
  sub_1001F0C48(&qword_100780720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v16, inited + 32);
  if (a3)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = sub_1001F0C48(&qword_100780738);
    v15 = sub_100213FA0(&qword_100780740, &qword_100780738);
    LOBYTE(v13) = 0;
    *(&v13 + 1) = Int64._bridgeToObjectiveC()();
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_10069E680;
    sub_100236238(&v13, v7 + 32);
    sub_1001F0C48(&qword_100780728);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_10069E680;
    *(v8 + 32) = v7;
    v9 = v8 + 32;
    v6 = sub_1005AE9E4(v8);
    swift_setDeallocating();
    sub_1000032A8(v9, &qword_10077FA00);
  }

  sub_1001F0C48(&qword_100780728);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10069F6E0;
  *(v10 + 32) = inited;
  *(v10 + 40) = v6;
  v11 = sub_1005AE9E4(v10);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100780730);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_100325DA8(id *a1, uint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for ManagedAppDeclaration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DDMJournalEntry();
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DDMJournal(0);
  v11 = (v10 - 8);
  v12 = __chkstk_darwin(v10);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v30 - v14);
  v16 = v11[9];
  v17 = v16;
  v32 = type metadata accessor for DDMJournalEntry;
  v33 = v16;
  sub_100328984(a2, &v30 + v16 - v14, type metadata accessor for DDMJournalEntry);
  v18 = v15 + v11[10];
  *v15 = 0;
  *v18 = 0;
  v18[8] = 1;
  *(v15 + v11[11]) = 0;
  sub_100328984(v15 + v17, v9, type metadata accessor for DDMJournalEntry);
  v31 = *(v4 + 32);
  v31(v6, v9, v3);
  v19 = ManagedAppDeclaration.declarationIdentifier.getter();
  v21 = v20;
  v30 = *(v4 + 8);
  v30(v6, v3);
  v15[1] = v19;
  v15[2] = v21;
  sub_100328984(v15 + v33, v9, v32);
  v31(v6, v9, v3);
  v22 = ManagedAppDeclaration.declarationKey.getter();
  v24 = v23;
  v30(v6, v3);
  v15[3] = v22;
  v15[4] = v24;
  v25 = v34;
  sub_100328984(v15, v34, type metadata accessor for DDMJournal);
  v26 = *v35;
  v27 = v36;
  v28 = sub_1005656B0(v25, v26);
  if (!v27)
  {
  }

  return sub_1003289EC(v15);
}

void sub_100326084(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for DDMJournalEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a2 onConnection:v5];
  v7 = [v6 existsInDatabase];
  if (v7)
  {
    [v6 deleteFromDatabase];
  }

  *a3 = v7 ^ 1;
}

void sub_100326114(void **a1, uint64_t a2, uint64_t a3)
{
  v38 = type metadata accessor for Logger();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  *(&v43 + 1) = sub_1001F0C48(&qword_100780758);
  v44 = sub_100213FA0(&qword_100780760, &qword_100780758);
  LOWORD(v42) = 1;
  v34 = a2;
  *(&v42 + 1) = a2;
  *&v43 = a3;
  sub_1001F0C48(&qword_100780720);
  inited = swift_initStackObject();
  v40 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v42, inited + 32);
  sub_1001F0C48(&qword_100780728);
  v11 = swift_initStackObject();
  *(v11 + 16) = v40;
  *(v11 + 32) = inited;
  *&v40 = a3;

  v12 = sub_1005AE9E4(v11);
  swift_setDeallocating();
  sub_1000032A8(v11 + 32, &qword_10077FA00);
  *(&v43 + 1) = sub_1001F0C48(&qword_100780768);
  v13 = sub_100213FA0(&qword_100780770, &qword_100780768);
  LOBYTE(v42) = 0;
  v44 = v13;
  *(&v42 + 1) = v12;
  v14 = sub_1002357CC(&v42, v9);
  v45 = v15;
  if (*(&v43 + 1))
  {
    sub_10000710C(&v42);
  }

  v16 = *(v45 + 16);

  v39 = v14;
  v37 = v16;
  if (v16)
  {
    v18 = 0;
    v36 = v45 + 32;
    v35 = (v6 + 8);
    *&v17 = 136446466;
    v33 = v17;
    while (v18 < *(v45 + 16))
    {
      v19 = *(v36 + 8 * v18);
      type metadata accessor for DDMJournalEntity.Entity();
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v21 = [v20 initWithPersistentID:v19 onConnection:v39];
      if (([v21 existsInDatabase] & 1) == 0)
      {

        goto LABEL_21;
      }

      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 valueForProperty:v22];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1001F6498(&v41, &v42);
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      sub_1001F0C48(&qword_100783A30);
      v24 = swift_dynamicCast();
      static Logger.ddm.getter();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *&v42 = swift_slowAlloc();
        *v27 = v33;
        if (v24)
        {
          v28 = 0x5065726F74736572;
        }

        else
        {
          v28 = 0x6E776F6E6B6E75;
        }

        if (v24)
        {
          v29 = 0xED00006465737561;
        }

        else
        {
          v29 = 0xE700000000000000;
        }

        v30 = sub_1002346CC(v28, v29, &v42);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2082;
        *(v27 + 14) = sub_1002346CC(v34, v40, &v42);
        _os_log_impl(&_mh_execute_header, v25, v26, "[Journal] Removing '%{public}s' for declaration '%{public}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*v35)(v8, v38);
      ++v18;
      [v21 deleteFromDatabase];

      if (v37 == v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    swift_bridgeObjectRelease_n();
    v31 = v39;
  }
}

uint64_t sub_1003266BC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for ManagedAppDeclaration();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for DDMJournalEntry();
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for DDMJournal(0);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_1001F0C48(&qword_100780700);
  v3[25] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[26] = v7;
  *v7 = v3;
  v7[1] = sub_1003268EC;

  return sub_10032848C();
}

uint64_t sub_1003268EC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[27] = a1;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v5[13];
    v5[28] = a2;

    return _swift_task_switch(sub_100326A90, v8, 0);
  }
}

uint64_t sub_100326A90()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 104);
  *(v0 + 56) = *(v0 + 216);
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 232) = sub_1003288CC();

  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *v3 = v0;
  v3[1] = sub_100326B70;
  v4 = *(v0 + 200);

  return sub_100325558(v4, v2);
}

uint64_t sub_100326B70()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1003275D8;
  }

  else
  {
    v4 = sub_100326C9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100326C9C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  if ((*(*(v0 + 176) + 48))(v1, 1, v2) == 1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 192);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    sub_100328920(v1, v5);
    sub_100328984(v5 + *(v2 + 28), v6, type metadata accessor for DDMJournalEntry);
    (*(v9 + 32))(v7, v6, v8);
    *(v0 + 256) = *(*sub_100006D8C(v10, v10[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ingester);
    v18 = *(v11 + 3);
    v12 = v11[3];
    v13 = sub_100006D8C(v11, v12);
    *(v0 + 40) = v18;
    v14 = sub_10020A748((v0 + 16));
    (*(*(v12 - 8) + 16))(v14, v13, v12);

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_100326EF8;
    v16 = *(v0 + 152);
    v17 = *(v0 + 96);

    return sub_10023B4DC(v16, v0 + 16, v17);
  }
}

uint64_t sub_100326EF8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_1003278A8;
  }

  else
  {
    v5 = *(v2 + 104);
    sub_10000710C(v2 + 16);
    v4 = sub_100327044;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100327044()
{
  v1 = v0[24];
  v2 = v0[13];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v3 = *v1;
  v4 = *(v2 + 112);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_100327144;

  return sub_10052DB90(sub_100328BD8, v5, v4);
}

uint64_t sub_100327144()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_100327344;
  }

  else
  {
    v4 = sub_10032728C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10032728C()
{
  sub_1003289EC(v0[24]);
  v1 = v0[13];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_100326B70;
  v3 = v0[25];

  return sub_100325558(v3, v1);
}

uint64_t sub_100327344()
{
  v21 = v0;
  v0[38] = v0[37];
  v1 = v0[23];
  v2 = v0[24];
  static Logger.ddm.getter();
  sub_100328984(v2, v1, type metadata accessor for DDMJournal);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  if (v5)
  {
    v19 = v0[16];
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1002346CC(0x5065726F74736572, 0xED00006465737561, &v20);
    *(v10 + 12) = 2082;
    v11 = *(v6 + 8);
    v12 = *(v6 + 16);

    sub_1003289EC(v6);
    v13 = sub_1002346CC(v11, v12, &v20);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Journal] Failed to replay '%{public}s' for '%{public}s'", v10, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    sub_1003289EC(v6);
    (*(v7 + 8))(v8, v9);
  }

  v14 = *v0[24];
  v15 = *(v0[13] + 112);
  v16 = swift_task_alloc();
  v0[39] = v16;
  *(v16 + 16) = v14;
  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_10032768C;

  return sub_10052DB90(sub_100328A48, v16, v15);
}

uint64_t sub_1003275D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032768C()
{
  v2 = *v1;

  v3 = *(v2 + 104);
  if (v0)
  {

    v4 = sub_100328BD4;
  }

  else
  {

    v4 = sub_1003277E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003277E8()
{

  sub_1003289EC(v0[24]);
  v1 = v0[13];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_100326B70;
  v3 = v0[25];

  return sub_100325558(v3, v1);
}

uint64_t sub_1003278A8()
{
  v21 = v0;
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_10000710C((v0 + 2));
  v0[38] = v0[34];
  v1 = v0[23];
  v2 = v0[24];
  static Logger.ddm.getter();
  sub_100328984(v2, v1, type metadata accessor for DDMJournal);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  if (v5)
  {
    v19 = v0[16];
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1002346CC(0x5065726F74736572, 0xED00006465737561, &v20);
    *(v10 + 12) = 2082;
    v11 = *(v6 + 8);
    v12 = *(v6 + 16);

    sub_1003289EC(v6);
    v13 = sub_1002346CC(v11, v12, &v20);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Journal] Failed to replay '%{public}s' for '%{public}s'", v10, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    sub_1003289EC(v6);
    (*(v7 + 8))(v8, v9);
  }

  v14 = *v0[24];
  v15 = *(v0[13] + 112);
  v16 = swift_task_alloc();
  v0[39] = v16;
  *(v16 + 16) = v14;
  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_10032768C;

  return sub_10052DB90(sub_100328A48, v16, v15);
}

uint64_t sub_100327B5C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  v6[2] = sub_100328B18;
  v6[3] = v5;
  aBlock[4] = sub_100328B20;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A4BCC;
  aBlock[3] = &unk_10075F948;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v3) = [v3 executeStatement:v4 error:aBlock bindings:v7];
  _Block_release(v7);

  v8 = aBlock[0];
  if (v3)
  {
    v9 = aBlock[0];

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v12 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100327D80(void *a1, uint64_t a2)
{
  [a1 bindInt64:a2 atPosition:1];
  v5[3] = &type metadata for DDMJournalType;
  v5[4] = sub_100328B28();
  v5[5] = sub_100328B7C();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  SQLiteEncodeValue(_:using:)(v5, v6);

  sub_10000710C(v5);
  sub_100006D8C(v6, v6[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000710C(v6);
  ASUSQLiteBindFoundationValue(a1, 2, v3);
  return swift_unknownObjectRelease();
}

void sub_100327EA8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DDMJournalEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100327F1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = 0;
  type metadata accessor for DDMJournalEntity.Entity();
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
          if (v18 > 2)
          {
            goto LABEL_18;
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
          if (v18 > 2)
          {
LABEL_18:
            if (v18 > 4)
            {
              if (v18 == 5)
              {
                v26 = 0xE500000000000000;
                v25 = 0x7972746E65;
              }

              else
              {
                v26 = 0xE400000000000000;
                v25 = 1701869940;
              }
            }

            else if (v18 == 3)
            {
              v25 = 0x7065725F7473616CLL;
              v26 = 0xEB0000000079616CLL;
            }

            else
            {
              v25 = 0x635F79616C706572;
              v26 = 0xEC000000746E756FLL;
            }

            goto LABEL_27;
          }
        }

        if (v18)
        {
          v25 = 0x746172616C636564;
          if (v18 == 1)
          {
            v26 = 0xEE0064695F6E6F69;
          }

          else
          {
            v26 = 0xEF79656B5F6E6F69;
          }
        }

        else
        {
          v26 = 0xE500000000000000;
          v25 = 0x4449574F52;
        }

LABEL_27:
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
          goto LABEL_34;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_34:
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
  aBlock[3] = &unk_10075F8D0;
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

uint64_t sub_10032848C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10032854C, v0, 0);
}

uint64_t sub_10032854C()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 3);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  v6 = v4;
  v0[6] = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v0[7] = *(*(v0 + 2) + 112);
  v8 = swift_task_alloc();
  *(v0 + 8) = v8;
  *(v8 + 16) = v5;
  v9 = swift_task_alloc();
  *(v0 + 9) = v9;
  *v9 = v0;
  v9[1] = sub_1003286B0;

  return (sub_10052D7DC)();
}

uint64_t sub_1003286B0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_100328868;
  }

  else
  {
    v4 = sub_1003287F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003287F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);

  return v1(v2, v3);
}

uint64_t sub_100328868()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1003288CC()
{
  result = qword_100780708;
  if (!qword_100780708)
  {
    type metadata accessor for ManagedDeclarationJournal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780708);
  }

  return result;
}

uint64_t sub_100328920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMJournal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100328984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003289EC(uint64_t a1)
{
  v2 = type metadata accessor for DDMJournal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100328A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100780700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100328B28()
{
  result = qword_100780748;
  if (!qword_100780748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780748);
  }

  return result;
}

unint64_t sub_100328B7C()
{
  result = qword_100780750;
  if (!qword_100780750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780750);
  }

  return result;
}

uint64_t SQLiteEncodeValue(_:using:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_10020AB78(a1, v18);
  sub_1001F0C48(&qword_100780778);
  if (swift_dynamicCast())
  {
    v9 = v17;
    a2[3] = &type metadata for Bool;
    *a2 = v9;
  }

  else
  {
    v10 = &type metadata for UInt;
    if (swift_dynamicCast() || (v10 = &type metadata for UInt64, swift_dynamicCast()) || (v10 = &type metadata for Int, swift_dynamicCast()) || (v10 = &type metadata for Int64, swift_dynamicCast()))
    {
      v11 = v17;
      a2[3] = v10;
      *a2 = v11;
    }

    else if (swift_dynamicCast())
    {
      v13 = v17;
      a2[3] = &type metadata for String;
      *a2 = v13;
    }

    else if (swift_dynamicCast())
    {
      a2[3] = v5;
      v14 = sub_10020A748(a2);
      (*(v6 + 32))(v14, v8, v5);
    }

    else if (swift_dynamicCast())
    {
      a2[3] = &type metadata for Data;
      *a2 = v17;
    }

    else
    {
      sub_100006D8C(a1, a1[3]);
      v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (!v2)
      {
        a2[3] = &type metadata for Data;
        *a2 = v15;
        a2[1] = v16;
      }
    }
  }

  return sub_10000710C(v18);
}

id sub_100328EA4(void *a1)
{
  v2 = v1;
  sub_10020A6D0(a1, v9);
  if (swift_dynamicCast())
  {
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100007158(v7, v8);
    if (!v1)
    {
      return v9[0];
    }
  }

  else
  {
    v4 = sub_10054AB98(a1);
    if (!v1)
    {
      v5 = v4;
      v2 = [v4 unsignedLongLongValue];
    }
  }

  return v2;
}

uint64_t sub_100328F90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100328FD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
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

void sub_10032915C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1003293D0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.sql.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1002346CC(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v12, 0xCu);
    sub_10000710C(v13);
  }

  (*(v6 + 8))(v8, v5);
  v14 = String._bridgeToObjectiveC()();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A4BCC;
  aBlock[3] = &unk_10075F9C8;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [v21[2] executeStatement:v14 error:aBlock bindings:v15];
  _Block_release(v15);

  v17 = aBlock[0];
  if (v16)
  {
    v18 = aBlock[0];
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v20 = v17;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003296E8()
{
  sub_100329F80(v0, &v15);
  if (v18 > 1u)
  {
    if (v18 == 2)
    {
      v3 = v15;
      v4 = v16;
      v5 = v17;
      _StringGuts.grow(_:)(38);

      v14[0] = 0xD00000000000001ALL;
      v14[1] = 0x80000001006C6070;
      String.append(_:)(v3);

      v6._countAndFlagsBits = 0x20646E756F66202CLL;
      v6._object = 0xE800000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = v4;
      v7._object = v5;
      String.append(_:)(v7);
    }

    else
    {
      if (sqlite3_errstr(v15))
      {
        v14[0] = 0;
        v14[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        v9._countAndFlagsBits = 0x65206574694C5153;
        v9._object = 0xED000020726F7272;
        String.append(_:)(v9);
        v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v10);

        v11._countAndFlagsBits = 8250;
        v11._object = 0xE200000000000000;
        String.append(_:)(v11);
        sub_1001F0C48(&unk_100780910);
        _print_unlocked<A, B>(_:_:)();
        return v14[0];
      }

      strcpy(v14, "SQLite error ");
      HIWORD(v14[1]) = -4864;
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);
    }

    return v14[0];
  }

  if (v18)
  {
    sub_1001DFDBC(&v15, v14);
    _StringGuts.grow(_:)(29);
    v2 = 0xD00000000000001BLL;
    v1 = 0x80000001006C6090;
  }

  else
  {
    sub_1001DFDBC(&v15, v14);
    _StringGuts.grow(_:)(19);
    v1 = 0x80000001006C60B0;
    v2 = 0xD000000000000011;
  }

  String.append(_:)(*&v2);
  sub_100006D8C(v14, v14[3]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8 = 0;
  sub_10000710C(v14);
  return v8;
}

uint64_t sub_1003299B8(void *a1, uint64_t a2)
{
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    sub_100231ED8(v11, v12);
    sub_100329F2C();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100007158(v5, v7);
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10000710C(v11);
}

uint64_t sub_100329B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100329D88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100329B50(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

__n128 sub_100329CB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100329CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100329D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100329D50(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100329D88(void *a1)
{
  v3 = sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_10000710C(a1);
    return v3;
  }

  sub_100006D8C(v7, v7[3]);
  sub_100329ED8();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  sub_100006190(0, &qword_1007808F8);
  sub_100006190(0, &qword_100780900);
  result = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v3 = result;
  if (result)
  {
    sub_100007158(v5, v6);
    sub_10000710C(v7);
    sub_10000710C(a1);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_100329ED8()
{
  result = qword_1007808F0;
  if (!qword_1007808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007808F0);
  }

  return result;
}

unint64_t sub_100329F2C()
{
  result = qword_100780908;
  if (!qword_100780908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780908);
  }

  return result;
}

uint64_t type metadata accessor for IPA_PreambleTask()
{
  result = qword_100780978;
  if (!qword_100780978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032A030()
{
  type metadata accessor for LogKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppInstall();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppPackage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ProgressCache();
        if (v3 <= 0x3F)
        {
          type metadata accessor for XPCClientRegistry();
          if (v4 <= 0x3F)
          {
            sub_10032A144();
            if (v5 <= 0x3F)
            {
              type metadata accessor for ManagedAppDeclarationStore();
              if (v6 <= 0x3F)
              {
                type metadata accessor for ManagedAppDeclarationStatusStore();
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

void sub_10032A144()
{
  if (!qword_100780988)
  {
    v0 = type metadata accessor for SQLiteDatabase();
    if (!v1)
    {
      atomic_store(v0, &qword_100780988);
    }
  }
}

void sub_10032A19C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v87 = a3;
  v78 = a2;
  v76 = a6;
  v8 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for AppPackage();
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin(v11);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppInstall();
  __chkstk_darwin(v13 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v77 = &v71 - v21;
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v79 = type metadata accessor for IPA_PreambleTask();
  __chkstk_darwin(v79);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = a4;
  v26 = a4;
  v27 = sub_100535D44(5, a1);
  v88 = v26;
  if (!v28)
  {
    static Logger.install.getter();
    v37 = v26;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Install bundle ID was incorrect type or missing", v40, 0xCu);
      sub_1000032A8(v41, &qword_10077F920);
    }

    else
    {

      v38 = v37;
    }

    v54 = v86;

    (*(v84 + 8))(v19, v85);
    type metadata accessor for InternalError();
    sub_10032F854(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10000710C(v54);
    v36 = v88;
    goto LABEL_22;
  }

  v29 = v27;
  v30 = v28;
  v31 = [objc_opt_self() server];
  if (!v31)
  {
    __break(1u);
    return;
  }

  v32 = v31;
  v89 = 0;
  v33 = [v31 currentGuidedAccessModeAndSessionApp:&v89];

  v34 = v89;
  v82 = v89;
  if (v33)
  {
    if (v89)
    {
      v89 = 0;
      v90 = 0;
      v35 = v34;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      v36 = v88;
      if (!v90)
      {

        goto LABEL_13;
      }

      if (v89 == v29 && v90 == v30)
      {

LABEL_27:
        v72 = a1;
        v73 = v10;
        static Logger.install.getter();
        v36 = v88;
        v56 = v88;

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v74 = v56;

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v71 = v57;
          v60 = v59;
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v89 = v62;
          *v60 = 138412546;
          v63 = v74;
          *(v60 + 4) = v74;
          *v61 = v63;
          *(v60 + 12) = 2082;
          v64 = sub_1002346CC(v29, v30, &v89);

          *(v60 + 14) = v64;
          v65 = v71;
          _os_log_impl(&_mh_execute_header, v71, v58, "[%@][%{public}s] Overriding install priority due to SAM", v60, 0x16u);
          sub_1000032A8(v61, &qword_10077F920);
          v36 = v88;

          sub_10000710C(v62);
        }

        else
        {
        }

        (*(v84 + 8))(v23, v85);
        v44 = v83;
        a1 = v72;
        v10 = v73;
        sub_10063522C(3, 31, v72);
        v43 = v86;
        goto LABEL_14;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v42 = v89;
  }

  v36 = v88;
LABEL_13:

  v43 = v86;
  v44 = v83;
LABEL_14:
  v45 = a1;
  sub_1003A85C8(v45, v15);
  if (v44)
  {
    sub_10000710C(v43);

LABEL_22:
    sub_10000710C(v87);

    return;
  }

  v46 = v79;
  sub_10032F978(v15, v25 + *(v79 + 20), type metadata accessor for AppInstall);
  v47 = [v45 persistentID];
  v48 = sub_1005AFEA0(v78, v47);
  if (v48)
  {
    sub_1003A84AC(v48, v10);
    sub_10000710C(v43);

    (*(v80 + 56))(v10, 0, 1, v81);
    v66 = v75;
    sub_10032F978(v10, v75, type metadata accessor for AppPackage);
    sub_10032F978(v66, v25 + v46[6], type metadata accessor for AppPackage);
    v67 = v87;
    *(v25 + v46[7]) = *(*sub_100006D8C(v87, v87[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v25 + v46[8]) = *(*sub_100006D8C(v67, v67[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    *(v25 + v46[9]) = *(*sub_100006D8C(v67, v67[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v25 + v46[10]) = *(*sub_100006D8C(v67, v67[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    v68 = *(*sub_100006D8C(v67, v67[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

    *(v25 + v46[11]) = v68;
    sub_10032F7EC(v25, v76, type metadata accessor for IPA_PreambleTask);
    sub_10000710C(v67);
    v69 = type metadata accessor for IPA_PreambleTask;
    v70 = v25;
  }

  else
  {
    (*(v80 + 56))(v10, 1, 1, v81);
    sub_1000032A8(v10, &unk_100780AB0);
    v49 = v77;
    static Logger.install.getter();
    v50 = v45;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v50 persistentID];

      _os_log_impl(&_mh_execute_header, v51, v52, "No package available for %lld", v53, 0xCu);
    }

    else
    {

      v51 = v50;
    }

    (*(v84 + 8))(v49, v85);
    type metadata accessor for InternalError();
    sub_10032F854(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10000710C(v43);
    sub_10000710C(v87);

    v69 = type metadata accessor for AppInstall;
    v70 = v25 + v46[5];
  }

  sub_10032F918(v70, v69);
}

uint64_t sub_10032AC48(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = type metadata accessor for IPA_PreambleTask();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v3 = type metadata accessor for AppInstallTaskResult();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809D0);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v5 = type metadata accessor for ProgressCache.Progress();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v2[43] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v2[44] = swift_task_alloc();
  v6 = type metadata accessor for DDMDeclaration(0);
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v7 = sub_1001F0C48(&unk_100784B60);
  v2[48] = v7;
  v2[49] = *(v7 - 8);
  v2[50] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v2[51] = swift_task_alloc();
  v2[52] = type metadata accessor for PlaceholderPromiseBuilder();
  v2[53] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v2[54] = swift_task_alloc();
  v2[55] = type metadata accessor for CreateCoordinatorTask();
  v2[56] = swift_task_alloc();
  v8 = type metadata accessor for AppInstallRequestType();
  v2[57] = v8;
  v2[58] = *(v8 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[67] = v9;
  v2[68] = *(v9 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();

  return _swift_task_switch(sub_10032B1D8, 0, 0);
}

uint64_t sub_10032B1D8()
{
  v157 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v5 + 20);
  *(v0 + 840) = v6;
  v7 = v4 + v6;
  v8 = type metadata accessor for AppInstall();
  *(v0 + 584) = v8;
  v154 = v7;
  sub_100005934(v7 + v8[14], v3, &unk_100780A00);
  v9 = *(v1 + 48);
  *(v0 + 592) = v9;
  *(v0 + 600) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v3, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 528), &unk_100780A00);
  }

  else
  {
    v10 = *(v0 + 576);
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    (*(v11 + 32))(v10, *(v0 + 528), v12);
    v13 = sub_1005F8634(v10);
    (*(v11 + 8))(v10, v12);
    if (v13)
    {
      v14 = v13;
      v15 = enum case for AppInstallRequestType.restore(_:);
      goto LABEL_22;
    }
  }

  v16 = *(v0 + 512);
  v17 = *(v0 + 456);
  v18 = *(v0 + 464);
  v152 = v8;
  v19 = v8[21];
  v149 = *(v18 + 16);
  v149(v16, v154 + v19, v17);
  v20 = *(v18 + 88);
  v21 = v20(v16, v17);
  if (v21 != enum case for AppInstallRequestType.promotion(_:) && v21 != enum case for AppInstallRequestType.restore(_:) && v21 != enum case for AppInstallRequestType.restoreUpdate(_:))
  {
    v135 = enum case for AppInstallRequestType.restore(_:);
    v22 = *(v0 + 504);
    v23 = *(v0 + 456);
    v149(v22, v154 + v19, v23);
    v24 = v20(v22, v23);
    v25 = 1;
    v127 = enum case for AppInstallRequestType.userVPPUpdate(_:);
    v128 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
    v130 = enum case for AppInstallRequestType.update(_:);
    v132 = enum case for AppInstallRequestType.automaticUpdate(_:);
    if (v24 != enum case for AppInstallRequestType.automaticUpdate(_:) && v24 != enum case for AppInstallRequestType.update(_:) && v24 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v24 != enum case for AppInstallRequestType.userVPPUpdate(_:))
    {
      (*(*(v0 + 464) + 8))(*(v0 + 504), *(v0 + 456));
      v25 = 0;
    }

    v141 = v25;
    v26 = *(v0 + 496);
    v27 = *(v0 + 456);
    v28 = (v154 + v8[10]);
    v29 = v28[1];
    v143 = *v28;
    sub_100005934(v154 + v8[20], *(v0 + 432), &qword_10077E958);
    v30 = (v154 + v8[32]);
    v138 = *v30;
    v146 = v30[1];
    v149(v26, v154 + v19, v27);
    v31 = *(v154 + v8[35]);
    if (v31 > 2)
    {
      v32 = 3;
    }

    else
    {
      if (v31 - 1 >= 2)
      {
        v78 = *(v0 + 488);
        v79 = *(v0 + 456);
        (*(*(v0 + 464) + 32))(v78, *(v0 + 496), v79);
        v80 = v20(v78, v79);
        v37 = v29;

        v39 = v138;
        sub_10026E620(v138, v146);
        v36 = v143;
        if (v80 == v132)
        {
          v150 = 4;
          v35 = v141;
          goto LABEL_21;
        }

        v35 = v141;
        if (v80 == v130)
        {
          v150 = 4;
          goto LABEL_21;
        }

        v150 = 4;
        if (v80 == v128 || v80 == v127)
        {
          goto LABEL_21;
        }

        v38 = (v0 + 488);
        v150 = 1;
LABEL_20:
        (*(*(v0 + 464) + 8))(*v38, *(v0 + 456));
LABEL_21:
        v40 = *(v0 + 464);
        v42 = *(v0 + 440);
        v41 = *(v0 + 448);
        v43 = *(v0 + 432);
        v44 = **(v0 + 216);
        *v41 = v36;
        v41[1] = v37;
        sub_10032F740(v43, v41 + v42[5]);
        v45 = (v41 + v42[6]);
        *v45 = v39;
        v45[1] = v146;
        *(v41 + v42[7]) = v35;
        *(v41 + v42[8]) = v150;
        *(v41 + v42[9]) = v44;
        v46 = v44;
        v13 = sub_10047541C();
        v47 = *(v0 + 512);
        v48 = *(v0 + 456);
        sub_10032F918(*(v0 + 448), type metadata accessor for CreateCoordinatorTask);
        (*(v40 + 8))(v47, v48);
        v14 = v13;
        v15 = v135;
        goto LABEL_22;
      }

      v32 = 2;
    }

    v150 = v32;
    v35 = v141;
    v36 = v143;
    v37 = v29;
    v38 = (v0 + 496);

    v39 = v138;
    sub_10026E620(v138, v146);
    goto LABEL_20;
  }

  v33 = enum case for AppInstallRequestType.restore(_:);
  v34 = sub_10032EFB4(*(v154 + v8[10]), *(v154 + v8[10] + 8), v154 + v19);
  v13 = v34;
  if (!v34)
  {
    v100 = *(v0 + 240);
    v101 = *(v0 + 248);
    v102 = *(v0 + 232);
    v103 = *(v0 + 216);
    static Logger.install.getter();
    sub_10032F7EC(v103, v101, type metadata accessor for IPA_PreambleTask);
    sub_10032F7EC(v103, v100, type metadata accessor for IPA_PreambleTask);
    sub_10032F7EC(v103, v102, type metadata accessor for IPA_PreambleTask);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v137 = *(v0 + 456);
      v140 = *(v0 + 480);
      v155 = *(v0 + 304);
      v145 = *(v0 + 296);
      v148 = *(v0 + 288);
      v107 = *(v0 + 240);
      v106 = *(v0 + 248);
      v129 = *(v0 + 232);
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v156[0] = swift_slowAlloc();
      *v108 = 138412802;
      v109 = *v106;
      sub_10032F918(v106, type metadata accessor for IPA_PreambleTask);
      *(v108 + 4) = v109;
      *v134 = v109;
      *(v108 + 12) = 2082;
      v110 = (v107 + v152[10] + *(v5 + 20));
      v112 = *v110;
      v111 = v110[1];

      sub_10032F918(v107, type metadata accessor for IPA_PreambleTask);
      v113 = sub_1002346CC(v112, v111, v156);

      *(v108 + 14) = v113;
      *(v108 + 22) = 2080;
      v149(v140, v129 + v152[21] + *(v5 + 20), v137);
      v114 = String.init<A>(describing:)();
      v116 = v115;
      sub_10032F918(v129, type metadata accessor for IPA_PreambleTask);
      v117 = sub_1002346CC(v114, v116, v156);

      *(v108 + 24) = v117;
      _os_log_impl(&_mh_execute_header, v104, v105, "[%@][%{public}s] Failed to create / get coordinator for installType: %s", v108, 0x20u);
      sub_1000032A8(v134, &qword_10077F920);

      swift_arrayDestroy();

      (*(v145 + 8))(v155, v148);
    }

    else
    {
      v120 = *(v0 + 296);
      v119 = *(v0 + 304);
      v121 = *(v0 + 288);
      v123 = *(v0 + 240);
      v122 = *(v0 + 248);
      v124 = *(v0 + 232);

      sub_10032F918(v124, type metadata accessor for IPA_PreambleTask);
      sub_10032F918(v123, type metadata accessor for IPA_PreambleTask);
      sub_10032F918(v122, type metadata accessor for IPA_PreambleTask);
      (*(v120 + 8))(v119, v121);
    }

    type metadata accessor for InternalError();
    sub_10032F854(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_50;
  }

  v14 = v34;
  v15 = v33;
LABEL_22:
  *(v0 + 616) = v13;
  *(v0 + 608) = v14;
  v49 = *(v0 + 480);
  v50 = *(v0 + 456);
  v51 = *(v0 + 464);
  v52 = v8[21];
  *(v0 + 844) = v52;
  (*(v51 + 104))(v49, v15, v50);
  sub_10032F854(&qword_10077E8F0, &type metadata accessor for AppInstallRequestType);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v51 + 8);
  *(v0 + 624) = v54;
  *(v0 + 632) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v49, v50);
  if ((v53 & 1) == 0 && [v14 creatorIdentifier] == 28 && (objc_msgSend(v14, "hasPlaceholderPromise") & 1) == 0)
  {
    v81 = *(v0 + 464);
    v136 = *(v0 + 456);
    v139 = *(v0 + 480);
    v83 = *(v0 + 416);
    v82 = *(v0 + 424);
    v153 = *(v0 + 408);
    sub_100005934(v154 + v8[9], v82, &unk_1007809F0);
    v84 = v8[11];
    v85 = (v154 + v8[10]);
    v147 = *v85;
    v131 = v85[1];
    v151 = *(v154 + v84);
    v133 = *(v154 + v84 + 8);
    sub_100005934(v154 + v8[20], v82 + v83[7], &qword_10077E958);
    v86 = (v154 + v8[12]);
    v87 = v86[1];
    v144 = *v86;
    v142 = *(v154 + v8[18]);
    (*(v81 + 16))(v139, v154 + v52, v136);
    LOBYTE(v81) = *(v154 + v8[35]);

    v88 = sub_100372410(v139, v81);
    v89 = *(v154 + v8[25]);
    sub_100005934(v154 + v8[30], v82 + v83[13], &unk_1007809F0);
    v90 = *(v154 + v8[38]);
    v91 = *(v154 + v8[28]);
    *(v82 + v83[11]) = 0;
    v92 = (v82 + v83[5]);
    *v92 = v147;
    v92[1] = v131;
    v93 = (v82 + v83[6]);
    *v93 = v151;
    v93[1] = v133;
    v94 = (v82 + v83[8]);
    *v94 = v144;
    v94[1] = v87;
    *(v82 + v83[9]) = v142;
    *(v82 + v83[10]) = v88;
    *(v82 + v83[12]) = v89;
    *(v82 + v83[14]) = v90;
    *(v82 + v83[15]) = v91;
    v95 = type metadata accessor for URL();
    (*(*(v95 - 8) + 56))(v153, 1, 1, v95);
    v96 = v90;
    v97 = v91;
    v98 = swift_task_alloc();
    *(v0 + 640) = v98;
    *v98 = v0;
    v98[1] = sub_10032C224;
    v99 = *(v0 + 408);

    return sub_10032FAF0(v99);
  }

  *(v0 + 168) = &OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises;
  v55 = swift_dynamicCastObjCProtocolConditional();
  if (v55)
  {
    v56 = v55;
    v57 = *(v0 + 608);
    sub_100006190(0, &qword_100780A98);
    v58 = v57;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 200) = 0;
    v60 = [v56 setInitialODRAssetPromises:isa error:v0 + 200];

    v61 = *(v0 + 200);
    if (!v60)
    {
      v70 = *(v0 + 608);
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_50:

      v125 = *(v0 + 8);

      return v125();
    }
  }

  v62 = *(v0 + 584);
  v63 = *(v0 + 216);
  v64 = v63 + *(v0 + 840);
  v65 = (v64 + v62[15]);
  v66 = v65[1];
  *(v0 + 696) = v66;
  if (v66)
  {
    v67 = *(v0 + 224);
    *(v0 + 704) = *v65;
    v68 = *(v63 + *(v67 + 40));
    *(v0 + 712) = v68;
    v69 = sub_10032D424;
LABEL_29:

    return _swift_task_switch(v69, v68, 0);
  }

  v71 = v64 + v62[41];
  v72 = *v71;
  *(v0 + 768) = *v71;
  v73 = *(v71 + 8);
  *(v0 + 776) = v73;
  v74 = *(v71 + 16);
  *(v0 + 852) = v74;
  v75 = *(v0 + 224);
  if (v74 == 255)
  {
    v68 = *(v63 + *(v75 + 28));
    *(v0 + 792) = v68;
    v118 = (v64 + v62[10]);
    *(v0 + 800) = *v118;
    *(v0 + 808) = v118[1];
    *(v0 + 816) = *(v64 + 40);
    *(v0 + 853) = *(v64 + 48);
    *(v0 + 824) = *(v64 + 56);
    *(v0 + 854) = *(v64 + 64);
    *(v0 + 848) = v62[19];
    v69 = sub_10032E428;
    goto LABEL_29;
  }

  v76 = *(v63 + *(v75 + 36));
  v77 = swift_task_alloc();
  *(v0 + 784) = v77;
  *v77 = v0;
  v77[1] = sub_10032E21C;

  return sub_10066A1D8(v72, v73, v74 & 1, v76, 0, 0);
}

uint64_t sub_10032C224(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[81] = a1;
  v4[82] = v1;

  v6 = v4[51];
  if (v1)
  {
    sub_1000032A8(v6, &unk_1007809F0);

    return _swift_task_switch(sub_10032C578, 0, 0);
  }

  else
  {
    sub_1000032A8(v6, &unk_1007809F0);
    v7 = swift_task_alloc();
    v4[83] = v7;
    *v7 = v5;
    v7[1] = sub_10032C428;
    v8 = v4[76];

    return sub_100207814(v8, a1);
  }
}

uint64_t sub_10032C428()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_10032CC54;
  }

  else
  {

    v3 = sub_10032C7A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10032C578()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 424);

  sub_10032F918(v2, type metadata accessor for PlaceholderPromiseBuilder);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10032C7A4()
{
  v1 = *(v0 + 424);

  sub_10032F918(v1, type metadata accessor for PlaceholderPromiseBuilder);
  *(v0 + 168) = &OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 && (v3 = v2, v4 = *(v0 + 608), sub_100006190(0, &qword_100780A98), v5 = v4, isa = Array._bridgeToObjectiveC()().super.isa, *(v0 + 200) = 0, v7 = [v3 setInitialODRAssetPromises:isa error:v0 + 200], isa, v8 = *(v0 + 200), v5, !v7))
  {
    v17 = *(v0 + 608);
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 216);
    v11 = v10 + *(v0 + 840);
    v12 = (v11 + v9[15]);
    v13 = v12[1];
    *(v0 + 696) = v13;
    if (v13)
    {
      v14 = *(v0 + 224);
      *(v0 + 704) = *v12;
      v15 = *(v10 + *(v14 + 40));
      *(v0 + 712) = v15;
      v16 = sub_10032D424;
LABEL_5:

      return _swift_task_switch(v16, v15, 0);
    }

    v19 = v11 + v9[41];
    v20 = *v19;
    *(v0 + 768) = *v19;
    v21 = *(v19 + 8);
    *(v0 + 776) = v21;
    v22 = *(v19 + 16);
    *(v0 + 852) = v22;
    v23 = *(v0 + 224);
    if (v22 == 255)
    {
      v15 = *(v10 + *(v23 + 28));
      *(v0 + 792) = v15;
      v26 = (v11 + v9[10]);
      *(v0 + 800) = *v26;
      *(v0 + 808) = v26[1];
      *(v0 + 816) = *(v11 + 40);
      *(v0 + 853) = *(v11 + 48);
      *(v0 + 824) = *(v11 + 56);
      *(v0 + 854) = *(v11 + 64);
      *(v0 + 848) = v9[19];
      v16 = sub_10032E428;
      goto LABEL_5;
    }

    v24 = *(v10 + *(v23 + 36));
    v25 = swift_task_alloc();
    *(v0 + 784) = v25;
    *v25 = v0;
    v25[1] = sub_10032E21C;

    return sub_10066A1D8(v20, v21, v22 & 1, v24, 0, 0);
  }
}

uint64_t sub_10032CC54()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v10 = v0[81];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  v7 = _convertErrorToNSError(_:)();
  v1[85] = v7;
  v1[2] = v1;
  v1[3] = sub_10032CE4C;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_10020A748(v1 + 14);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10020A518;
  v1[13] = &unk_10075FAD0;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_10032CE4C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 688) = v1;
  if (v1)
  {
    v2 = sub_10032D1CC;
  }

  else
  {
    v2 = sub_10032CF88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032CF88()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 424);

  swift_willThrow();
  sub_10032F918(v4, type metadata accessor for PlaceholderPromiseBuilder);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10032D1CC()
{
  swift_willThrow();

  v1 = *(v0 + 648);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 424);

  swift_willThrow();
  sub_10032F918(v4, type metadata accessor for PlaceholderPromiseBuilder);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10032D424()
{
  v1 = v0;
  v2 = v0[89];
  v3 = v0[88];
  v4 = v1[87];
  v5 = *(v2 + 112);
  v6 = swift_task_alloc();
  v1[90] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v1[91] = v7;
  *v7 = v1;
  v7[1] = sub_10032D540;
  v8 = v1[44];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_10032D540()
{

  if (v0)
  {

    v1 = sub_10032D964;
  }

  else
  {

    v1 = sub_10032D6B4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10032D6B4()
{
  v1 = *(v0 + 844);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  v7 = *(v0 + 216) + *(v0 + 840);
  (*(*(v0 + 368) + 56))(v6, 0, 1, *(v0 + 360));
  sub_10032F978(v6, v5, type metadata accessor for DDMDeclaration);
  (*(v3 + 16))(v2, v7 + v1, v4);
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for AppInstallRequestType.automaticUpdate(_:) || v8 == enum case for AppInstallRequestType.update(_:) || v8 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v8 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    v13 = *(v0 + 216);
    *(v0 + 736) = *(v13 + *(*(v0 + 224) + 44));
    *(v0 + 744) = *v13;
    type metadata accessor for ManagedAppDeclarationStatusStore();
    sub_10032F854(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10032DB64, v15, v14);
  }

  else
  {
    (*(v0 + 624))(*(v0 + 472), *(v0 + 456));
    v9 = **(v0 + 216);
    v10 = swift_task_alloc();
    *(v0 + 760) = v10;
    *v10 = v0;
    v10[1] = sub_10032DF14;
    v11 = *(v0 + 376);

    return sub_100307250(v11, 1, v9);
  }
}

uint64_t sub_10032D964()
{
  v1 = *(v0 + 352);
  (*(*(v0 + 368) + 56))(v1, 1, 1, *(v0 + 360));
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = *(v0 + 584);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = v3 + *(v0 + 840);
  v6 = v5 + v2[41];
  v7 = *v6;
  *(v0 + 768) = *v6;
  v8 = *(v6 + 8);
  *(v0 + 776) = v8;
  v9 = *(v6 + 16);
  *(v0 + 852) = v9;
  if (v9 == 255)
  {
    v13 = *(v3 + *(v4 + 28));
    *(v0 + 792) = v13;
    v14 = (v5 + v2[10]);
    *(v0 + 800) = *v14;
    *(v0 + 808) = v14[1];
    *(v0 + 816) = *(v5 + 40);
    *(v0 + 853) = *(v5 + 48);
    *(v0 + 824) = *(v5 + 56);
    *(v0 + 854) = *(v5 + 64);
    *(v0 + 848) = v2[19];

    return _swift_task_switch(sub_10032E428, v13, 0);
  }

  else
  {
    v10 = *(v3 + *(v4 + 36));
    v11 = swift_task_alloc();
    *(v0 + 784) = v11;
    *v11 = v0;
    v11[1] = sub_10032E21C;

    return sub_10066A1D8(v7, v8, v9 & 1, v10, 0, 0);
  }
}

uint64_t sub_10032DB64()
{
  v1 = v0[43];
  v2 = enum case for ManagedAppStatus.UpdateState.updating(_:);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v1, v2, updated);
  (*(v4 + 56))(v1, 0, 1, updated);
  v5 = swift_task_alloc();
  v0[94] = v5;
  *v5 = v0;
  v5[1] = sub_10032DCE0;
  v6 = v0[93];
  v7 = v0[47];
  v8 = v0[43];

  return sub_10030E4E0(v8, v7, 0, v6);
}

uint64_t sub_10032DCE0()
{
  v1 = *(*v0 + 344);

  sub_1000032A8(v1, &qword_10077F3A0);

  return _swift_task_switch(sub_10032DE34, 0, 0);
}

uint64_t sub_10032DE34()
{
  v1 = **(v0 + 216);
  v2 = swift_task_alloc();
  *(v0 + 760) = v2;
  *v2 = v0;
  v2[1] = sub_10032DF14;
  v3 = *(v0 + 376);

  return sub_100307250(v3, 1, v1);
}

uint64_t sub_10032DF14()
{

  return _swift_task_switch(sub_10032E03C, 0, 0);
}

uint64_t sub_10032E03C()
{
  sub_10032F918(*(v0 + 376), type metadata accessor for DDMDeclaration);
  v1 = *(v0 + 584);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = v2 + *(v0 + 840);
  v5 = v4 + v1[41];
  v6 = *v5;
  *(v0 + 768) = *v5;
  v7 = *(v5 + 8);
  *(v0 + 776) = v7;
  v8 = *(v5 + 16);
  *(v0 + 852) = v8;
  if (v8 == 255)
  {
    v12 = *(v2 + *(v3 + 28));
    *(v0 + 792) = v12;
    v13 = (v4 + v1[10]);
    *(v0 + 800) = *v13;
    *(v0 + 808) = v13[1];
    *(v0 + 816) = *(v4 + 40);
    *(v0 + 853) = *(v4 + 48);
    *(v0 + 824) = *(v4 + 56);
    *(v0 + 854) = *(v4 + 64);
    *(v0 + 848) = v1[19];

    return _swift_task_switch(sub_10032E428, v12, 0);
  }

  else
  {
    v9 = *(v2 + *(v3 + 36));
    v10 = swift_task_alloc();
    *(v0 + 784) = v10;
    *v10 = v0;
    v10[1] = sub_10032E21C;

    return sub_10066A1D8(v6, v7, v8 & 1, v9, 0, 0);
  }
}

uint64_t sub_10032E21C()
{

  return _swift_task_switch(sub_10032E344, 0, 0);
}

uint64_t sub_10032E344()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 216);
  v3 = v2 + *(v0 + 840);
  v4 = *(v2 + *(*(v0 + 224) + 28));
  *(v0 + 792) = v4;
  v5 = (v3 + *(v1 + 40));
  *(v0 + 800) = *v5;
  *(v0 + 808) = v5[1];
  *(v0 + 816) = *(v3 + 40);
  *(v0 + 853) = *(v3 + 48);
  *(v0 + 824) = *(v3 + 56);
  *(v0 + 854) = *(v3 + 64);
  *(v0 + 848) = *(v1 + 76);

  return _swift_task_switch(sub_10032E428, v4, 0);
}

uint64_t sub_10032E428()
{
  v60 = v0;
  v48 = *(v0 + 854);
  v45 = *(v0 + 824);
  v43 = *(v0 + 853);
  v1 = *(v0 + 808);
  v40 = *(v0 + 800);
  v41 = *(v0 + 816);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v56 = *(v0 + 568);
  v58 = *(v0 + 848);
  v4 = *(v0 + 544);
  v5 = *(v0 + 336);
  v51 = *(v0 + 216) + *(v0 + 840);
  v54 = *(v0 + 536);
  v6 = *(*(v0 + 320) + 24);
  v7 = enum case for AppState.waiting(_:);
  v8 = *(v0 + 852);
  v9 = type metadata accessor for AppState();
  (*(*(v9 - 8) + 104))(v5 + v6, v7, v9);
  *v5 = v40;
  *(v5 + 8) = v1;
  *(v5 + 16) = v41;
  *(v5 + 24) = v43;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v8;
  *(v5 + 56) = v45;
  *(v5 + 64) = v48;

  sub_10032F7B0(v3, v2, v8);
  static Logger.progress.getter();
  v10 = v56;
  v57 = *(v4 + 16);
  v57(v10, v51 + v58, v54);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v42 = *(v0 + 800);
    v13 = *(v0 + 568);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    v46 = *(v0 + 808);
    v49 = *(v0 + 296);
    v52 = *(v0 + 288);
    v55 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v16 = 136446466;
    sub_10032F854(&qword_100789F60, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1002346CC(v17, v19, &v59);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1002346CC(v42, v46, &v59);
    _os_log_impl(&_mh_execute_header, v11, v12, "[ProgressCache] Starting progress for %{public}s (%{public}s)", v16, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v55, v52);
  }

  else
  {
    v22 = *(v0 + 568);
    v23 = *(v0 + 544);
    v24 = *(v0 + 536);
    v25 = *(v0 + 312);
    v26 = *(v0 + 288);
    v27 = *(v0 + 296);

    v20 = *(v23 + 8);
    v20(v22, v24);
    (*(v27 + 8))(v25, v26);
  }

  *(v0 + 832) = v20;
  v28 = *(v0 + 560);
  v29 = *(v0 + 328);
  v30 = *(v0 + 336);
  v44 = v30;
  v47 = *(v0 + 848);
  v31 = *(v0 + 320);
  v50 = *(v0 + 216) + *(v0 + 840);
  v53 = *(v0 + 536);
  v32 = *(v0 + 280);
  (v57)(v28, v50 + v47);
  sub_10032F7EC(v30, v32, type metadata accessor for ProgressCache.Progress);
  (*(v29 + 56))(v32, 0, 1, v31);
  swift_beginAccess();
  sub_1005B7A24(v32, v28);
  swift_endAccess();
  sub_1001F0C48(&unk_100780A70);
  v33 = (sub_1001F0C48(&qword_100786FA0) - 8);
  v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10069E680;
  v36 = v35 + v34;
  v37 = v33[14];
  v57(v36, v50 + v47, v53);
  sub_10032F7EC(v44, v36 + v37, type metadata accessor for ProgressCache.Progress);
  v38 = sub_100528E5C(v35);
  swift_setDeallocating();
  sub_1000032A8(v36, &qword_100786FA0);
  swift_deallocClassInstance();
  sub_1003868C0(v38);

  sub_10032F918(v44, type metadata accessor for ProgressCache.Progress);

  return _swift_task_switch(sub_10032E9D8, 0, 0);
}

uint64_t sub_10032E9D8()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 536);
  v3 = *(v0 + 520);
  v4 = *(v0 + 216);
  v5 = *(*(v0 + 224) + 24);
  v6 = type metadata accessor for AppPackage();
  sub_100005934(v4 + *(v6 + 32) + v5, v3, &unk_100780A00);
  if (v1(v3, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 520), &unk_100780A00);
    goto LABEL_15;
  }

  (*(*(v0 + 544) + 32))(*(v0 + 552), *(v0 + 520), *(v0 + 536));
  *(v0 + 176) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    (*(v0 + 832))(*(v0 + 552), *(v0 + 536));
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *(v0 + 608);
  if (![v8 hasAppAssetPromise])
  {
LABEL_14:
    v31 = *(v0 + 608);
    (*(v0 + 832))(*(v0 + 552), *(v0 + 536));

    goto LABEL_15;
  }

  v10 = *(v0 + 608);
  *(v0 + 184) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v11 = v10;
  v12 = swift_dynamicCastObjCProtocolUnconditional();
  v13 = v8;
  if (![v12 hasAppAssetPromise])
  {
    v16 = *(v0 + 608);

LABEL_13:
    goto LABEL_14;
  }

  *(v0 + 192) = 0;
  v14 = [v12 appAssetPromiseWithError:v0 + 192];
  v15 = *(v0 + 192);
  if (!v14)
  {
    v42 = *(v0 + 832);
    v43 = *(v0 + 608);
    v44 = *(v0 + 552);
    v45 = *(v0 + 536);
    v46 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v42(v44, v45);
    goto LABEL_15;
  }

  v16 = v14;
  v17 = *(v0 + 608);
  v18 = v15;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v0 + 832);
  v21 = *(v0 + 560);
  v22 = *(v0 + 536);
  v23 = v16;
  v24 = [v19 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v20(v21, v22);
  v25 = *(v0 + 832);
  v26 = *(v0 + 608);
  v27 = *(v0 + 552);
  v28 = *(v0 + 536);
  if (v24)
  {
    v29 = [v19 isComplete];

    v25(v27, v28);
    if (v29)
    {
      v30 = 3;
      goto LABEL_16;
    }
  }

  else
  {

    v25(v27, v28);
  }

LABEL_15:
  v30 = 1;
LABEL_16:
  v32 = *(v0 + 608);
  v33 = *(v0 + 272);
  v34 = *(v0 + 264);
  v35 = *(v0 + 208);
  *v33 = v30;
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&unk_100780A80);
  v36 = *(v34 + 72);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10069F6E0;
  v39 = (v38 + v37);
  *v39 = v32;
  swift_storeEnumTagMultiPayload();
  sub_10032F978(v33, v39 + v36, type metadata accessor for AppInstallTaskResult);
  *v35 = v38;
  swift_storeEnumTagMultiPayload();

  v40 = *(v0 + 8);

  return v40();
}

void **sub_10032EFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = type metadata accessor for AppInstallRequestType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v32[0] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v32 - v9;
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  v13 = swift_allocObject();
  v38 = v13;
  *(v13 + 16) = 0;
  v32[1] = v13 + 16;
  v34 = *(v5 + 104);
  v34(v12, enum case for AppInstallRequestType.restore(_:), v4);
  sub_10032F854(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
  v35 = a3;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v39 && v42 == v40)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v33 = *(v5 + 8);
  v33(v12, v4);

  if (v14)
  {
    goto LABEL_10;
  }

  v34(v10, enum case for AppInstallRequestType.restoreUpdate(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v39 && v42 == v40)
  {
    v33(v10, v4);

LABEL_10:
    sub_100006190(0, &qword_100784400);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = swift_allocObject();
    v18 = v37;
    v17[2] = v36;
    v17[3] = v18;
    v19 = v38;
    v17[4] = v38;
    v45 = sub_10032F9E4;
    v46 = v17;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v20 = &unk_10075FB98;
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v33(v10, v4);

  if (v15)
  {
    goto LABEL_10;
  }

  v28 = v32[0];
  v34(v32[0], enum case for AppInstallRequestType.promotion(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v39 && v42 == v40)
  {
    v33(v28, v4);

    v19 = v38;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33(v28, v4);

    v19 = v38;
    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_100006190(0, &unk_100780AA0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = swift_allocObject();
  v31 = v37;
  v30[2] = v36;
  v30[3] = v31;
  v30[4] = v19;
  v45 = sub_10032F89C;
  v46 = v30;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v20 = &unk_10075FB48;
LABEL_11:
  v43 = sub_100009BE4;
  v44 = v20;
  v21 = _Block_copy(&aBlock);

  aBlock = 0;
  v22 = [ObjCClassFromMetadata enumerateCoordinatorsWithError:&aBlock usingBlock:v21];
  _Block_release(v21);
  v23 = aBlock;
  if ((v22 & 1) == 0)
  {
    v26 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v23;
  }

  v24 = aBlock;
LABEL_13:
  swift_beginAccess();
  v23 = *(v19 + 16);
  v25 = v23;

  return v23;
}

uint64_t sub_10032F594(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 creatorIdentifier] != 28)
  {
    v21[3] = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      v9 = v8;
      v21[0] = 0;
      v10 = a1;
      [v9 appAssetPromiseResponsibleClientWithError:v21];
      if (v21[0])
      {
        swift_willThrow();
      }
    }
  }

  v11 = [a1 identity];
  v12 = [v11 bundleID];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 1;
    }
  }

  swift_beginAccess();
  v18 = *(a4 + 16);
  *(a4 + 16) = a1;

  v19 = a1;
  return 1;
}

uint64_t sub_10032F740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077E958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032F7B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10032F7C8();
  }

  return result;
}

uint64_t sub_10032F7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032F854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032F8C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10032F8D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10032F918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032F978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_10032F9EC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v8 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v8))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v4 += v6 - v8;
      }

      if (!__OFSUB__(v7, v6))
      {
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return &v10;
  }

  if (!v2)
  {
    return &v10;
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v5 = __DataStorage._offset.getter();
    if (!__OFSUB__(v3, v5))
    {
      v4 += v3 - v5;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
  }

LABEL_12:
  __DataStorage._length.getter();
  return v4;
}

uint64_t sub_10032FAF0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10032FB80, 0, 0);
}

uint64_t sub_10032FB80()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  v0[5] = v2;
  v3 = type metadata accessor for PlaceholderPromiseBuilder();
  v4 = objc_allocWithZone(IXPlaceholderSpecification);

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithLocalizedBundleName:v5 bundleID:v6 type:1 client:28 location:v2];
  v0[6] = v7;

  [v7 setInstallType:*(v1 + *(v3 + 40))];
  v8 = objc_allocWithZone(IXPlaceholder);
  v0[2] = 0;
  v9 = v7;
  v10 = [v8 initWithSpecification:v9 error:v0 + 2];
  v0[7] = v10;
  v11 = v0[2];
  if (v10)
  {
    v12 = v10;
    v14 = v0[3];
    v13 = v0[4];
    v15 = v11;

    v16 = swift_task_alloc();
    v0[8] = v16;
    v16[2] = v13;
    v16[3] = v12;
    v16[4] = v14;
    v16[5] = v2;
    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = sub_10032FE54;

    return sub_1002079A8(v12, &unk_1006A2470);
  }

  else
  {
    v19 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10032FE54()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10033003C;
  }

  else
  {

    v2 = sub_10032FFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032FFA4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_10033003C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for PlaceholderPromiseBuilder()
{
  result = qword_100780B30;
  if (!qword_100780B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100330134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[54] = a3;
  v4[55] = a4;
  v4[52] = a1;
  v4[53] = a2;
  v4[56] = type metadata accessor for PlaceholderPromiseBuilder();
  v4[57] = swift_task_alloc();
  v5 = type metadata accessor for UTType();
  v4[58] = v5;
  v4[59] = *(v5 - 8);
  v4[60] = swift_task_alloc();
  sub_1001F0C48(&qword_100780AC0);
  v4[61] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[62] = v6;
  v4[63] = *(v6 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v4[66] = v7;
  v4[67] = *(v7 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  sub_1001F0C48(&qword_100780AC8);
  v4[70] = swift_task_alloc();
  v8 = sub_1001F0C48(&unk_100784B60);
  v4[71] = v8;
  v4[72] = *(v8 - 8);
  v4[73] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[77] = v9;
  v4[78] = *(v9 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();

  return _swift_task_switch(sub_1003304CC, 0, 0);
}

uint64_t sub_1003304CC()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = *(v2 + *(v1 + 56));
  if (v3)
  {
    v4 = v0[53];
    v5 = v3;
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006190(0, &qword_1007813E0);
    swift_dynamicCast();
    v6 = v0[50];
    v0[51] = 0;
    v7 = [v4 setMetadata:v6 error:v0 + 51];
    v8 = v0[51];
    if (!v7)
    {
      v19 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_15;
    }

    v9 = v8;

    v1 = v0[56];
    v2 = v0[52];
  }

  v10 = [objc_allocWithZone(IXPlaceholderAttributes) init];
  v5 = v10;
  v0[83] = v10;
  if (*(v2 + *(v1 + 48)) == 1)
  {
    [v10 setLaunchProhibited:1];
  }

  if (*(v0[52] + *(v0[56] + 44)) == 1)
  {
    [v5 setArcadeApp:1];
  }

  v11 = v0[53];
  v0[45] = 0;
  v12 = [v11 setPlaceholderAttributes:v5 error:v0 + 45];
  v13 = v0[45];
  if (!v12)
  {
    v18 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_15:

    goto LABEL_16;
  }

  if (*(v0[52] + *(v0[56] + 36)) == 1)
  {
    v14 = v13;
    v15 = swift_task_alloc();
    v0[84] = v15;
    *v15 = v0;
    v15[1] = sub_100330F84;
    v16 = v0[53];

    return sub_100334A48(v16);
  }

  v21 = v0[78];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[54];
  v25 = v13;
  sub_100337114(v24, v23);
  v26 = *(v21 + 48);
  if (v26(v23, 1, v22) == 1)
  {
    v27 = v0[77];
    v28 = v0[75];
    v29 = v0[52];
    sub_1000032A8(v0[76], &unk_1007809F0);
    sub_100337114(v29, v28);
    if (v26(v28, 1, v27) == 1)
    {
      sub_1000032A8(v0[75], &unk_1007809F0);
      v30 = v0[53];
      v0[46] = 0;
      v31 = [v30 setConfigurationCompleteWithError:v0 + 46];
      v32 = v0[46];
      v33 = v0[83];
      if (v31)
      {
        v34 = v32;

        v20 = v0[1];
        goto LABEL_17;
      }

      v74 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_16:

      v20 = v0[1];
LABEL_17:

      return v20();
    }

    v41 = v0[81];
    v42 = v0[80];
    v43 = v0[78];
    v44 = v0[77];
    v45 = v0[69];
    v46 = v0[68];
    v76 = v0[79];
    v77 = v0[67];
    v78 = v0[66];
    v47 = v0[56];
    v48 = v0[52];
    (*(v43 + 32))(v41, v0[75], v44);
    v75 = *(v48 + *(v47 + 60));
    v49 = [objc_opt_self() ephemeralSessionConfiguration];
    [v49 setHTTPShouldSetCookies:0];
    [v49 setHTTPCookieAcceptPolicy:1];
    [v49 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v50 = [objc_opt_self() sessionWithConfiguration:v49];
    v0[92] = v50;

    type metadata accessor for PlainHTTP();
    inited = swift_initStackObject();
    v0[93] = inited;
    *(inited + 16) = v50;
    v52 = *(v43 + 16);
    v52(v42, v41, v44);
    v52(v76, v42, v44);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.httpBody.setter();
    v53 = *(v43 + 8);
    v0[94] = v53;
    v0[95] = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v42, v44);
    (*(v77 + 16))(v46, v45, v78);
    v54.value._countAndFlagsBits = sub_10051E4A4(1);
    v55._countAndFlagsBits = 0x6567412D72657355;
    v55._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v54, v55);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v56 = swift_task_alloc();
    v0[96] = v56;
    *v56 = v0;
    v56[1] = sub_100332728;
    v57 = v0[68];

    return sub_10051E728(v57, v75);
  }

  else
  {
    (*(v0[78] + 32))(v0[82], v0[76], v0[77]);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      __break(1u);
    }

    v35 = v0[78];
    v36 = v0[77];
    v37 = v0[74];
    (*(v35 + 16))(v37, v0[82], v36);
    (*(v35 + 56))(v37, 0, 1, v36);
    v38 = String._bridgeToObjectiveC()();
    if (v26(v37, 1, v36) == 1)
    {
      v40 = 0;
    }

    else
    {
      v58 = v0[78];
      v59 = v0[77];
      v60 = v0[74];
      URL._bridgeToObjectiveC()(v39);
      v40 = v61;
      (*(v58 + 8))(v60, v59);
    }

    v62 = v0[55];
    v63 = objc_allocWithZone(IXPromisedTransferToPath);
    v0[47] = 0;
    v64 = [v63 initWithName:v38 client:28 transferPath:v40 diskSpaceNeeded:0 location:v62 error:v0 + 47];
    v0[87] = v64;

    v65 = v0[47];
    if (!v64)
    {
      v69 = v0[83];
      v70 = v0[82];
      v71 = v0[78];
      v72 = v0[77];
      v73 = v65;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v71 + 8))(v70, v72);
      goto LABEL_16;
    }

    v66 = v65;
    [v64 setShouldCopy:1];
    [v64 setComplete:1];
    v67 = swift_task_alloc();
    v0[88] = v67;
    *v67 = v0;
    v67[1] = sub_100331C4C;
    v68 = v0[53];

    return sub_10033505C(v68, v64);
  }
}

uint64_t sub_100330F84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {
    v4 = sub_100333EDC;
  }

  else
  {
    v4 = sub_1003310C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003310C8()
{
  v90 = v0;
  v1 = v0[85];
  v2 = v0[53];
  sub_1001F0C48(&qword_10077E640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006A2450;
  *(v3 + 32) = v1;
  sub_100006190(0, &unk_100788070);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v0[49] = 0;
  v6 = [v2 setAppExtensionPlaceholderPromises:isa error:v0 + 49];

  v7 = v0[49];
  v8 = v0[85];
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v10 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = v0[57];
    v12 = v0[52];
    static Logger.install.getter();
    sub_1003371FC(v12, v11);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[63];
    v16 = v0[64];
    v18 = v0[62];
    v19 = v0[57];
    if (v15)
    {
      v87 = v0[64];
      v20 = v0[56];
      v21 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89 = v85;
      *v21 = 138412546;
      v22 = *(v19 + *(v20 + 60));
      sub_100337260(v19);
      *(v21 + 4) = v22;
      *v82 = v22;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v23 = *(v0[43] - 8);
      swift_task_alloc();
      (*(v23 + 16))();
      v24 = String.init<A>(describing:)();
      v26 = v25;

      v27 = sub_1002346CC(v24, v26, &v89);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Non-fatal error occurred when setting extension placeholder: %s", v21, 0x16u);
      sub_1000032A8(v82, &qword_10077F920);

      sub_10000710C(v85);

      (*(v17 + 8))(v87, v18);
    }

    else
    {

      sub_100337260(v19);
      (*(v17 + 8))(v16, v18);
    }
  }

  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[76];
  sub_100337114(v0[54], v30);
  v31 = *(v28 + 48);
  if (v31(v30, 1, v29) == 1)
  {
    v32 = v0[77];
    v33 = v0[75];
    v34 = v0[52];
    sub_1000032A8(v0[76], &unk_1007809F0);
    sub_100337114(v34, v33);
    if (v31(v33, 1, v32) == 1)
    {
      sub_1000032A8(v0[75], &unk_1007809F0);
      v35 = v0[53];
      v0[46] = 0;
      v36 = [v35 setConfigurationCompleteWithError:v0 + 46];
      v37 = v0[46];
      v38 = v0[83];
      if (v36)
      {
        v39 = v37;

        v40 = v0[1];
LABEL_24:

        return v40();
      }

      v81 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_23:

      v40 = v0[1];
      goto LABEL_24;
    }

    v47 = v0[81];
    v48 = v0[80];
    v49 = v0[78];
    v50 = v0[77];
    v51 = v0[69];
    v52 = v0[68];
    v84 = v0[79];
    v86 = v0[67];
    v88 = v0[66];
    v53 = v0[56];
    v54 = v0[52];
    (*(v49 + 32))(v47, v0[75], v50);
    v83 = *(v54 + *(v53 + 60));
    v55 = [objc_opt_self() ephemeralSessionConfiguration];
    [v55 setHTTPShouldSetCookies:0];
    [v55 setHTTPCookieAcceptPolicy:1];
    [v55 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v56 = [objc_opt_self() sessionWithConfiguration:v55];
    v0[92] = v56;

    type metadata accessor for PlainHTTP();
    inited = swift_initStackObject();
    v0[93] = inited;
    *(inited + 16) = v56;
    v58 = *(v49 + 16);
    v58(v48, v47, v50);
    v58(v84, v48, v50);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.httpBody.setter();
    v59 = *(v49 + 8);
    v0[94] = v59;
    v0[95] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59(v48, v50);
    (*(v86 + 16))(v52, v51, v88);
    v60.value._countAndFlagsBits = sub_10051E4A4(1);
    v61._countAndFlagsBits = 0x6567412D72657355;
    v61._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v60, v61);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v62 = swift_task_alloc();
    v0[96] = v62;
    *v62 = v0;
    v62[1] = sub_100332728;
    v63 = v0[68];

    return sub_10051E728(v63, v83);
  }

  else
  {
    (*(v0[78] + 32))(v0[82], v0[76], v0[77]);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      __break(1u);
    }

    v41 = v0[78];
    v42 = v0[77];
    v43 = v0[74];
    (*(v41 + 16))(v43, v0[82], v42);
    (*(v41 + 56))(v43, 0, 1, v42);
    v44 = String._bridgeToObjectiveC()();
    if (v31(v43, 1, v42) == 1)
    {
      v46 = 0;
    }

    else
    {
      v65 = v0[78];
      v66 = v0[77];
      v67 = v0[74];
      URL._bridgeToObjectiveC()(v45);
      v46 = v68;
      (*(v65 + 8))(v67, v66);
    }

    v69 = v0[55];
    v70 = objc_allocWithZone(IXPromisedTransferToPath);
    v0[47] = 0;
    v71 = [v70 initWithName:v44 client:28 transferPath:v46 diskSpaceNeeded:0 location:v69 error:v0 + 47];
    v0[87] = v71;

    v72 = v0[47];
    if (!v71)
    {
      v76 = v0[83];
      v77 = v0[82];
      v78 = v0[78];
      v79 = v0[77];
      v80 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v78 + 8))(v77, v79);
      goto LABEL_23;
    }

    v73 = v72;
    [v71 setShouldCopy:1];
    [v71 setComplete:1];
    v74 = swift_task_alloc();
    v0[88] = v74;
    *v74 = v0;
    v74[1] = sub_100331C4C;
    v75 = v0[53];

    return sub_10033505C(v75, v71);
  }
}

uint64_t sub_100331C4C()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_10033206C;
  }

  else
  {
    v2 = sub_100331D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100331D8C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  *(v0 + 368) = 0;
  v5 = [v4 setConfigurationCompleteWithError:v0 + 368];
  v6 = *(v0 + 368);
  v7 = *(v0 + 664);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10033206C()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 26;
  v10 = v0[87];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = _convertErrorToNSError(_:)();
  v1[90] = v7;
  v1[10] = v1;
  v1[11] = sub_100332268;
  swift_continuation_init();
  v1[33] = v6;
  v8 = sub_10020A748(v1 + 30);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[26] = _NSConcreteStackBlock;
  v1[27] = 1107296256;
  v1[28] = sub_10020A518;
  v1[29] = &unk_10075FBE8;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100332268()
{
  v1 = *(*v0 + 112);
  *(*v0 + 728) = v1;
  if (v1)
  {
    v2 = sub_10033255C;
  }

  else
  {
    v2 = sub_1003323A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003323A4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);

  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10033255C()
{
  swift_willThrow();

  v1 = *(v0 + 696);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);

  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100332728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[97] = a1;
  v5[98] = a2;
  v5[99] = a3;
  v5[100] = v3;

  if (v3)
  {
    v6 = sub_100333040;
  }

  else
  {
    v6 = sub_100332874;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100332874()
{
  v1 = v0[99];
  v2 = v0[69];
  v3 = v0[66];
  v4 = *(v0[67] + 8);
  v4(v0[68], v3);
  v4(v2, v3);
  v5 = [v1 statusCode];
  v6 = v0[99];
  if (v5 == 200)
  {
    v7 = v0[70];
    v8 = v0[58];
    v9 = v0[59];
    v10 = sub_1001F0C48(&qword_100780AD0);
    v11 = *(v10 + 48);
    (*(v9 + 56))(v7 + v11, 1, 1, v8);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 valueForHTTPHeaderField:v12];

    v14 = v0[99];
    if (v13)
    {
      v15 = v0[61];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static UTType.data.getter();
      UTType.init(mimeType:conformingTo:)();

      sub_1000032A8(v7 + v11, &qword_100780AC0);
      sub_10033718C(v15, v7 + v11);
    }

    else
    {
    }

    v40 = v0[98];
    v41 = v0[97];
    v42 = v0[92];
    v43 = v0[70];
    v44 = v0[55];
    swift_setDeallocating();
    [v42 invalidateAndCancel];

    *v43 = v41;
    v43[1] = v40;
    (*(*(v10 - 8) + 56))(v43, 0, 1, v10);
    v45 = *v43;
    v0[101] = *v43;
    v46 = v43[1];
    v0[102] = v46;
    sub_1000032A8(v43 + *(v10 + 48), &qword_100780AC0);
    v47 = objc_allocWithZone(IXPromisedInMemoryData);
    sub_10020ABFC(v45, v46);
    v48 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v50 = [v47 initWithName:v48 client:28 data:isa location:v44];
    v0[103] = v50;

    sub_100007158(v45, v46);
    if (v50)
    {
      v51 = swift_task_alloc();
      v0[104] = v51;
      *v51 = v0;
      v51[1] = sub_1003333DC;
      v52 = v0[53];

      return sub_1003350EC(v52, v50);
    }

    v54 = v0[94];
    v55 = v0[83];
    v56 = v0[81];
    v57 = v0[77];
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v45, v46);
    v54(v56, v57);
    goto LABEL_16;
  }

  static Logger.install.getter();
  v16 = v6;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[99];
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = [v19 statusCode];

    _os_log_impl(&_mh_execute_header, v17, v18, "Artwork download failed with invalid status code %ld", v20, 0xCu);

    v21 = v0[99];
  }

  else
  {

    v21 = v0[99];
    v17 = v21;
  }

  v22 = v0[98];
  v23 = v0[97];
  v24 = v0[65];
  v25 = v0[62];
  v26 = v0[63];

  (*(v26 + 8))(v24, v25);
  [v21 statusCode];

  sub_100007158(v23, v22);
  v27 = v0[94];
  v28 = v0[92];
  v29 = v0[81];
  v30 = v0[77];
  v31 = v0[70];
  swift_setDeallocating();
  [v28 invalidateAndCancel];

  v27(v29, v30);
  v32 = sub_1001F0C48(&qword_100780AD0);
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  sub_1000032A8(v31, &qword_100780AC8);
  v33 = v0[53];
  v0[46] = 0;
  v34 = [v33 setConfigurationCompleteWithError:v0 + 46];
  v35 = v0[46];
  v36 = v0[83];
  if ((v34 & 1) == 0)
  {
    v39 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_16:

    v38 = v0[1];
    goto LABEL_17;
  }

  v37 = v35;

  v38 = v0[1];
LABEL_17:

  return v38();
}

uint64_t sub_100333040()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = *(v0[67] + 8);
  v3(v0[68], v2);
  v3(v1, v2);

  v4 = v0[94];
  v5 = v0[92];
  v6 = v0[81];
  v7 = v0[77];
  v8 = v0[70];
  swift_setDeallocating();
  [v5 invalidateAndCancel];

  v4(v6, v7);
  v9 = sub_1001F0C48(&qword_100780AD0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000032A8(v8, &qword_100780AC8);
  v10 = v0[53];
  v0[46] = 0;
  v11 = [v10 setConfigurationCompleteWithError:v0 + 46];
  v12 = v0[46];
  v13 = v0[83];
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003333DC()
{
  *(*v1 + 840) = v0;

  if (v0)
  {
    v2 = sub_100333808;
  }

  else
  {
    v2 = sub_10033351C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033351C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 752);
  v4 = *(v0 + 648);
  v5 = *(v0 + 616);

  sub_100007158(v2, v1);
  v3(v4, v5);
  v6 = *(v0 + 424);
  *(v0 + 368) = 0;
  v7 = [v6 setConfigurationCompleteWithError:v0 + 368];
  v8 = *(v0 + 368);
  v9 = *(v0 + 664);
  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v12 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100333808()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v10 = v0[103];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = _convertErrorToNSError(_:)();
  v1[106] = v7;
  v1[2] = v1;
  v1[3] = sub_100333A04;
  swift_continuation_init();
  v1[25] = v6;
  v8 = sub_10020A748(v1 + 22);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_10020A518;
  v1[21] = &unk_10075FBC0;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100333A04()
{
  v1 = *(*v0 + 48);
  *(*v0 + 856) = v1;
  if (v1)
  {
    v2 = sub_100333D04;
  }

  else
  {
    v2 = sub_100333B40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100333B40()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 752);
  v5 = *(v0 + 664);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);

  swift_willThrow();
  sub_100007158(v3, v2);
  v4(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100333D04()
{
  swift_willThrow();

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 752);
  v5 = *(v0 + 664);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);

  swift_willThrow();
  sub_100007158(v3, v2);
  v4(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100333EDC()
{
  v82 = v0;
  v1 = v0[57];
  v2 = v0[52];
  static Logger.install.getter();
  sub_1003371FC(v2, v1);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v75 = v0[63];
    v77 = v0[62];
    v79 = v0[64];
    v5 = v0[56];
    v6 = v0[57];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v81 = v73;
    *v7 = 138412546;
    v9 = *(v6 + *(v5 + 60));
    sub_100337260(v6);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v10 = *(v0[43] - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = String.init<A>(describing:)();
    v13 = v12;

    v14 = sub_1002346CC(v11, v13, &v81);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Non-fatal error occurred when setting extension placeholder: %s", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v73);

    (*(v75 + 8))(v79, v77);
  }

  else
  {
    v16 = v0[63];
    v15 = v0[64];
    v17 = v0[62];
    v18 = v0[57];

    sub_100337260(v18);
    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[78];
  v20 = v0[77];
  v21 = v0[76];
  sub_100337114(v0[54], v21);
  v22 = *(v19 + 48);
  if (v22(v21, 1, v20) == 1)
  {
    v23 = v0[77];
    v24 = v0[75];
    v25 = v0[52];
    sub_1000032A8(v0[76], &unk_1007809F0);
    sub_100337114(v25, v24);
    if (v22(v24, 1, v23) == 1)
    {
      sub_1000032A8(v0[75], &unk_1007809F0);
      v26 = v0[53];
      v0[46] = 0;
      v27 = [v26 setConfigurationCompleteWithError:v0 + 46];
      v28 = v0[46];
      v29 = v0[83];
      if (v27)
      {
        v30 = v28;

        v31 = v0[1];
LABEL_22:

        return v31();
      }

      v72 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_21:

      v31 = v0[1];
      goto LABEL_22;
    }

    v38 = v0[81];
    v39 = v0[80];
    v40 = v0[78];
    v41 = v0[77];
    v42 = v0[69];
    v43 = v0[68];
    v76 = v0[79];
    v78 = v0[67];
    v80 = v0[66];
    v44 = v0[56];
    v45 = v0[52];
    (*(v40 + 32))(v38, v0[75], v41);
    v74 = *(v45 + *(v44 + 60));
    v46 = [objc_opt_self() ephemeralSessionConfiguration];
    [v46 setHTTPShouldSetCookies:0];
    [v46 setHTTPCookieAcceptPolicy:1];
    [v46 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v47 = [objc_opt_self() sessionWithConfiguration:v46];
    v0[92] = v47;

    type metadata accessor for PlainHTTP();
    inited = swift_initStackObject();
    v0[93] = inited;
    *(inited + 16) = v47;
    v49 = *(v40 + 16);
    v49(v39, v38, v41);
    v49(v76, v39, v41);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.httpBody.setter();
    v50 = *(v40 + 8);
    v0[94] = v50;
    v0[95] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v39, v41);
    (*(v78 + 16))(v43, v42, v80);
    v51.value._countAndFlagsBits = sub_10051E4A4(1);
    v52._countAndFlagsBits = 0x6567412D72657355;
    v52._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v51, v52);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v53 = swift_task_alloc();
    v0[96] = v53;
    *v53 = v0;
    v53[1] = sub_100332728;
    v54 = v0[68];

    return sub_10051E728(v54, v74);
  }

  else
  {
    (*(v0[78] + 32))(v0[82], v0[76], v0[77]);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      __break(1u);
    }

    v32 = v0[78];
    v33 = v0[77];
    v34 = v0[74];
    (*(v32 + 16))(v34, v0[82], v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    v35 = String._bridgeToObjectiveC()();
    if (v22(v34, 1, v33) == 1)
    {
      v37 = 0;
    }

    else
    {
      v56 = v0[78];
      v57 = v0[77];
      v58 = v0[74];
      URL._bridgeToObjectiveC()(v36);
      v37 = v59;
      (*(v56 + 8))(v58, v57);
    }

    v60 = v0[55];
    v61 = objc_allocWithZone(IXPromisedTransferToPath);
    v0[47] = 0;
    v62 = [v61 initWithName:v35 client:28 transferPath:v37 diskSpaceNeeded:0 location:v60 error:v0 + 47];
    v0[87] = v62;

    v63 = v0[47];
    if (!v62)
    {
      v67 = v0[83];
      v68 = v0[82];
      v69 = v0[78];
      v70 = v0[77];
      v71 = v63;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v69 + 8))(v68, v70);
      goto LABEL_21;
    }

    v64 = v63;
    [v62 setShouldCopy:1];
    [v62 setComplete:1];
    v65 = swift_task_alloc();
    v0[88] = v65;
    *v65 = v0;
    v65[1] = sub_100331C4C;
    v66 = v0[53];

    return sub_10033505C(v66, v62);
  }
}

uint64_t sub_10033499C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001F0E54;

  return sub_100330134(v2, v3, v5, v4);
}

uint64_t sub_100334A48(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100334AD8, 0, 0);
}

uint64_t sub_100334AD8()
{
  v1 = v0[3];
  v2 = v0[4];
  _StringGuts.grow(_:)(20);
  v3 = (v2 + *(type metadata accessor for PlaceholderPromiseBuilder() + 20));
  v5 = *v3;
  v4 = v3[1];

  v6._countAndFlagsBits = 0xD000000000000012;
  v6._object = 0x80000001006C6120;
  String.append(_:)(v6);
  v7 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  v8 = objc_allocWithZone(IXPlaceholderSpecification);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 initWithLocalizedBundleName:v9 bundleID:v10 type:2 client:28 location:v7];
  v0[5] = v11;

  [v11 setParentPlaceholder:v1];
  v12 = objc_allocWithZone(IXPlaceholder);
  v0[2] = 0;
  v13 = v11;
  v14 = [v12 initWithSpecification:v13 error:v0 + 2];
  v0[6] = v14;
  v15 = v0[2];
  if (v14)
  {
    v16 = v14;
    v17 = v0[4];
    v18 = v15;

    v19 = swift_task_alloc();
    v0[7] = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v20 = swift_task_alloc();
    v0[8] = v20;
    *v20 = v0;
    v20[1] = sub_100334DD0;

    return sub_1002079A8(v16, dword_1006A24B8);
  }

  else
  {
    v22 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100334DD0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100334FB4;
  }

  else
  {

    v2 = sub_100334F20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100334F20()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100334FB4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10033505C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_10033755C, 0, 0);
}

uint64_t sub_1003350EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_10033517C, 0, 0);
}

uint64_t sub_10033517C()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setIconPromise:*(v0 + 32) error:v0 + 16];
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

uint64_t sub_100335280(uint64_t a1, uint64_t a2)
{
  v2[40] = a1;
  v2[41] = a2;
  v3 = sub_1001F0C48(&unk_100784B60);
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v4 = type metadata accessor for UTType();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  sub_1001F0C48(&qword_100780AC0);
  v2[48] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[49] = v5;
  v2[50] = *(v5 - 8);
  v2[51] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v2[52] = v6;
  v2[53] = *(v6 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_1001F0C48(&qword_100780AC8);
  v2[56] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v2[57] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[58] = v7;
  v2[59] = *(v7 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_1003355B4, 0, 0);
}

uint64_t sub_1003355B4()
{
  v1 = v0[41];
  v2 = [objc_allocWithZone(IXPlaceholderAttributes) init];
  v0[63] = v2;
  v3 = type metadata accessor for PlaceholderPromiseBuilder();
  v4 = String._bridgeToObjectiveC()();
  [v2 setBundleVersion:v4];

  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F6E0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001006C6140;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000001006C6160;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x80000001006C6190;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x80000001006C6100;
  sub_100528684(inited);
  swift_setDeallocating();
  sub_1001F0C48(&unk_10077F9B0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setExtensionDictionary:isa];

  v0[38] = 0;
  v7 = [v1 setPlaceholderAttributes:v2 error:v0 + 38];
  v8 = v0[38];
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = v0[58];
  v10 = v0[59];
  v11 = v0[57];
  sub_100337114(v0[40] + *(v3 + 52), v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[57];
    v13 = v8;
    sub_1000032A8(v12, &unk_1007809F0);
    v14 = v0[41];
    v0[39] = 0;
    v15 = [v14 setConfigurationCompleteWithError:v0 + 39];
    v8 = v0[39];
    v2 = v0[63];
    if (v15)
    {
      v16 = v8;

      v17 = v0[1];
LABEL_6:

      return v17();
    }

LABEL_5:
    v18 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v17 = v0[1];
    goto LABEL_6;
  }

  v20 = v0[61];
  v21 = v0[62];
  v22 = v0[59];
  v23 = v0[58];
  v24 = v0[54];
  v25 = v0[55];
  v39 = v0[60];
  v40 = v0[53];
  v41 = v0[52];
  v26 = v0[40];
  (*(v22 + 32))(v21, v0[57], v23);
  v38 = *(v26 + *(v3 + 60));
  v27 = objc_opt_self();
  v28 = v8;
  v29 = [v27 ephemeralSessionConfiguration];
  [v29 setHTTPShouldSetCookies:0];
  [v29 setHTTPCookieAcceptPolicy:1];
  [v29 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v30 = [objc_opt_self() sessionWithConfiguration:v29];
  v0[64] = v30;

  type metadata accessor for PlainHTTP();
  v31 = swift_initStackObject();
  v0[65] = v31;
  *(v31 + 16) = v30;
  v32 = *(v22 + 16);
  v32(v20, v21, v23);
  v32(v39, v20, v23);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  v33 = *(v22 + 8);
  v0[66] = v33;
  v0[67] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v20, v23);
  (*(v40 + 16))(v24, v25, v41);
  v34.value._countAndFlagsBits = sub_10051E4A4(1);
  v35._countAndFlagsBits = 0x6567412D72657355;
  v35._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v34, v35);

  URLRequest.timeoutInterval.setter();
  URLRequest.cachePolicy.setter();
  URLRequest.httpShouldHandleCookies.setter();
  v36 = swift_task_alloc();
  v0[68] = v36;
  *v36 = v0;
  v36[1] = sub_100335C6C;
  v37 = v0[54];

  return sub_10051E728(v37, v38);
}

uint64_t sub_100335C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[69] = a1;
  v5[70] = a2;
  v5[71] = a3;
  v5[72] = v3;

  if (v3)
  {
    v6 = sub_10033647C;
  }

  else
  {
    v6 = sub_100335DB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100335DB8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(*(v0 + 424) + 8);
  v4(*(v0 + 432), v3);
  v4(v2, v3);
  v5 = [v1 statusCode];
  v6 = *(v0 + 568);
  if (v5 == 200)
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = sub_1001F0C48(&qword_100780AD0);
    v11 = *(v10 + 48);
    (*(v9 + 56))(v7 + v11, 1, 1, v8);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 valueForHTTPHeaderField:v12];

    v14 = *(v0 + 568);
    if (v13)
    {
      v15 = *(v0 + 384);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static UTType.data.getter();
      UTType.init(mimeType:conformingTo:)();

      sub_1000032A8(v7 + v11, &qword_100780AC0);
      sub_10033718C(v15, v7 + v11);
    }

    else
    {
    }

    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 512);
    v36 = *(v0 + 448);
    swift_setDeallocating();
    [v35 invalidateAndCancel];

    *v36 = v34;
    v36[1] = v33;
    (*(*(v10 - 8) + 56))(v36, 0, 1, v10);
    v37 = *v36;
    *(v0 + 584) = *v36;
    v38 = v36[1];
    *(v0 + 592) = v38;
    sub_1000032A8(v36 + *(v10 + 48), &qword_100780AC0);
    v39 = objc_allocWithZone(IXPromisedInMemoryData);
    sub_10020ABFC(v37, v38);
    v40 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = [v39 initWithName:v40 client:28 data:isa];
    *(v0 + 600) = v42;

    sub_100007158(v37, v38);
    if (v42)
    {
      v43 = swift_task_alloc();
      *(v0 + 608) = v43;
      *v43 = v0;
      v43[1] = sub_10033676C;
      v44 = *(v0 + 328);

      return sub_10033505C(v44, v42);
    }

    (*(v0 + 528))(*(v0 + 496), *(v0 + 464));
    sub_100007158(v37, v38);
  }

  else
  {
    static Logger.install.getter();
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 568);
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v19 statusCode];

      _os_log_impl(&_mh_execute_header, v17, v18, "Artwork download failed with invalid status code %ld", v20, 0xCu);

      v21 = *(v0 + 568);
    }

    else
    {

      v21 = *(v0 + 568);
      v17 = v21;
    }

    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v26 = *(v0 + 392);

    (*(v25 + 8))(v24, v26);
    [v21 statusCode];

    sub_100007158(v23, v22);
    v27 = *(v0 + 528);
    v28 = *(v0 + 512);
    v29 = *(v0 + 496);
    v30 = *(v0 + 464);
    v31 = *(v0 + 448);
    swift_setDeallocating();
    [v28 invalidateAndCancel];

    v27(v29, v30);
    v32 = sub_1001F0C48(&qword_100780AD0);
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    sub_1000032A8(v31, &qword_100780AC8);
  }

  v46 = *(v0 + 328);
  *(v0 + 312) = 0;
  v47 = [v46 setConfigurationCompleteWithError:v0 + 312];
  v48 = *(v0 + 312);
  v49 = *(v0 + 504);
  if (v47)
  {
    v50 = v48;
  }

  else
  {
    v52 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10033647C()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = *(v0[53] + 8);
  v3(v0[54], v2);
  v3(v1, v2);

  v4 = v0[66];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[58];
  v8 = v0[56];
  swift_setDeallocating();
  [v5 invalidateAndCancel];

  v4(v6, v7);
  v9 = sub_1001F0C48(&qword_100780AD0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000032A8(v8, &qword_100780AC8);
  v10 = v0[41];
  v0[39] = 0;
  v11 = [v10 setConfigurationCompleteWithError:v0 + 39];
  v12 = v0[39];
  v13 = v0[63];
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10033676C()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_100336AF4;
  }

  else
  {
    v2 = sub_1003368AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003368AC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 464);

  sub_100007158(v2, v1);
  v3(v4, v5);
  v6 = *(v0 + 328);
  *(v0 + 312) = 0;
  v7 = [v6 setConfigurationCompleteWithError:v0 + 312];
  v8 = *(v0 + 312);
  v9 = *(v0 + 504);
  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v12 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100336AF4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 26;
  v10 = v0[75];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = _convertErrorToNSError(_:)();
  v1[78] = v7;
  v1[2] = v1;
  v1[3] = sub_100336CEC;
  swift_continuation_init();
  v1[33] = v6;
  v8 = sub_10020A748(v1 + 30);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[26] = _NSConcreteStackBlock;
  v1[27] = 1107296256;
  v1[28] = sub_10020A518;
  v1[29] = &unk_10075FC10;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100336CEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 632) = v1;
  if (v1)
  {
    v2 = sub_100336F94;
  }

  else
  {
    v2 = sub_100336E28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100336E28()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 528);
  v5 = *(v0 + 496);
  v6 = *(v0 + 504);
  v7 = *(v0 + 464);

  swift_willThrow();
  sub_100007158(v3, v2);
  v4(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100336F94()
{
  swift_willThrow();

  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 528);
  v5 = *(v0 + 496);
  v6 = *(v0 + 504);
  v7 = *(v0 + 464);

  swift_willThrow();
  sub_100007158(v3, v2);
  v4(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100337114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100780AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003371FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderPromiseBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100337260(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderPromiseBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003372BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100214EFC;

  return sub_100335280(v2, v3);
}

void sub_10033737C()
{
  sub_1003374B0(319, &qword_100780B40, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_1003374B0(319, &qword_100780B48, &type metadata accessor for FilePath);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LSInstallType(319);
      if (v2 <= 0x3F)
      {
        sub_100337504();
        if (v3 <= 0x3F)
        {
          type metadata accessor for LogKey();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003374B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100337504()
{
  if (!qword_100780B50)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780B50);
    }
  }
}

uint64_t sub_10033755C()
{

  return sub_10033517C();
}

uint64_t sub_1003375D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = a1 + 56;
  v4 = 1;
  v5 = *(a1 + 16);
  do
  {
    if (*(v3 - 24))
    {
LABEL_14:

      return v4;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 0;
    }

    v3 += 32;

    --v5;
  }

  while (v5);
  v7 = a1 + 56;
  while (1)
  {
    if (*(v7 - 24) != 1)
    {
      v4 = 0;
      goto LABEL_14;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 1;
    }

    v7 += 32;

    if (!--v1)
    {
      return 0;
    }
  }
}

void sub_10033776C(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  objc_allocWithZone(LSApplicationRecord);

  v10 = sub_10033ADB0(a2, a3, 0);
  v18 = v10;
  if (!v10)
  {
    goto LABEL_2;
  }

  v19 = sub_10060BB74();
  if (v20)
  {

LABEL_2:
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_3:
    *a5 = v12;
    *(a5 + 16) = v13;
    *(a5 + 32) = v14;
    *(a5 + 48) = v15;
    *(a5 + 64) = v16;
    *(a5 + 80) = v17;
    *(a5 + 96) = v11;
    return;
  }

  v85 = v18;
  v83 = a5;
  v21 = *(a4 + 16);
  if (v21)
  {
    v22 = v19;
    v23 = 0;
    v24 = a4 + 32;
    v25 = _swiftEmptyArrayStorage;
    while (2)
    {
      v26 = v25;
      v27 = (v24 + 104 * v23);
      v28 = v23;
      while (1)
      {
        if (v28 >= v21)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v29 = v27[5];
        v94 = v27[4];
        v95 = v29;
        v96 = *(v27 + 12);
        v30 = v27[1];
        v90 = *v27;
        v91 = v30;
        v31 = v27[3];
        v92 = v27[2];
        v93 = v31;
        v23 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_68;
        }

        if (v94 == *a1 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(&v92 + 1) == v22)
        {
          break;
        }

        ++v28;
        v27 = (v27 + 104);
        if (v23 == v21)
        {
          v25 = v26;
          goto LABEL_25;
        }
      }

      sub_10033AF94(&v90, v89);
      v25 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100526388(0, v26[2] + 1, 1);
        v25 = v97;
      }

      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_100526388((v33 > 1), v34 + 1, 1);
        v25 = v97;
      }

      v25[2] = v34 + 1;
      v35 = &v25[13 * v34];
      v36 = v90;
      v37 = v92;
      *(v35 + 3) = v91;
      *(v35 + 4) = v37;
      *(v35 + 2) = v36;
      v38 = v93;
      v39 = v94;
      v40 = v95;
      v35[16] = v96;
      *(v35 + 6) = v39;
      *(v35 + 7) = v40;
      *(v35 + 5) = v38;
      if (v23 != v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_25:
  v82 = v25[2];
  if (!v82)
  {

LABEL_60:

LABEL_61:
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_65:
    a5 = v83;
    goto LABEL_3;
  }

  v41 = [v85 iTunesMetadata];
  v42 = [v41 variantID];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_10033AA60(v43, v45, &v90);
    v46 = *(&v90 + 1);
    if (*(&v90 + 1))
    {
      v47 = 0;
      v48 = v90;
      v86 = *(&v91 + 1);
      v87 = v91;
      v84 = v92;
      v79 = v25;
      v80 = v25 + 4;
      v88 = v93;
      while (v47 < v25[2])
      {
        v81 = v47;
        v49 = &v80[13 * v47];
        v50 = *v49;
        v51 = *(v49 + 1);
        v92 = *(v49 + 2);
        v91 = v51;
        v52 = *(v49 + 3);
        v53 = *(v49 + 4);
        v54 = *(v49 + 5);
        v96 = v49[12];
        v94 = v53;
        v95 = v54;
        v93 = v52;
        v90 = v50;
        v55 = v92;
        v56 = *(v92 + 16);
        sub_10033AF94(&v90, v89);

        v57 = v88;
        if (v56)
        {
          v58 = 0;
          v59 = (v55 + 40);
          while (v58 < *(v55 + 16))
          {
            v60 = v59[1];
            v61 = v59[2];
            v62 = v59[3];
            v63 = v59[5];
            v64 = *(v59 - 1) == v48 && v46 == *v59;
            if (v64 || (v65 = _stringCompareWithSmolCheck(_:_:expecting:)(), v57 = v88, (v65 & 1) != 0))
            {
              if (v63)
              {
                if (v57 && v60 == v87 && v61 == v86 && v62 == v84)
                {
LABEL_63:

                  sub_100271104(v48, v46);

                  goto LABEL_64;
                }
              }

              else if (!v57)
              {
                goto LABEL_63;
              }
            }

            ++v58;
            v59 += 7;
            if (v56 == v58)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_69;
        }

LABEL_29:
        v47 = v81 + 1;
        sub_10033AFF0(&v90);

        v25 = v79;
        if (v81 + 1 == v82)
        {

          sub_100271104(v48, v46);
          goto LABEL_60;
        }
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }
  }

  v66 = v25;
  v67 = 0;
  v68 = v66 + 4;
  while (2)
  {
    if (v67 < v66[2])
    {
      v69 = v66;
      v70 = &v68[13 * v67];
      v71 = *v70;
      v72 = v70[1];
      v92 = v70[2];
      v91 = v72;
      v73 = v70[3];
      v74 = v70[4];
      v75 = v70[5];
      v96 = *(v70 + 12);
      v94 = v74;
      v95 = v75;
      v93 = v73;
      v90 = v71;
      ++v67;
      v76 = (v92 + 40);
      v77 = *(v92 + 16) + 1;
      while (--v77)
      {
        if (*(v76 - 1) != 0x6173726576696E75 || *v76 != 0xE90000000000006CLL)
        {
          v76 += 7;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        sub_10033AF94(&v90, v89);

LABEL_64:
        v12 = v90;
        v13 = v91;
        v14 = v92;
        v15 = v93;
        v16 = v94;
        v17 = v95;
        v11 = v96;
        goto LABEL_65;
      }

      v66 = v69;
      if (v67 != v82)
      {
        continue;
      }

      goto LABEL_61;
    }

    break;
  }

LABEL_71:
  __break(1u);
}

void sub_100337D34(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v93 = a1;
  v82 = a2;
  v3 = *(v2 + 192);
  v4 = *(v3 + 16);
  v77 = v3;
  if (v4)
  {
    v5 = (v3 + 48);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      v9 = *(v6 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v6 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v6 = sub_100362838(isUniquelyReferenced_nonNull_native, v12, 1, v6);
        if (!*(v7 + 16))
        {
LABEL_3:

          if (v8)
          {
            goto LABEL_108;
          }

          goto LABEL_4;
        }
      }

      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v8)
      {
        goto LABEL_109;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v13 = *(v6 + 2);
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_111;
        }

        *(v6 + 2) = v15;
      }

LABEL_4:
      v5 += 8;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v16 = v93;
  v107[0] = *v93;
  v83 = *(&v107[0] + 1);
  v84 = *&v107[0];
  v17 = *(v6 + 2);

  sub_100222DF8(v107, &v103);
  v18 = sub_10020A7AC(v93, &v103);
  v95 = v17;
  if (!v17)
  {
LABEL_31:
    sub_10023215C(v107);

    sub_10020A92C(v16);
    sub_10023215C(v107);
    goto LABEL_32;
  }

  v19 = 0;
  v96 = 0;
  v20 = (v6 + 40);
  while (1)
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v23 = v20[2];
    v92 = v20[1];
    v89 = v20[3];
    v90 = v23;
    v24 = v20[5];
    v25 = *(v16 + 16);
    *&v99 = v21;
    *(&v99 + 1) = v22;
    __chkstk_darwin(v18);
    v74 = &v99;

    v91 = v25;
    v26 = v25;
    v27 = v96;
    v28 = sub_10020A1BC(sub_1001F7FFC, v73, v26);
    v96 = v27;
    if (v28)
    {
      break;
    }

    v16 = v93;
LABEL_22:
    ++v19;
    v20 += 7;
    if (v95 == v19)
    {
      goto LABEL_31;
    }
  }

  v16 = v93;
  if (v24)
  {
    v29 = *(v93 + 56);
    v30 = v29 < v92;
    if (v29 == v92)
    {
      v31 = *(v93 + 64);
      v30 = v31 < v90;
      if (v31 == v90)
      {
        v30 = *(v93 + 72) < v89;
      }
    }

    if (v30)
    {

      goto LABEL_22;
    }
  }

  if (v95 - 1 != v19)
  {
    v36 = v19 + 1;
    v37 = v6 + 40;
    v38 = v83;
    v39 = v84;
    v75 = v6 + 40;
LABEL_37:
    v78 = v22;
    v79 = v24;
    v41 = v21 == v39 && v22 == v38;
    v81 = v41;
    v42 = &v37[56 * v36];
    for (i = v36; ; ++i)
    {
      if (i >= v95)
      {
        goto LABEL_112;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_113;
      }

      v87 = i + 1;
      v44 = *(v42 - 1);
      v22 = *v42;
      v45 = *(v42 + 2);
      v88 = *(v42 + 1);
      v85 = *(v42 + 3);
      v86 = v45;
      v24 = *(v42 + 5);
      v94 = v44;
      *&v99 = v44;
      *(&v99 + 1) = v22;
      __chkstk_darwin(v28);
      v74 = &v99;

      v46 = v96;
      v47 = sub_10020A1BC(sub_1001F80EC, v73, v91);
      v96 = v46;
      if ((v47 & 1) == 0)
      {

        v16 = v93;
        goto LABEL_76;
      }

      v16 = v93;
      if (v24)
      {
        v48 = *(v93 + 56);
        v49 = v48 < v88;
        if (v48 == v88 && (v50 = *(v93 + 64), v49 = v50 < v86, v50 == v86))
        {
          if (*(v93 + 72) < v85)
          {
            goto LABEL_75;
          }
        }

        else if (v49)
        {
          goto LABEL_75;
        }
      }

      if (v94 == v84 && v22 == v83)
      {
        if (!v81 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v39 = v84;
          v94 = v84;
          goto LABEL_83;
        }

LABEL_66:
        if (!v24 || !v79)
        {
          goto LABEL_80;
        }

        if (v92 == v88)
        {
          if (v90 == v86)
          {
            if (v89 < v85)
            {
              v88 = v92;
              v86 = v90;
              goto LABEL_80;
            }
          }

          else if (v90 < v86)
          {
            v88 = v92;
LABEL_80:

            v38 = v83;
            v39 = v84;
            v37 = v75;
LABEL_81:
            v89 = v85;
            v90 = v86;
            v36 = v87;
            v92 = v88;
            v35 = v94;
            v21 = v94;
            if (v87 != v95)
            {
              goto LABEL_37;
            }

            goto LABEL_86;
          }
        }

        else if (v92 < v88)
        {
          goto LABEL_80;
        }

        goto LABEL_75;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v81)
      {
        if (v51)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v76 = v51;
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v76)
        {
          if ((v52 & 1) == 0)
          {
            v39 = v84;
LABEL_83:
            v37 = v75;

            v38 = v83;
            goto LABEL_81;
          }

          goto LABEL_66;
        }

        if ((v52 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

LABEL_75:

LABEL_76:

      if (v87 == v95)
      {
        v35 = v21;
        v22 = v78;
        v24 = v79;
        goto LABEL_85;
      }

      v42 += 56;
    }
  }

  v35 = v21;
LABEL_85:
  v88 = v92;
  v85 = v89;
  v86 = v90;
LABEL_86:
  v94 = v35;
  sub_10023215C(v107);

  sub_10020A92C(v16);
  sub_10023215C(v107);
  if (!v80)
  {
LABEL_105:

LABEL_32:
    v32 = v82;
    sub_10033A528(&v103);
LABEL_33:
    v33 = v104;
    *v32 = v103;
    v32[1] = v33;
    v34 = v106;
    v32[2] = v105;
    v32[3] = v34;
    return;
  }

  v53 = 0;
  v92 = v77 + 32;
  v95 = v22;
  while (1)
  {
    v93 = v53;
    v54 = (v92 + (v53 << 6));
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[3];
    v98[2] = v54[2];
    v98[3] = v57;
    v98[0] = v55;
    v98[1] = v56;
    v99 = *v54;
    v100 = v54[1];
    v101 = v54[2];
    v102 = v54[3];
    v58 = v56;
    v59 = *(v56 + 16);
    sub_100223458(v98, &v97);

    if (v59)
    {
      break;
    }

LABEL_88:
    v53 = v93 + 1;
    sub_1002234B4(v98);

    if (v53 == v80)
    {
      goto LABEL_105;
    }
  }

  v60 = 0;
  v61 = (v58 + 40);
  v62 = v94;
  v63 = v58;
  while (v60 < *(v63 + 16))
  {
    v65 = v61[1];
    v64 = v61[2];
    v66 = v61[3];
    v67 = v61[5];
    v68 = *(v61 - 1) == v62 && *v61 == v22;
    if (v68 || (v69 = v24, v70 = v59, v71 = v63, v72 = _stringCompareWithSmolCheck(_:_:expecting:)(), v63 = v71, v59 = v70, v24 = v69, v62 = v94, v22 = v95, (v72 & 1) != 0))
    {
      if (v67)
      {
        if (v24 && v65 == v88 && v64 == v86 && v66 == v85)
        {
LABEL_106:

          v103 = v99;
          v104 = v100;
          v105 = v101;
          v106 = v102;
          v32 = v82;
          goto LABEL_33;
        }
      }

      else if (!v24)
      {
        goto LABEL_106;
      }
    }

    ++v60;
    v61 += 7;
    if (v59 == v60)
    {
      goto LABEL_88;
    }
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

unint64_t sub_1003384EC(unint64_t result, uint64_t a2, unint64_t a3)
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

uint64_t sub_100338538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1001F0C48(&qword_100780BB8);
  v5 = __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = type metadata accessor for FilePath.ComponentView.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001F0C48(&qword_100780BC0);
  __chkstk_darwin(v24);
  v15 = v23 - v14;
  v16 = type metadata accessor for FilePath.ComponentView();
  v17 = sub_10033B0E4(&qword_100780BC8, &type metadata accessor for FilePath.ComponentView);
  v25 = v2;
  v23[1] = v17;
  v23[2] = v16;
  dispatch thunk of Collection.startIndex.getter();
  sub_10033B0E4(&qword_100780BD0, &type metadata accessor for FilePath.ComponentView.Index);
  v18 = a1;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v11 + 32);
    v20(v9, v13, v10);
    (*(v11 + 16))(&v9[*(v4 + 48)], v18, v10);
    sub_10033B12C(v9, v7);
    v21 = *(v4 + 48);
    v20(v15, v7, v10);
    v22 = *(v11 + 8);
    v22(&v7[v21], v10);
    sub_10033B19C(v9, v7);
    v20(&v15[*(v24 + 36)], &v7[*(v4 + 48)], v10);
    v22(v7, v10);
    dispatch thunk of Collection.subscript.getter();
    return sub_1000032A8(v15, &qword_100780BC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033886C()
{
  sub_1006258D8();
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1002710CC(v0, qword_1007B88E8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_1002346CC(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Activity associated with %{public}s", v2, 0xCu);
    sub_10000710C(v3);
  }

  else
  {
  }
}

uint64_t sub_100338A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[48] = a6;
  v7[49] = a7;
  v7[46] = a3;
  v7[47] = a5;
  v7[44] = a1;
  v7[45] = a2;
  v8 = type metadata accessor for Logger();
  v7[50] = v8;
  v7[51] = *(v8 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[60] = v9;
  v7[61] = *(v9 - 8);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(sub_100338BCC, 0, 0);
}

uint64_t sub_100338BCC()
{
  if (URL.hasDirectoryPath.getter())
  {
    v1 = *(v0 + 488);
    (*(v1 + 16))(*(v0 + 512), *(v0 + 360), *(v0 + 480));
    v2 = *(v1 + 32);
    v3 = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v4 = *(v0 + 480);
    v5 = *(v0 + 488);
    v6 = *(v0 + 472);
    URL.absoluteString.getter();

    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    URL.init(string:)();

    result = (*(v5 + 48))(v6, 1, v4);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 488);
    v2 = *(v9 + 32);
    v3 = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v2(*(v0 + 512), *(v0 + 472), *(v0 + 480));
  }

  *(v0 + 528) = v2;
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  v15 = *(v0 + 456);
  v14 = *(v0 + 464);
  *(v0 + 536) = v3;
  v2(v10, v11, v12);
  v16 = v13[2];
  *(v0 + 544) = v16;
  *(v0 + 552) = (v13 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v15, v10, v12);
  v17 = v13[7];
  *(v0 + 560) = v17;
  *(v0 + 568) = (v13 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v15, 0, 1, v12);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v15, &unk_1007809F0);
  v18 = v13[6];
  *(v0 + 576) = v18;
  *(v0 + 584) = (v13 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v14, 1, v12) == 1)
  {
    v19 = *(v0 + 520);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    sub_1000032A8(*(v0 + 464), &unk_1007809F0);
    v22 = type metadata accessor for MarketplaceKitError();
    sub_10033B0E4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:), v22);
    swift_willThrow();
    (*(v20 + 8))(v19, v21);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v2(*(v0 + 504), *(v0 + 464), *(v0 + 480));
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 264) = -1;
    v25 = swift_task_alloc();
    *(v0 + 592) = v25;
    *v25 = v0;
    v25[1] = sub_100339038;
    v26 = *(v0 + 504);

    return sub_10038FFA4(v26, 0, v0 + 224, 0, 1);
  }
}

uint64_t sub_100339038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[75] = a1;
  v5[76] = a2;
  v5[77] = a3;
  v5[78] = v3;

  sub_1000032A8((v5 + 28), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_10033969C;
  }

  else
  {
    v6 = sub_100339170;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100339170()
{
  if ([*(v0 + 616) statusCode] != 200)
  {
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);
    v20 = *(v0 + 600);
    v21 = *(v0 + 520);
    v22 = *(v0 + 504);
    v24 = *(v0 + 480);
    v23 = *(v0 + 488);
    v25 = type metadata accessor for MarketplaceKitError();
    sub_10033B0E4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v27 = v29;
    v28 = &enum case for MarketplaceKitError.invalidAlternativeDistributionPackageSignature(_:);
    goto LABEL_7;
  }

  v1 = *(v0 + 392);
  static Logger.install.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Received signature data", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v36 = *(v0 + 576);
  v35 = *(v0 + 560);
  v9 = *(v0 + 544);
  v10 = *(v0 + 520);
  v11 = *(v0 + 480);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v14 = *(v0 + 440);
  v15 = *(v0 + 400);
  v16 = *(v0 + 408);

  v17 = *(v16 + 8);
  *(v0 + 632) = v17;
  *(v0 + 640) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v15);
  v9(v12, v10, v11);
  v35(v12, 0, 1, v11);
  URL.init(string:relativeTo:)();
  sub_1000032A8(v12, &unk_1007809F0);
  if (v36(v13, 1, v11) == 1)
  {
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);
    v20 = *(v0 + 600);
    v21 = *(v0 + 520);
    v22 = *(v0 + 504);
    v24 = *(v0 + 480);
    v23 = *(v0 + 488);
    sub_1000032A8(*(v0 + 448), &unk_1007809F0);
    v25 = type metadata accessor for MarketplaceKitError();
    sub_10033B0E4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v27 = v26;
    v28 = &enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:);
LABEL_7:
    (*(*(v25 - 8) + 104))(v27, *v28, v25);
    swift_willThrow();

    sub_100007158(v20, v19);
    v30 = *(v23 + 8);
    v30(v22, v24);
    v30(v21, v24);

    v31 = *(v0 + 8);

    return v31();
  }

  (*(v0 + 528))(*(v0 + 496), *(v0 + 448), *(v0 + 480));
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  *(v0 + 312) = -1;
  v33 = swift_task_alloc();
  *(v0 + 648) = v33;
  *v33 = v0;
  v33[1] = sub_1003397D0;
  v34 = *(v0 + 496);

  return sub_10038FFA4(v34, 0, v0 + 272, 0, 1);
}

uint64_t sub_10033969C()
{
  v1 = v0[65];
  v2 = v0[60];
  v3 = *(v0[61] + 8);
  v3(v0[63], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003397D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[82] = a1;
  v5[83] = a2;
  v5[84] = a3;
  v5[85] = v3;

  sub_1000032A8((v5 + 34), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_10033A3C0;
  }

  else
  {
    v6 = sub_100339908;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100339908()
{
  v122 = v0;
  if ([*(v0 + 672) statusCode] != 200)
  {
    v32 = *(v0 + 672);
    v33 = *(v0 + 664);
    v34 = *(v0 + 656);
    v35 = *(v0 + 616);
    v36 = *(v0 + 600);
    v104 = *(v0 + 504);
    v106 = *(v0 + 520);
    v99 = *(v0 + 608);
    v101 = *(v0 + 496);
    v38 = *(v0 + 480);
    v37 = *(v0 + 488);
    v39 = type metadata accessor for MarketplaceKitError();
    sub_10033B0E4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for MarketplaceKitError.invalidManifest(_:), v39);
    swift_willThrow();

    sub_100007158(v34, v33);
    sub_100007158(v36, v99);
    v41 = *(v37 + 8);
    v41(v101, v38);
    v41(v104, v38);
    v42 = v106;
    v43 = v38;
LABEL_11:
    v41(v42, v43);

    v53 = *(v0 + 8);
    goto LABEL_12;
  }

  v1 = *(v0 + 392);
  static Logger.install.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Received manifest data", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = *(v0 + 680);
  v10 = *(v0 + 632);
  v11 = *(v0 + 608);
  v12 = *(v0 + 600);
  v13 = *(v0 + 432);
  v14 = *(v0 + 400);

  v10(v13, v14);
  type metadata accessor for PackageValidator();
  swift_allocObject();
  sub_10020ABFC(v12, v11);
  PackageValidator.init(signatureData:requireTrust:)();
  if (v9)
  {
    v15 = *(v0 + 392);
    static Logger.install.getter();
    v16 = v15;
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 632);
    v21 = *(v0 + 416);
    v22 = *(v0 + 400);
    if (v19)
    {
      v108 = *(v0 + 632);
      v23 = *(v0 + 392);
      v103 = *(v0 + 416);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v109 = v98;
      *v24 = 138412546;
      *(v24 + 4) = v23;
      *v25 = v23;
      *(v24 + 12) = 2082;
      swift_getErrorValue();
      v96 = v22;
      v26 = *(*(v0 + 328) - 8);
      swift_task_alloc();
      (*(v26 + 16))();
      v27 = v23;
      v28 = String.init<A>(describing:)();
      v30 = v29;

      v31 = sub_1002346CC(v28, v30, &v109);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Error validating ADP signature: %{public}s", v24, 0x16u);
      sub_1000032A8(v25, &qword_10077F920);

      sub_10000710C(v98);

      v108(v103, v96);
    }

    else
    {

      v20(v21, v22);
    }

    v44 = *(v0 + 672);
    v45 = *(v0 + 664);
    v46 = *(v0 + 656);
    v47 = *(v0 + 616);
    v48 = *(v0 + 600);
    v102 = *(v0 + 504);
    v105 = *(v0 + 520);
    v97 = *(v0 + 608);
    v100 = *(v0 + 496);
    v50 = *(v0 + 480);
    v49 = *(v0 + 488);
    v51 = type metadata accessor for MarketplaceKitError();
    sub_10033B0E4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageSignature(_:), v51);
    swift_willThrow();

    sub_100007158(v46, v45);

    sub_100007158(v48, v97);
    v41 = *(v49 + 8);
    v41(v100, v50);
    v41(v102, v50);
    v42 = v105;
    v43 = v50;
    goto LABEL_11;
  }

  dispatch thunk of PackageValidator.validateResource(_:withData:)();
  v55 = *(v0 + 392);
  static Logger.install.getter();
  v56 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 392);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v59;
    *v61 = v59;
    v62 = v59;
    _os_log_impl(&_mh_execute_header, v57, v58, "[%@] ADP signature validated successfully", v60, 0xCu);
    sub_1000032A8(v61, &qword_10077F920);
  }

  v63 = *(v0 + 632);
  v64 = *(v0 + 488);
  v65 = *(v0 + 424);
  v66 = *(v0 + 400);

  v63(v65, v66);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10033B044();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v67 = (v64 + 8);
  v68 = *(v0 + 672);
  v69 = *(v0 + 664);
  v70 = *(v0 + 656);
  v107 = *(v0 + 608);
  v71 = *(v0 + 600);
  v95 = *(v0 + 528);
  v94 = *(v0 + 520);
  v91 = *(v0 + 504);
  v72 = *(v0 + 496);
  v73 = *(v0 + 480);
  v92 = *(v0 + 376);
  v93 = *(v0 + 384);
  v74 = *(v0 + 352);

  sub_100007158(v70, v69);

  sub_100007158(v71, v107);
  v75 = *v67;
  (*v67)(v72, v73);
  v75(v91, v73);
  v76 = *(v0 + 192);
  v119 = *(v0 + 176);
  v120 = v76;
  v121 = *(v0 + 208);
  v77 = *(v0 + 128);
  v115 = *(v0 + 112);
  v116 = v77;
  v78 = *(v0 + 160);
  v117 = *(v0 + 144);
  v118 = v78;
  v79 = *(v0 + 64);
  v111 = *(v0 + 48);
  v112 = v79;
  v80 = *(v0 + 96);
  v113 = *(v0 + 80);
  v114 = v80;
  v81 = *(v0 + 32);
  v109 = *(v0 + 16);
  v110 = v81;
  v95(v74, v94, v73);
  v82 = type metadata accessor for ADP();
  v83 = (v74 + *(v82 + 20));
  *v83 = v92;
  v83[1] = v93;
  v84 = (v74 + *(v82 + 24));
  v85 = v120;
  v84[10] = v119;
  v84[11] = v85;
  v84[12] = v121;
  v86 = v116;
  v84[6] = v115;
  v84[7] = v86;
  v87 = v118;
  v84[8] = v117;
  v84[9] = v87;
  v88 = v112;
  v84[2] = v111;
  v84[3] = v88;
  v89 = v114;
  v84[4] = v113;
  v84[5] = v89;
  v90 = v110;
  *v84 = v109;
  v84[1] = v90;

  v53 = *(v0 + 8);
LABEL_12:

  return v53();
}

uint64_t sub_10033A3C0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 520);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);

  sub_100007158(v2, v1);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  v8(v3, v6);

  v9 = *(v0 + 8);

  return v9();
}

void sub_10033A528(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (2)
    {
      v7 = (v6 + (v5 << 6));
      v9 = v7[2];
      v8 = v7[3];
      v10 = v7[1];
      v23[0] = *v7;
      v23[1] = v10;
      v23[2] = v9;
      v23[3] = v8;
      ++v5;
      v11 = (v10 + 40);
      v12 = *(v10 + 16) + 1;
      v20 = v10;
      v21 = v23[0];
      v18 = v8;
      v19 = v9;
      while (--v12)
      {
        if (*(v11 - 1) == 0x6173726576696E75 && *v11 == 0xE90000000000006CLL)
        {
          sub_100223458(v23, v22);
          v17 = v20;
          v16 = v21;
          v15 = v18;
          v14 = v19;
          goto LABEL_14;
        }

        v11 += 7;
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          sub_100223458(v23, v22);
          v15 = v18;
          v14 = v19;
          v17 = v20;
          v16 = v21;
          goto LABEL_14;
        }
      }

      if (v5 != v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0uLL;
  v17 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
LABEL_14:
  *a1 = v16;
  a1[1] = v17;
  a1[2] = v14;
  a1[3] = v15;
}

void sub_10033A65C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  sub_1006258D8();
  if (qword_10077E5A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1002710CC(v3, qword_1007B88E8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;

    *(v6 + 4) = sub_1002346CC(v2, v1, &v18);
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity associated with %{public}s", v6, 0xCu);
    sub_10000710C(v7);
  }

  else
  {
  }

  sub_10033886C();
  sub_10033886C();
  v18 = v2;
  v19 = v1;

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v13 = v18;
  v12 = v19;
  sub_1006258D8();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136446210;

    *(v16 + 4) = sub_1002346CC(v13, v12, &v18);
    _os_log_impl(&_mh_execute_header, v14, v15, "Activity associated with %{public}s", v16, 0xCu);
    sub_10000710C(v17);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

unint64_t sub_10033A970(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_10033AA60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  result = sub_10033A970(58, 0xE100000000000000, a1, a2);
  v7 = 0uLL;
  if (v8)
  {
    v9 = 0;
    v10 = 0uLL;
  }

  else
  {
    v11 = String.subscript.getter();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (sub_10033AE8C(49, 0xE100000000000000, v11, v12, v14, v16))
    {

      v18 = String.index(after:)();
      v19 = sub_1003384EC(v18, v4, v3);
      v21 = v20;

      v22 = v21 >> 14;
      if (v19 >> 14 != v21 >> 14)
      {
        v23 = v19 >> 14;
        while (Substring.subscript.getter() != 47 || v24 != 0xE100000000000000)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_16;
          }

          v23 = Substring.index(after:)() >> 14;
          if (v23 == v22)
          {
            goto LABEL_10;
          }
        }

LABEL_16:
        if (v23 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          Substring.subscript.getter();
          v4 = static String._fromSubstring(_:)();
          v3 = v30;

          result = Substring.index(after:)();
          if (v22 >= result >> 14)
          {
            Substring.subscript.getter();

            v31 = static String._fromSubstring(_:)();
            v33 = v32;

            result = sub_10051BCFC(v31, v33, v34);
            v7 = v34[0];
            v10 = v34[1];
            v9 = v35;
            goto LABEL_19;
          }
        }

        __break(1u);
        return result;
      }

LABEL_10:
      v4 = static String._fromSubstring(_:)();
      v3 = v26;
    }

    else
    {
      v27 = sub_10033AE8C(48, 0xE100000000000000, v11, v13, v15, v17);

      if ((v27 & 1) == 0)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v28 = String.index(after:)();
      sub_1003384EC(v28, v4, v3);

      v4 = static String._fromSubstring(_:)();
      v3 = v29;
    }

    v9 = 0;
    v10 = 0uLL;
    v7 = 0uLL;
  }

LABEL_19:
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = v7;
  *(a3 + 32) = v10;
  *(a3 + 48) = v9;
  return result;
}

id sub_10033ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 fetchingPlaceholder:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10033AE8C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_10033AEF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (result)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = xmmword_10069E890;
  v7 = 0uLL;
  if (a3)
  {
    v8 = 0uLL;
    if (*(a3 + 16))
    {

      result = sub_10033D260(v5, 0, 0, a2, a3, v11);
      v7 = v11[0];
      v6 = v11[1];
      v8 = v11[2];
    }
  }

  else
  {
    v8 = 0uLL;
  }

  *a4 = v7;
  a4[1] = v6;
  a4[2] = v8;
  return result;
}

unint64_t sub_10033B044()
{
  result = qword_100780BB0;
  if (!qword_100780BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780BB0);
  }

  return result;
}

uint64_t type metadata accessor for ADP()
{
  result = qword_100780C30;
  if (!qword_100780C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033B0E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10033B12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100780BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033B19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100780BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033B234()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10033B2BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10033B318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10033B388(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_1001F0C48(&qword_100780D50);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_1001F0C48(&qword_100780D58);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_1001F0C48(&qword_100780D60);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_1001F0C48(&qword_100780D68);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_1001F0C48(&qword_100780D70);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_100006D8C(a1, a1[3]);
  sub_10033E558();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_10033E600();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_10033E5AC();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_10033E654();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_10033E6A8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10033B7C4()
{
  v1 = 3499117;
  v2 = 0x363532616873;
  if (*v0 != 2)
  {
    v2 = 0x323135616873;
  }

  if (*v0)
  {
    v1 = 828467315;
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

uint64_t sub_10033B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10033D500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033B850(uint64_t a1)
{
  v2 = sub_10033E558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033B88C(uint64_t a1)
{
  v2 = sub_10033E558();

  return CodingKey.debugDescription.getter(a1, v2);
}