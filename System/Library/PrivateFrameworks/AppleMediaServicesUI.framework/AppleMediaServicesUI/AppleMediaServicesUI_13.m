uint64_t sub_10012F5D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = *(*(sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10012F67C, 0, 0);
}

uint64_t sub_10012F67C()
{
  sub_100003D28();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_10012E384(*(v0 + 80) & 1, v1);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v9;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_10012F794;
  sub_1000060D0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_10012F794()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1000060D0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10012F898()
{
  sub_100004768();
  sub_100009FB0(*(v0 + 48), &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();

  return v1();
}

uint64_t sub_10012F910()
{
  sub_100004768();
  v2 = v0[6];
  v1 = v0[7];

  sub_100009FB0(v2, &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();
  v4 = v0[9];

  return v3();
}

id sub_10012F9D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v68 = a4;
  v69 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  v62 = *(v69 - 8);
  v60[1] = *(v62 + 64);
  __chkstk_darwin(v69);
  v61 = v60 - v9;
  v10 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v66 = v60 - v12;
  v13 = &unk_100271EA0;
  v14 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v67 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v60 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v65 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v73 = v60 - v25;
  __chkstk_darwin(v24);
  v70 = v60 - v26;
  v71 = v19;
  v72 = (v27 + 32);
  v74 = (v27 + 8);
  v28 = (v27 + 8);
  while (*(a1 + 56) == 2 && (*(a1 + 48) - 1) <= 1)
  {
    sub_1000A46BC(a2, v19, v13, &qword_1001E77F0);
    if (sub_100009F34(v19, 1, v20) == 1)
    {
      sub_100009FB0(v19, v13, &qword_1001E77F0);
      [a3 wait];
    }

    else
    {
      v29 = v70;
      (*v72)(v70, v19, v20);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [a3 waitUntilDate:isa];

      v31 = v73;
      static Date.now.getter();
      v75 = static Date.> infix(_:_:)();
      v32 = v13;
      v33 = a2;
      v34 = a1;
      v35 = a3;
      v36 = *v28;
      v37 = v31;
      v19 = v71;
      (*v28)(v37, v20);
      v36(v29, v20);
      a3 = v35;
      a1 = v34;
      a2 = v33;
      v13 = v32;
      if (v75)
      {
        break;
      }
    }
  }

  v38 = v67;
  sub_1000A46BC(a2, v67, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v38, 1, v20) == 1)
  {
    sub_100009FB0(v38, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v39 = v65;
    (*v72)(v65, v38, v20);
    v40 = v73;
    static Date.now.getter();
    v41 = static Date.> infix(_:_:)();
    v42 = *v74;
    (*v74)(v40, v20);
    if (v41)
    {
      sub_1001354A0();
      v43 = swift_allocError();
      *v44 = 1;
      v45 = *(a1 + 48);
      *(a1 + 48) = v43;
      LOBYTE(v44) = *(a1 + 56);
      *(a1 + 56) = 0;
      sub_100135394(v45, v44);
      v46 = swift_allocError();
      *v47 = 1;
      v76 = v46;
      CheckedContinuation.resume(throwing:)();
      [a3 signal];
      return v42(v39, v20);
    }

    v42(v39, v20);
  }

  v49 = *(a1 + 48);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      *(a1 + 48) = 2;
      *(a1 + 56) = 2;
      v50 = v66;
      static TaskPriority.background.getter();
      v51 = type metadata accessor for TaskPriority();
      sub_10000A7C0(v50, 0, 1, v51);
      v52 = v61;
      v53 = v62;
      v54 = v69;
      (*(v62 + 16))(v61, v68, v69);
      v55 = (*(v53 + 80) + 72) & ~*(v53 + 80);
      v56 = swift_allocObject();
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      v57 = v64;
      *(v56 + 4) = v63;
      *(v56 + 5) = v57;
      *(v56 + 6) = v49;
      *(v56 + 7) = a3;
      *(v56 + 8) = a1;
      (*(v53 + 32))(&v56[v55], v52, v54);

      v58 = a3;

      v59 = v66;
      sub_10012F334(0, 0, v66, &unk_1001ED738, v56);

      return sub_100009FB0(v59, &unk_10026FEC0, &qword_1001E6280);
    }

    else
    {
      CheckedContinuation.resume(returning:)();
      return [a3 signal];
    }
  }

  else
  {
    v76 = *(a1 + 48);
    sub_1001354F4(v49, 0);
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    [a3 signal];
    return sub_100135394(v49, 0);
  }
}

uint64_t sub_100130088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v14;
  v8[3] = a7;
  v8[2] = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_100130190;

  return v12(v8 + 2);
}

uint64_t sub_100130190()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100130288()
{
  sub_1000061B4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  sub_10012F2BC(sub_1001358E4);

  sub_100002D8C();

  return v4();
}

uint64_t sub_100130324()
{
  sub_100003D28();
  v4 = sub_100058314();
  v4[2] = v3;
  v4[3] = v0;
  v4[4] = v2;
  v4[5] = v1;
  sub_10012F2BC(sub_1001358B8);

  sub_100002D8C();

  return v5();
}

id sub_1001303C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = 2;
  sub_100135394(v4, v5);
  sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  CheckedContinuation.resume(returning:)();
  return [a3 signal];
}

id sub_100130440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *(a1 + 48);
  *(a1 + 48) = a2;
  v10 = *(a1 + 56);
  *(a1 + 56) = 0;
  swift_errorRetain();
  sub_100135394(v9, v10);
  swift_errorRetain();
  sub_10007B9A4(a5, a6);
  CheckedContinuation.resume(throwing:)();
  return [a4 signal];
}

id sub_1001304F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection;
  sub_10007B9A4(&qword_10026DFC0, &qword_1001ED748);
  swift_allocObject();
  *&v6[v13] = sub_10012E324(0, 1);
  v14 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_database];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_token];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_userId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for JSOnDeviceStorageDatabase();
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_1001305D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection);

  v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_database + 8);

  v3 = *(v0 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_token + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_userId + 8);
}

id sub_100130644()
{
  v1 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v2 = sub_100003D10(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = *&v0[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection];
  v8 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_1000E349C();

  v10 = type metadata accessor for JSOnDeviceStorageDatabase();
  v12.receiver = v0;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10013074C()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100130810;

  return sub_10012F5D8(0, 1, &unk_1001ED718, 0);
}

uint64_t sub_100130810()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100002D8C();

    return v12();
  }
}

uint64_t sub_100130924()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v1 = v0[11];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_10000620C();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(sub_100003BB4() + 16) = xmmword_1001E5F70;
  LogInterpolation.init(stringLiteral:)();
  sub_100022264();
  v5 = v0[6];
  v6 = v0[7];
  v0[5] = v6;
  sub_100017E64(v0 + 2);
  sub_1000047A4(v6);
  (*(v7 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8);

  sub_100002D8C();

  return v9();
}

uint64_t sub_100130AD0(uint64_t *a1)
{
  v3 = type metadata accessor for OnDeviceStorageError();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[4] = v6;
  v7 = *a1;
  v8 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
  v9 = swift_task_alloc();
  v1[5] = v9;
  *v9 = v1;
  v9[1] = sub_100130BCC;

  return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v6);
}

uint64_t sub_100130BCC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    sub_100002D8C();

    return v13();
  }
}

uint64_t sub_100130CE8()
{
  sub_1000061B4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1000053E4();
  sub_100134DD4(v4, v5);
  sub_100007544();
  (*(v2 + 32))(v6, v1, v3);

  sub_100002D8C();

  return v7();
}

uint64_t sub_100130E44()
{
  *(v1 + 16) = v0;
  sub_1000060D0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100130E70()
{
  sub_100003D28();
  v1 = v0[2];
  v0[3] = *&v1[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;

  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100130F7C;

  return sub_10012E3E8(0x3FF0000000000000, 0, &unk_1001ED6C8, v2);
}

uint64_t sub_100130F7C()
{
  sub_1000061B4();
  v3 = v2;
  sub_1000056A8();
  v5 = v4;
  sub_100002D98();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100002D20();
  *v10 = v9;
  v5[6] = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v5[3];
    v14 = v5[4];

    v16 = *(v9 + 8);

    return v16(v3);
  }
}

uint64_t sub_1001310C0()
{
  sub_100004768();
  v2 = v0[3];
  v1 = v0[4];

  sub_100002D8C();
  v4 = v0[6];

  return v3();
}

uint64_t sub_100131124(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for OnDeviceStorageError();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001311E4, 0, 0);
}

uint64_t sub_1001311E4()
{
  sub_100003D48();
  v1 = v0[11];
  type metadata accessor for Connection();
  v2 = *(v1 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_token);
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_token + 8);
  v4 = v1 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_userId;
  v5 = *(v1 + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_userId);
  v6 = *(v4 + 8);

  v0[15] = Connection.__allocating_init(token:userId:)();
  v7 = _s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKFTu[1];
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10013144C;
  v9 = v0[14];
  sub_100008FF4();

  return __s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF();
}

uint64_t sub_10013144C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100131548()
{
  sub_100004768();
  v1 = *(v0 + 112);
  **(v0 + 80) = *(v0 + 120);

  sub_100002D8C();

  return v2();
}

void sub_1001315AC()
{
  sub_100003D48();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_1000053E4();
  sub_100134DD4(v5, v6);
  sub_100007544();
  (*(v4 + 32))(v7, v2, v3);

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v8 = v0[14];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = sub_10000620C();
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  sub_100023E44();
  v12 = sub_100003BB4();
  sub_10000A748(v12, xmmword_1001E5F70);
  sub_1000159DC();
  sub_100022264();
  v13 = v0[6];
  v0[5] = v0[7];
  sub_100017E64(v0 + 2);
  sub_1000059C4();
  v15 = *(v14 + 16);
  sub_10000AB04();
  v16();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.error.getter();
  sub_1000036B0(v17);

  swift_willThrow();

  sub_100002D8C();
  sub_100008FF4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001317FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10000876C();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v27 = *(v14 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v32 = type metadata accessor for JSOnDeviceStorageDatabase();
  v31[0] = v3;
  v28 = v3;

  sub_10005ADF4();

  sub_100002C00(v31);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6E69747265736E49;
  v15._object = 0xEA00000000002067;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v16 = *(a3 + 16);
  v32 = &type metadata for Int;
  v31[0] = v16;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v31, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 0x20297328776F7220;
  v17._object = 0xED0000206F746E69;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v32 = &type metadata for String;
  v31[0] = a1;
  v31[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v31, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0x656C62617420;
  v18._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.default.getter();
  sub_1000036B0(v19);

  sub_100007600();
  v20 = swift_allocObject();
  v20[2] = v28;
  v20[3] = v10;
  v20[4] = v12;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v21 = v28;

  sub_10000B3C0();
  v25 = sub_10011F39C(v22, v23, v24);

  return v25;
}

uint64_t sub_100131AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a8;
  v35 = a6;
  v36 = a3;
  v37 = a5;
  v33 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v34 = &v30 - v17;
  v19 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v10 + 16);
  v21(v14, v33, v9);
  v21(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v9);
  v22 = *(v10 + 80);
  v23 = (v22 + 80) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v27 = v37;
  v26 = v38;
  *(v25 + 4) = v20;
  *(v25 + 5) = v27;
  *(v25 + 6) = v35;
  *(v25 + 7) = v26;
  *(v25 + 8) = v39;
  *(v25 + 9) = a9;
  v28 = *(v10 + 32);
  v28(&v25[v23], v31, v9);
  v28(&v25[v24], v32, v9);

  sub_1000E349C();
}

uint64_t sub_100131D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = v23;
  *(v8 + 288) = v22;
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 256) = a5;
  *(v8 + 264) = a6;
  *(v8 + 248) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 312) = v9;
  v10 = *(v9 - 8);
  *(v8 + 320) = v10;
  *(v8 + 328) = *(v10 + 64);
  *(v8 + 336) = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceStorageError();
  *(v8 + 344) = v11;
  v12 = *(v11 - 8);
  *(v8 + 352) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v14 = type metadata accessor for Insert();
  *(v8 + 368) = v14;
  v15 = *(v14 - 8);
  *(v8 + 376) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v17 = type metadata accessor for Table();
  *(v8 + 392) = v17;
  v18 = *(v17 - 8);
  *(v8 + 400) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100131F78, 0, 0);
}

uint64_t sub_100131F78()
{
  sub_100003D28();
  v1 = v0[31];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[52] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[53] = v3;
    *v3 = v0;
    v3[1] = sub_10013214C;

    return sub_100130E44();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v6 = v0[32];
    v5 = v0[33];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_10000C3AC();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    sub_100023E44();
    v10 = sub_100135920();
    sub_10000A748(v10, xmmword_1001E5F70);
    type metadata accessor for JSOnDeviceStorageDatabase();
    sub_10001CD9C();
    static LogInterpolation.prefix<A>(_:_:)();
    sub_10001823C();
    v11 = static os_log_type_t.error.getter();
    sub_1000036B0(v11);

    sub_10000AFE4();

    sub_100002D8C();

    return v12();
  }
}

