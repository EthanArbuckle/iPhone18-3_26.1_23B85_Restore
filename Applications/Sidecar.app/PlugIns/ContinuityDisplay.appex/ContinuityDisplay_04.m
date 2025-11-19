unint64_t sub_100050C14()
{
  result = qword_100080440;
  if (!qword_100080440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080440);
  }

  return result;
}

double sub_100050D58(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

id sub_100050DE0()
{
  result = [objc_allocWithZone(type metadata accessor for TimeSyncManager()) init];
  qword_100080460 = result;
  return result;
}

id sub_100050E14()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation];
  *v2 = 0;
  v2[8] = -1;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_clocks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100050EA8()
{
  v0 = sub_100057880();
  sub_100026FF4(v0, qword_100080468);
  sub_100026CEC(v0, qword_100080468);
  return sub_100057860();
}

BOOL sub_100050F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
  swift_beginAccess();

  sub_100054654(&qword_1000806B8);
  v8 = *(*(v3 + v7) + 16);
  sub_1000546B8(v8, &qword_1000806B8);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_100054BCC;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  swift_endAccess();
  return sub_10005101C();
}

BOOL sub_10005101C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation + 8);
  if (v1 != 255)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
    v3 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      sub_1000549C4(v2, v1 & 1);
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);
        v9 = v2;
        v10 = v1 & 1;

        v7(&v9);

        v6 += 16;
        --v5;
      }

      while (v5);
      sub_100054940(v2, v1);
    }
  }

  return v1 != 255;
}

void sub_10005110C(uint64_t a1, uint64_t a2)
{
  sub_100050F20(a1, a2);
  if (!sub_10005101C())
  {
    if (qword_100080458 != -1)
    {
      swift_once();
    }

    v2 = sub_100057880();
    sub_100026CEC(v2, qword_100080468);
    v3 = sub_100057850();
    v4 = sub_100057D80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Activating TimeSync", v5, 2u);
    }

    sub_100051214();
  }
}

void sub_100051214()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_100054964;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000AF8C;
  v5[3] = &unk_100074D58;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 notifyWhenClockManagerIsAvailable:v3];
  _Block_release(v3);
}

void sub_1000512F8(void *a1)
{
  if (qword_100080458 != -1)
  {
    swift_once();
  }

  v2 = sub_100057880();
  sub_100026CEC(v2, qword_100080468);
  v3 = sub_100057850();
  v4 = sub_100057D80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TSClockManager is Available", v5, 2u);
  }

  v6 = [objc_opt_self() sharedClockManager];
  [v6 addClient:a1];
  aBlock[0] = 0;
  v7 = [v6 addgPTPServicesWithError:aBlock];
  v8 = aBlock[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a1;
    aBlock[4] = sub_10005496C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100074DA8;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = a1;

    [v9 notifyWhengPTPManagerIsAvailable:v11];
    _Block_release(v11);
  }

  else
  {
    v14 = aBlock[0];
    v15 = sub_100057670();

    swift_willThrow();
    __chkstk_darwin(v16);
    sub_100054BD0(sub_100051A08, 0, sub_10000DEF0);
    swift_errorRetain();
    sub_10005170C(v15, 1);
  }
}

void sub_1000515D0()
{
  if (qword_100080458 != -1)
  {
    swift_once();
  }

  v0 = sub_100057880();
  sub_100026CEC(v0, qword_100080468);
  v1 = sub_100057850();
  v2 = sub_100057D80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "gPTPManager is Available", v3, 2u);
  }

  v4 = [objc_opt_self() sharedgPTPManager];
  v5 = v4;
  sub_10005170C(v4, 0);
}

uint64_t sub_10005170C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1000578E0();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100057910();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A1C(0, &qword_10007EEC0);
  v12 = sub_100057DC0();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = a2 & 1;
  *(v13 + 32) = a2 & 1;
  aBlock[4] = sub_1000549B8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_100074DF8;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_1000549C4(a1, v14);

  sub_100057900();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100040B30(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_100058000();
  sub_100057DE0();
  _Block_release(v15);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

BOOL sub_100051A2C(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v5 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v4 = a2;
  v6 = *(v4 + 8);
  v7 = a3 & 1;
  *(v4 + 8) = a3 & 1;
  sub_100054940(v5, v6);
  sub_1000549C4(a2, v7);
  return sub_10005101C();
}

id sub_100051A8C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100051B28()
{
  v1 = v0;
  v2 = sub_1000578E0();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100057910();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100080458 != -1)
  {
    swift_once();
  }

  v8 = sub_100057880();
  sub_100026CEC(v8, qword_100080468);
  v9 = sub_100057850();
  v10 = sub_100057D70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TimeSync Connection Interrupted", v11, 2u);
  }

  sub_100005A1C(0, &qword_10007EEC0);
  v12 = sub_100057DC0();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_100054920;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_100074D08;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  sub_100057900();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100040B30(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_100058000();
  sub_100057DE0();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

void sub_100051EBC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v2 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v1 = 0;
  v3 = *(v1 + 8);
  *(v1 + 8) = -1;
  sub_100054940(v2, v3);
  sub_100051214();
}

uint64_t sub_100051F6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100057880();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100080458 != -1)
  {
    swift_once();
  }

  v8 = sub_100026CEC(v4, qword_100080468);
  v9 = (*(v5 + 16))(v7, v8, v4);
  __chkstk_darwin(v9);
  *(&v15 - 2) = v10;
  __chkstk_darwin(v11);
  *(&v15 - 2) = a1;
  sub_100054BD0(sub_100054AFC, v12, sub_10000DF6C);
  (*(v5 + 8))(v7, v4);
  result = *(v2 + 16);
  v14 = *(v2 + 24);
  if (v14 == 255 || (v14 & 1) == 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = 1;
    sub_10005252C(result, v14);
    swift_errorRetain();
    return sub_100052174();
  }

  return result;
}

BOOL sub_100052174()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    v2 = *(v0 + 16);
    swift_beginAccess();
    v3 = *(v0 + 168);
    *(v0 + 168) = _swiftEmptyArrayStorage;
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_100052834(v2, v1 & 1);
      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v8 = v2;
        v9 = v1 & 1;

        v6(&v8);

        v5 += 16;
        --v4;
      }

      while (v4);
      sub_10005252C(v2, v1);
    }
  }

  return v1 != 255;
}

uint64_t Domain.__allocating_init()()
{
  v0 = swift_allocObject();
  Domain.init()();
  return v0;
}

uint64_t Domain.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  sub_100050D58(__src);
  memcpy((v0 + 32), __src, 0x81uLL);
  *(v0 + 168) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t Domain.deinit()
{
  Domain.deallocate()();
  sub_10005252C(*(v0 + 16), *(v0 + 24));

  return v0;
}

Swift::Void __swiftcall Domain.deallocate()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 != 255 && (v2 & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + 24);
    if (v4 != TSNullClockIdentifier)
    {
      sub_100052834(*(v0 + 16), 0);
      if (qword_100080458 != -1)
      {
        swift_once();
      }

      v5 = sub_100057880();
      sub_100026CEC(v5, qword_100080468);
      v6 = sub_100057850();
      v7 = sub_100057D80();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v6, v7, "%llx: Deallocating", v8, 0xCu);
      }

      if (qword_100080450 != -1)
      {
        swift_once();
      }

      sub_100039778();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v4;

      sub_10005110C(sub_100053064, v9);

      sub_10005252C(v3, v2);
    }
  }

  sub_100005A1C(0, &qword_10007F000);
  v10 = sub_100054FE4(-536870212, 0, 0);
  v11 = *(v1 + 16);
  *(v1 + 16) = v10;
  v12 = *(v1 + 24);
  *(v1 + 24) = 1;

  sub_10005252C(v11, v12);
}