uint64_t sub_10013214C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 424);
  *v3 = *v1;
  *(v2 + 432) = v6;
  *(v2 + 440) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10013224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[55];
  v16 = v14[51];
  v18 = v14[48];
  v17 = v14[49];
  v20 = v14[35];
  v19 = v14[36];
  v21 = v14[34];
  v22 = (v14[52] + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_database);
  v23 = *v22;
  v24 = v22[1];

  Table.init(_:database:)();
  sub_10012E1E8(v19, sub_10009BB44, &qword_10026A000, qword_1001E7570);
  sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table);
  QueryType.insertMany(_:)();
  if (v15)
  {
    v25 = v14[54];
    (*(v14[50] + 8))(v14[51], v14[49]);

    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v26 = v14[52];
    v28 = v14[32];
    v27 = v14[33];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v29);
    v31 = *(v30 + 72);
    sub_10000760C();
    v32 = swift_allocObject();
    v14[15] = sub_10001B244(v32, xmmword_1001E5F60);
    v14[12] = v26;
    v33 = v26;
    sub_10000805C();
    sub_100002C00(v14 + 12);
    sub_100006514();
    sub_100003BA4();
    swift_getErrorValue();
    sub_100003F80();
    sub_1000059C4();
    v35 = *(v34 + 16);
    sub_10000AB04();
    v36();
    static LogInterpolation.safe(_:)();
    sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
    v37 = static os_log_type_t.error.getter();
    sub_1000036B0(v37);

    sub_10000AC5C("insert(_:_:)");
    v38 = v14[5];
    v39 = v14[52];
    if (v38)
    {
      v41 = v14[41];
      v40 = v14[42];
      v42 = v14[39];
      v43 = v14[40];
      v44 = sub_10001BDB8();
      a9 = sub_100003CA8(v44, v38);
      v45 = sub_1000084A8(v43);
      v46(v45);
      v47 = (v41 + ((*(v43 + 80) + 16) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = sub_100135908();
      v49 = *(v43 + 32);
      sub_10003D32C();
      v50();
      *(v48 + v47) = v15;
      swift_errorRetain();
      sub_10000B9B8();
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(v14 + 2);
    }

    else
    {

      sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
    }

    sub_10000AFE4();

    sub_100002D8C();
    sub_10000A820();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }

  else
  {

    v51 = _s15OnDeviceStorage10ConnectionC6insertys5Int64V0abC4Core6InsertVYaAA0abC5ErrorOYKFTu[1];
    v52 = swift_task_alloc();
    v14[56] = v52;
    *v52 = v14;
    v52[1] = sub_100132650;
    v53 = v14[54];
    v54 = v14[48];
    v55 = v14[45];
    sub_10000A820();

    return __s15OnDeviceStorage10ConnectionC6insertys5Int64V0abC4Core6InsertVYaAA0abC5ErrorOYKF(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100132650()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  v4 = *(v3 + 448);
  *v2 = *v0;
  *(v1 + 456) = v5;

  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100132750()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v1 = v0[52];
  v3 = v0[32];
  v2 = v0[33];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = sub_10000C3AC();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  sub_100023E44();
  v7 = sub_100135920();
  sub_10000A748(v7, xmmword_1001E5F70);
  v0[23] = type metadata accessor for JSOnDeviceStorageDatabase();
  v0[20] = v1;
  v8 = v1;
  sub_10001CD9C();
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 20);
  sub_1000293FC();
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9);

  sub_10000B3C0();
  sub_10011F068(v10, v11, v12, v13);
  v14 = v0[10];
  if (v14)
  {
    v35 = v0[57];
    v36 = v0[54];
    v15 = v0[50];
    v40 = v0[49];
    v41 = v0[51];
    v16 = v0[47];
    v38 = v0[52];
    v39 = v0[48];
    v37 = v0[46];
    v18 = v0[41];
    v17 = v0[42];
    v20 = v0[39];
    v19 = v0[40];
    v21 = v0[37];
    v34 = v0[11];
    sub_100003CA8(v0 + 7, v14);
    (*(v19 + 16))(v17, v21, v20);
    v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v23 = swift_allocObject();
    (*(v19 + 32))(v23 + v22, v17, v20);
    *(v23 + ((v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v16 + 8))(v39, v37);
    (*(v15 + 8))(v41, v40);
    sub_100002C00(v0 + 7);
  }

  else
  {
    v24 = v0[54];
    v25 = v0[51];
    v26 = v0[52];
    v27 = v0[49];
    v28 = v0[50];
    v30 = v0[47];
    v29 = v0[48];
    v31 = v0[46];

    (*(v30 + 8))(v29, v31);
    (*(v28 + 8))(v25, v27);
    sub_100009FB0((v0 + 7), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();

  return v32();
}

uint64_t sub_100132A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v16 = v14[55];
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v17 = v14[52];
  v19 = v14[32];
  v18 = v14[33];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = sub_10000620C();
  sub_100002CFC(v20);
  v22 = *(v21 + 72);
  sub_10000760C();
  v23 = swift_allocObject();
  v14[15] = sub_10001B244(v23, xmmword_1001E5F60);
  v14[12] = v17;
  v24 = v17;
  sub_10000805C();
  sub_100002C00(v14 + 12);
  sub_100006514();
  sub_100003BA4();
  swift_getErrorValue();
  sub_100003F80();
  sub_1000059C4();
  v26 = *(v25 + 16);
  sub_10000AB04();
  v27();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
  v28 = static os_log_type_t.error.getter();
  sub_1000036B0(v28);

  sub_10000AC5C("insert(_:_:)");
  v29 = v14[52];
  if (v14[5])
  {
    v31 = v14[41];
    v30 = v14[42];
    v32 = v14[39];
    v33 = v14[40];
    v34 = v14[38];
    sub_100015BDC();
    v35 = sub_1000084A8(v33);
    v36(v35);
    sub_10003AF00();
    v37 = sub_100135908();
    v38 = *(v33 + 32);
    sub_10003D32C();
    v39();
    *(v37 + v31) = v15;
    swift_errorRetain();
    sub_10000B9B8();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();
  sub_10000A820();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100132CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[54];
  v16 = v14[50];
  v60 = v14[51];
  v18 = v14[48];
  v17 = v14[49];
  v20 = v14[46];
  v19 = v14[47];
  v21 = v14[44];
  v22 = v14[45];
  v23 = v14[43];
  sub_1000053E4();
  sub_100134DD4(v24, v25);
  v61 = sub_100007544();
  (*(v21 + 32))(v26, v22, v23);

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v60, v17);
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v27 = v14[52];
  v29 = v14[32];
  v28 = v14[33];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v30 = sub_10000620C();
  sub_100002CFC(v30);
  v32 = *(v31 + 72);
  sub_1000056F8();
  *(sub_100003BB4() + 16) = xmmword_1001E5F60;
  v14[15] = type metadata accessor for JSOnDeviceStorageDatabase();
  v14[12] = v27;
  v33 = v27;
  sub_10000805C();
  sub_100002C00(v14 + 12);
  sub_100006514();
  sub_100003BA4();
  swift_getErrorValue();
  sub_100003F80();
  sub_1000059C4();
  v35 = *(v34 + 16);
  sub_10000AB04();
  v36();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
  v37 = static os_log_type_t.error.getter();
  sub_1000036B0(v37);

  sub_10000AC5C("insert(_:_:)");
  v38 = v14[5];
  v39 = v14[52];
  if (v38)
  {
    v40 = v14[41];
    v41 = v14[42];
    v42 = v14[39];
    v43 = v14[40];
    v44 = sub_10001BDB8();
    a9 = sub_100003CA8(v44, v38);
    v45 = sub_1000084A8(v43);
    v46(v45);
    v47 = (v40 + ((*(v43 + 80) + 16) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = *(v43 + 32);
    sub_10003D32C();
    v50();
    *(v48 + v47) = v61;
    swift_errorRetain();
    sub_10000B9B8();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();
  sub_10000A820();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, v61, a12, a13, a14);
}

uint64_t sub_100133030(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&qword_10026DFA0, &qword_1001ED6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x4449776F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a2;
  v5 = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 56) = sub_10007B9A4(&qword_10026DFA8, &unk_1001ED6B0);
  *(v3 + 32) = v5;
  sub_10005C768(v3);
}

uint64_t sub_1001331C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10000876C();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v35 = type metadata accessor for JSOnDeviceStorageDatabase();
  v32 = v3;
  v18 = v3;

  sub_10005ADF4();

  sub_100002C00(&v32);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD000000000000016;
  v19._object = 0x80000001001FC7A0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v35 = &type metadata for String;
  v32 = a1;
  v33 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v32, &qword_10026D350, &qword_1001E6050);
  v20._object = 0x80000001001FC7C0;
  v20._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  if (a3)
  {
    v21 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v22 = a3;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v22;
  v35 = v21;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v32, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24);

  sub_100007600();
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v12;
  v25[4] = v14;
  v25[5] = a1;
  v25[6] = a2;
  v25[7] = a3;
  v26 = v18;

  sub_10000B3C0();
  v30 = sub_10011F39C(v27, v28, v29);

  return v30;
}

uint64_t sub_1001334C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a8;
  v35 = a6;
  v36 = a3;
  v37 = a5;
  v33 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v34 = &v30 - v17;
  v19 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v10 + 16);
  v21(v14, v33, v9);
  v21(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v9);
  v22 = *(v10 + 80);
  v23 = (v22 + 80) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v27 = v37;
  v26 = v38;
  *(v25 + 4) = v20;
  *(v25 + 5) = v27;
  *(v25 + 6) = v35;
  *(v25 + 7) = v26;
  *(v25 + 8) = v39;
  *(v25 + 9) = a9;
  v28 = *(v10 + 32);
  v28(&v25[v23], v31, v9);
  v28(&v25[v24], v32, v9);

  sub_1000E349C();
}

uint64_t sub_100133754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = v23;
  *(v8 + 376) = v22;
  *(v8 + 360) = a7;
  *(v8 + 368) = a8;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 336) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 400) = v9;
  v10 = *(v9 - 8);
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 + 64);
  *(v8 + 424) = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceStorageError();
  *(v8 + 432) = v11;
  v12 = *(v11 - 8);
  *(v8 + 440) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v14 = sub_10007B9A4(&qword_10026DF60, &qword_1001ED678);
  *(v8 + 456) = v14;
  v15 = *(v14 - 8);
  *(v8 + 464) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  v17 = type metadata accessor for Table();
  *(v8 + 480) = v17;
  v18 = *(v17 - 8);
  *(v8 + 488) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_100133968, 0, 0);
}

uint64_t sub_100133968()
{
  sub_100003D28();
  v1 = v0[42];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[64] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[65] = v3;
    *v3 = v0;
    v3[1] = sub_100133B44;

    return sub_100130E44();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v6 = v0[43];
    v5 = v0[44];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_10000C3AC();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    sub_100023E44();
    v10 = sub_100135920();
    sub_10000A748(v10, xmmword_1001E5F70);
    type metadata accessor for JSOnDeviceStorageDatabase();
    sub_10001CD9C();
    static LogInterpolation.prefix<A>(_:_:)();
    sub_10001823C();
    v11 = static os_log_type_t.error.getter();
    sub_1000036B0(v11);

    sub_10000725C();

    sub_100002D8C();

    return v12();
  }
}

uint64_t sub_100133B44()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 520);
  *v3 = *v1;
  *(v2 + 528) = v6;
  *(v2 + 536) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100133C48()
{
  sub_100003D48();
  v1 = *(v0 + 504);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = (*(v0 + 512) + OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_database);
  v6 = *v5;
  v7 = v5[1];

  Table.init(_:database:)();
  if (v3)
  {
    sub_100052D94(*(v0 + 376), (v0 + 232));
    if (*(v0 + 256))
    {
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 496);
        v9 = *(v0 + 504);
        v10 = *(v0 + 480);
        v11 = *(v0 + 488);
        v13 = *(v0 + 464);
        v12 = *(v0 + 472);
        v14 = *(v0 + 456);
        v15 = *(v0 + 312);
        v16 = *(v0 + 320);
        sub_100134EB4();
        ExpressionType.init(literal:)();
        sub_100134DD4(&qword_10026DF70, &type metadata accessor for Table);
        sub_10000AA08();
        SchemaType.select(_:)();
        *(v0 + 80) = v10;
        *(v0 + 88) = sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table);
        sub_100017E64((v0 + 56));
        QueryType.where(_:)();
        (*(v11 + 8))(v8, v10);
        (*(v13 + 8))(v12, v14);
        goto LABEL_7;
      }
    }

    else
    {
      sub_100009FB0(v0 + 232, &qword_10026D350, &qword_1001E6050);
    }
  }

  v17 = *(v0 + 504);
  *(v0 + 80) = *(v0 + 480);
  *(v0 + 88) = sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table);
  sub_100017E64((v0 + 56));
  sub_100134DD4(&qword_10026DF70, &type metadata accessor for Table);
  sub_10000AA08();
  SchemaType.select(_:)();
LABEL_7:
  v18 = _s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGAE9QueryType_pYaAA0abC5ErrorOYKFTu[1];
  v19 = swift_task_alloc();
  *(v0 + 544) = v19;
  *v19 = v0;
  v19[1] = sub_100133F30;
  v20 = *(v0 + 528);
  v21 = *(v0 + 448);
  sub_10000481C();

  return __s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGAE9QueryType_pYaAA0abC5ErrorOYKF();
}