uint64_t sub_10005252C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100052544(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100052544(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t Domain.__deallocating_deinit()
{
  Domain.deinit();

  return _swift_deallocClassInstance(v0, 176, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Domain.bind(peer:)(Swift::String peer)
{
  memset(v2, 0, sizeof(v2));
  sub_100052628();
  if (!v1)
  {
    memcpy(__dst, v2, sizeof(__dst));
    sub_100052720(__dst);
  }
}

uint64_t sub_100052628()
{
  sub_100057A80();
  v0 = StringToSockAddr();

  result = sub_1000578B0();
  if (v0 != result)
  {
    sub_100005A1C(0, &qword_10007F000);
    sub_100054FD8(v0, 0, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100052720(const void *a1)
{
  memcpy(__dst, (v1 + 32), 0x81uLL);
  if (sub_100054828(__dst) == 1)
  {
    memcpy(v4, a1, 0x80uLL);
    sub_100054B58(v4);
    memcpy((v1 + 32), v4, 0x81uLL);
    return sub_100052840();
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    sub_100054FE4(-536870212, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_100052834(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100052840()
{
  v1 = v0;
  result = sub_100052174();
  if ((result & 1) == 0)
  {
    memcpy(__dst, (v0 + 32), 0x81uLL);
    result = sub_100054828(__dst);
    if (result != 1)
    {
      memcpy(__src, __dst, sizeof(__src));
      if (qword_100080458 != -1)
      {
        swift_once();
      }

      v3 = sub_100057880();
      sub_100026CEC(v3, qword_100080468);
      v4 = sub_100057850();
      v5 = sub_100057D80();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v26 = v7;
        *v6 = 136446210;
        memcpy(v24, __dst, sizeof(v24));
        if (__dst[0])
        {
          v8 = __dst[0];
        }

        else
        {
          v8 = 128;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = getnameinfo(v24, v8, v9, 0x401u, v10, 0x20u, 26);
        if (v11)
        {
          result = gai_strerror(v11);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = sub_100057B00();
          v14 = v13;
        }

        else
        {
          v15 = sub_100057B00();
          v17 = v16;
          v22 = sub_100057B00();
          v19 = v18;
          v23 = v17;
          v28._countAndFlagsBits = 58;
          v28._object = 0xE100000000000000;
          sub_100057AF0(v28);
          v29._countAndFlagsBits = v22;
          v29._object = v19;
          sub_100057AF0(v29);

          v12 = v15;
          v14 = v23;
        }

        v20 = sub_10000D850(v12, v14, &v26);

        *(v6 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Allocating", v6, 0xCu);
        sub_10000904C(v7);
      }

      if (qword_100080450 != -1)
      {
        swift_once();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      memcpy((v21 + 24), __src, 0x80uLL);

      sub_10005110C(sub_100054AA4, v21);
    }
  }

  return result;
}

uint64_t Domain.allocate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100039778();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_100054654(&qword_1000806A8);
  v7 = *(*(v3 + 168) + 16);
  sub_1000546B8(v7, &qword_1000806A8);
  v8 = *(v3 + 168);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_100054878;
  *(v9 + 40) = v6;
  *(v3 + 168) = v8;
  swift_endAccess();
  return sub_100052840();
}

void sub_100052C5C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100057880();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (qword_100080458 != -1)
    {
      swift_once();
    }

    v12 = sub_100026CEC(v7, qword_100080468);
    v13 = (*(v8 + 16))(v11, v12, v7);
    __chkstk_darwin(v13);
    *&v27[-16] = a4;
    __chkstk_darwin(v14);
    *&v27[-16] = a1;
    sub_100054BD0(sub_100054BC8, v15, sub_10000DF6C);
LABEL_14:
    (*(v8 + 8))(v11, v7);
    return;
  }

  v28 = 0;
  if (([a1 removePTPInstanceWithIdentifier:a4 error:{&v28, v9}] & 1) == 0)
  {
    v21 = v28;
    v22 = sub_100057670();

    swift_willThrow();
    if (qword_100080458 != -1)
    {
      swift_once();
    }

    v23 = sub_100026CEC(v7, qword_100080468);
    v24 = (*(v8 + 16))(v11, v23, v7);
    __chkstk_darwin(v24);
    *&v27[-16] = a4;
    __chkstk_darwin(v25);
    *&v27[-16] = v22;
    sub_100054BD0(sub_100054BC8, v26, sub_10000DF6C);

    goto LABEL_14;
  }

  v16 = qword_100080458;
  v17 = v28;
  if (v16 != -1)
  {
    swift_once();
  }

  sub_100026CEC(v7, qword_100080468);
  v18 = sub_100057850();
  v19 = sub_100057D80();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v18, v19, "%llx: Deallocated", v20, 0xCu);
  }
}

uint64_t sub_100053030()
{

  sub_100039778();

  return _swift_deallocObject(v0, v1, v2);
}

const char *sub_100053070(void *a1, char a2, uint64_t a3, _DWORD *a4)
{
  if (a2)
  {
    return sub_100051F6C(a1);
  }

  v10 = 0;
  v11 = TSNullClockIdentifier;
  if ([a1 addPTPInstance:&v11 error:&v10])
  {
    v6 = v11;
    v7 = v10;
    return sub_100053154(v6, a4, 10);
  }

  else
  {
    v8 = v10;
    v9 = sub_100057670();

    swift_willThrow();
    sub_100051F6C(v9);
  }
}

const char *sub_100053154(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v79 = a3;
  v82 = a1;
  v6 = sub_1000578E0();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100057910();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000578D0();
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_100057930();
  v72 = *(v80 - 1);
  __chkstk_darwin(v80);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v66 - v15;
  v16 = *a2;
  LODWORD(v81) = a2[1];
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  memcpy(__dst, a2 + 6, sizeof(__dst));
  v69 = v16;
  v68 = v17;
  v19 = v17;
  v20 = v18;
  if (BYTE1(v16) != 30)
  {
    if (BYTE1(v16) != 2)
    {
LABEL_17:
      sub_100005A1C(0, &qword_10007F000);
      v44 = sub_100054FE4(-536870212, 0, 0);
      swift_willThrow();
LABEL_18:
      sub_100051F6C(v44);

      return sub_100052174();
    }

    v19 = sub_100050C9C();
  }

  v90[0] = v19;
  v90[1] = v20;
  sub_10002302C();
  if (!v21)
  {
    goto LABEL_17;
  }

  v67 = v4;
  v22 = [objc_opt_self() sharedClockManager];
  v23 = [v22 clockWithClockIdentifier:v82];

  if (!v23)
  {

    goto LABEL_22;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

LABEL_22:
    v45 = v67;
    v46 = v79;
    if (v79)
    {
      sub_100005A1C(0, &qword_10007EEC0);
      v81 = sub_100057DC0();
      sub_100057920();
      *v11 = 100;
      v47 = v70;
      (*(v70 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v9);
      v48 = v71;
      sub_100057960();
      (*(v47 + 8))(v11, v9);
      v72 = *(v72 + 8);
      (v72)(v13, v80);
      v49 = swift_allocObject();
      v50 = v82;
      v49[2] = v45;
      v49[3] = v50;
      memcpy(v49 + 4, a2, 0x80uLL);
      v49[20] = v46;
      v87[1] = sub_100054AEC;
      v87[2] = v49;
      *&v85.sa_len = _NSConcreteStackBlock;
      *&v85.sa_data[6] = 1107296256;
      v86 = sub_10000AF8C;
      v87[0] = &unk_100074EE8;
      v51 = _Block_copy(&v85);

      v52 = v73;
      sub_100057900();
      *&v85.sa_len = _swiftEmptyArrayStorage;
      sub_100040B30(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005890(&unk_10007ED80);
      sub_100005968(&qword_10007F020, &unk_10007ED80);
      v53 = v75;
      v54 = v78;
      sub_100058000();
      v55 = v81;
      sub_100057DA0();
      _Block_release(v51);

      (*(v77 + 8))(v53, v54);
      (*(v74 + 8))(v52, v76);
      return (v72)(v48, v80);
    }

    goto LABEL_17;
  }

  v25 = v24;
  LOWORD(v83) = 0;
  v26 = sub_100057A20();

  *&v85.sa_len = 0;
  v80 = v25;
  v27 = [v25 addUnicastUDPv6EtEPortOnInterfaceNamed:v26 withDestinationAddress:v90 allocatedPortNumber:&v83 error:&v85];

  v28 = v67;
  if (!v27)
  {
    v56 = *&v85.sa_len;
    v44 = sub_100057670();

    swift_willThrow();
    goto LABEL_18;
  }

  v29 = qword_100080458;
  v30 = *&v85.sa_len;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_100057880();
  sub_100026CEC(v31, qword_100080468);
  v32 = sub_100057850();
  v33 = sub_100057D80();
  if (!os_log_type_enabled(v32, v33))
  {

LABEL_29:
    type metadata accessor for Clock();
    swift_allocObject();
    v63 = sub_100053BC8(v80);
    v64 = *(v28 + 16);
    *(v28 + 16) = v63;
    v65 = *(v28 + 24);
    *(v28 + 24) = 0;
    sub_10005252C(v64, v65);
    return sub_100052174();
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v89 = v35;
  *v34 = 136446466;
  *&v85.sa_len = v69;
  *&v85.sa_data[2] = v81;
  *&v85.sa_data[6] = v68;
  v86 = v18;
  memcpy(v87, __dst, sizeof(v87));
  if (v69)
  {
    v36 = v69;
  }

  else
  {
    v36 = 128;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39 = getnameinfo(&v85, v36, v37, 0x401u, v38, 0x20u, 26);
  if (!v39)
  {
    v57 = sub_100057B00();
    v59 = v58;
    v81 = sub_100057B00();
    v61 = v60;
    v83 = v57;
    v84 = v59;
    v91._countAndFlagsBits = 58;
    v91._object = 0xE100000000000000;
    sub_100057AF0(v91);
    v92._countAndFlagsBits = v81;
    v92._object = v61;
    sub_100057AF0(v92);

    v41 = v83;
    v43 = v84;
    goto LABEL_28;
  }

  result = gai_strerror(v39);
  if (result)
  {
    v41 = sub_100057B00();
    v43 = v42;
LABEL_28:

    v62 = sub_10000D850(v41, v43, &v89);

    *(v34 + 4) = v62;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Allocated %llx", v34, 0x16u);
    sub_10000904C(v35);

    v28 = v67;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_100053AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFSUB__(a4, 1))
  {
    return sub_100053154(a2, a3, a4 - 1);
  }

  __break(1u);
  return result;
}

uint64_t Clock.__allocating_init(clockIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Clock.init(clockIdentifier:)(a1);
  return v2;
}

uint64_t Clock.init(clockIdentifier:)(uint64_t a1)
{
  v2 = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = v2;
  *(v1 + 16) = [objc_allocWithZone(TSgPTPClock) initWithClockIdentifier:a1];
  return v1;
}

uint64_t sub_100053BC8(void *a1)
{
  *(v1 + 32) = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v3 = [a1 clockIdentifier];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

Swift::UInt64 __swiftcall Clock.domainTimeForMachAbsoluteTime(_:)(Swift::UInt64 a1)
{
  v3 = TSNullgPTPClockIdentity;
  result = [*(v1 + 16) convertFromMachAbsoluteToDomainTime:a1 grandmasterUsed:&v3];
  *(v1 + 32) = v3;
  return result;
}

Swift::UInt64 __swiftcall Clock.machAbsoluteTimeForDomainTime(_:)(Swift::UInt64 a1)
{
  v4 = TSNullgPTPClockIdentity;
  v3 = 0;
  result = [*(v1 + 16) convertFromDomainToMachAbsoluteTime:a1 grandmasterUsed:&v4 portNumber:&v3];
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_100053D0C()
{
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      return sub_1000542A0();
    }
  }

  else if (*(v0 + 40))
  {
    return sub_100053D5C();
  }

  return result;
}

uint64_t sub_100053D5C()
{
  v48 = sub_1000578D0();
  sub_1000068E4();
  v46 = v0;
  __chkstk_darwin(v1);
  v45 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v44 = (&v38 - v4);
  v49 = sub_100057930();
  sub_1000068E4();
  v47 = v5;
  __chkstk_darwin(v6);
  sub_1000068D4();
  v43 = v8 - v7;
  sub_1000578E0();
  sub_1000068E4();
  v41 = v10;
  v42 = v9;
  __chkstk_darwin(v9);
  sub_1000068D4();
  v13 = v12 - v11;
  sub_100057910();
  sub_1000068E4();
  v38 = v15;
  v39 = v14;
  __chkstk_darwin(v14);
  sub_1000068D4();
  v18 = v17 - v16;
  v19 = sub_100057E10();
  sub_1000068E4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1000068D4();
  v25 = v24 - v23;
  sub_100005A1C(0, &unk_10007F1C0);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100040B30(&unk_10007FCE0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100005890(&unk_10007F1D0);
  sub_100005968(&unk_10007FCF0, &unk_10007F1D0);
  sub_100058000();
  v26 = sub_100057E20();
  (*(v21 + 8))(v25, v19);
  swift_getObjectType();
  v27 = swift_allocObject();
  v28 = v40;
  swift_weakInit();
  sub_100039778();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v26;
  aBlock[4] = sub_100054A44;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_100074E70;
  v30 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_100057900();
  sub_1000399F8();
  sub_100057E50();
  _Block_release(v30);
  (*(v41 + 8))(v13, v42);
  (*(v38 + 8))(v18, v39);

  v31 = v43;
  sub_100057920();
  v32 = v44;
  *v44 = 5;
  v33 = v46;
  v34 = v48;
  (*(v46 + 104))(v32, enum case for DispatchTimeInterval.seconds(_:), v48);
  v35 = v45;
  sub_10001472C(v45);
  sub_100057EC0();
  v36 = *(v33 + 8);
  v36(v35, v34);
  v36(v32, v34);
  (*(v47 + 8))(v31, v49);
  sub_100057E90();
  *(v28 + 48) = v26;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000542A0()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100057E70();
    swift_unknownObjectRelease();
  }

  *(v0 + 48) = 0;

  return swift_unknownObjectRelease();
}

uint64_t Clock.heartbeat.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return sub_100053D0C();
}

uint64_t (*Clock.heartbeat.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1000543E0;
}

uint64_t sub_1000543E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100053D0C();
  }

  return result;
}

void sub_100054414()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = mach_absolute_time();
    v3 = Clock.domainTimeForMachAbsoluteTime(_:)(v2);
    sub_100054A4C(*(v1 + 32), v2, v3, [*(v1 + 16) lockState]);
    if (qword_100080458 != -1)
    {
      swift_once();
    }

    v4 = sub_100057880();
    sub_100026CEC(v4, qword_100080468);

    v5 = sub_100057850();
    v6 = sub_100057D60();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218752;
      *(v7 + 4) = *(v1 + 24);
      *(v7 + 12) = 2048;
      *(v7 + 14) = *(v1 + 32);

      *(v7 + 22) = 2048;
      *(v7 + 24) = v2;
      *(v7 + 32) = 2048;
      *(v7 + 34) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "%llx: (%llx) %llu -> %llu", v7, 0x2Au);
    }

    else
    {
    }

    if (v3 == TSInvalidTime)
    {
      swift_getObjectType();
      sub_100057E70();
    }
  }

  else
  {
    swift_getObjectType();
    sub_100057E70();
  }
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_100054654(uint64_t *a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = sub_100054700(result, v3[2] + 1, 1, v3, a1);
    *v1 = result;
  }

  return result;
}

void *sub_1000546B8(void *result, uint64_t *a2)
{
  v3 = (*v2)[3];
  if (result + 1 > (v3 >> 1))
  {
    result = sub_100054700((v3 > 1), result + 1, 1, *v2, a2);
    *v2 = result;
  }

  return result;
}

void *sub_100054700(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100005890(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v6)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005890(&qword_1000806B0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_100054828(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054844()
{

  sub_100039778();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000548E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100054940(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100054958(a1, a2 & 1);
  }
}

void sub_100054958(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100054974()
{
  sub_100054958(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

id sub_1000549C4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1000549D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054A08()
{

  swift_unknownObjectRelease();
  sub_100039778();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100054A6C()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100054AB4()
{

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_100054B04()
{
  result = qword_1000806A0;
  if (!qword_1000806A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000806A0);
  }

  return result;
}

void sub_100054BD0(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = sub_100057660();

  v5 = [v4 localizedDescription];
  v6 = sub_100057A50();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = sub_100057850();
    v14 = sub_100057D70();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_10000D850(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = sub_100057A50();
      v20 = v19;

      v21 = sub_10000D850(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_10000D850(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = sub_100057850();
    v24 = sub_100057D70();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = sub_100057A50();
      v29 = v28;

      v30 = sub_10000D850(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_10000D850(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

id sub_100055074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000579C0();
  if (a5)
  {
    v9 = sub_100057A50();
    v11 = v10;
    v30 = &type metadata for String;
    *&v29 = a4;
    *(&v29 + 1) = a5;
    sub_10000903C(&v29, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100009098(v26, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v13 = sub_100057A50();
    v15 = v14;
    swift_getErrorValue();
    v16 = v27;
    v17 = v28;
    v30 = v28;
    v18 = sub_100019270(&v29);
    (*(*(v17 - 1) + 16))(v18, v16, v17);
    sub_10000903C(&v29, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_100009098(v26, v13, v15, v19);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_100057A20();

  isa = sub_1000579A0().super.isa;

  v23 = [v20 initWithDomain:v21 code:a3 userInfo:isa];

  return v23;
}

void SidecarPowerLogDisplaySession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = @"IsConnected";
  v5 = [NSNumber numberWithInt:a1];
  v6 = v5;
  v7 = &stru_1000750C8;
  if (a2 == 1)
  {
    v7 = @"HEVC";
  }

  if (!a2)
  {
    v7 = @"H.264";
  }

  v14[0] = v5;
  v14[1] = v7;
  v13[1] = @"Codec";
  v13[2] = @"Transport";
  v8 = 1;
  if (a3 != 2)
  {
    v8 = -1;
  }

  if (a3 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v7;
  v11 = [NSNumber numberWithInteger:v9];
  v14[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  PLLogRegisteredEvent();
}

const __CFData *sub_1000553DC()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IOService:/");
  v1 = @"model";
  if (!v0)
  {
    CFProperty = 0;
    goto LABEL_10;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v0, @"model", 0, 0);
  IOObjectRelease(v0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v5 = 0;
    goto LABEL_9;
  }

  BytePtr = CFDataGetBytePtr(CFProperty);
  if (BytePtr)
  {
    v4 = BytePtr;
    if (CFDataGetLength(CFProperty) >= 1)
    {
      v5 = CFStringCreateWithCString(0, v4, 0);
LABEL_9:

      CFProperty = v5;
    }
  }

LABEL_10:

  return CFProperty;
}

__CFString *sub_1000554EC()
{
  v3 = 64;
  if (sysctlbyname("kern.osversion", __s1, &v3, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  if (v0)
  {
    v1 = &stru_1000750C8;
  }

  else
  {
    v3 = strnlen(__s1, 0x40uLL);
    v1 = CFStringCreateWithBytes(0, __s1, v3, 0, 0);
  }

  return v1;
}

void sub_1000555AC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  operator delete();
}

void sub_100055610()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100055664(exception);
}

std::logic_error *sub_100055664(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  return result;
}

void sub_1000556A0(id a1)
{
  qword_100083C28 = os_log_create("com.apple.sidecar", "awd");

  _objc_release_x1();
}

void SidecarAWDLogSidebarUsageSummary(void *a1, unint64_t a2, uint64_t *a3, double a4)
{
  v7 = a1;
  v31 = off_100074F88;
  v41 = 0;
  v47 = 0;
  sub_100055A3C(&v31);
  v8 = [v7 UUIDString];
  v9 = v8;
  v10 = [v8 UTF8String];
  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100055600();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v11;
  if (v11)
  {
    memmove(__dst, v10, v11);
  }

  __dst[v12] = 0;
  sub_100055A3C(&v31);
  v13 = v41;
  if (*(v41 + 23) < 0)
  {
    operator delete(*v41);
  }

  *v13 = *__dst;
  *(v13 + 16) = *&__dst[16];
  __dst[0] = 0;

  v35 = vcvtpd_u64_f64(a4 * 1000.0);
  if (a2 >= 3)
  {
    v14 = HIDWORD(v47) | 0x20;
  }

  else
  {
    v14 = HIDWORD(v47) | 0x80020;
    LODWORD(v47) = a2;
  }

  v15 = *(a3 + 3);
  v32 = *(a3 + 2);
  v39 = v15;
  v16 = *(a3 + 5);
  v33 = *(a3 + 4);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[13];
  v40 = a3[12];
  v20 = a3[2];
  v21 = a3[3];
  v45 = v17;
  v46 = v19;
  v22 = a3[14];
  v23 = a3[15];
  v43 = v20;
  v44 = v22;
  v42 = v16;
  v37 = v23;
  v38 = v18;
  v24 = a3[16];
  HIDWORD(v47) = v14 | 0x5FFDF;
  v36 = v21;
  v34 = v24;
  AWDPostMetric();
  if (qword_100083C20 != -1)
  {
    dispatch_once(&qword_100083C20, &stru_100074F58);
  }

  v25 = qword_100083C28;
  if (os_log_type_enabled(qword_100083C28, OS_LOG_TYPE_DEBUG))
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = v27;
  if (v27)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v30 += a3[v29++];
    }

    while (v29 != 17);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *__dst = 138544130;
      *&__dst[4] = v7;
      *&__dst[12] = 2048;
      *&__dst[14] = a2;
      *&__dst[22] = 2048;
      v49 = a4;
      v50 = 2048;
      v51 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "AWDSidecarDisplaySidebarUsage: {\n  uuid: %{public}@\n  position: %ld\n  duration: %.3f\n  buttons: %ld\n}", __dst, 0x2Au);
    }
  }

  sub_10005752C(&v31);
}

void sub_1000559F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v11 - 137) < 0)
  {
    operator delete(*(v11 - 160));
  }

  sub_10005752C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100055A3C(uint64_t result)
{
  if (!*(result + 104))
  {
    operator new();
  }

  return result;
}

uint64_t sub_100055AA8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 172);
  if (v5)
  {
    PB::TextFormatter::format(this, "commandKey", *(a1 + 8));
    v5 = *(a1 + 172);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "commandKeySticky", *(a1 + 16));
  v5 = *(a1 + 172);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "controlKey", *(a1 + 24));
  v5 = *(a1 + 172);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "controlKeySticky", *(a1 + 32));
  v5 = *(a1 + 172);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "disconnect", *(a1 + 40));
  v5 = *(a1 + 172);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "durationMillis", *(a1 + 48));
  v5 = *(a1 + 172);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "hideDock", *(a1 + 56));
  v5 = *(a1 + 172);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "hideKeyboard", *(a1 + 64));
  v5 = *(a1 + 172);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "hideMenuBar", *(a1 + 72));
  v5 = *(a1 + 172);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "optionKey", *(a1 + 80));
  v5 = *(a1 + 172);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "optionKeySticky", *(a1 + 88));
  v5 = *(a1 + 172);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_39:
  PB::TextFormatter::format(this, "position", *(a1 + 168));
  if ((*(a1 + 172) & 0x800) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "redo", *(a1 + 96));
  }

LABEL_15:
  if (*(a1 + 104))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 172);
  if ((v6 & 0x1000) != 0)
  {
    PB::TextFormatter::format(this, "shiftKey", *(a1 + 112));
    v6 = *(a1 + 172);
    if ((v6 & 0x2000) == 0)
    {
LABEL_19:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 0x2000) == 0)
  {
    goto LABEL_19;
  }

  PB::TextFormatter::format(this, "shiftKeySticky", *(a1 + 120));
  v6 = *(a1 + 172);
  if ((v6 & 0x4000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "showDock", *(a1 + 128));
  v6 = *(a1 + 172);
  if ((v6 & 0x8000) == 0)
  {
LABEL_21:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "showKeyboard", *(a1 + 136));
  v6 = *(a1 + 172);
  if ((v6 & 0x10000) == 0)
  {
LABEL_22:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "showMenuBar", *(a1 + 144));
  v6 = *(a1 + 172);
  if ((v6 & 0x20000) == 0)
  {
LABEL_23:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_46:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  if ((*(a1 + 172) & 0x40000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "undo", *(a1 + 160));
  }

LABEL_25:

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100055D84(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 174) & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(result + 152), 1u);
  }

  if (*(v3 + 104))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 172);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 48), 3u);
    v4 = *(v3 + 172);
    if ((v4 & 0x80000) == 0)
    {
LABEL_7:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_7;
  }

  result = PB::Writer::writeVarInt(this, *(v3 + 168), 4u);
  v4 = *(v3 + 172);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::writeVarInt(this, *(v3 + 144), 0xAu);
  v4 = *(v3 + 172);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::writeVarInt(this, *(v3 + 72), 0xBu);
  v4 = *(v3 + 172);
  if ((v4 & 0x4000) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::writeVarInt(this, *(v3 + 128), 0xCu);
  v4 = *(v3 + 172);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::writeVarInt(this, *(v3 + 56), 0xDu);
  v4 = *(v3 + 172);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::writeVarInt(this, *(v3 + 8), 0xEu);
  v4 = *(v3 + 172);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::writeVarInt(this, *(v3 + 16), 0xFu);
  v4 = *(v3 + 172);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::writeVarInt(this, *(v3 + 80), 0x10u);
  v4 = *(v3 + 172);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::writeVarInt(this, *(v3 + 88), 0x11u);
  v4 = *(v3 + 172);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::writeVarInt(this, *(v3 + 24), 0x12u);
  v4 = *(v3 + 172);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::writeVarInt(this, *(v3 + 32), 0x13u);
  v4 = *(v3 + 172);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::writeVarInt(this, *(v3 + 112), 0x14u);
  v4 = *(v3 + 172);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::writeVarInt(this, *(v3 + 120), 0x15u);
  v4 = *(v3 + 172);
  if ((v4 & 0x800) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::writeVarInt(this, *(v3 + 96), 0x16u);
  v4 = *(v3 + 172);
  if ((v4 & 0x40000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::writeVarInt(this, *(v3 + 160), 0x17u);
  v4 = *(v3 + 172);
  if ((v4 & 0x8000) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_42:
    result = PB::Writer::writeVarInt(this, *(v3 + 64), 0x19u);
    if ((*(v3 + 172) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = PB::Writer::writeVarInt(this, *(v3 + 136), 0x18u);
  v4 = *(v3 + 172);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_43:
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(this, v5, 0x1Au);
}

uint64_t sub_100055FFC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 >= v3 || (*(this + 24) & 1) != 0)
  {
    goto LABEL_406;
  }

  while (1)
  {
    v7 = *this;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(this + 24) = 1;
        goto LABEL_406;
      }

      v21 = *v17;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    v22 = 0;
    LODWORD(v23) = 0;
LABEL_18:
    if (!PB::Reader::skip(this, v23, v22, 0))
    {
      v324 = 0;
      return v324 & 1;
    }

LABEL_19:
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(this + 24);
    if (v2 >= v3 || (*(this + 24) & 1) != 0)
    {
      goto LABEL_406;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v7 + v2);
  v12 = v2 + 1;
  while (1)
  {
    *(this + 1) = v12;
    v13 = *v11++;
    v10 |= (v13 & 0x7F) << v8;
    if ((v13 & 0x80) == 0)
    {
      break;
    }

    v8 += 7;
    ++v12;
    v14 = v9++ > 8;
    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_22:
  v22 = v10 & 7;
  if ((v10 & 7) != 4)
  {
    v23 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        *(a1 + 172) |= 0x20000u;
        v25 = *(this + 1);
        v24 = *(this + 2);
        v26 = *this;
        if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          do
          {
            *(this + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              goto LABEL_371;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
          }

          while (!v14);
LABEL_236:
          v29 = 0;
          goto LABEL_371;
        }

        v252 = 0;
        v253 = 0;
        v29 = 0;
        v254 = (v26 + v25);
        v18 = v24 >= v25;
        v255 = v24 - v25;
        if (!v18)
        {
          v255 = 0;
        }

        v256 = v25 + 1;
        while (2)
        {
          if (v255)
          {
            v257 = *v254;
            *(this + 1) = v256;
            v29 |= (v257 & 0x7F) << v252;
            if (v257 < 0)
            {
              v252 += 7;
              ++v254;
              --v255;
              ++v256;
              v14 = v253++ > 8;
              if (v14)
              {
                goto LABEL_236;
              }

              continue;
            }

            if (*(this + 24))
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_371:
        *(a1 + 152) = v29;
        goto LABEL_19;
      case 2u:
        operator new();
      case 3u:
        *(a1 + 172) |= 0x20u;
        v79 = *(this + 1);
        v78 = *(this + 2);
        v80 = *this;
        if (v79 <= 0xFFFFFFFFFFFFFFF5 && v79 + 10 <= v78)
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = (v80 + v79);
          v85 = v79 + 1;
          do
          {
            *(this + 1) = v85;
            v86 = *v84++;
            v83 |= (v86 & 0x7F) << v81;
            if ((v86 & 0x80) == 0)
            {
              goto LABEL_362;
            }

            v81 += 7;
            ++v85;
            v14 = v82++ > 8;
          }

          while (!v14);
LABEL_212:
          v83 = 0;
          goto LABEL_362;
        }

        v234 = 0;
        v235 = 0;
        v83 = 0;
        v236 = (v80 + v79);
        v18 = v78 >= v79;
        v237 = v78 - v79;
        if (!v18)
        {
          v237 = 0;
        }

        v238 = v79 + 1;
        while (2)
        {
          if (v237)
          {
            v239 = *v236;
            *(this + 1) = v238;
            v83 |= (v239 & 0x7F) << v234;
            if (v239 < 0)
            {
              v234 += 7;
              ++v236;
              --v237;
              ++v238;
              v14 = v235++ > 8;
              if (v14)
              {
                goto LABEL_212;
              }

              continue;
            }

            if (*(this + 24))
            {
              v83 = 0;
            }
          }

          else
          {
            v83 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_362:
        *(a1 + 48) = v83;
        goto LABEL_19;
      case 4u:
        *(a1 + 172) |= 0x80000u;
        v142 = *(this + 1);
        v141 = *(this + 2);
        v143 = *this;
        if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v147 = (v143 + v142);
          v148 = v142 + 1;
          do
          {
            *(this + 1) = v148;
            v149 = *v147++;
            v146 |= (v149 & 0x7F) << v144;
            if ((v149 & 0x80) == 0)
            {
              goto LABEL_386;
            }

            v144 += 7;
            ++v148;
            v14 = v145++ > 8;
          }

          while (!v14);
LABEL_276:
          LODWORD(v146) = 0;
          goto LABEL_386;
        }

        v282 = 0;
        v283 = 0;
        v146 = 0;
        v284 = (v143 + v142);
        v18 = v141 >= v142;
        v285 = v141 - v142;
        if (!v18)
        {
          v285 = 0;
        }

        v286 = v142 + 1;
        while (2)
        {
          if (v285)
          {
            v287 = *v284;
            *(this + 1) = v286;
            v146 |= (v287 & 0x7F) << v282;
            if (v287 < 0)
            {
              v282 += 7;
              ++v284;
              --v285;
              ++v286;
              v14 = v283++ > 8;
              if (v14)
              {
                goto LABEL_276;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v146) = 0;
            }
          }

          else
          {
            LODWORD(v146) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_386:
        *(a1 + 168) = v146;
        goto LABEL_19;
      case 0xAu:
        *(a1 + 172) |= 0x10000u;
        v151 = *(this + 1);
        v150 = *(this + 2);
        v152 = *this;
        if (v151 <= 0xFFFFFFFFFFFFFFF5 && v151 + 10 <= v150)
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v156 = (v152 + v151);
          v157 = v151 + 1;
          do
          {
            *(this + 1) = v157;
            v158 = *v156++;
            v155 |= (v158 & 0x7F) << v153;
            if ((v158 & 0x80) == 0)
            {
              goto LABEL_389;
            }

            v153 += 7;
            ++v157;
            v14 = v154++ > 8;
          }

          while (!v14);
LABEL_284:
          v155 = 0;
          goto LABEL_389;
        }

        v288 = 0;
        v289 = 0;
        v155 = 0;
        v290 = (v152 + v151);
        v18 = v150 >= v151;
        v291 = v150 - v151;
        if (!v18)
        {
          v291 = 0;
        }

        v292 = v151 + 1;
        while (2)
        {
          if (v291)
          {
            v293 = *v290;
            *(this + 1) = v292;
            v155 |= (v293 & 0x7F) << v288;
            if (v293 < 0)
            {
              v288 += 7;
              ++v290;
              --v291;
              ++v292;
              v14 = v289++ > 8;
              if (v14)
              {
                goto LABEL_284;
              }

              continue;
            }

            if (*(this + 24))
            {
              v155 = 0;
            }
          }

          else
          {
            v155 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_389:
        *(a1 + 144) = v155;
        goto LABEL_19;
      case 0xBu:
        *(a1 + 172) |= 0x100u;
        v88 = *(this + 1);
        v87 = *(this + 2);
        v89 = *this;
        if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
        {
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = (v89 + v88);
          v94 = v88 + 1;
          do
          {
            *(this + 1) = v94;
            v95 = *v93++;
            v92 |= (v95 & 0x7F) << v90;
            if ((v95 & 0x80) == 0)
            {
              goto LABEL_365;
            }

            v90 += 7;
            ++v94;
            v14 = v91++ > 8;
          }

          while (!v14);
LABEL_220:
          v92 = 0;
          goto LABEL_365;
        }

        v240 = 0;
        v241 = 0;
        v92 = 0;
        v242 = (v89 + v88);
        v18 = v87 >= v88;
        v243 = v87 - v88;
        if (!v18)
        {
          v243 = 0;
        }

        v244 = v88 + 1;
        while (2)
        {
          if (v243)
          {
            v245 = *v242;
            *(this + 1) = v244;
            v92 |= (v245 & 0x7F) << v240;
            if (v245 < 0)
            {
              v240 += 7;
              ++v242;
              --v243;
              ++v244;
              v14 = v241++ > 8;
              if (v14)
              {
                goto LABEL_220;
              }

              continue;
            }

            if (*(this + 24))
            {
              v92 = 0;
            }
          }

          else
          {
            v92 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_365:
        *(a1 + 72) = v92;
        goto LABEL_19;
      case 0xCu:
        *(a1 + 172) |= 0x4000u;
        v106 = *(this + 1);
        v105 = *(this + 2);
        v107 = *this;
        if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
        {
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = (v107 + v106);
          v112 = v106 + 1;
          do
          {
            *(this + 1) = v112;
            v113 = *v111++;
            v110 |= (v113 & 0x7F) << v108;
            if ((v113 & 0x80) == 0)
            {
              goto LABEL_374;
            }

            v108 += 7;
            ++v112;
            v14 = v109++ > 8;
          }

          while (!v14);
LABEL_244:
          v110 = 0;
          goto LABEL_374;
        }

        v258 = 0;
        v259 = 0;
        v110 = 0;
        v260 = (v107 + v106);
        v18 = v105 >= v106;
        v261 = v105 - v106;
        if (!v18)
        {
          v261 = 0;
        }

        v262 = v106 + 1;
        while (2)
        {
          if (v261)
          {
            v263 = *v260;
            *(this + 1) = v262;
            v110 |= (v263 & 0x7F) << v258;
            if (v263 < 0)
            {
              v258 += 7;
              ++v260;
              --v261;
              ++v262;
              v14 = v259++ > 8;
              if (v14)
              {
                goto LABEL_244;
              }

              continue;
            }

            if (*(this + 24))
            {
              v110 = 0;
            }
          }

          else
          {
            v110 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_374:
        *(a1 + 128) = v110;
        goto LABEL_19;
      case 0xDu:
        *(a1 + 172) |= 0x40u;
        v115 = *(this + 1);
        v114 = *(this + 2);
        v116 = *this;
        if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
        {
          v117 = 0;
          v118 = 0;
          v119 = 0;
          v120 = (v116 + v115);
          v121 = v115 + 1;
          do
          {
            *(this + 1) = v121;
            v122 = *v120++;
            v119 |= (v122 & 0x7F) << v117;
            if ((v122 & 0x80) == 0)
            {
              goto LABEL_377;
            }

            v117 += 7;
            ++v121;
            v14 = v118++ > 8;
          }

          while (!v14);
LABEL_252:
          v119 = 0;
          goto LABEL_377;
        }

        v264 = 0;
        v265 = 0;
        v119 = 0;
        v266 = (v116 + v115);
        v18 = v114 >= v115;
        v267 = v114 - v115;
        if (!v18)
        {
          v267 = 0;
        }

        v268 = v115 + 1;
        while (2)
        {
          if (v267)
          {
            v269 = *v266;
            *(this + 1) = v268;
            v119 |= (v269 & 0x7F) << v264;
            if (v269 < 0)
            {
              v264 += 7;
              ++v266;
              --v267;
              ++v268;
              v14 = v265++ > 8;
              if (v14)
              {
                goto LABEL_252;
              }

              continue;
            }

            if (*(this + 24))
            {
              v119 = 0;
            }
          }

          else
          {
            v119 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_377:
        *(a1 + 56) = v119;
        goto LABEL_19;
      case 0xEu:
        *(a1 + 172) |= 1u;
        v169 = *(this + 1);
        v168 = *(this + 2);
        v170 = *this;
        if (v169 <= 0xFFFFFFFFFFFFFFF5 && v169 + 10 <= v168)
        {
          v171 = 0;
          v172 = 0;
          v173 = 0;
          v174 = (v170 + v169);
          v175 = v169 + 1;
          do
          {
            *(this + 1) = v175;
            v176 = *v174++;
            v173 |= (v176 & 0x7F) << v171;
            if ((v176 & 0x80) == 0)
            {
              goto LABEL_395;
            }

            v171 += 7;
            ++v175;
            v14 = v172++ > 8;
          }

          while (!v14);
LABEL_300:
          v173 = 0;
          goto LABEL_395;
        }

        v300 = 0;
        v301 = 0;
        v173 = 0;
        v302 = (v170 + v169);
        v18 = v168 >= v169;
        v303 = v168 - v169;
        if (!v18)
        {
          v303 = 0;
        }

        v304 = v169 + 1;
        while (2)
        {
          if (v303)
          {
            v305 = *v302;
            *(this + 1) = v304;
            v173 |= (v305 & 0x7F) << v300;
            if (v305 < 0)
            {
              v300 += 7;
              ++v302;
              --v303;
              ++v304;
              v14 = v301++ > 8;
              if (v14)
              {
                goto LABEL_300;
              }

              continue;
            }

            if (*(this + 24))
            {
              v173 = 0;
            }
          }

          else
          {
            v173 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_395:
        *(a1 + 8) = v173;
        goto LABEL_19;
      case 0xFu:
        *(a1 + 172) |= 2u;
        v160 = *(this + 1);
        v159 = *(this + 2);
        v161 = *this;
        if (v160 <= 0xFFFFFFFFFFFFFFF5 && v160 + 10 <= v159)
        {
          v162 = 0;
          v163 = 0;
          v164 = 0;
          v165 = (v161 + v160);
          v166 = v160 + 1;
          do
          {
            *(this + 1) = v166;
            v167 = *v165++;
            v164 |= (v167 & 0x7F) << v162;
            if ((v167 & 0x80) == 0)
            {
              goto LABEL_392;
            }

            v162 += 7;
            ++v166;
            v14 = v163++ > 8;
          }

          while (!v14);
LABEL_292:
          v164 = 0;
          goto LABEL_392;
        }

        v294 = 0;
        v295 = 0;
        v164 = 0;
        v296 = (v161 + v160);
        v18 = v159 >= v160;
        v297 = v159 - v160;
        if (!v18)
        {
          v297 = 0;
        }

        v298 = v160 + 1;
        while (2)
        {
          if (v297)
          {
            v299 = *v296;
            *(this + 1) = v298;
            v164 |= (v299 & 0x7F) << v294;
            if (v299 < 0)
            {
              v294 += 7;
              ++v296;
              --v297;
              ++v298;
              v14 = v295++ > 8;
              if (v14)
              {
                goto LABEL_292;
              }

              continue;
            }

            if (*(this + 24))
            {
              v164 = 0;
            }
          }

          else
          {
            v164 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_392:
        *(a1 + 16) = v164;
        goto LABEL_19;
      case 0x10u:
        *(a1 + 172) |= 0x200u;
        v52 = *(this + 1);
        v51 = *(this + 2);
        v53 = *this;
        if (v52 <= 0xFFFFFFFFFFFFFFF5 && v52 + 10 <= v51)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_353;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
LABEL_188:
          v56 = 0;
          goto LABEL_353;
        }

        v216 = 0;
        v217 = 0;
        v56 = 0;
        v218 = (v53 + v52);
        v18 = v51 >= v52;
        v219 = v51 - v52;
        if (!v18)
        {
          v219 = 0;
        }

        v220 = v52 + 1;
        while (2)
        {
          if (v219)
          {
            v221 = *v218;
            *(this + 1) = v220;
            v56 |= (v221 & 0x7F) << v216;
            if (v221 < 0)
            {
              v216 += 7;
              ++v218;
              --v219;
              ++v220;
              v14 = v217++ > 8;
              if (v14)
              {
                goto LABEL_188;
              }

              continue;
            }

            if (*(this + 24))
            {
              v56 = 0;
            }
          }

          else
          {
            v56 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_353:
        *(a1 + 80) = v56;
        goto LABEL_19;
      case 0x11u:
        *(a1 + 172) |= 0x400u;
        v97 = *(this + 1);
        v96 = *(this + 2);
        v98 = *this;
        if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
        {
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = (v98 + v97);
          v103 = v97 + 1;
          do
          {
            *(this + 1) = v103;
            v104 = *v102++;
            v101 |= (v104 & 0x7F) << v99;
            if ((v104 & 0x80) == 0)
            {
              goto LABEL_368;
            }

            v99 += 7;
            ++v103;
            v14 = v100++ > 8;
          }

          while (!v14);
LABEL_228:
          v101 = 0;
          goto LABEL_368;
        }

        v246 = 0;
        v247 = 0;
        v101 = 0;
        v248 = (v98 + v97);
        v18 = v96 >= v97;
        v249 = v96 - v97;
        if (!v18)
        {
          v249 = 0;
        }

        v250 = v97 + 1;
        while (2)
        {
          if (v249)
          {
            v251 = *v248;
            *(this + 1) = v250;
            v101 |= (v251 & 0x7F) << v246;
            if (v251 < 0)
            {
              v246 += 7;
              ++v248;
              --v249;
              ++v250;
              v14 = v247++ > 8;
              if (v14)
              {
                goto LABEL_228;
              }

              continue;
            }

            if (*(this + 24))
            {
              v101 = 0;
            }
          }

          else
          {
            v101 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_368:
        *(a1 + 88) = v101;
        goto LABEL_19;
      case 0x12u:
        *(a1 + 172) |= 4u;
        v61 = *(this + 1);
        v60 = *(this + 2);
        v62 = *this;
        if (v61 <= 0xFFFFFFFFFFFFFFF5 && v61 + 10 <= v60)
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = (v62 + v61);
          v67 = v61 + 1;
          do
          {
            *(this + 1) = v67;
            v68 = *v66++;
            v65 |= (v68 & 0x7F) << v63;
            if ((v68 & 0x80) == 0)
            {
              goto LABEL_356;
            }

            v63 += 7;
            ++v67;
            v14 = v64++ > 8;
          }

          while (!v14);
LABEL_196:
          v65 = 0;
          goto LABEL_356;
        }

        v222 = 0;
        v223 = 0;
        v65 = 0;
        v224 = (v62 + v61);
        v18 = v60 >= v61;
        v225 = v60 - v61;
        if (!v18)
        {
          v225 = 0;
        }

        v226 = v61 + 1;
        while (2)
        {
          if (v225)
          {
            v227 = *v224;
            *(this + 1) = v226;
            v65 |= (v227 & 0x7F) << v222;
            if (v227 < 0)
            {
              v222 += 7;
              ++v224;
              --v225;
              ++v226;
              v14 = v223++ > 8;
              if (v14)
              {
                goto LABEL_196;
              }

              continue;
            }

            if (*(this + 24))
            {
              v65 = 0;
            }
          }

          else
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_356:
        *(a1 + 24) = v65;
        goto LABEL_19;
      case 0x13u:
        *(a1 + 172) |= 8u;
        v43 = *(this + 1);
        v42 = *(this + 2);
        v44 = *this;
        if (v43 <= 0xFFFFFFFFFFFFFFF5 && v43 + 10 <= v42)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = (v44 + v43);
          v49 = v43 + 1;
          do
          {
            *(this + 1) = v49;
            v50 = *v48++;
            v47 |= (v50 & 0x7F) << v45;
            if ((v50 & 0x80) == 0)
            {
              goto LABEL_350;
            }

            v45 += 7;
            ++v49;
            v14 = v46++ > 8;
          }

          while (!v14);
LABEL_180:
          v47 = 0;
          goto LABEL_350;
        }

        v210 = 0;
        v211 = 0;
        v47 = 0;
        v212 = (v44 + v43);
        v18 = v42 >= v43;
        v213 = v42 - v43;
        if (!v18)
        {
          v213 = 0;
        }

        v214 = v43 + 1;
        while (2)
        {
          if (v213)
          {
            v215 = *v212;
            *(this + 1) = v214;
            v47 |= (v215 & 0x7F) << v210;
            if (v215 < 0)
            {
              v210 += 7;
              ++v212;
              --v213;
              ++v214;
              v14 = v211++ > 8;
              if (v14)
              {
                goto LABEL_180;
              }

              continue;
            }

            if (*(this + 24))
            {
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_350:
        *(a1 + 32) = v47;
        goto LABEL_19;
      case 0x14u:
        *(a1 + 172) |= 0x1000u;
        v124 = *(this + 1);
        v123 = *(this + 2);
        v125 = *this;
        if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
          v129 = (v125 + v124);
          v130 = v124 + 1;
          do
          {
            *(this + 1) = v130;
            v131 = *v129++;
            v128 |= (v131 & 0x7F) << v126;
            if ((v131 & 0x80) == 0)
            {
              goto LABEL_380;
            }

            v126 += 7;
            ++v130;
            v14 = v127++ > 8;
          }

          while (!v14);
LABEL_260:
          v128 = 0;
          goto LABEL_380;
        }

        v270 = 0;
        v271 = 0;
        v128 = 0;
        v272 = (v125 + v124);
        v18 = v123 >= v124;
        v273 = v123 - v124;
        if (!v18)
        {
          v273 = 0;
        }

        v274 = v124 + 1;
        while (2)
        {
          if (v273)
          {
            v275 = *v272;
            *(this + 1) = v274;
            v128 |= (v275 & 0x7F) << v270;
            if (v275 < 0)
            {
              v270 += 7;
              ++v272;
              --v273;
              ++v274;
              v14 = v271++ > 8;
              if (v14)
              {
                goto LABEL_260;
              }

              continue;
            }

            if (*(this + 24))
            {
              v128 = 0;
            }
          }

          else
          {
            v128 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_380:
        *(a1 + 112) = v128;
        goto LABEL_19;
      case 0x15u:
        *(a1 + 172) |= 0x2000u;
        v133 = *(this + 1);
        v132 = *(this + 2);
        v134 = *this;
        if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
        {
          v135 = 0;
          v136 = 0;
          v137 = 0;
          v138 = (v134 + v133);
          v139 = v133 + 1;
          do
          {
            *(this + 1) = v139;
            v140 = *v138++;
            v137 |= (v140 & 0x7F) << v135;
            if ((v140 & 0x80) == 0)
            {
              goto LABEL_383;
            }

            v135 += 7;
            ++v139;
            v14 = v136++ > 8;
          }

          while (!v14);
LABEL_268:
          v137 = 0;
          goto LABEL_383;
        }

        v276 = 0;
        v277 = 0;
        v137 = 0;
        v278 = (v134 + v133);
        v18 = v132 >= v133;
        v279 = v132 - v133;
        if (!v18)
        {
          v279 = 0;
        }

        v280 = v133 + 1;
        while (2)
        {
          if (v279)
          {
            v281 = *v278;
            *(this + 1) = v280;
            v137 |= (v281 & 0x7F) << v276;
            if (v281 < 0)
            {
              v276 += 7;
              ++v278;
              --v279;
              ++v280;
              v14 = v277++ > 8;
              if (v14)
              {
                goto LABEL_268;
              }

              continue;
            }

            if (*(this + 24))
            {
              v137 = 0;
            }
          }

          else
          {
            v137 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_383:
        *(a1 + 120) = v137;
        goto LABEL_19;
      case 0x16u:
        *(a1 + 172) |= 0x800u;
        v187 = *(this + 1);
        v186 = *(this + 2);
        v188 = *this;
        if (v187 <= 0xFFFFFFFFFFFFFFF5 && v187 + 10 <= v186)
        {
          v189 = 0;
          v190 = 0;
          v191 = 0;
          v192 = (v188 + v187);
          v193 = v187 + 1;
          do
          {
            *(this + 1) = v193;
            v194 = *v192++;
            v191 |= (v194 & 0x7F) << v189;
            if ((v194 & 0x80) == 0)
            {
              goto LABEL_401;
            }

            v189 += 7;
            ++v193;
            v14 = v190++ > 8;
          }

          while (!v14);
LABEL_316:
          v191 = 0;
          goto LABEL_401;
        }

        v312 = 0;
        v313 = 0;
        v191 = 0;
        v314 = (v188 + v187);
        v18 = v186 >= v187;
        v315 = v186 - v187;
        if (!v18)
        {
          v315 = 0;
        }

        v316 = v187 + 1;
        while (2)
        {
          if (v315)
          {
            v317 = *v314;
            *(this + 1) = v316;
            v191 |= (v317 & 0x7F) << v312;
            if (v317 < 0)
            {
              v312 += 7;
              ++v314;
              --v315;
              ++v316;
              v14 = v313++ > 8;
              if (v14)
              {
                goto LABEL_316;
              }

              continue;
            }

            if (*(this + 24))
            {
              v191 = 0;
            }
          }

          else
          {
            v191 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_401:
        *(a1 + 96) = v191;
        goto LABEL_19;
      case 0x17u:
        *(a1 + 172) |= 0x40000u;
        v178 = *(this + 1);
        v177 = *(this + 2);
        v179 = *this;
        if (v178 <= 0xFFFFFFFFFFFFFFF5 && v178 + 10 <= v177)
        {
          v180 = 0;
          v181 = 0;
          v182 = 0;
          v183 = (v179 + v178);
          v184 = v178 + 1;
          do
          {
            *(this + 1) = v184;
            v185 = *v183++;
            v182 |= (v185 & 0x7F) << v180;
            if ((v185 & 0x80) == 0)
            {
              goto LABEL_398;
            }

            v180 += 7;
            ++v184;
            v14 = v181++ > 8;
          }

          while (!v14);
LABEL_308:
          v182 = 0;
          goto LABEL_398;
        }

        v306 = 0;
        v307 = 0;
        v182 = 0;
        v308 = (v179 + v178);
        v18 = v177 >= v178;
        v309 = v177 - v178;
        if (!v18)
        {
          v309 = 0;
        }

        v310 = v178 + 1;
        while (2)
        {
          if (v309)
          {
            v311 = *v308;
            *(this + 1) = v310;
            v182 |= (v311 & 0x7F) << v306;
            if (v311 < 0)
            {
              v306 += 7;
              ++v308;
              --v309;
              ++v310;
              v14 = v307++ > 8;
              if (v14)
              {
                goto LABEL_308;
              }

              continue;
            }

            if (*(this + 24))
            {
              v182 = 0;
            }
          }

          else
          {
            v182 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_398:
        *(a1 + 160) = v182;
        goto LABEL_19;
      case 0x18u:
        *(a1 + 172) |= 0x8000u;
        v34 = *(this + 1);
        v33 = *(this + 2);
        v35 = *this;
        if (v34 <= 0xFFFFFFFFFFFFFFF5 && v34 + 10 <= v33)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_347;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
LABEL_172:
          v38 = 0;
          goto LABEL_347;
        }

        v204 = 0;
        v205 = 0;
        v38 = 0;
        v206 = (v35 + v34);
        v18 = v33 >= v34;
        v207 = v33 - v34;
        if (!v18)
        {
          v207 = 0;
        }

        v208 = v34 + 1;
        while (2)
        {
          if (v207)
          {
            v209 = *v206;
            *(this + 1) = v208;
            v38 |= (v209 & 0x7F) << v204;
            if (v209 < 0)
            {
              v204 += 7;
              ++v206;
              --v207;
              ++v208;
              v14 = v205++ > 8;
              if (v14)
              {
                goto LABEL_172;
              }

              continue;
            }

            if (*(this + 24))
            {
              v38 = 0;
            }
          }

          else
          {
            v38 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_347:
        *(a1 + 136) = v38;
        goto LABEL_19;
      case 0x19u:
        *(a1 + 172) |= 0x80u;
        v70 = *(this + 1);
        v69 = *(this + 2);
        v71 = *this;
        if (v70 <= 0xFFFFFFFFFFFFFFF5 && v70 + 10 <= v69)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            *(this + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_359;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
LABEL_204:
          v74 = 0;
          goto LABEL_359;
        }

        v228 = 0;
        v229 = 0;
        v74 = 0;
        v230 = (v71 + v70);
        v18 = v69 >= v70;
        v231 = v69 - v70;
        if (!v18)
        {
          v231 = 0;
        }

        v232 = v70 + 1;
        while (2)
        {
          if (v231)
          {
            v233 = *v230;
            *(this + 1) = v232;
            v74 |= (v233 & 0x7F) << v228;
            if (v233 < 0)
            {
              v228 += 7;
              ++v230;
              --v231;
              ++v232;
              v14 = v229++ > 8;
              if (v14)
              {
                goto LABEL_204;
              }

              continue;
            }

            if (*(this + 24))
            {
              v74 = 0;
            }
          }

          else
          {
            v74 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_359:
        *(a1 + 64) = v74;
        goto LABEL_19;
      case 0x1Au:
        *(a1 + 172) |= 0x10u;
        v196 = *(this + 1);
        v195 = *(this + 2);
        v197 = *this;
        if (v196 <= 0xFFFFFFFFFFFFFFF5 && v196 + 10 <= v195)
        {
          v198 = 0;
          v199 = 0;
          v200 = 0;
          v201 = (v197 + v196);
          v202 = v196 + 1;
          do
          {
            *(this + 1) = v202;
            v203 = *v201++;
            v200 |= (v203 & 0x7F) << v198;
            if ((v203 & 0x80) == 0)
            {
              goto LABEL_404;
            }

            v198 += 7;
            ++v202;
            v14 = v199++ > 8;
          }

          while (!v14);
LABEL_324:
          v200 = 0;
          goto LABEL_404;
        }

        v318 = 0;
        v319 = 0;
        v200 = 0;
        v320 = (v197 + v196);
        v18 = v195 >= v196;
        v321 = v195 - v196;
        if (!v18)
        {
          v321 = 0;
        }

        v322 = v196 + 1;
        break;
      default:
        goto LABEL_18;
    }

    while (1)
    {
      if (!v321)
      {
        v200 = 0;
        *(this + 24) = 1;
        goto LABEL_404;
      }

      v323 = *v320;
      *(this + 1) = v322;
      v200 |= (v323 & 0x7F) << v318;
      if ((v323 & 0x80) == 0)
      {
        break;
      }

      v318 += 7;
      ++v320;
      --v321;
      ++v322;
      v14 = v319++ > 8;
      if (v14)
      {
        goto LABEL_324;
      }
    }

    if (*(this + 24))
    {
      v200 = 0;
    }

LABEL_404:
    *(a1 + 40) = v200;
    goto LABEL_19;
  }

  v4 = 0;
LABEL_406:
  v324 = v4 ^ 1;
  return v324 & 1;
}

void sub_1000574F4(PB::Base *a1)
{
  sub_10005752C(a1);

  operator delete();
}

void sub_10005752C(PB::Base *a1)
{
  *a1 = off_100074F88;
  v2 = *(a1 + 13);
  *(a1 + 13) = 0;
  if (v2)
  {
    sub_1000555AC(v2);
  }

  PB::Base::~Base(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}