uint64_t sub_100133F30()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  v4 = *(v3 + 544);
  *v2 = *v0;
  *(v1 + 552) = v5;

  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100134030()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v1 = v0[64];
  v3 = v0[43];
  v2 = v0[44];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = sub_10000C3AC();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  sub_100023E44();
  v7 = sub_100135920();
  sub_10000A748(v7, xmmword_1001E5F70);
  v0[28] = type metadata accessor for JSOnDeviceStorageDatabase();
  v0[25] = v1;
  v1;
  sub_10001CD9C();
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 25);
  sub_1000293FC();
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  sub_10000B3C0();
  v13 = sub_10011F068(v9, v10, v11, v12);
  v14 = v0[15];
  v15 = v0[69];
  v16 = v0[64];
  v17 = v0[61];
  if (v14)
  {
    v32 = v0[63];
    v33 = v0[64];
    v18 = v0[52];
    v19 = v0[53];
    v30 = v0[66];
    v31 = v0[60];
    v21 = v0[50];
    v20 = v0[51];
    v22 = v0[48];
    v29 = v0[16];
    sub_100003CA8(v0 + 12, v14);
    (*(v20 + 16))(v19, v22, v21);
    v23 = (v18 + ((*(v20 + 80) + 16) & ~*(v20 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = *(v20 + 32);
    sub_10000AB04();
    v26();
    *(v24 + v23) = v15;
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v17 + 8))(v32, v31);
    sub_100002C00(v0 + 7);
    sub_100002C00(v0 + 12);
  }

  else
  {
    (*(v17 + 8))(v0[63], v0[60], v13);

    sub_100002C00(v0 + 7);
    sub_100009FB0((v0 + 12), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000725C();

  sub_100002D8C();

  return v27();
}

uint64_t sub_10013431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[67];
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v16 = v14[64];
  v18 = v14[43];
  v17 = v14[44];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = sub_10000620C();
  sub_100002CFC(v19);
  v21 = *(v20 + 72);
  sub_10000760C();
  v22 = swift_allocObject();
  v14[20] = sub_10001B244(v22, xmmword_1001E5F60);
  v14[17] = v16;
  v23 = v16;
  sub_10001D754();
  sub_100002C00(v14 + 17);
  sub_100006514();
  sub_100016400();
  v24 = v14[36];
  v25 = v14[37];
  v14[24] = v25;
  sub_100017E64(v14 + 21);
  sub_1000059C4();
  v27 = *(v26 + 16);
  sub_10000AB04();
  v28();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 21), &qword_10026D350, &qword_1001E6050);
  v29 = static os_log_type_t.error.getter();
  sub_1000036B0(v29);

  sub_10000AC5C("select(_:_:)");
  v30 = v14[64];
  if (v14[5])
  {
    v32 = v14[52];
    v31 = v14[53];
    v33 = v14[50];
    v34 = v14[51];
    v35 = v14[49];
    sub_100015BDC();
    v36 = sub_1000084A8(v34);
    v37(v36);
    sub_10003AF00();
    v38 = sub_100135908();
    v39 = *(v34 + 32);
    sub_10003D32C();
    v40();
    *(v38 + v32) = v25;
    swift_errorRetain();
    sub_100009E8C();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000725C();

  sub_100002D8C();
  sub_10000A820();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100134588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[66];
  v16 = v14[63];
  v17 = v14[60];
  v18 = v14[61];
  v20 = v14[55];
  v19 = v14[56];
  v21 = v14[54];
  sub_1000053E4();
  sub_100134DD4(v22, v23);
  v24 = sub_100007544();
  (*(v20 + 32))(v25, v19, v21);

  (*(v18 + 8))(v16, v17);
  sub_100002C00(v14 + 7);
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v26 = v14[64];
  v28 = v14[43];
  v27 = v14[44];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v29 = sub_10000620C();
  sub_100002CFC(v29);
  v31 = *(v30 + 72);
  sub_10000760C();
  v32 = swift_allocObject();
  v14[20] = sub_10001B244(v32, xmmword_1001E5F60);
  v14[17] = v26;
  v33 = v26;
  sub_10001D754();
  sub_100002C00(v14 + 17);
  sub_100006514();
  sub_100016400();
  v34 = v14[36];
  v14[24] = v14[37];
  sub_100017E64(v14 + 21);
  sub_1000059C4();
  v36 = *(v35 + 16);
  sub_10000AB04();
  v37();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 21), &qword_10026D350, &qword_1001E6050);
  v38 = static os_log_type_t.error.getter();
  sub_1000036B0(v38);

  sub_10000AC5C("select(_:_:)");
  v39 = v14[64];
  if (v14[5])
  {
    v41 = v14[52];
    v40 = v14[53];
    v42 = v24;
    v44 = v14[50];
    v43 = v14[51];
    v45 = v14[49];
    sub_100015BDC();
    v46 = sub_1000084A8(v43);
    v47(v46);
    v48 = (v41 + ((*(v43 + 80) + 16) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = sub_100135908();
    v50 = *(v43 + 32);
    sub_10003D32C();
    v51();
    *(v49 + v48) = v42;
    swift_errorRetain();
    sub_100009E8C();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000725C();

  sub_100002D8C();
  sub_10000A820();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100134894(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for Row();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v8 = swift_allocObject();
  v28 = xmmword_1001E61B0;
  *(v8 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&qword_10026DF88, &qword_1001ED680);
  inited = swift_initStackObject();
  v10 = inited;
  *(inited + 16) = v28;
  *(inited + 32) = 1937207154;
  *(inited + 40) = 0xE400000000000000;
  v11 = *(a2 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v24 = inited;
    v25 = v8;
    v26 = a1;
    v30 = _swiftEmptyArrayStorage;
    sub_10009BB44(0, v11, 0);
    v12 = v30;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v27 = *(v13 + 56);
    *&v28 = v14;
    v16 = (v13 - 8);
    do
    {
      v17 = v29;
      v18 = v13;
      (v28)(v7, v15, v29);
      v19 = Row.json.getter();
      (*v16)(v7, v17);
      v30 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_10009BB44((v20 > 1), v21 + 1, 1);
        v12 = v30;
      }

      v12[2] = v21 + 1;
      v12[v21 + 4] = v19;
      v15 += v27;
      --v11;
      v13 = v18;
    }

    while (v11);
    v8 = v25;
    v10 = v24;
  }

  *(v10 + 48) = v12;
  sub_10007B9A4(&qword_10026DF90, &qword_1001ED688);
  v22 = Dictionary.init(dictionaryLiteral:)();
  *(v8 + 56) = sub_10007B9A4(&qword_10026DF98, &qword_1001ED690);
  *(v8 + 32) = v22;
  sub_10005C768(v8);
}

uint64_t sub_100134B28(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_10005C768(v3);
}

uint64_t sub_100134CC8()
{
  sub_100003D48();
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  sub_100006828();
  v7 = swift_task_alloc();
  v8 = sub_100012F88(v7);
  *v8 = v9;
  v8[1] = sub_100009CC8;
  sub_100004934();
  sub_10000481C();

  return sub_100133754(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100134DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100134E34(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  v8 = sub_100017DC4(v6);

  return a1(v8);
}

unint64_t sub_100134EB4()
{
  result = qword_10026DF80;
  if (!qword_10026DF80)
  {
    sub_10007BC70(&qword_10026DF60, &qword_1001ED678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DF80);
  }

  return result;
}

uint64_t sub_100134F7C()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 80) & ~v5;
  v8 = *(v7 + 64);
  v9 = (v8 + v5 + v6) & ~v5;
  v10 = *(v1 + 2);
  swift_unknownObjectRelease();
  v11 = *(v1 + 4);

  v12 = *(v1 + 6);

  v13 = *(v1 + 8);

  v14 = *(v1 + 9);

  v15 = *(v4 + 8);
  v15(&v1[v6], v0);
  v15(&v1[v9], v0);

  return _swift_deallocObject(v1, v9 + v8, v5 | 7);
}

uint64_t sub_100135078()
{
  sub_100003D48();
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  sub_100006828();
  v7 = swift_task_alloc();
  v8 = sub_100012F88(v7);
  *v8 = v9;
  v8[1] = sub_100009CC8;
  sub_100004934();
  sub_10000481C();

  return sub_100131D80(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100135184(void (*a1)(void))
{
  v3 = type metadata accessor for JSCallable();
  sub_1000047A4(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v6);
  a1(*(v1 + v7));

  return _swift_deallocObject(v1, v7 + 8, v5 | 7);
}

uint64_t sub_100135228()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = sub_100017DC4(v5);
  return sub_100134B28(v7, v8);
}

uint64_t sub_1001352A0()
{
  sub_100004768();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009BE8;

  return sub_100131124(v2, v3);
}

uint64_t sub_100135394(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1001353B0()
{
  sub_100003D48();
  v1 = sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  sub_100003D10(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = swift_task_alloc();
  v11 = sub_100004ABC(v10);
  *v11 = v12;
  v11[1] = sub_100009BE8;
  sub_100005F88();
  sub_100004934();
  sub_10000481C();

  return sub_10012EECC(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_1001354A0()
{
  result = qword_10026DFB8;
  if (!qword_10026DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DFB8);
  }

  return result;
}

uint64_t sub_1001354F4(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10013553C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v16 = *a6;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100009BE8;

  return sub_100130088(a1, a2, a3, a4, a5, v16, a7, a8);
}

uint64_t sub_10013566C()
{
  sub_1000061B4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;
  sub_100005F88();

  return sub_10013074C();
}

uint64_t sub_10013576C()
{
  v1 = sub_10000B248();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return v4(v1);
}

void sub_100135794()
{
  sub_100003D48();
  v1 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  sub_100003D10(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  v10 = swift_task_alloc();
  v11 = sub_100012F88(v10);
  *v11 = v12;
  v11[1] = sub_100009CC8;
  sub_10000481C();

  __asm { BR              X9 }
}

uint64_t sub_100135908()
{

  return swift_allocObject();
}

uint64_t sub_100135920()
{

  return swift_allocObject();
}

uint64_t sub_100135938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v18 = type metadata accessor for JSPrivacy();
  v17[0] = v3;
  v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v17[0] = a1;
  v17[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v17, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v12;

  v14 = sub_10011F39C("acknowledgementNeededForPrivacyIdentifier(_:_:)", 0x2FuLL, 2);

  return v14;
}

uint64_t sub_100135BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for JSCallable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100135DE0(a4);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10011F068("acknowledgementNeededForPrivacyIdentifier(_:_:)", 47, 2, v15);

    if (v16)
    {
      v14[1] = v17;
      sub_100003CA8(v15, v16);
      (*(v7 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
      v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v13 = swift_allocObject();
      (*(v7 + 32))(v13 + v12, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      *(v13 + v12 + v8) = v9 & 1;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v15);
    }

    else
    {
      return sub_100009F5C(v15, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

id sub_100135DE0(uint64_t a1)
{
  if (!a1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  sub_100052D94(a1, &v7);
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_100009F5C(&v7, &qword_10026D350, &qword_1001E6050);
    goto LABEL_7;
  }

  type metadata accessor for JSAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = objc_opt_self();
    v2 = String._bridgeToObjectiveC()();
    v3 = [v4 acknowledgementNeededForPrivacyIdentifier:v2];
    goto LABEL_8;
  }

  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 acknowledgementNeededForPrivacyIdentifier:v2 account:*&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account]];

LABEL_8:
  return v3;
}

uint64_t sub_100135F20(uint64_t a1, char a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 32) = a2;
  sub_10005C768(v3);
}

id sub_100136050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSPrivacy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100136084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  return sub_100135BD8(a1, a2, a3, v3[2]);
}

uint64_t sub_1001360A4()
{
  v1 = *(type metadata accessor for JSCallable() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_100135F20(v2, v3);
}

id sub_100136124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRunningBoardServices();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10013617C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRunningBoardServices();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001361D4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = AMSSetLogKeyIfNeeded();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v24 = type metadata accessor for JSRunningBoardServices();
  v23[0] = v1;
  v1;

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v23);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001001FCB30;
  v12._countAndFlagsBits = 0xD000000000000021;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_100137414(a1);
  v14 = v13;
  if (v13)
  {
    v13 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  }

  else
  {
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v14;
  v24 = v13;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v23, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v6;
  v18[4] = v8;
  v18[5] = a1;
  v18[6] = ObjectType;

  v19 = a1;
  v20 = sub_10011F39C("fetchProcessHandle(_:)", 0x16uLL, 2);

  return v20;
}

uint64_t sub_1001364E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v64 = a5;
  v65 = a6;
  v62 = a2;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for JSCallable();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v58 = a3;
    v59 = v13;
    v60 = v12;
    sub_100002BC0(0, &qword_10026E018, RBSProcessPredicate_ptr);
    sub_100136DEC(a7);
    if (v7)
    {
      v62 = 0;
      if (qword_1002686E8 != -1)
      {
        swift_once();
      }

      v61 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v20 = *(type metadata accessor for LogInterpolation() - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v67 = type metadata accessor for JSRunningBoardServices();
      v66[0] = v16;
      v23 = v16;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v66);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._object = 0x80000001001FCB80;
      v24._countAndFlagsBits = 0xD00000000000001DLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
      swift_getErrorValue();
      v25 = v69;
      v26 = v70;
      v67 = v70;
      v27 = sub_100017E64(v66);
      (*(*(v26 - 8) + 16))(v27, v25, v26);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(v66, &qword_10026D350, &qword_1001E6050);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
      LogInterpolation.init(stringInterpolation:)();
      v29 = static os_log_type_t.error.getter();
      sub_1000036B0(v29);

      sub_10011F068("fetchProcessHandle(_:)", 22, 2, v66);
      if (v67)
      {
        v64 = v68;
        sub_100003CA8(v66, v67);
        v65 = v23;
        v30 = v59;
        v31 = v63;
        v32 = v60;
        (*(v59 + 16))(v63, v58, v60);
        v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v34 = swift_allocObject();
        (*(v30 + 32))(v34 + v33, v31, v32);
        *(v34 + ((v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
        swift_errorRetain();
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(v66);
      }

      else
      {

        return sub_100009F5C(v66, &qword_10026D6C8, &unk_1001ECB60);
      }
    }

    else
    {
      v18 = v17;
      sub_100002BC0(0, &qword_10026E020, RBSProcessHandle_ptr);
      v19 = v18;
      v43 = sub_100137220(v19);
      v61 = v19;
      if (qword_1002686E8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v44 = *(type metadata accessor for LogInterpolation() - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v67 = type metadata accessor for JSRunningBoardServices();
      v66[0] = v16;
      v47 = v16;
      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v66);
      LogInterpolation.init(stringLiteral:)();
      v48 = static os_log_type_t.default.getter();
      sub_1000036B0(v48);

      sub_10011F068("fetchProcessHandle(_:)", 22, 2, v66);
      if (v67)
      {
        v65 = v68;
        v58 = sub_100003CA8(v66, v67);
        v49 = v59;
        v50 = v60;
        v51 = *(v59 + 16);
        v64 = v47;
        v52 = v63;
        v51(v63, v62, v60);
        v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v54 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        (*(v49 + 32))(v55 + v53, v52, v50);
        *(v55 + v54) = v43;
        v56 = v43;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(v66);
      }

      else
      {

        return sub_100009F5C(v66, &qword_10026D6C8, &unk_1001ECB60);
      }
    }
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v36 = *(type metadata accessor for LogInterpolation() - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v39 = static os_log_type_t.error.getter();
    sub_1000036B0(v39);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v41 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v42 = sub_100051018();

    *(v40 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v40 + 32) = v42;
    sub_10005C768(v40);
  }
}

void sub_100136DEC(void *a1)
{
  v4 = v1;
  v6 = JSValue.subscript.getter();
  JSValue.string.getter();
  v8 = v7;

  if (v8)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    isa = String._bridgeToObjectiveC()();

    v11 = [ObjCClassFromMetadata predicateMatchingBundleIdentifier:isa];
LABEL_3:
    v11;

    return;
  }

  v12._countAndFlagsBits = sub_1000084BC();
  if (JSValue.hasValue(forProperty:)(v12))
  {
    sub_1000084BC();
    v13 = JSValue.subscript.getter();
    v14 = JSValue.array.getter();

    v15 = sub_10004369C(v14);
    if (!v15)
    {

LABEL_31:
      v43 = swift_getObjCClassFromMetadata();
      sub_100002BC0(0, &qword_10026E018, RBSProcessPredicate_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v11 = [v43 predicateMatchingPredicates:isa];
      goto LABEL_3;
    }

    v16 = v15;
    v45 = v4;
    v47 = a1;
    v51 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v16 < 0)
    {
      goto LABEL_38;
    }

    sub_100002BC0(0, &qword_10026E018, RBSProcessPredicate_ptr);
    sub_100007B50();
    while (1)
    {
      v17 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (a1)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v48 + 16))
        {
          goto LABEL_36;
        }

        v18 = *(v14 + 8 * v3 + 32);
      }

      sub_100136DEC(v18);
      if (v2)
      {
        goto LABEL_29;
      }

      UniqueAndReserveCapacityIfNot = specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_1000053FC(UniqueAndReserveCapacityIfNot, v20, v21, v22, v23, v24, v25, v26, v45, v47, v48, v49, v50, v51);
      sub_1000032E8();
      specialized ContiguousArray._endMutation()();
      ++v3;
      if (v17 == v4)
      {

        a1 = v47;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27._countAndFlagsBits = sub_10000C08C();
  if (!JSValue.hasValue(forProperty:)(v27))
  {
    type metadata accessor for JSError();
    sub_100137574();
    swift_allocError();
    v42 = a1;
    JSError.init(badValue:expected:)();
    swift_willThrow();

    return;
  }

  sub_10000C08C();
  v28 = JSValue.subscript.getter();
  v29 = JSValue.array.getter();

  v30 = sub_10004369C(v29);
  if (!v30)
  {

LABEL_33:
    v44 = swift_getObjCClassFromMetadata();
    sub_100002BC0(0, &qword_10026E018, RBSProcessPredicate_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v44 predicateMatchingAnyPredicate:isa];
    goto LABEL_3;
  }

  v31 = v30;
  v46 = v4;
  v47 = a1;
  v52 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    sub_100002BC0(0, &qword_10026E018, RBSProcessPredicate_ptr);
    sub_100007B50();
    while (1)
    {
      v32 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_35;
      }

      if (a1)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v48 + 16))
        {
          goto LABEL_37;
        }

        v33 = *(v29 + 8 * v3 + 32);
      }

      sub_100136DEC(v33);
      if (v2)
      {
LABEL_29:

        return;
      }

      v34 = specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_1000053FC(v34, v35, v36, v37, v38, v39, v40, v41, v46, v47, v48, v49, v50, v52);
      sub_1000032E8();
      specialized ContiguousArray._endMutation()();
      ++v3;
      if (v32 == v4)
      {

        a1 = v47;
        goto LABEL_33;
      }
    }
  }

LABEL_39:
  __break(1u);
}

id sub_100137220(void *a1)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1001372F4(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = type metadata accessor for JSRunningBoardServicesProcessHandle();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14amsengagementd35JSRunningBoardServicesProcessHandle_processHandle] = a2;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, "init");
  *(v3 + 56) = v4;
  *(v3 + 32) = v7;
  sub_10005C768(v3);
}

uint64_t sub_100137414(void *a1)
{
  v1 = [a1 toDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001374D4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for JSCallable() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_100137574()
{
  result = qword_10026E028;
  if (!qword_10026E028)
  {
    type metadata accessor for JSError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E028);
  }

  return result;
}

id sub_10013760C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRunningBoardServicesProcessHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001376B8()
{
  result = [*(v0 + OBJC_IVAR____TtC14amsengagementd35JSRunningBoardServicesProcessHandle_processHandle) currentState];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for JSRunningBoardServicesProcessState();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC14amsengagementd34JSRunningBoardServicesProcessState_processState] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

id sub_100137778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRunningBoardServicesProcessState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100137840(uint64_t a1)
{
  v1[OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_app] = *(a1 + 1);
  *&v1[OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_schedules] = sub_100041404();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for JSScheduleDatabase();
  v3 = objc_msgSendSuper2(&v5, "init");

  sub_10000FF10(a1);
  return v3;
}

unint64_t sub_1001378C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_schedules);
  sub_1000A77EC(a1, a2, &v15 - v7);
  v10 = type metadata accessor for ScheduleInfo(0);
  if (sub_100009F34(v8, 1, v10) == 1)
  {
    sub_10000A064(v8, &qword_100269F90, &qword_1001E8720);
    return 0;
  }

  else
  {
    sub_100190A7C();
    v14 = v13;
    sub_1000A1B7C(v8);
    v11 = sub_1000E40A0(v14);
  }

  return v11;
}

void *sub_100137C30(uint64_t a1)
{
  v3 = type metadata accessor for ScheduleInfo(0);
  v4 = sub_100002CFC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_schedules);
  v12 = a1;
  v13 = 0;
  v23 = sub_1000A7F38(v12);
  v53 = v10;
  sub_10007B9A4(&unk_10026FE70, &unk_1001ED840);
  v24 = static _DictionaryStorage.copy(original:)();
  v25 = v24;
  v26 = 0;
  v27 = v23 + 64;
  v28 = 1 << *(v23 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v23 + 64);
  v31 = (v28 + 63) >> 6;
  v51 = v24 + 64;
  v52 = v24;
  if (v30)
  {
    while (1)
    {
      v32 = __clz(__rbit64(v30));
      v54 = (v30 - 1) & v30;
LABEL_13:
      v35 = v32 | (v26 << 6);
      v36 = *(v23 + 56);
      v37 = v23;
      v38 = (*(v23 + 48) + 16 * v35);
      v13 = v38[1];
      v55 = *v38;
      v39 = v53;
      sub_1000A9424(v36 + *(v6 + 72) * v35, v53);

      sub_100190A7C();
      v41 = sub_1000E40A0(v40);

      sub_1000A1B7C(v39);
      v25 = v52;
      *(v51 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v42 = (v25[6] + 16 * v35);
      *v42 = v55;
      v42[1] = v13;
      *(v25[7] + 8 * v35) = v41;
      v43 = v25[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v25[2] = v45;
      v23 = v37;
      v30 = v54;
      if (!v54)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v26 >= v31)
      {

        return v25;
      }

      v34 = *(v27 + 8 * v26);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v54 = (v34 - 1) & v34;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  sub_100003230();
  v14 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = sub_100003DE8();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v57 = type metadata accessor for JSScheduleDatabase();
  v56[0] = v26;
  v20 = v26;
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100007B64();

  sub_100002C00(v56);
  sub_100004D04();
  LogInterpolation.init(stringLiteral:)();
  v46 = objc_allocWithZone(type metadata accessor for JSError());
  sub_100007594();
  swift_errorRetain();
  v47 = sub_1000505C8(v13);
  v48 = sub_100051018();

  v57 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v56[0] = v48;
  static LogInterpolation.safe(_:)();
  sub_10000A064(v56, &qword_10026D350, &qword_1001E6050);
  v49 = static os_log_type_t.error.getter();
  v25 = v14;
  sub_1000036B0(v49);

  Dictionary.init(dictionaryLiteral:)();
  sub_100007594();

  return v25;
}

uint64_t sub_10013837C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_app;
  for (i = (a1 + 40); v2; --v2)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = 0xE900000000000073;
    v8 = 0x636974796C616E61;
    switch(*(v1 + v3))
    {
      case 1:
        v7 = 0xE800000000000000;
        v8 = 0x6C616E7265746E69;
        break;
      case 2:
        v7 = 0xE800000000000000;
        v8 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v8 = 0x6E656D6D6F636572;
        v7 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 95;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11._countAndFlagsBits = v6;
    v11._object = v5;
    String.append(_:)(v11);

    sub_1001CF380();

    i += 2;
  }

  v12 = *(v1 + OBJC_IVAR____TtC14amsengagementd18JSScheduleDatabase_schedules);
  return sub_1000A8E8C(a1);
}

id sub_100138788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSScheduleDatabase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100138838(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100012A94(), (v3 & 1) != 0) && (sub_100011BAC(*(v1 + 56) + 32 * v2, v5), (swift_dynamicCast() & 1) != 0))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001388EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v7 = type metadata accessor for JSCallable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v58 = v7;
    if (a1)
    {
      v13 = qword_1002686E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v60 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v14 = *(type metadata accessor for LogInterpolation() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v61 = 0x7465722061746164;
      v62 = 0xEF20646576656972;
      v17._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v17);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v18 = static os_log_type_t.default.getter();
      sub_1000036B0(v18);

      v19 = v12;
      sub_10011F068("data(_:_:_:)", 12, 2, &v61);
      if (v63)
      {
        v60 = v64;
        v57 = sub_100003CA8(&v61, v63);
        v20 = v8;
        v21 = *(v8 + 16);
        v22 = v58;
        v21(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v58);
        v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
        v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        (*(v20 + 32))(v25 + v23, v10, v22);
        *(v25 + v24) = a1;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    else
    {
      v34 = type metadata accessor for JSError();
      v56 = v8;
      if (a2)
      {
        objc_allocWithZone(v34);
        swift_errorRetain();
        v35 = sub_1000505C8(a2);
      }

      else
      {
        v35 = sub_10010F0F0(0, 0x206E776F6E6B6E55, 0xED0000726F727265, 0, 0);
      }

      v36 = qword_1002686E8;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v59 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v38 = *(type metadata accessor for LogInterpolation() - 8);
      v39 = *(v38 + 72);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v61 = 0xD000000000000015;
      v62 = 0x80000001001FD1E0;
      v41 = [v37 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v42;
      v45._object = v44;
      String.append(_:)(v45);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v46 = static os_log_type_t.error.getter();
      sub_1000036B0(v46);

      v47 = v12;
      sub_10011F068("data(_:_:_:)", 12, 2, &v61);
      if (v63)
      {
        v48 = v37;
        v59 = v64;
        sub_100003CA8(&v61, v63);
        v49 = v56;
        v50 = v58;
        (*(v56 + 16))(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v58);
        v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v52 = (v9 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        (*(v49 + 32))(v53 + v51, v10, v50);
        *(v53 + v52) = v48;
        v54 = v48;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    return sub_100009F5C(&v61, &qword_10026D6C8, &unk_1001ECB60);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v31 = sub_10010F0F0(0, 0xD000000000000020, 0x80000001001FD140, 0x6E617620666C6553, 0xED00006465687369);
    v32 = sub_100051018();

    *(v30 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v30 + 32) = v32;
    sub_10005C768(v30);
  }
}

uint64_t sub_1001391D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1001392E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = v8;
  v16[8] = ObjectType;

  v17 = v8;

  v18 = sub_10011F39C(a7, a8, 2);

  return v18;
}

void sub_1001393C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, SEL *a14)
{
  v87 = a7;
  v88 = a8;
  v89 = a2;
  v19 = type metadata accessor for JSCallable();
  v20 = sub_100002CC4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v20);
  v27 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v30 = v78 - v28;
  v31 = HIBYTE(a5) & 0xF;
  v32 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v33 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_70;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      aBlock = a4;
      v91 = a5 & 0xFFFFFFFFFFFFFFLL;
      if (a4 == 43)
      {
        if (v31)
        {
          if (v31 != 1)
          {
            sub_1000084D0();
            while (1)
            {
              sub_1000031D0();
              if (!v38 & v37)
              {
                break;
              }

              sub_100006DDC();
              if (!v38)
              {
                break;
              }

              v36 = (v47 + v46);
              if (__OFADD__(v47, v46))
              {
                break;
              }

              sub_100006448();
              if (v38)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_82:
        __break(1u);
        return;
      }

      if (a4 != 45)
      {
        if (v31)
        {
          while (1)
          {
            sub_1000031D0();
            if (!v38 & v37)
            {
              break;
            }

            sub_100006DDC();
            if (!v38)
            {
              break;
            }

            v36 = (v51 + v50);
            if (__OFADD__(v51, v50))
            {
              break;
            }

            sub_100006448();
            if (v38)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v31)
      {
        if (v31 != 1)
        {
          sub_1000084D0();
          while (1)
          {
            sub_1000031D0();
            if (!v38 & v37)
            {
              break;
            }

            sub_100006DDC();
            if (!v38)
            {
              break;
            }

            v36 = (v43 - v42);
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            sub_100006448();
            if (v38)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v34 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v76 = v78 - v28;
        v77 = v29;
        v34 = _StringObject.sharedUTF8.getter();
        v29 = v77;
        v30 = v76;
      }

      v35 = *v34;
      if (v35 == 43)
      {
        if (v32 >= 1)
        {
          if (v32 != 1)
          {
            v36 = 0;
            if (v34)
            {
              while (1)
              {
                sub_1000031D0();
                if (!v38 & v37)
                {
                  goto LABEL_68;
                }

                sub_100006DDC();
                if (!v38)
                {
                  goto LABEL_68;
                }

                v36 = (v45 + v44);
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_68;
                }

                sub_100006448();
                if (v38)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_81;
      }

      if (v35 != 45)
      {
        if (v32)
        {
          v36 = 0;
          if (v34)
          {
            while (1)
            {
              v48 = *v34 - 48;
              if (v48 > 9)
              {
                goto LABEL_68;
              }

              v49 = 10 * v36;
              if ((v36 * 10) >> 64 != (10 * v36) >> 63)
              {
                goto LABEL_68;
              }

              v36 = (v49 + v48);
              if (__OFADD__(v49, v48))
              {
                goto LABEL_68;
              }

              ++v34;
              if (!--v32)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v36 = 0;
        v41 = 1;
LABEL_69:
        v96 = v41;
        if (v41)
        {
LABEL_70:
          sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
          sub_100007600();
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1001E61B0;
          type metadata accessor for JSError();
          v53 = sub_10010F0F0(2, 0x2073692044495344, 0xEF64696C61766E69, 0, 0);
          v54 = sub_100051018();

          *(v52 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
          *(v52 + 32) = v54;
          sub_10005C768(v52);

          return;
        }

        goto LABEL_72;
      }

      if (v32 >= 1)
      {
        if (v32 != 1)
        {
          v36 = 0;
          if (v34)
          {
            while (1)
            {
              sub_1000031D0();
              if (!v38 & v37)
              {
                goto LABEL_68;
              }

              sub_100006DDC();
              if (!v38)
              {
                goto LABEL_68;
              }

              v36 = (v40 - v39);
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_68;
              }

              sub_100006448();
              if (v38)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v41 = 0;
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v85 = v78 - v28;
  v86 = v29;

  v36 = sub_1000FB330(a4, a5, 10);
  v56 = v55;

  v30 = v85;
  v29 = v86;
  if (v56)
  {
    goto LABEL_70;
  }

LABEL_72:
  v85 = v14;
  v86 = v29;
  v57 = v30;
  v58 = v19;
  v84 = a14;
  v81 = a12;
  v82 = a13;
  v78[1] = a11;
  v79 = a10;
  v83 = [objc_allocWithZone(NSNumber) initWithInteger:v36];
  v59 = sub_100138838(a6);
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v59;
  }

  v80 = v61;
  if (qword_100268608 != -1)
  {
    swift_once();
  }

  v78[0] = *(qword_100287788 + 16);
  v88 = String._bridgeToObjectiveC()();
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = v22;
  v64 = *(v22 + 16);
  v65 = v58;
  v64(v57, a3, v58);
  v64(v27, v89, v58);
  v66 = *(v63 + 80);
  v67 = (v66 + 24) & ~v66;
  v68 = (v86 + v66 + v67) & ~v66;
  v69 = (v86 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  *(v70 + 16) = v62;
  v71 = *(v63 + 32);
  v71(v70 + v67, v57, v65);
  v71(v70 + v68, v27, v65);
  *(v70 + v69) = v79;
  v94 = v81;
  v95 = v70;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v92 = sub_1001391D4;
  v93 = v82;
  v72 = _Block_copy(&aBlock);

  v73 = v83;
  v74 = v78[0];
  v75 = v88;
  [v78[0] *v84];
  _Block_release(v72);
}

uint64_t sub_1001399C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v7 = type metadata accessor for JSCallable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v58 = v7;
    if (a1)
    {
      v13 = qword_1002686E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v60 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v14 = *(type metadata accessor for LogInterpolation() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v61 = 0x7465722061746164;
      v62 = 0xEF20646576656972;
      v17._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v17);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v18 = static os_log_type_t.debug.getter();
      sub_1000036B0(v18);

      v19 = v12;
      sub_10011F068("granularNotificationSettings(_:_:_:)", 36, 2, &v61);
      if (v63)
      {
        v60 = v64;
        v57 = sub_100003CA8(&v61, v63);
        v20 = v8;
        v21 = *(v8 + 16);
        v22 = v58;
        v21(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v58);
        v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
        v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        (*(v20 + 32))(v25 + v23, v10, v22);
        *(v25 + v24) = a1;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    else
    {
      v34 = type metadata accessor for JSError();
      v56 = v8;
      if (a2)
      {
        objc_allocWithZone(v34);
        swift_errorRetain();
        v35 = sub_1000505C8(a2);
      }

      else
      {
        v35 = sub_10010F0F0(0, 0x206E776F6E6B6E55, 0xED0000726F727265, 0, 0);
      }

      v36 = qword_1002686E8;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v59 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v38 = *(type metadata accessor for LogInterpolation() - 8);
      v39 = *(v38 + 72);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v61 = 0xD000000000000015;
      v62 = 0x80000001001FD1E0;
      v41 = [v37 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v42;
      v45._object = v44;
      String.append(_:)(v45);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v46 = static os_log_type_t.error.getter();
      sub_1000036B0(v46);

      v47 = v12;
      sub_10011F068("granularNotificationSettings(_:_:_:)", 36, 2, &v61);
      if (v63)
      {
        v48 = v37;
        v59 = v64;
        sub_100003CA8(&v61, v63);
        v49 = v56;
        v50 = v58;
        (*(v56 + 16))(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v58);
        v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v52 = (v9 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        (*(v49 + 32))(v53 + v51, v10, v50);
        *(v53 + v52) = v48;
        v54 = v48;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    return sub_100009F5C(&v61, &qword_10026D6C8, &unk_1001ECB60);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v31 = sub_10010F0F0(0, 0xD000000000000020, 0x80000001001FD140, 0x6E617620666C6553, 0xED00006465687369);
    v32 = sub_100051018();

    *(v30 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v30 + 32) = v32;
    sub_10005C768(v30);
  }
}

id sub_10013A2C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a5)
  {
    a5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = a1;
  v16 = a6(v9, v11, v12, v14, a5);

  return v16;
}

uint64_t sub_10013A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_100007600();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = v4;
  v10[7] = ObjectType;

  v11 = v4;

  v12 = sub_10011F39C("offerRankingItemsForServices(_:_:_:)", 0x24uLL, 2);

  return v12;
}

unsigned __int8 *sub_10013A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v80 = a6;
  v16 = type metadata accessor for JSCallable();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  result = __chkstk_darwin(v18);
  v23 = &v72 - v20;
  v24 = HIBYTE(a5) & 0xF;
  v25 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v26 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_63;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v78 = v21;
    v79 = a2;
    v76 = a3;
    v81 = v22;
    v49 = &v72 - v20;

    v28 = sub_1000FB330(a4, a5, 10);
    v51 = v50;

    v23 = v49;
    v22 = v81;
    a3 = v76;
    v21 = v78;
    a2 = v79;
    if (v51)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a5 & 0x2000000000000000) == 0)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v69 = v21;
      v70 = v22;
      v78 = a8;
      v71 = &v72 - v20;
      result = _StringObject.sharedUTF8.getter();
      v23 = v71;
      v22 = v70;
      v21 = v69;
    }

    v27 = *result;
    if (v27 == 43)
    {
      if (v25 >= 1)
      {
        v24 = v25 - 1;
        if (v25 != 1)
        {
          v28 = 0;
          if (result)
          {
            v35 = result + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_61;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_61;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_61;
              }

              ++v35;
              if (!--v24)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_75;
    }

    if (v27 != 45)
    {
      if (v25)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              goto LABEL_61;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_61;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v25)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v28 = 0;
      LOBYTE(v24) = 1;
LABEL_62:
      v83 = v24;
      if (v24)
      {
LABEL_63:
        sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1001E61B0;
        type metadata accessor for JSError();
        v47 = sub_10010F0F0(2, 0x2073692044495344, 0xEF64696C61766E69, 0, 0);
        v48 = sub_100051018();

        *(v46 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        *(v46 + 32) = v48;
        sub_10005C768(v46);
      }

LABEL_65:
      v76 = v16;
      v77 = v17;
      v81 = v22;
      v52 = v23;
      v78 = v10;
      v79 = a2;
      v53 = v21;
      v74 = a9;
      v75 = [objc_allocWithZone(NSNumber) initWithInteger:v28];
      v54 = sub_100138838(v80);
      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v54;
      }

      v80 = v56;
      if (qword_100268608 != -1)
      {
        swift_once();
      }

      v73 = *(qword_100287788 + 16);

      sub_100062640(v57);
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = *(v53 + 16);
      v72 = v52;
      v60 = v76;
      v59(v52, a3, v76);
      v59(v81, v79, v60);
      v61 = *(v53 + 80);
      v62 = (v61 + 24) & ~v61;
      v63 = (v77 + v61 + v62) & ~v61;
      v64 = (v77 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = v58;
      v66 = *(v53 + 32);
      v66(v65 + v62, v72, v60);
      v66(v65 + v63, v81, v60);
      *(v65 + v64) = v74;

      v67 = v75;
      v68 = v73;
      sub_100194158();
    }

    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (result)
        {
          v29 = result + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_61;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_61;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_61;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v24) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v82[0] = a4;
  v82[1] = a5 & 0xFFFFFFFFFFFFFFLL;
  if (a4 != 43)
  {
    if (a4 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v43 = v82;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          ++v43;
          if (!--v24)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = v82 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (v24)
  {
    if (--v24)
    {
      v28 = 0;
      v38 = v82 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v38;
        if (!--v24)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10013AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v7 = type metadata accessor for JSCallable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v58 = v7;
    if (a1)
    {
      v13 = qword_1002686E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v60 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v14 = *(type metadata accessor for LogInterpolation() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v61 = 0xD000000000000018;
      v62 = 0x80000001001FD190;
      v17._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v17);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v18 = static os_log_type_t.debug.getter();
      sub_1000036B0(v18);

      v19 = v12;
      sub_10011F068("offerRankingItemsForServices(_:_:_:)", 36, 2, &v61);
      if (v63)
      {
        v60 = v64;
        v57 = sub_100003CA8(&v61, v63);
        v20 = v8;
        v21 = *(v8 + 16);
        v22 = v58;
        v21(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v58);
        v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
        v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        (*(v20 + 32))(v25 + v23, v10, v22);
        *(v25 + v24) = a1;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    else
    {
      v34 = type metadata accessor for JSError();
      v56 = v8;
      if (a2)
      {
        objc_allocWithZone(v34);
        swift_errorRetain();
        v35 = sub_1000505C8(a2);
      }

      else
      {
        v35 = sub_10010F0F0(0, 0x206E776F6E6B6E55, 0xED0000726F727265, 0, 0);
      }

      v36 = qword_1002686E8;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v59 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v38 = *(type metadata accessor for LogInterpolation() - 8);
      v39 = *(v38 + 72);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      LogInterpolation.init(stringLiteral:)();
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v61 = 0xD00000000000001ELL;
      v62 = 0x80000001001FD170;
      v41 = [v37 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v42;
      v45._object = v44;
      String.append(_:)(v45);

      v63 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v61, &qword_10026D350, &qword_1001E6050);
      v46 = static os_log_type_t.error.getter();
      sub_1000036B0(v46);

      v47 = v12;
      sub_10011F068("offerRankingItemsForServices(_:_:_:)", 36, 2, &v61);
      if (v63)
      {
        v48 = v37;
        v59 = v64;
        sub_100003CA8(&v61, v63);
        v49 = v56;
        v50 = v58;
        (*(v56 + 16))(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v58);
        v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v52 = (v9 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        (*(v49 + 32))(v53 + v51, v10, v50);
        *(v53 + v52) = v48;
        v54 = v48;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v61);
      }
    }

    return sub_100009F5C(&v61, &qword_10026D6C8, &unk_1001ECB60);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v31 = sub_10010F0F0(0, 0xD000000000000020, 0x80000001001FD140, 0x6E617620666C6553, 0xED00006465687369);
    v32 = sub_100051018();

    *(v30 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v30 + 32) = v32;
    sub_10005C768(v30);
  }
}

uint64_t sub_10013B3F4(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v3 + 32) = a2;

  sub_10005C768(v3);
}

uint64_t sub_10013B48C(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = type metadata accessor for JSError();
  *(v3 + 32) = a2;
  v4 = a2;
  sub_10005C768(v3);
}

id sub_10013B5EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSServerDataCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013B668(uint64_t (*a1)(unint64_t, void))
{
  v3 = *(type metadata accessor for JSCallable() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return a1(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10013B754(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for JSCallable() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v7 + 24) & ~v7;
  v10 = (v8 + v7 + v9) & ~v7;
  v11 = *(v3 + 16);
  v12 = *(v3 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v11, v3 + v9, v3 + v10, v12);
}

uint64_t sub_10013B8E8()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v4 + v5) & ~v4;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v3 + 8);
  v11(v0 + v5, v1);
  v11(v0 + v8, v1);

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

uint64_t sub_10013B9EC()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

unint64_t sub_10013BAA8()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10004CE20();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = sub_10013BB78();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

unint64_t sub_10013BB78()
{
  result = qword_10026E158;
  if (!qword_10026E158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026E158);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10013BC98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100245078, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013BCEC(char a1)
{
  if (a1)
  {
    return 0x566B63617074656ALL;
  }

  else
  {
    return 0x6B63617074656ALL;
  }
}

uint64_t sub_10013BD4C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BC98(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013BD7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10013BCEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10013BDAC()
{
  result = qword_10026E1A8;
  if (!qword_10026E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E1A8);
  }

  return result;
}

uint64_t sub_10013BE00(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_10013BE28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002450C8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013BE7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000E2E6C();
}

uint64_t sub_10013BEA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BE28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013BED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10013BE00(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for JSStackLocations(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013BFE0()
{
  result = qword_10026E1B0;
  if (!qword_10026E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E1B0);
  }

  return result;
}

uint64_t sub_10013C034(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a3, v6);
  sub_10000A7C0(a1, 0, 1, v6);
  return a2 & 1;
}

uint64_t sub_10013C0BC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_10007B9A4(&qword_10026D338, &qword_1001EDA20) + 48);
  v6 = sub_10007B9A4(&qword_10026E268, &qword_1001EDA10);
  result = sub_10013C034(&a2[*(v6 + 48)], v4, &a1[v5]);
  *a2 = result & 1;
  return result;
}

unint64_t sub_10013C144()
{
  result = qword_10026E280;
  if (!qword_10026E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E280);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSStackProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013C278()
{
  result = qword_10026E2A0;
  if (!qword_10026E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E2A0);
  }

  return result;
}

uint64_t sub_10013C2CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC14amsengagementd20JSSubscriptionStatus_runtime];
  v5 = *(v4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v7 = *(v4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  else
  {
    v6 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v22 = type metadata accessor for JSSubscriptionStatus();
  v21[0] = v1;
  v13 = v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v21);
  LogInterpolation.init(stringLiteral:)();
  v22 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v21[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v21, &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  v15 = 2 * (*(v4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) == 0);
  if (*(v4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48))
  {
    v16 = 60.0;
  }

  else
  {
    v16 = 2.0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v15;
  *(v17 + 32) = v16;
  *(v17 + 40) = v13;
  *(v17 + 48) = v6;
  *(v17 + 56) = v5;
  *(v17 + 64) = ObjectType;
  v18 = v13;

  v19 = sub_10011F39C("lookup(_:)", 0xAuLL, 2);

  return v19;
}

void sub_10013C57C(double a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a4;
  v44 = a7;
  v15 = type metadata accessor for JSCallable();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052D94(a5, &aBlock);
  if (!v49)
  {
    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
LABEL_7:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1001E61B0;
    *(v34 + 56) = &type metadata for String;
    strcpy((v34 + 32), "Invalid type");
    *(v34 + 45) = 0;
    *(v34 + 46) = -5120;
    v35 = v46;
    v31 = JSCallable.call(_:)();

    if (v35)
    {
      return;
    }

    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v40 = a3;
  v41 = a9;
  v42 = a10;
  v43 = a8;
  if (qword_100268828 != -1)
  {
    swift_once();
  }

  sub_1001A76DC();
  v20 = v19;
  v39 = [v19 promiseWithTimeout:a1];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *(v16 + 16);
  v38(&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v15);
  v22 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v23 = v16;
  v45 = v22;
  v24 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v43;
  *(v25 + 3) = v26;
  *(v25 + 4) = v21;
  v37 = *(v23 + 32);
  v37(&v25[v22], v18, v15);
  *&v25[v24] = v42;
  v50 = sub_10013D340;
  v51 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v36 = &v48;
  v48 = sub_1000266E0;
  v49 = &unk_10024E200;
  v27 = _Block_copy(&aBlock);
  v28 = v41;

  v29 = v39;
  [v39 addErrorBlock:v27];
  _Block_release(v27);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38(v18, v40, v15);
  v31 = v29;
  v32 = swift_allocObject();
  *(v32 + 2) = v43;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v37(&v32[v45], v18, v15);
  *&v32[v24] = v42;
  v50 = sub_10013D430;
  v51 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v48 = sub_10008E0EC;
  v49 = &unk_10024E250;
  v33 = _Block_copy(&aBlock);

  [v31 addSuccessBlock:v33];
  _Block_release(v33);
LABEL_8:
}

uint64_t sub_10013CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v20 = a1;
  v5 = type metadata accessor for JSCallable();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = *(v18 + 64);
  __chkstk_darwin(v5);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_10011F068("lookup(_:)", 10, 2, v21);

    if (v22)
    {
      sub_100003CA8(v21, v22);
      v13 = v18;
      v14 = v19;
      (*(v18 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v19);
      v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v16 = swift_allocObject();
      (*(v13 + 32))(v16 + v15, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v21);
    }

    else
    {
      return sub_100009F5C(v21, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10013CD40(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_100105E34(v3);
}

uint64_t sub_10013CE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v22 = a1;
  v5 = type metadata accessor for JSCallable();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_10011F068("lookup(_:)", 10, 2, v23);

    if (v24)
    {
      sub_100003CA8(v23, v24);
      v13 = v20;
      v14 = v21;
      (*(v20 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v21);
      v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v16 = swift_allocObject();
      (*(v13 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v17 = v22;
      *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
      v18 = v17;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v23);
    }

    else
    {
      return sub_100009F5C(v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10013D118(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = [a2 exportObject];
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v3 + 32) = v5;
  sub_100105E34(v3);
}

id sub_10013D2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSubscriptionStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013D358()
{
  v1 = type metadata accessor for JSCallable();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10013D448(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  sub_10000B9A4();
  v12 = *(v2 + 2);
  v13 = *(v2 + 3);
  v14 = *(v2 + 4);
  v16 = *&v2[v15];

  return a2(a1, v12, v13, v14, &v2[v11], v16);
}

uint64_t sub_10013D51C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  sub_10000B9A4();
  v11 = *(v1 + v10);

  return a1(v1 + v9, v11);
}

BOOL sub_10013D5B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_10013D660(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_100049574(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

void *sub_10013D74C()
{
  v1 = type metadata accessor for UUID();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  v3 = __chkstk_darwin(v1);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v50 - v5;
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *(v0 + 24) = 0;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v56[0] = _swiftEmptyArrayStorage;
  sub_100046F28();
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10004F018();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v55);
  v14 = v54;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14[4] = v15;
  v16 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v15];
  v14[2] = v16;
  [v16 setDelegate:v14];
  v17 = v14[2];
  v56[0] = 0;
  v18 = [v17 getActiveContexts:v56];
  if (v18)
  {
    v19 = v18;
    v20 = v56[0];
    v21 = sub_10013F28C(v19);
    if (v21)
    {
      v22 = v21;
      v23 = sub_10004369C(v21);
      if (v23)
      {
        v24 = v23;
        v25 = v14;
        v56[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v24 < 0)
        {
          __break(1u);
        }

        v26 = 0;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v22 + 8 * v26 + 32);
          }

          v28 = v27;
          ++v26;
          v29 = [v27 context];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v30 = *(v56[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v24 != v26);

        v31 = v56[0];
        v14 = v25;
      }

      else
      {

        v31 = _swiftEmptyArrayStorage;
      }

      v38 = [v19 voicePreferred];
      if (v38)
      {
        v39 = v38;
        v40 = v50;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = v51;
        v41 = v52;
        v43 = v53;
        v44 = (*(v52 + 32))(v51, v40, v53);
        __chkstk_darwin(v44);
        *(&v50 - 2) = v42;
        sub_10013D660(sub_10013F2FC, (&v50 - 4), v31);
        v46 = v45;

        v47 = v14[3];
        v14[3] = v46;

        (*(v41 + 8))(v42, v43);
        return v14;
      }
    }

    return v14;
  }

  v32 = v56[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v33 = *(type metadata accessor for LogInterpolation() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v56[3] = type metadata accessor for JSTelephony.TelephonyContext();
  v56[0] = v14;

  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v56);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v48 = static os_log_type_t.error.getter();
  sub_1000036B0(v48);

  return v14;
}

uint64_t sub_10013DDFC(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_10013DF38()
{
  sub_10013DF08();

  return swift_deallocClassInstance();
}

void sub_10013DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000059D4();
  a25 = v26;
  a26 = v27;
  v28 = sub_10013EB34();
  if (v28)
  {
    v29 = v28[3];
    if (v29)
    {
      v30 = v28[2];
      a10 = 0;
      v31 = v29;
      v32 = [v30 copyMobileSubscriberCountryCode:v31 error:&a10];
      v33 = a10;
      if (v32)
      {
        v34 = v32;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000084F8();
        v35 = v33;
      }

      else
      {
        v36 = a10;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v37 = sub_10000620C();
        sub_100002CFC(v37);
        v39 = *(v38 + 72);
        *(sub_100005450() + 16) = xmmword_1001E5F70;
        type metadata accessor for JSTelephony();
        sub_100023E54();
        v40 = AMSLogKey();
        if (v40)
        {
          v41 = v40;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_10000B9F0();

        sub_100002C00(&a10);
        sub_100008438();
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44();
        }

        v42 = static os_log_type_t.default.getter();
        sub_1000036B0(v42);
      }
    }

    else
    {
    }
  }

  sub_100007828();
  sub_100005D08();
}

void sub_10013E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000059D4();
  a25 = v26;
  a26 = v27;
  v28 = sub_10013EB34();
  if (v28)
  {
    v29 = v28[3];
    if (v29)
    {
      v30 = v28[2];
      a10 = 0;
      v31 = v29;
      v32 = [v30 copyMobileSubscriberNetworkCode:v31 error:&a10];
      v33 = a10;
      if (v32)
      {
        v34 = v32;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000084F8();
        v35 = v33;
      }

      else
      {
        v36 = a10;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v37 = sub_10000620C();
        sub_100002CFC(v37);
        v39 = *(v38 + 72);
        *(sub_100005450() + 16) = xmmword_1001E5F70;
        type metadata accessor for JSTelephony();
        sub_100023E54();
        v40 = AMSLogKey();
        if (v40)
        {
          v41 = v40;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_10000B9F0();

        sub_100002C00(&a10);
        sub_100008438();
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44();
        }

        v42 = static os_log_type_t.default.getter();
        sub_1000036B0(v42);
      }
    }

    else
    {
    }
  }

  sub_100007828();
  sub_100005D08();
}

uint64_t sub_10013E3D8()
{
  v0 = sub_10013EB34();
  if (v0)
  {
    v1 = v0[3];
    if (v1)
    {
      v2 = v0[2];
      v18[0] = 0;
      v3 = v1;
      v4 = [v2 getPhoneNumber:v3 error:v18];
      if (v4)
      {
        v5 = v4;
        v6 = v18[0];
        v7 = [v5 number];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000084F8();
      }

      else
      {
        v8 = v18[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v9 = sub_10000620C();
        sub_100002CFC(v9);
        v11 = *(v10 + 72);
        v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        type metadata accessor for JSTelephony();
        sub_100023E54();
        v14 = AMSLogKey();
        if (v14)
        {
          v15 = v14;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v18);
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44();
        }

        v16 = static os_log_type_t.default.getter();
        sub_1000036B0(v16);
      }
    }

    else
    {
    }
  }

  return sub_100007828();
}

id sub_10013E66C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10013E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000059D4();
  a25 = v26;
  a26 = v27;
  v28 = sub_10013EB34();
  if (v28)
  {
    v29 = v28;
    v30 = v28[3];
    if (v30)
    {
      v31 = objc_allocWithZone(CTBundle);
      v32 = v30;
      v33 = [v31 initWithBundleType:1];
      v34 = v29[2];
      v35 = String._bridgeToObjectiveC()();
      a10 = 0;
      v36 = [v34 copyCarrierBundleValueWithDefault:v32 key:v35 bundleType:v33 error:&a10];

      v37 = a10;
      if (v36)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a10 = 0;
          a11 = 0;
          v38 = v37;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        else
        {
          v45 = v37;
        }
      }

      else
      {
        v39 = a10;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v40 = sub_10000620C();
        sub_100002CFC(v40);
        v42 = *(v41 + 72);
        *(sub_100005450() + 16) = xmmword_1001E5F70;
        type metadata accessor for JSTelephony();
        sub_100023E54();
        v43 = AMSLogKey();
        if (v43)
        {
          v44 = v43;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_10000B9F0();

        sub_100002C00(&a10);
        sub_100008438();
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44();
        }

        v46 = static os_log_type_t.default.getter();
        sub_1000036B0(v46);
      }
    }

    else
    {
    }
  }

  sub_100005D08();
}

id sub_10013E9F4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10013EA7C(uint64_t *a1)
{
  v2 = objc_opt_self();
  result = sub_10013F31C(v2);
  if (result)
  {
    v4 = result;
    v5 = *a1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100052D94(v4, &v7);

    if (v8)
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100002C5C(&v7);
      return 0;
    }
  }

  return result;
}

void *sub_10013EB34()
{
  v1 = OBJC_IVAR____TtC14amsengagementd11JSTelephony____lazy_storage___telephonyContext;
  v2 = *&v0[OBJC_IVAR____TtC14amsengagementd11JSTelephony____lazy_storage___telephonyContext];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10013EBA4(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;

    sub_10013F26C(v4);
  }

  sub_10013F27C(v2);
  return v3;
}

void *sub_10013EBA4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MGGetBoolAnswer();

  if (v3)
  {
    if (sub_10013F048())
    {
      type metadata accessor for JSTelephony.TelephonyContext();
      swift_allocObject();
      return sub_10013D74C();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17 = type metadata accessor for JSTelephony();
    v16 = a1;
    v13 = a1;
    v9 = AMSLogKey();
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = *(type metadata accessor for LogInterpolation() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17 = type metadata accessor for JSTelephony();
    v16 = a1;
    v8 = a1;
    v9 = AMSLogKey();
    if (v9)
    {
LABEL_7:
      v14 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v15 = static os_log_type_t.error.getter();
  sub_1000036B0(v15);

  return 0;
}

void sub_10013EF20()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000084F8();

    sub_100007828();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10013EFC0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  return v1;
}

SecTaskRef sub_10013F048()
{
  result = SecTaskCreateFromSelf(0);
  if (!result)
  {
    return result;
  }

  v2 = result;
  error = 0;
  v3 = SecTaskCopyValueForEntitlement(result, *(v0 + OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrained), &error);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = CFGetTypeID(v3);
  if (v4 != CFArrayGetTypeID())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRetain();
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
LABEL_15:

    return 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrainedItemSPI);
  v6 = (v9 + 40);
  v7 = *(v9 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == *v5 && *v6 == v5[1])
    {
      break;
    }

    v6 += 2;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

  swift_unknownObjectRelease();
  return 1;
}

id sub_10013F1B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSTelephony();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013F26C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10013F27C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10013F28C(void *a1)
{
  v1 = [a1 subscriptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100002BC0(0, &qword_10026E410, CTXPCContextInfo_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10013F31C(void *a1)
{
  v1 = [a1 lastConnectionReport];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10013F388(uint64_t a1, void *a2)
{
  v2 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v40 = _swiftEmptyArrayStorage;
  sub_10009B7C0(0, v3 & ~(v3 >> 63), 0);
  v35 = _swiftEmptyArrayStorage;
  v37 = sub_1001BEB08(v2);
  v38 = v4;
  v39 = v5 & 1;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v31 = v2 + 56;
    v30 = v2 + 64;
    v32 = v3;
    while (!__OFADD__(v6++, 1))
    {
      v8 = v37;
      v9 = v38;
      v10 = v39;
      v11 = v2;
      sub_100146F90(v37, v38, v39, v2);
      v13 = v12;
      v14 = sub_100142498(a2);

      v15 = v35;
      v40 = v35;
      v17 = v35[2];
      v16 = v35[3];
      if (v17 >= v16 >> 1)
      {
        sub_10009B7C0((v16 > 1), v17 + 1, 1);
        v15 = v40;
      }

      v15[2] = v17 + 1;
      v15[v17 + 4] = v14;
      v35 = v15;
      if (v33)
      {
        if (!v10)
        {
          goto LABEL_35;
        }

        v2 = v11;
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v22 = v32;
        sub_10007B9A4(&qword_10026E450, &unk_1001EDB90);
        v23 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v23(v36, 0);
      }

      else
      {
        if (v10)
        {
          goto LABEL_36;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v2 = v11;
        v18 = 1 << *(v11 + 32);
        if (v8 >= v18)
        {
          goto LABEL_31;
        }

        v19 = v8 >> 6;
        v20 = *(v31 + 8 * (v8 >> 6));
        if (((v20 >> v8) & 1) == 0)
        {
          goto LABEL_32;
        }

        if (*(v11 + 36) != v9)
        {
          goto LABEL_33;
        }

        v21 = v20 & (-2 << (v8 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v19 << 6;
          v25 = v19 + 1;
          v26 = (v30 + 8 * v19);
          while (v25 < (v18 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_100083998(v8, v9, 0);
              v18 = __clz(__rbit64(v27)) + v24;
              goto LABEL_25;
            }
          }

          sub_100083998(v8, v9, 0);
        }

LABEL_25:
        v29 = *(v11 + 36);
        v37 = v18;
        v38 = v29;
        v39 = 0;
        v22 = v32;
      }

      if (v6 == v22)
      {
        sub_100083998(v37, v38, v39);

        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

id sub_10013F6A4()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_10026E418 = result;
  return result;
}

void sub_10013F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  sub_1000080A4();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = sub_10000C3AC();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v30 = sub_10000332C();
  sub_100023E6C(v30, xmmword_1001E5F70);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B004();
  }

  else
  {
    sub_100004D14();
  }

  sub_10000BA10();

  sub_100002C00(&a9);
  sub_100008504();
  LogInterpolation.init(stringLiteral:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  sub_100007A3C();
  v32 = swift_allocObject();
  sub_10000A444(v32);
  v33 = v24;
  sub_10011F39C("fetchNamespaceAreas(_:)", 0x17uLL, 2);
  sub_1000048C8();
  sub_1000058C8();
}

void sub_10013F850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a2;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100146C24(a4);
  if (v14 && (v15 = sub_10013FC58(v14), , v15))
  {
    v16 = [objc_opt_self() defaultTreatmentStore];
    sub_100062640(v15);
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v37 = v6;
    isa = v17.super.isa;

    v38 = [v16 areasForNamespaces:isa];

    v19 = swift_allocObject();
    v36 = a5;
    swift_unknownObjectWeakInit();
    v32 = v10;
    v20 = *(v11 + 16);
    v34 = a6;
    v35 = v20;
    v20(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v10);
    v21 = *(v11 + 80);
    v39 = (v21 + 24) & ~v21;
    v22 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v33 = *(v11 + 32);
    v24 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v32;
    v33(v23 + ((v21 + 24) & ~v21), v24, v32);
    *(v23 + v22) = a6;
    v45 = sub_1001473E8;
    v46 = v23;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000266E0;
    v44 = &unk_10024E9D0;
    v26 = _Block_copy(&aBlock);

    [v38 addErrorBlock:v26];
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35(v13, v40, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v33(v28 + v39, v13, v25);
    *(v28 + v22) = v34;
    v45 = sub_100147400;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001475C4;
    v44 = &unk_10024EA20;
    v29 = _Block_copy(&aBlock);

    v30 = v38;
    [v38 addSuccessBlock:v29];
    _Block_release(v29);
  }

  else
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD000000000000034, 0x80000001001FDE00, 0, 0);
    swift_willThrow();
  }
}

void *sub_10013FC58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100027C2C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100011BAC(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100027C2C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10013FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v23 = a1;
  v22 = type metadata accessor for JSCallable();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a4;
    *&v26 = Strong;
    sub_100002C4C(&v26, &v24);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v24 = a4;
  }

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("fetchNamespaceAreas(_:)", 23, 2, &v24);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v24, MetatypeMetadata);
      v16 = v20;
      v17 = v22;
      (*(v5 + 16))(v20, v21, v22);
      v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v24);
    }

    else
    {
      return sub_100009F5C(&v24, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001400FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v52 = a3;
  v56 = a2;
  v54 = type metadata accessor for JSCallable();
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v54);
  v50 = v5;
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68 = 0;
  sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v7 = v68;
  if (v68)
  {
    sub_10007B9A4(&qword_10026E468, &unk_1001EDBA8);
    v8 = static _DictionaryStorage.copy(original:)();
    v9 = 0;
    v10 = v7 + 64;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    v65 = v8;
    v57 = v7;
    v58 = v8 + 64;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_11:
        v18 = v15 | (v9 << 6);
        v19 = *(v7 + 56);
        v20 = (*(v7 + 48) + 16 * v18);
        v21 = v20[1];
        v64 = *v20;
        v22 = *(*(v19 + 8 * v18) + 16);
        if (v22)
        {
          v59 = v13;
          v23 = v21;
          sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
          v24 = swift_allocObject();
          v25 = j__malloc_size(v24);
          v24[2] = v22;
          v24[3] = 2 * ((v25 - 32) / 16);
          sub_10018C670();
          v62 = v68;
          v63 = v26;
          v60 = MetatypeMetadata;
          v61 = v69;

          sub_10004EB70();
          if (v63 != v22)
          {
            goto LABEL_31;
          }

          v7 = v57;
          v13 = v59;
          v27 = v23;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        *(v58 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v28 = v65;
        v29 = (*(v65 + 48) + 16 * v18);
        *v29 = v64;
        v29[1] = v27;
        *(*(v28 + 56) + 8 * v18) = v24;
        v30 = *(v28 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        *(v65 + 16) = v32;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    else
    {
LABEL_6:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v9 >= v14)
        {
          break;
        }

        v17 = *(v10 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_11;
        }
      }

      if (qword_1002686E8 != -1)
      {
        goto LABEL_32;
      }
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = *(type metadata accessor for LogInterpolation() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v67 = v55;
      *&v66 = Strong;
      sub_100002C4C(&v66, &v68);
    }

    else
    {
      v37 = v55;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v68 = v37;
    }

    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v68);
    LogInterpolation.init(stringLiteral:)();
    MetatypeMetadata = sub_10007B9A4(&qword_10026E470, &qword_1001EDBB8);
    *&v68 = v65;

    static LogInterpolation.safe(_:)();
    sub_100009F5C(&v68, &qword_10026D350, &qword_1001E6050);
    v40 = static os_log_type_t.default.getter();
    sub_1000036B0(v40);

    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      sub_10011F068("fetchNamespaceAreas(_:)", 23, 2, &v68);

      if (MetatypeMetadata)
      {
        sub_100003CA8(&v68, MetatypeMetadata);
        v43 = v53;
        v44 = v51;
        v45 = v54;
        (*(v53 + 16))(v51, v52, v54);
        v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
        v47 = (v50 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        (*(v43 + 32))(v48 + v46, v44, v45);
        *(v48 + v47) = v65;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v68);
      }

      else
      {

        return sub_100009F5C(&v68, &qword_10026D6C8, &unk_1001ECB60);
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001407D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  sub_1000080A4();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = sub_10000C3AC();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v30 = sub_10000332C();
  sub_100023E6C(v30, xmmword_1001E5F70);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B004();
  }

  else
  {
    sub_100004D14();
  }

  sub_10000BA10();

  sub_100002C00(&a9);
  sub_100008504();
  LogInterpolation.init(stringLiteral:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  sub_100007A3C();
  v32 = swift_allocObject();
  sub_10000A444(v32);
  v33 = v24;
  sub_100019CC4("fetchTopicAreas(_:)");
  sub_1000048C8();
  sub_1000058C8();
}

void sub_100140940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a2;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100146C24(a4);
  if (v14 && (v15 = sub_10013FC58(v14), , v15))
  {
    v16 = [objc_opt_self() defaultTreatmentStore];
    sub_100062640(v15);
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v37 = v6;
    isa = v17.super.isa;

    v38 = [v16 areasForTopics:isa];

    v19 = swift_allocObject();
    v36 = a5;
    swift_unknownObjectWeakInit();
    v32 = v10;
    v20 = *(v11 + 16);
    v34 = a6;
    v35 = v20;
    v20(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v10);
    v21 = *(v11 + 80);
    v39 = (v21 + 24) & ~v21;
    v22 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v33 = *(v11 + 32);
    v24 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v32;
    v33(v23 + ((v21 + 24) & ~v21), v24, v32);
    *(v23 + v22) = a6;
    v45 = sub_100147388;
    v46 = v23;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000266E0;
    v44 = &unk_10024E8B8;
    v26 = _Block_copy(&aBlock);

    [v38 addErrorBlock:v26];
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35(v13, v40, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v33(v28 + v39, v13, v25);
    *(v28 + v22) = v34;
    v45 = sub_1001473A0;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001475C4;
    v44 = &unk_10024E908;
    v29 = _Block_copy(&aBlock);

    v30 = v38;
    [v38 addSuccessBlock:v29];
    _Block_release(v29);
  }

  else
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD00000000000002CLL, 0x80000001001FDD50, 0, 0);
    swift_willThrow();
  }
}

uint64_t sub_100140D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v23 = a1;
  v22 = type metadata accessor for JSCallable();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a4;
    *&v26 = Strong;
    sub_100002C4C(&v26, &v24);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v24 = a4;
  }

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("fetchTopicAreas(_:)", 19, 2, &v24);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v24, MetatypeMetadata);
      v16 = v20;
      v17 = v22;
      (*(v5 + 16))(v20, v21, v22);
      v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v24);
    }

    else
    {
      return sub_100009F5C(&v24, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001410D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v52 = a3;
  v56 = a2;
  v54 = type metadata accessor for JSCallable();
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v54);
  v50 = v5;
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68 = 0;
  sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v7 = v68;
  if (v68)
  {
    sub_10007B9A4(&qword_10026E468, &unk_1001EDBA8);
    v8 = static _DictionaryStorage.copy(original:)();
    v9 = 0;
    v10 = v7 + 64;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    v65 = v8;
    v57 = v7;
    v58 = v8 + 64;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_11:
        v18 = v15 | (v9 << 6);
        v19 = *(v7 + 56);
        v20 = (*(v7 + 48) + 16 * v18);
        v21 = v20[1];
        v64 = *v20;
        v22 = *(*(v19 + 8 * v18) + 16);
        if (v22)
        {
          v59 = v13;
          v23 = v21;
          sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
          v24 = swift_allocObject();
          v25 = j__malloc_size(v24);
          v24[2] = v22;
          v24[3] = 2 * ((v25 - 32) / 16);
          sub_10018C670();
          v62 = v68;
          v63 = v26;
          v60 = MetatypeMetadata;
          v61 = v69;

          sub_10004EB70();
          if (v63 != v22)
          {
            goto LABEL_31;
          }

          v7 = v57;
          v13 = v59;
          v27 = v23;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        *(v58 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v28 = v65;
        v29 = (*(v65 + 48) + 16 * v18);
        *v29 = v64;
        v29[1] = v27;
        *(*(v28 + 56) + 8 * v18) = v24;
        v30 = *(v28 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        *(v65 + 16) = v32;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    else
    {
LABEL_6:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v9 >= v14)
        {
          break;
        }

        v17 = *(v10 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_11;
        }
      }

      if (qword_1002686E8 != -1)
      {
        goto LABEL_32;
      }
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = *(type metadata accessor for LogInterpolation() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v67 = v55;
      *&v66 = Strong;
      sub_100002C4C(&v66, &v68);
    }

    else
    {
      v37 = v55;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v68 = v37;
    }

    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v68);
    LogInterpolation.init(stringLiteral:)();
    MetatypeMetadata = sub_10007B9A4(&qword_10026E470, &qword_1001EDBB8);
    *&v68 = v65;

    static LogInterpolation.safe(_:)();
    sub_100009F5C(&v68, &qword_10026D350, &qword_1001E6050);
    v40 = static os_log_type_t.default.getter();
    sub_1000036B0(v40);

    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      sub_10011F068("fetchTopicAreas(_:)", 19, 2, &v68);

      if (MetatypeMetadata)
      {
        sub_100003CA8(&v68, MetatypeMetadata);
        v43 = v53;
        v44 = v51;
        v45 = v54;
        (*(v53 + 16))(v51, v52, v54);
        v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
        v47 = (v50 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        (*(v43 + 32))(v48 + v46, v44, v45);
        *(v48 + v47) = v65;
        dispatch thunk of TaskScheduler.schedule(task:)();

        return sub_100002C00(&v68);
      }

      else
      {

        return sub_100009F5C(&v68, &qword_10026D6C8, &unk_1001ECB60);
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001417B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  sub_1000080A4();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = sub_10000C3AC();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v30 = sub_10000332C();
  sub_100023E6C(v30, xmmword_1001E5F70);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B004();
  }

  else
  {
    sub_100004D14();
  }

  sub_10000BA10();

  sub_100002C00(&a9);
  sub_100008504();
  LogInterpolation.init(stringLiteral:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  sub_100007A3C();
  v32 = swift_allocObject();
  sub_10000A444(v32);
  v33 = v24;
  sub_100019CC4("fetchTreatments(_:)");
  sub_1000048C8();
  sub_1000058C8();
}

void sub_10014191C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), void *a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v42 = a5;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100146C24(a4);
  if (v14 && (v15 = sub_10013FC58(v14), , v15))
  {
    v37 = a2;
    v38 = v6;
    v16 = [objc_opt_self() defaultTreatmentStore];
    sub_100062640(v15);
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v39 = a6;
    isa = v17.super.isa;

    v40 = [v16 activeTreatmentsForAreas:isa];

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v41;
    v41 = *(v11 + 16);
    v41(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v10);
    v21 = *(v11 + 80);
    v35 = ~v21;
    v22 = (v21 + 24) & ~v21;
    v34 = v12 + 7;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v36 = *(v11 + 32);
    v36(v23 + v22, v13, v10);
    *(v23 + ((v12 + 7 + v22) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v47 = sub_1001471B8;
    v48 = v23;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v33 = &v45;
    v45 = sub_1000266E0;
    v46 = &unk_10024E7A0;
    v24 = _Block_copy(&aBlock);

    [v40 addErrorBlock:v24];
    _Block_release(v24);
    if (qword_1002686A8 != -1)
    {
      swift_once();
    }

    v25 = qword_10026E418;
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41(v13, v37, v10);
    v27 = (v21 + 32) & v35;
    v28 = (v34 + v27) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v26;
    v36(v29 + v27, v13, v10);
    *(v29 + v28) = v39;
    v47 = sub_10014729C;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_1001475C4;
    v46 = &unk_10024E7F0;
    v30 = _Block_copy(&aBlock);
    v31 = v25;

    v32 = v40;
    [v40 addSuccessBlock:v30];
    _Block_release(v30);
  }

  else
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD000000000000031, 0x80000001001FDC80, 0, 0);
    swift_willThrow();
  }
}

uint64_t sub_100141D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v19 = a1;
  v18 = type metadata accessor for JSCallable();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10011F068("fetchTreatments(_:)", 19, 2, v20);

    if (v21)
    {
      sub_100003CA8(v20, v21);
      v12 = v18;
      (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      (*(v3 + 32))(v15 + v13, v5, v12);
      *(v15 + v14) = v19;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v20);
    }

    else
    {
      return sub_100009F5C(v20, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001420A8()
{
  v0 = type metadata accessor for JSCallable();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t sub_100142498(void *a1)
{
  v2 = v1;
  v31 = a1;
  v4 = type metadata accessor for Date();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  *(inited + 32) = 0x65746144646E65;
  *(inited + 40) = 0xE700000000000000;
  v13 = [v2 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = *(v7 + 8);
  v15(v11, v4);
  v16 = [a1 stringFromDate:isa];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x696669746E656469;
  *(inited + 88) = 0xEA00000000007265;
  v20 = [v2 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 96) = v21;
  *(inited + 104) = v23;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7461447472617473;
  *(inited + 136) = 0xE900000000000065;
  v24 = [v2 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = Date._bridgeToObjectiveC()().super.isa;
  v15(v11, v4);
  v26 = [v31 stringFromDate:v25];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v27;
  *(inited + 152) = v29;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1001427A0(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v20[3] = ObjectType;
  v20[0] = v2;
  v10 = v2;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v20);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v10;
  v14[5] = ObjectType;

  v15 = v10;
  v16 = a1;
  v17 = sub_10011F39C("fetchTreatmentSets(_:_:)", 0x18uLL, 2);

  return v17;
}

uint64_t sub_1001429B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v118 = a6;
  v119 = a7;
  v114 = a3;
  v116 = a2;
  v10 = type metadata accessor for JSCallable();
  v117 = *(v10 - 8);
  v11 = *(v117 + 64);
  __chkstk_darwin(v10);
  v113 = v12;
  v115 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v111 = (v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v112 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v104 - v21;
  v23 = __chkstk_darwin(v20);
  v110 = v104 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = v104 - v26;
  v28 = __chkstk_darwin(v25);
  v120 = v104 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v104 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = v104 - v34;
  __chkstk_darwin(v33);
  v121 = v104 - v36;
  v37 = sub_100146C24(a4);
  if (!v37 || (v38 = sub_10013FC58(v37), , (v109 = v38) == 0))
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD00000000000002ELL, 0x80000001001FDB70, 0, 0);
    return swift_willThrow();
  }

  if (qword_1002686A8 != -1)
  {
    swift_once();
  }

  v107 = v10;
  v106 = v7;
  v39 = qword_10026E418;
  v40 = type metadata accessor for Date();
  sub_10000A7C0(v121, 1, 1, v40);
  v108 = v39;
  if (!a5)
  {
    aBlock = 0u;
    v124 = 0u;
    v47 = v39;
    v42 = v22;
    goto LABEL_12;
  }

  v41 = v39;
  sub_100052D94(a5, &aBlock);
  v42 = v22;
  if (!*(&v124 + 1))
  {
LABEL_12:
    v48 = &qword_10026D350;
    v49 = &qword_1001E6050;
    p_aBlock = &aBlock;
LABEL_13:
    sub_100009F5C(p_aBlock, v48, v49);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v105 = v122;
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 dateFromString:v43];

  if (v44)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v82 = v121;
  sub_100009F5C(v121, &unk_100271EA0, &qword_1001E77F0);
  sub_10000A7C0(v35, v45, 1, v40);
  sub_10003FD2C(v35, v82);
  sub_1000652F0(v82, v32);
  if (sub_100009F34(v32, 1, v40) != 1)
  {

    v48 = &unk_100271EA0;
    v49 = &qword_1001E77F0;
    p_aBlock = v32;
    goto LABEL_13;
  }

  sub_100009F5C(v32, &unk_100271EA0, &qword_1001E77F0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  v104[1] = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v83 = *(type metadata accessor for LogInterpolation() - 8);
  v84 = *(v83 + 72);
  v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1001E5F70;
  v104[0] = v86;
  *(&v124 + 1) = v119;
  *&aBlock = v118;
  v87 = v118;
  v88 = AMSLogKey();
  if (v88)
  {
    v89 = v88;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v98._countAndFlagsBits = 0xD00000000000001BLL;
  v98._object = 0x80000001001FDBE0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v98);
  *(&v124 + 1) = &type metadata for String;
  aBlock = v105;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
  v99._countAndFlagsBits = 10530;
  v99._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v99);
  LogInterpolation.init(stringInterpolation:)();
  v100 = static os_log_type_t.error.getter();
  sub_1000036B0(v100);

LABEL_14:
  v51 = v107;
  sub_10000A7C0(v120, 1, 1, v40);
  if (!a5)
  {
    aBlock = 0u;
    v124 = 0u;
    goto LABEL_20;
  }

  sub_100052D94(a5, &aBlock);
  if (!*(&v124 + 1))
  {
LABEL_20:
    v56 = &qword_10026D350;
    v57 = &qword_1001E6050;
    v58 = &aBlock;
LABEL_21:
    sub_100009F5C(v58, v56, v57);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v52 = v122;
    v53 = String._bridgeToObjectiveC()();
    v54 = [v108 dateFromString:v53];

    if (v54)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v90 = v120;
    sub_100009F5C(v120, &unk_100271EA0, &qword_1001E77F0);
    sub_10000A7C0(v27, v55, 1, v40);
    sub_10003FD2C(v27, v90);
    v91 = v110;
    sub_1000652F0(v121, v110);
    if (sub_100009F34(v91, 1, v40) == 1)
    {
      *(&v105 + 1) = v52;
      sub_100009F5C(v91, &unk_100271EA0, &qword_1001E77F0);
      if (qword_1002686E8 != -1)
      {
        swift_once();
      }

      v110 = qword_100287848;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v92 = *(type metadata accessor for LogInterpolation() - 8);
      v93 = *(v92 + 72);
      v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(&v124 + 1) = v119;
      *&aBlock = v118;
      v95 = v118;
      v96 = AMSLogKey();
      if (v96)
      {
        v97 = v96;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&aBlock);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v101._object = 0x80000001001FDBC0;
      v101._countAndFlagsBits = 0xD000000000000019;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v101);
      *(&v124 + 1) = &type metadata for String;
      *&aBlock = *(&v105 + 1);
      *(&aBlock + 1) = *(&v52 + 1);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
      v102._countAndFlagsBits = 10530;
      v102._object = 0xE200000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
      LogInterpolation.init(stringInterpolation:)();
      v103 = static os_log_type_t.error.getter();
      sub_1000036B0(v103);

      v51 = v107;
      goto LABEL_22;
    }

    v56 = &unk_100271EA0;
    v57 = &qword_1001E77F0;
    v58 = v91;
    goto LABEL_21;
  }

LABEL_22:
  v59 = [objc_opt_self() defaultTreatmentStore];
  sub_100062640(v109);
  v60.super.isa = Set._bridgeToObjectiveC()().super.isa;

  sub_1000652F0(v121, v42);
  if (sub_100009F34(v42, 1, v40) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v40 - 8) + 8))(v42, v40);
  }

  v62 = v112;
  sub_1000652F0(v120, v112);
  if (sub_100009F34(v62, 1, v40) == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v40 - 8) + 8))(v62, v40);
  }

  v112 = [v59 treatmentsForAreas:v60.super.isa startDate:isa endDate:v63];

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = v117;
  v111 = *(v117 + 16);
  v66 = v115;
  v111(v115, v114, v51);
  v67 = v51;
  v68 = *(v65 + 80);
  v69 = (v68 + 24) & ~v68;
  v114 = v113 + 7;
  v70 = (v113 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  *(v71 + 16) = v64;
  v117 = *(v65 + 32);
  (v117)(v71 + v69, v66, v67);
  *(v71 + v70) = v119;
  v125 = sub_100146EC8;
  v126 = v71;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1000266E0;
  *(&v124 + 1) = &unk_10024E688;
  v72 = _Block_copy(&aBlock);

  [v112 addErrorBlock:v72];
  _Block_release(v72);
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = v67;
  v111(v66, v116, v67);
  v75 = (v68 + 32) & ~v68;
  v76 = (v114 + v75) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v108;
  *(v77 + 16) = v108;
  *(v77 + 24) = v73;
  (v117)(v77 + v75, v66, v74);
  *(v77 + v76) = v119;
  v125 = sub_100146EE0;
  v126 = v77;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1001475C4;
  *(&v124 + 1) = &unk_10024E6D8;
  v79 = _Block_copy(&aBlock);
  v80 = v78;

  v81 = v112;
  [v112 addSuccessBlock:v79];
  _Block_release(v79);

  sub_100009F5C(v120, &unk_100271EA0, &qword_1001E77F0);
  return sub_100009F5C(v121, &unk_100271EA0, &qword_1001E77F0);
}

uint64_t sub_1001437F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v19 = a1;
  v18 = type metadata accessor for JSCallable();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10011F068("fetchTreatmentSets(_:_:)", 24, 2, v20);

    if (v21)
    {
      sub_100003CA8(v20, v21);
      v12 = v18;
      (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      (*(v3 + 32))(v15 + v13, v5, v12);
      *(v15 + v14) = v19;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v20);
    }

    else
    {
      return sub_100009F5C(v20, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100143B0C()
{
  v0 = type metadata accessor for JSCallable();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_10007B9A4(&qword_10026E448, &qword_1001F1AA0);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t sub_100143EF8()
{
  sub_10000AA2C();
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(v1, v0);
  *(v3 + 32) = v2;

  sub_100105E34(v3);
}

void sub_10014403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  sub_1000080A4();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = sub_10000C3AC();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v30 = sub_10000332C();
  sub_100023E6C(v30, xmmword_1001E5F70);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B004();
  }

  else
  {
    sub_100004D14();
  }

  sub_10000BA10();

  sub_100002C00(&a9);
  sub_100008504();
  LogInterpolation.init(stringLiteral:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  sub_100007A3C();
  v32 = swift_allocObject();
  sub_10000A444(v32);
  v33 = v24;
  sub_10011F39C("generateExperimentData(_:)", 0x1AuLL, 2);
  sub_1000048C8();
  sub_1000058C8();
}

void sub_1001441B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a2;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100146C24(a4);
  if (v14 && (v15 = sub_10013FC58(v14), , v15))
  {
    v16 = [objc_opt_self() defaultTreatmentStore];
    sub_100062640(v15);
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v37 = v6;
    isa = v17.super.isa;

    v38 = [v16 experimentDataForAreas:isa];

    v19 = swift_allocObject();
    v36 = a5;
    swift_unknownObjectWeakInit();
    v32 = v10;
    v20 = *(v11 + 16);
    v34 = a6;
    v35 = v20;
    v20(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v10);
    v21 = *(v11 + 80);
    v39 = (v21 + 24) & ~v21;
    v22 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v33 = *(v11 + 32);
    v24 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v32;
    v33(v23 + ((v21 + 24) & ~v21), v24, v32);
    *(v23 + v22) = a6;
    v45 = sub_100146DD4;
    v46 = v23;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000266E0;
    v44 = &unk_10024E570;
    v26 = _Block_copy(&aBlock);

    [v38 addErrorBlock:v26];
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35(v13, v40, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v33(v28 + v39, v13, v25);
    *(v28 + v22) = v34;
    v45 = sub_100146DEC;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_10008E0EC;
    v44 = &unk_10024E5C0;
    v29 = _Block_copy(&aBlock);

    v30 = v38;
    [v38 addSuccessBlock:v29];
    _Block_release(v29);
  }

  else
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD000000000000032, 0x80000001001FDAA0, 0, 0);
    swift_willThrow();
  }
}

uint64_t sub_1001445BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v19 = a1;
  v18 = type metadata accessor for JSCallable();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10011F068("generateExperimentData(_:)", 26, 2, v20);

    if (v21)
    {
      sub_100003CA8(v20, v21);
      v12 = v18;
      (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      (*(v3 + 32))(v15 + v13, v5, v12);
      *(v15 + v14) = v19;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v20);
    }

    else
    {
      return sub_100009F5C(v20, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001448D8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = type metadata accessor for JSCallable();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v24 = sub_100002BC0(0, &qword_10026BB80, NSArray_ptr);
  v23[0] = a1;
  v9 = a1;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v23, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_10011F068("generateExperimentData(_:)", 26, 2, v23);

    if (v24)
    {
      sub_100003CA8(v23, v24);
      v13 = v20;
      v14 = v22;
      (*(v4 + 16))(v20, v21, v22);
      v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      (*(v4 + 32))(v17 + v15, v13, v14);
      *(v17 + v16) = v9;
      v18 = v9;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v23);
    }

    else
    {
      return sub_100009F5C(v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_100144CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  sub_1000080A4();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = sub_10000C3AC();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v30 = sub_10000332C();
  sub_100023E6C(v30, xmmword_1001E5F70);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B004();
  }

  else
  {
    sub_100004D14();
  }

  sub_10000BA10();

  sub_100002C00(&a9);
  sub_100008504();
  LogInterpolation.init(stringLiteral:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  sub_100007A3C();
  v32 = swift_allocObject();
  sub_10000A444(v32);
  v33 = v24;
  sub_100019CC4("generatePayload(_:)");
  sub_1000048C8();
  sub_1000058C8();
}

void sub_100144E14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a2;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100146C24(a4);
  if (v14 && (v15 = sub_10013FC58(v14), , v15))
  {
    v16 = [objc_opt_self() defaultTreatmentStore];
    sub_100062640(v15);
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v37 = v6;
    isa = v17.super.isa;

    v38 = [v16 treatmentsPayloadForAreas:isa];

    v19 = swift_allocObject();
    v36 = a5;
    swift_unknownObjectWeakInit();
    v32 = v10;
    v20 = *(v11 + 16);
    v34 = a6;
    v35 = v20;
    v20(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v10);
    v21 = *(v11 + 80);
    v39 = (v21 + 24) & ~v21;
    v22 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v33 = *(v11 + 32);
    v24 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v32;
    v33(v23 + ((v21 + 24) & ~v21), v24, v32);
    *(v23 + v22) = a6;
    v45 = sub_100146C80;
    v46 = v23;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000266E0;
    v44 = &unk_10024E458;
    v26 = _Block_copy(&aBlock);

    [v38 addErrorBlock:v26];
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35(v13, v40, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v33(v28 + v39, v13, v25);
    *(v28 + v22) = v34;
    v45 = sub_100146C98;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001475C4;
    v44 = &unk_10024E4A8;
    v29 = _Block_copy(&aBlock);

    v30 = v38;
    [v38 addSuccessBlock:v29];
    _Block_release(v29);
  }

  else
  {
    type metadata accessor for JSError();
    sub_10010F0F0(2, 0xD00000000000002ALL, 0x80000001001FD9D0, 0, 0);
    swift_willThrow();
  }
}

uint64_t sub_10014521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v23 = a1;
  v22 = type metadata accessor for JSCallable();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a4;
    *&v26 = Strong;
    sub_100002C4C(&v26, &v24);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v24 = a4;
  }

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("generatePayload(_:)", 19, 2, &v24);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v24, MetatypeMetadata);
      v16 = v20;
      v17 = v22;
      (*(v5 + 16))(v20, v21, v22);
      v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v24);
    }

    else
    {
      return sub_100009F5C(&v24, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001455AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v6 = type metadata accessor for JSCallable();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = a4;
    *&v30 = Strong;
    sub_100002C4C(&v30, &v28);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v28 = a4;
  }

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v28);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
  *&v28 = a1;
  v14 = a1;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v28, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10011F068("generatePayload(_:)", 19, 2, &v28);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v28, MetatypeMetadata);
      v18 = v26;
      v19 = v24;
      v20 = v27;
      (*(v26 + 16))(v24, v25, v27);
      v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v22 = swift_allocObject();
      (*(v18 + 32))(v22 + v21, v19, v20);
      *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v23 = v14;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v28);
    }

    else
    {
      return sub_100009F5C(&v28, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10014598C()
{
  sub_10000AA2C();
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_100002BC0(0, v1, v0);
  *(v3 + 32) = v2;
  v4 = v2;
  sub_100105E34(v3);
}

void sub_100145A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v25;
  a24 = v26;
  ObjectType = swift_getObjectType();
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v28 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v28);
  v30 = *(v29 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  a12 = ObjectType;
  a9 = v24;
  v33 = v24;
  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&a9);
  LogInterpolation.init(stringLiteral:)();
  v36 = static os_log_type_t.default.getter();
  sub_1000036B0(v36);

  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  *(v37 + 24) = ObjectType;
  v33;
  sub_10011F39C("synchronize()", 0xDuLL, 2);

  sub_1000058C8();
}

void sub_100145C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v26 = a5;
  v23 = a4;
  v6 = type metadata accessor for JSCallable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultTreatmentStore];
  v25 = [v10 synchronizeTreatments];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v7 + 16);
  v22(v9, a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v21 = *(v7 + 32);
  v21(v14 + v12, v9, v6);
  *(v14 + v13) = v26;
  v31 = sub_1001467A4;
  v32 = v14;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v20 = &v29;
  v29 = sub_1000266E0;
  v30 = &unk_10024E340;
  v15 = _Block_copy(&aBlock);

  [v25 addErrorBlock:v15];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22(v9, v24, v6);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v21(v17 + v12, v9, v6);
  *(v17 + v13) = v26;
  v31 = sub_1001467BC;
  v32 = v17;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100005E50;
  v30 = &unk_10024E390;
  v18 = _Block_copy(&aBlock);

  v19 = v25;
  [v25 addSuccessBlock:v18];
  _Block_release(v18);
}

uint64_t sub_100145FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v23 = a1;
  v22 = type metadata accessor for JSCallable();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a4;
    *&v26 = Strong;
    sub_100002C4C(&v26, &v24);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v24 = a4;
  }

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("synchronize()", 13, 2, &v24);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v24, MetatypeMetadata);
      v16 = v20;
      v17 = v22;
      (*(v5 + 16))(v20, v21, v22);
      v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v24);
    }

    else
    {
      return sub_100009F5C(&v24, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100146350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = type metadata accessor for JSCallable();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = a3;
    *&v25 = Strong;
    sub_100002C4C(&v25, &v23);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v23 = a3;
  }

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v23);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("synchronize()", 13, 2, &v23);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v23, MetatypeMetadata);
      v15 = v20;
      v16 = v22;
      (*(v4 + 16))(v20, v21, v22);
      v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v18 = swift_allocObject();
      (*(v4 + 32))(v18 + v17, v15, v16);
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v23);
    }

    else
    {
      return sub_100009F5C(&v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_1001466C4()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 32) = 1;
  sub_100105E34(v0);
}

uint64_t sub_1001467BC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  v9 = *(v0 + 16);
  v11 = *(v0 + v10);

  return sub_100146350(v9, v0 + v8, v11);
}

uint64_t sub_10014683C()
{
  v0 = *(*(type metadata accessor for JSCallable() - 8) + 80);

  return sub_1001466C4();
}

void sub_1001468BC(uint64_t a1, void *a2)
{
  sub_10007B9A4(&unk_10026FE70, &unk_1001ED840);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = 0;
  v27 = v3;
  v28 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v26 = v3 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v28 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v28 + 56) + 8 * v15);

      v20 = v19;
      v21 = sub_100142498(a2);

      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v22 = (v27[6] + 16 * v15);
      *v22 = v17;
      v22[1] = v18;
      *(v27[7] + 8 * v15) = v21;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {

        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100146A4C(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v28 = result;
  v29 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v27 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v29 + 56);
      v18 = (*(v29 + 48) + 16 * v16);
      v19 = v18[1];
      v33 = *v18;
      v20 = *(v17 + 8 * v16);

      sub_10013F388(v20, a2);
      v22 = v21;
      v32 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);

      *&v31 = v22;
      v4 = v28;
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = (v28[6] + 16 * v16);
      *v23 = v33;
      v23[1] = v19;
      result = sub_100002C4C(&v31, (v28[7] + 32 * v16));
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100146C24(void *a1)
{
  v1 = [a1 toArray];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100146CC4()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_10000326C();
  sub_100011AA0(v7);
  return sub_10014598C();
}

uint64_t sub_100146D48()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  return sub_10013CD40(v0 + v9, *(v0 + v8));
}

uint64_t sub_100146E04()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100146F0C()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_10000326C();
  sub_100011AA0(v7);
  return sub_100143EF8();
}

void sub_100146F90(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_1001471D0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_1001472B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  sub_10000326C();
  v13 = *(v2 + v12);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);

  return a2(a1, v14, v15, v2 + v11, v13);
}

uint64_t sub_100147418(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  sub_10000326C();
  v12 = *(v2 + 16);
  v14 = *(v2 + v13);

  return a2(a1, v12, v2 + v11, v14);
}

uint64_t sub_1001474BC(void (*a1)(void))
{
  v3 = type metadata accessor for JSCallable();
  sub_100002D30(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v6);
  a1(*(v1 + v7));

  return _swift_deallocObject(v1, v7 + 8, v5 | 7);
}

void sub_1001477A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1001496E4();

  v12 = sub_1001AF38C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a7;
  aBlock[4] = sub_10014998C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001475C4;
  aBlock[3] = &unk_10024EC50;
  v16 = _Block_copy(aBlock);

  [v12 getNotificationSettingsWithCompletionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1001479C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v6 = type metadata accessor for JSCallable();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026E4B8, &qword_1001EDBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001001FB9A0;
  *(inited + 48) = [a1 authorizationStatus];
  v9 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v33 = type metadata accessor for JSUserNotifications();
    *&v32 = v14;
    sub_100002C4C(&v32, &v30);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v30 = a4;
  }

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v30);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = sub_10007B9A4(&qword_10026CA28, &unk_1001EBF10);
  *&v30 = v9;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v30, &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
  }

  v19 = v18;
  sub_10011F068("getAuthorizationStatus(_:)", 26, 2, &v30);

  if (MetatypeMetadata)
  {
    sub_100003CA8(&v30, MetatypeMetadata);
    v21 = v28;
    v20 = v29;
    v22 = v26;
    (*(v28 + 16))(v26, v27, v29);
    v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v24 = swift_allocObject();
    (*(v21 + 32))(v24 + v23, v22, v20);
    *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v30);
  }

  else
  {

    return sub_100009F5C(&v30, &qword_10026D6C8, &unk_1001ECB60);
  }
}

void sub_10014803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v20 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001496E4();

  v21 = sub_1001AF38C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, v20, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = v13;
  (*(v10 + 32))(&v16[v14], v12, v9);
  *&v16[v15] = v22;
  aBlock[4] = sub_100149774;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001475C4;
  aBlock[3] = &unk_10024EBB0;
  v17 = _Block_copy(aBlock);

  v18 = v21;
  [v21 getNotificationSettingsWithCompletionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_100148274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v37 = type metadata accessor for JSCallable();
  v36 = *(v37 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v37);
  v33 = v8;
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001001FE1B0;
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 explicitContentSettingForBundleID:v11];

  *(inited + 48) = v12;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001001FDFB0;
  v13 = sub_1001487AC();
  v14 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(inited + 120) = v14;
  *(inited + 96) = v13;
  v15 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = *(type metadata accessor for LogInterpolation() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v41 = type metadata accessor for JSUserNotifications();
    *&v40 = v20;
    sub_100002C4C(&v40, &v38);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v38 = a6;
  }

  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v38);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = v14;
  *&v38 = v15;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v38, &qword_10026D350, &qword_1001E6050);
  v23 = static os_log_type_t.default.getter();
  sub_1000036B0(v23);

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
  }

  v25 = v24;
  sub_10011F068("getNotificationSettings(_:)", 27, 2, &v38);

  if (MetatypeMetadata)
  {
    sub_100003CA8(&v38, MetatypeMetadata);
    v26 = v36;
    v27 = v34;
    v28 = v37;
    (*(v36 + 16))(v34, v35, v37);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v33 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v28);
    *(v31 + v30) = v15;
    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v38);
  }

  else
  {

    return sub_100009F5C(&v38, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_1001487AC()
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EDBC0;
  strcpy((inited + 32), "alertSetting");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [v0 alertSetting];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x7974537472656C61;
  *(inited + 88) = 0xEA0000000000656CLL;
  *(inited + 96) = [v0 alertStyle];
  sub_100004B44();
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v2;
  *(inited + 144) = [v0 announcementSetting];
  sub_100004B44();
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = v3;
  *(inited + 192) = [v0 authorizationStatus];
  *(inited + 216) = &type metadata for Int;
  strcpy((inited + 224), "badgeSetting");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = [v0 badgeSetting];
  *(inited + 264) = &type metadata for Int;
  strcpy((inited + 272), "carPlaySetting");
  *(inited + 287) = -18;
  *(inited + 288) = [v0 carPlaySetting];
  sub_100004B44();
  *(inited + 312) = &type metadata for Int;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = v4;
  *(inited + 336) = [v0 criticalAlertSetting];
  sub_100004B44();
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = v5;
  *(inited + 384) = [v0 directMessagesSetting];
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0x676E6970756F7267;
  *(inited + 424) = 0xEF676E6974746553;
  *(inited + 432) = [v0 groupingSetting];
  sub_100004B44();
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = v6;
  *(inited + 480) = [v0 lockScreenSetting];
  sub_100004B44();
  *(inited + 504) = &type metadata for Int;
  *(inited + 512) = 0xD000000000000019;
  *(inited + 520) = v7;
  v8 = [v0 notificationCenterSetting];
  *(inited + 552) = &type metadata for Int;
  *(inited + 528) = v8;
  sub_100004B44();
  *(inited + 560) = 0xD00000000000001FLL;
  *(inited + 568) = v9;
  v10 = [v0 providesAppNotificationSettings];
  *(inited + 600) = &type metadata for Bool;
  *(inited + 576) = v10;
  sub_100004B44();
  *(inited + 608) = 0xD000000000000018;
  *(inited + 616) = v11;
  v12 = [v0 scheduledDeliverySetting];
  *(inited + 648) = &type metadata for Int;
  *(inited + 624) = v12;
  sub_100004B44();
  *(inited + 656) = 0xD000000000000013;
  *(inited + 664) = v13;
  v14 = [v0 showPreviewsSetting];
  *(inited + 696) = &type metadata for Int;
  *(inited + 672) = v14;
  strcpy((inited + 704), "soundSetting");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;
  v15 = [v0 soundSetting];
  *(inited + 744) = &type metadata for Int;
  *(inited + 720) = v15;
  sub_100004B44();
  *(inited + 752) = 0xD000000000000014;
  *(inited + 760) = v16;
  v17 = [v0 timeSensitiveSetting];
  *(inited + 792) = &type metadata for Int;
  *(inited + 768) = v17;
  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100148D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1001496E4();

  v12 = sub_1001AF38C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a7;
  aBlock[4] = sub_100149728;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100180570;
  aBlock[3] = &unk_10024EB10;
  v16 = _Block_copy(aBlock);

  [v12 getNotificationSettingsForTopicsWithCompletionHandler:v16];
  _Block_release(v16);
}