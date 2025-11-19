uint64_t sub_100113CA4()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[7];

    v13 = v3[2];
    sub_10000B214();

    return v14();
  }
}

uint64_t sub_100113DC4()
{
  sub_100004768();
  v1 = *(v0 + 56);

  sub_100002D8C();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_100113E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100113EC4, 0, 0);
}

uint64_t sub_100113EC4()
{
  sub_100005B90();
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  type metadata accessor for TaskPriority();
  sub_100004CC8();
  sub_1000083D8();
  v8 = swift_allocObject();
  sub_1000180D0(v8);
  v9 = sub_10003AEDC();
  sub_1001146FC(v9, v10, v1);
  v11 = sub_100004CBC();
  sub_100009F5C(v11, v12, &qword_1001E6280);
  sub_100004CC8();
  sub_1000083D8();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = v3;
  v14 = sub_10003AEDC();
  sub_1001146FC(v14, v15, v16);
  v17 = sub_100004CBC();
  sub_100009F5C(v17, v18, &qword_1001E6280);
  v19 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v20 = swift_task_alloc();
  v0[10] = v20;
  sub_10007B9A4(&qword_10026DC20, &qword_1001ED338);
  *v20 = v0;
  v20[1] = sub_10011403C;
  v21 = v0[4];
  sub_1000060D0();

  return ThrowingTaskGroup.next(isolation:)();
}

uint64_t sub_10011403C()
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

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100114134()
{
  sub_1000061B4();
  v1 = *(v0 + 72);
  v2 = **(v0 + 32);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  ThrowingTaskGroup.cancelAll()();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);
  v6 = sub_100004CBC();

  return v7(v6);
}

uint64_t sub_1001141E0()
{
  sub_100004768();
  v1 = *(v0 + 72);
  v2 = **(v0 + 32);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  ThrowingTaskGroup.cancelAll()();

  sub_100002D8C();
  v4 = *(v0 + 88);

  return v3();
}

uint64_t sub_100114278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_10011431C, 0, 0);
}

uint64_t sub_10011431C()
{
  sub_100005B90();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  type metadata accessor for TaskPriority();
  sub_100004CC8();
  sub_1000083D8();
  v8 = swift_allocObject();
  sub_1000180D0(v8);
  v9 = sub_10003AEDC();
  sub_1001148B4(v9, v10, v1);
  v11 = sub_100004CBC();
  sub_100009F5C(v11, v12, &qword_1001E6280);
  sub_100004CC8();
  sub_1000083D8();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = v3;
  v14 = sub_10003AEDC();
  sub_1001148B4(v14, v15, v16);
  v17 = sub_100004CBC();
  sub_100009F5C(v17, v18, &qword_1001E6280);
  v19 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  sub_10007B9A4(&qword_10026DBF0, &qword_1001ED150);
  *v20 = v0;
  v20[1] = sub_100114494;
  v21 = v0[3];
  sub_1000060D0();

  return ThrowingTaskGroup.next(isolation:)();
}

uint64_t sub_100114494()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10011458C()
{
  sub_1000061B4();
  v1 = *(v0 + 64);
  v2 = **(v0 + 24);
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100004CBC();
  ThrowingTaskGroup.cancelAll()();
  v3 = *(v0 + 16);

  sub_10000B214();

  return v4(v3);
}

uint64_t sub_100114648()
{
  sub_1000061B4();
  v1 = *(v0 + 64);
  v2 = **(v0 + 24);
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100004CBC();
  ThrowingTaskGroup.cancelAll()();

  sub_100002D8C();
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_1001146FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_100119228(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v10, 1, v11) == 1)
  {
    sub_100009F5C(v10, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1001148B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_100119228(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v10, 1, v11) == 1)
  {
    sub_100009F5C(v10, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  sub_100002BC0(0, &qword_10026DBE0, FAFamilyCircle_ptr);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_100114A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100114B40, 0, 0);
}

uint64_t sub_100114B40()
{
  sub_100004768();
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = sub_100003E00(&dword_1001ED160);
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = sub_100012CDC(v2);

  return v4(v3);
}

uint64_t sub_100114BCC()
{
  sub_1000061B4();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  sub_100002D20();
  *v10 = v9;
  *(v11 + 64) = v0;

  v12 = *(v7 + 8);
  v13 = sub_100004CBC();
  v14(v13);
  sub_1000060D0();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100114D1C()
{
  sub_1000061B4();
  sub_1001191D4();
  sub_100007544();
  swift_willThrow();
  v1 = *(v0 + 48);

  sub_100002D8C();

  return v2();
}

uint64_t sub_100114D9C()
{
  sub_100004768();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  sub_100002D8C();

  return v3();
}

uint64_t sub_100114E2C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100114E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100114E2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100114E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100114E44(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100114EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100119A04();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_100114F1C(uint64_t a1)
{
  v2 = sub_1001199B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100114F58(uint64_t a1)
{
  v2 = sub_1001199B0();
  v3 = sub_100119A04();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_100114FB4(uint64_t a1)
{
  v3 = (*&v1[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v19 = type metadata accessor for JSFamily();
  v18[0] = v1;
  v12 = v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v18);
  LogInterpolation.init(stringLiteral:)();
  v19 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v18[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v18, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  sub_1000083D8();
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v4;
  v14[4] = a1;
  v14[5] = v12;
  v15 = v12;

  v16 = sub_10011F39C("lookup(_:)", 0xAuLL, 2);

  return v16;
}

void sub_1001151FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v39 = a2;
  v40 = type metadata accessor for JSCallable();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v40);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v35 - v19;
  v41 = a5;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  sub_100052D94(a6, &v43);
  if (v44)
  {
    type metadata accessor for JSAccount();
    if (swift_dynamicCast())
    {
      v36 = v45;
      v21 = type metadata accessor for TaskPriority();
      v37 = v20;
      sub_10000A7C0(v20, 1, 1, v21);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = a4;
      v23 = v12;
      v24 = *(v12 + 16);
      v25 = v40;
      v24(v16, a3, v40);
      v24(v42, v39, v25);
      v26 = *(v23 + 80);
      v27 = (v26 + 56) & ~v26;
      v39 = v7;
      v28 = (v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v26 + v28 + 8) & ~v26;
      v30 = swift_allocObject();
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      v31 = v38;
      *(v30 + 4) = v22;
      *(v30 + 5) = v31;
      *(v30 + 6) = v41;
      v32 = *(v23 + 32);
      v32(&v30[v27], v16, v25);
      *&v30[v28] = v36;
      v32(&v30[v29], v42, v25);

      sub_1000E349C();

      return;
    }
  }

  else
  {
    sub_100009F5C(&v43, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001E61B0;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 32) = 0x2064696C61766E49;
  *(v33 + 40) = 0xEF746E756F636361;
  v34 = JSCallable.call(_:)();

  if (!v7)
  {
  }
}

uint64_t sub_1001155C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = type metadata accessor for JSCallable();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v8[31] = *(v10 + 64);
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001156A0, 0, 0);
}

uint64_t sub_1001156A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = v10[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10[33] = Strong;
  if (Strong)
  {
    v13 = *(v10[27] + OBJC_IVAR____TtC14amsengagementd9JSAccount_account);
    v14 = swift_task_alloc();
    v10[34] = v14;
    *v14 = v10;
    v14[1] = sub_10011597C;
    sub_10000A598();

    return sub_100117230(v15);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v19 = v10[25];
    v18 = v10[26];
    v20 = v10[24];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v21);
    v23 = *(v22 + 72);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSFamily();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v28 = sub_10010F0F0(0, 0x207055206B6F6F4CLL, 0xEE0064656C696146, 0x73696420666C6573, 0xEF64657265657061);
    v29 = sub_100051018();

    *(v27 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v27 + 32) = v29;
    sub_10005C768(v27);

    v30 = v10[32];

    sub_100002D8C();
    sub_10000A598();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_10011597C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 272);
  *v3 = *v1;
  *(v2 + 280) = v6;
  *(v2 + 288) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100115A7C()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  *(sub_100007218() + 16) = xmmword_1001E5F70;
  v0[19] = type metadata accessor for JSFamily();
  v0[16] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 16);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7);

  sub_10011F068("lookup(_:)", 10, 2, (v0 + 7));
  v8 = v0[10];
  v9 = v0[35];
  v10 = v0[33];
  if (v8)
  {
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[29];
    v14 = v0[30];
    v15 = v0[28];
    v21 = v0[11];
    sub_100003CA8(v0 + 7, v8);
    (*(v14 + 16))(v11, v15, v13);
    sub_100009E58();
    v16 = swift_allocObject();
    (*(v14 + 32))(v16 + v6, v11, v13);
    *(v16 + v12) = v9;
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 7);
  }

  else
  {
    v17 = v0[35];

    sub_100009F5C((v0 + 7), &qword_10026D6C8, &unk_1001ECB60);
  }

  v18 = v0[32];

  sub_100002D8C();

  return v19();
}

uint64_t sub_100115D08()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  *(sub_100007218() + 16) = xmmword_1001E5F70;
  v0[15] = type metadata accessor for JSFamily();
  v0[12] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 12);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7);

  sub_10011F068("lookup(_:)", 10, 2, (v0 + 2));
  v8 = v0[5];
  v9 = v0[36];
  v10 = v0[33];
  if (v8)
  {
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[29];
    v14 = v0[30];
    v15 = v0[26];
    v21 = v0[6];
    sub_100003CA8(v0 + 2, v8);
    (*(v14 + 16))(v11, v15, v13);
    sub_100009E58();
    v16 = swift_allocObject();
    (*(v14 + 32))(v16 + v6, v11, v13);
    *(v16 + v12) = v9;
    swift_errorRetain();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 2);
  }

  else
  {
    v17 = v0[36];

    sub_100009F5C((v0 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  v18 = v0[32];

  sub_100002D8C();

  return v19();
}

uint64_t sub_100115FA4(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = a2;

  sub_10005C768(v3);
}

uint64_t sub_100116058(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v4[1];
  }

  else
  {
    v6 = 0;
  }

  sub_100004AA0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = ObjectType;

  v10 = sub_10011F39C("lookUpEligibility(_:)", 0x15uLL, 2);

  return v10;
}

void sub_10011616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a6;
  v51 = a5;
  v52 = a2;
  v12 = type metadata accessor for JSCallable();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100052D94(a4, &aBlock);
  if (!MetatypeMetadata)
  {
    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
    goto LABEL_10;
  }

  v49 = a8;
  v50 = a7;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001E61B0;
    v25 = 0x80000001001FB1F0;
    *(v24 + 56) = &type metadata for String;
    v26 = 0xD000000000000014;
    goto LABEL_14;
  }

  v47 = v12;
  v16 = *(&v59 + 1);
  v48 = v59;
  sub_100052D94(a4, &aBlock);
  if (!MetatypeMetadata)
  {

    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
LABEL_13:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001E61B0;
    *(v24 + 56) = &type metadata for String;
    v25 = 0x80000001001FB210;
    v26 = 0xD000000000000010;
LABEL_14:
    *(v24 + 32) = v26;
    *(v24 + 40) = v25;
    v27 = JSCallable.call(_:)();

    if (v8)
    {
      return;
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = v59;
  v18 = objc_allocWithZone(FAEligiblityEvaluationRequest);

  v41 = v16;
  v44 = *(&v17 + 1);
  v46 = sub_1001184D4();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  v45 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = *(type metadata accessor for LogInterpolation() - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v42 = *(v19 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001E5F70;
  v43 = v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v60 = type metadata accessor for JSFamily();
    *&v59 = v23;
    sub_100002C4C(&v59, &aBlock);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&aBlock = v49;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000034;
  v28._object = 0x80000001001FB230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  MetatypeMetadata = &type metadata for String;
  *&aBlock = v17;
  *(&aBlock + 1) = v44;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
  v29._object = 0x80000001001FB270;
  v29._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  MetatypeMetadata = &type metadata for String;
  *&aBlock = v48;
  *(&aBlock + 1) = v41;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  LogInterpolation.init(stringInterpolation:)();
  v31 = static os_log_type_t.default.getter();
  sub_1000036B0(v31);

  v32 = swift_allocObject();
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v34 = v53;
  v35 = v47;
  (*(v53 + 16))(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v47);
  v36 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 2) = v32;
  *(v37 + 3) = v38;
  *(v37 + 4) = v50;
  (*(v34 + 32))(&v37[v36], &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  *&v37[(v13 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v49;
  v57 = sub_1001192BC;
  v58 = v37;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_100117110;
  MetatypeMetadata = &unk_10024C9C8;
  v39 = _Block_copy(&aBlock);

  v27 = v46;
  [v46 startRequestWithCompletion:v39];
  _Block_release(v39);
LABEL_18:
}

uint64_t sub_100116864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v47 = a5;
  v46 = a4;
  v43 = type metadata accessor for JSCallable();
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v43);
  v42 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x6C69626967696C65;
  *(inited + 40) = 0xEB00000000797469;
  *(inited + 72) = &type metadata for UInt;
  v44 = a1;
  *(inited + 48) = a1;
  v13 = Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v14 = a3;
    swift_errorRetain();
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v52 = type metadata accessor for JSFamily();
      *&v51 = v19;
      sub_100002C4C(&v51, &v53);
    }

    else
    {
      v20 = v45;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v53 = v20;
    }

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v53);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v21 = v49;
    v22 = v50;
    MetatypeMetadata = v50;
    v23 = sub_100017E64(&v53);
    (*(*(v22 - 8) + 16))(v23, v21, v22);
    static LogInterpolation.safe(_:)();
    sub_100009F5C(&v53, &qword_10026D350, &qword_1001E6050);
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24);

    v25 = objc_allocWithZone(type metadata accessor for JSError());
    swift_errorRetain();
    v26 = sub_1000505C8(a2);
    v27 = sub_100051018();

    MetatypeMetadata = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v53 = v27;
    sub_100002C4C(&v53, &v51);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v13;
    sub_10000DFC4();

    v13 = v48;
    a3 = v14;
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
  }

  v29 = v28;
  sub_10011F068("lookUpEligibility(_:)", 21, 2, &v53);

  if (MetatypeMetadata)
  {
    v40[2] = v55;
    v40[1] = sub_100003CA8(&v53, MetatypeMetadata);
    v30 = v41;
    v31 = v42;
    v32 = v43;
    (*(v41 + 16))(v42, a6, v43);
    v33 = *(v30 + 80);
    v40[0] = v13;
    v34 = (v33 + 48) & ~v33;
    v35 = (v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v46;
    *(v36 + 2) = a3;
    *(v36 + 3) = v37;
    v38 = v44;
    *(v36 + 4) = v47;
    *(v36 + 5) = v38;
    (*(v30 + 32))(&v36[v34], v31, v32);
    *&v36[v35] = v40[0];
    *&v36[(v35 + 15) & 0xFFFFFFFFFFFFFFF8] = v45;

    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v53);
  }

  else
  {

    return sub_100009F5C(&v53, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_100116E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = *(type metadata accessor for LogInterpolation() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v23 = type metadata accessor for JSFamily();
    *&v22 = v15;
    sub_100002C4C(&v22, v24);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v24[0] = a7;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v24);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001001FB2E0;
  v16._countAndFlagsBits = 0xD000000000000030;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  MetatypeMetadata = &type metadata for UInt;
  v24[0] = a4;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v24, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18);

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001E61B0;
  *(v19 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v19 + 32) = a6;

  sub_100105E34(v19);
}

void sub_100117110(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_1001171A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

uint64_t sub_100117230(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return sub_100006CA4();
}

uint64_t sub_100117244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  if (([*(v12 + 256) ams_isiCloudAccount] & 1) != 0 || (v13 = objc_msgSend(*(*(v12 + 264) + OBJC_IVAR____TtC14amsengagementd8JSFamily_accountStore), "ams_iCloudAccountForAccount:", *(v12 + 256))) != 0 && (v14 = v13, v15 = objc_msgSend(v13, "isActive"), v14, v15))
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v16 = *(v12 + 264);
    *(v12 + 272) = qword_100287848;
    *(v12 + 280) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v17);
    *(v12 + 288) = *(v18 + 72);
    *(v12 + 368) = *(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for JSFamily();
    *(v12 + 296) = v20;
    *(v12 + 200) = v20;
    *(v12 + 176) = v16;
    v21 = *&v16[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime];
    if (*(v21 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
    {
      v22 = *(v21 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
      v23 = *(v21 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
    }

    v33 = v16;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v12 + 176));
    LogInterpolation.init(stringLiteral:)();
    v34 = static os_log_type_t.info.getter();
    sub_1000036B0(v34);

    v35 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v12 + 304) = v35;
    v36 = v21 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
    [v35 setCachePolicy:*(v21 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) != 0];
    if (*(v36 + 48))
    {
      v37 = 30;
    }

    else
    {
      v37 = 1;
    }

    sub_1000E4CE0(v37);
    sub_100004AA0();
    v38 = swift_allocObject();
    *(v12 + 312) = v38;
    *(v38 + 16) = v35;
    v39 = v35;
    v40 = swift_task_alloc();
    *(v12 + 320) = v40;
    *v40 = v12;
    v40[1] = sub_100117860;
    sub_100004CBC();
    sub_10000481C();

    return v45(v41, v42, v43, v44, v45, v46, v47, v48, sub_100113B5C, a10, a11, a12);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v24 = *(v12 + 264);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v25);
    v27 = *(v26 + 72);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(v12 + 168) = type metadata accessor for JSFamily();
    *(v12 + 144) = v24;
    v30 = *&v24[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime];
    if (*(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
    {
      v31 = *(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
      v32 = *(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
    }

    v62 = *(v12 + 256);
    v50 = v24;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v12 + 144));
    LogInterpolation.init(stringLiteral:)();
    v51 = static os_log_type_t.info.getter();
    sub_1000036B0(v51);

    v52 = *(v30 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
    sub_100002BC0(0, &qword_10026DBC8, AMSFamilyInfoLookupTask_ptr);
    v53 = qword_1002685F8;
    v54 = v62;
    if (v53 != -1)
    {
      swift_once();
    }

    v55 = *(v12 + 256);
    v56 = qword_10026A070;
    swift_unknownObjectRetain();
    v57 = sub_1001181DC(v55, v56);
    *(v12 + 344) = v57;
    v58 = [v57 performFamilyInfoLookupWithCachePolicy:2 * (v52 == 0)];
    *(v12 + 352) = v58;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 240;
    *(v12 + 24) = sub_100117B6C;
    v59 = swift_continuation_init();
    *(v12 + 136) = sub_10007B9A4(&qword_10026DBD0, &qword_1001ED0F0);
    *(v12 + 80) = _NSConcreteStackBlock;
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_1001181B0;
    *(v12 + 104) = &unk_10024C888;
    *(v12 + 112) = v59;
    [v58 resultWithCompletion:v12 + 80];
    sub_10000481C();

    return _swift_continuation_await(v60);
  }
}

uint64_t sub_100117860()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 320);
  *v4 = *v1;
  v3[41] = v7;
  v3[42] = v0;

  if (!v0)
  {
    v8 = v3[39];
  }

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100117968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  v14 = *(v12 + 328);
  if (v14)
  {
    sub_100119A6C(v14);

    sub_10000B214();
    sub_10000481C();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    sub_100118480();
    v24 = sub_100007544();
    *v25 = 0;
    swift_willThrow();
    *(v12 + 248) = v24;
    swift_errorRetain();
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    if (swift_dynamicCast())
    {
      sub_100005F98();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(v12 + 232) = v12 + 248;
      *(v12 + 208) = v13;
      v26 = v13;
      v27 = AMSLogKey();
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v29 = *(v12 + 304);
      v30 = *(v12 + 288);
      v31 = *(v12 + 272);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v12 + 208));
      sub_100018204();
      LogInterpolation.init(stringLiteral:)();
      v32 = static os_log_type_t.debug.getter();
      sub_1000036B0(v32);

      v33 = sub_100007544();
      sub_100015BBC(v33, v34);
    }

    else
    {
      v29 = *(v12 + 304);
      swift_willThrow();
    }

    sub_100002D8C();
    sub_10000481C();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }
}

uint64_t sub_100117B6C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100117C68()
{
  sub_100004768();
  v1 = *(v0 + 344);
  v2 = sub_10011A444(*(v0 + 240));

  sub_10000B214();

  return v3(v2);
}

uint64_t sub_100117CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  v14 = v12[39];

  v12[31] = v12[42];
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    sub_100005F98();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v12[29] = (v12 + 31);
    v12[26] = v13;
    v15 = v13;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = v12[38];
    v19 = v12[36];
    v20 = v12[34];
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v12 + 26);
    sub_100018204();
    LogInterpolation.init(stringLiteral:)();
    v21 = static os_log_type_t.debug.getter();
    sub_1000036B0(v21);

    sub_100118480();
    v22 = sub_100007544();
    sub_100015BBC(v22, v23);
  }

  else
  {
    v18 = v12[38];
    swift_willThrow();
  }

  sub_100002D8C();
  sub_10000481C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_100117E7C()
{
  sub_1000061B4();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  swift_willThrow();

  v4 = v0[45];
  sub_100002D8C();

  return v5();
}

uint64_t sub_100117EEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_100117F0C, 0, 0);
}

uint64_t sub_100117F0C()
{
  sub_1000061B4();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100118024;
  v2 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_10026DC10, &qword_1001ED168);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001181B0;
  v0[13] = &unk_10024C928;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100118024()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100118120()
{
  **(v0 + 152) = *(v0 + 144);
  sub_100002D8C();
  return v1();
}

uint64_t sub_10011814C()
{
  sub_1000061B4();
  v1 = *(v0 + 168);
  swift_willThrow();
  sub_100002D8C();
  v3 = *(v0 + 168);

  return v2();
}

id sub_1001181DC(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

uint64_t *sub_10011823C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void sub_10011832C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime);
}

id sub_10011836C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFamily();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001183EC()
{
  sub_100004768();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;

  return sub_100117EEC(v2, v3);
}

unint64_t sub_100118480()
{
  result = qword_10026DBD8;
  if (!qword_10026DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DBD8);
  }

  return result;
}

id sub_1001184D4()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithPropertyName:v1 bundleID:v2];

  return v3;
}

uint64_t sub_10011855C()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_100002D20();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    sub_1000060D0();
    sub_10000A734();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v18 = v3[10];
    v17 = v3[11];

    sub_100002D8C();
    sub_10000A734();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1001186EC()
{
  sub_100004768();
  v2 = v0[10];
  v1 = v0[11];

  sub_100002D8C();
  v4 = v0[15];

  return v3();
}

uint64_t sub_100118750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100118818;

  return sub_100113E20(a2, a3, a4, a5, a6);
}

uint64_t sub_100118818()
{
  sub_100003D28();
  sub_10000AF94();
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v3;
  sub_100002D20();
  *v10 = v9;

  if (!v1)
  {
    v11 = *(v5 + 16);
    *v11 = v2;
    v11[1] = v0;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100118918(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v4;
  v6[1] = sub_100118A0C;

  return v8(v4 + 16);
}

uint64_t sub_100118A0C()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;

  if (!v0)
  {
    v10 = v3[3];
    v9 = v3[4];
    *v9 = v3[2];
    v9[1] = v10;
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_100118B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100119A60;

  return sub_100114A80(a2, a3, a4, a5);
}

uint64_t sub_100118BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100118C84;

  return sub_100114278(a2, a3, a4, a5, a6);
}

uint64_t sub_100118C84()
{
  sub_1000061B4();
  v3 = v2;
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_100002D20();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_100118D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  sub_10000AF94();
  v11 = v10[2];
  v12 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v15 = swift_task_alloc();
  v16 = sub_100004ABC(v15);
  *v16 = v17;
  sub_10000AC04(v16);
  sub_10000A598();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_100118E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_100118F08;

  return v8(v4 + 16);
}

uint64_t sub_100118F08()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;

  if (!v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100118FFC()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10011908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100119A64;

  return sub_100114A80(a2, a3, a4, a5);
}

uint64_t sub_100119144()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1001191D4()
{
  result = qword_10026DBF8;
  if (!qword_10026DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DBF8);
  }

  return result;
}

uint64_t sub_100119228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001192BC()
{
  sub_10000AF94();
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_10000326C();
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v15 = *(v1 + v14);

  return sub_100116864(v2, v0, v11, v12, v13, v1 + v10, v15);
}

uint64_t sub_10011935C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100119374()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v14 = *(v0 + v13);
  v15 = *(v0 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100116E44(v9, v10, v11, v12, v0 + v8, v14, v15);
}

uint64_t sub_100119424()
{
  sub_100003D48();
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100009BE8;
  sub_10000481C();

  return sub_1001155C8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100119584(void (*a1)(void))
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

uint64_t sub_100119634(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  sub_10000326C();
  v11 = *(v1 + v10);

  return a1(v1 + v9, v11);
}

_BYTE *storeEnumTagSinglePayload for JSFamilyError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001197A4()
{
  result = qword_10026DC18;
  if (!qword_10026DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC18);
  }

  return result;
}

uint64_t sub_1001197F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  sub_10000AF94();
  v11 = v10[2];
  v12 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v15 = swift_task_alloc();
  v16 = sub_100004ABC(v15);
  *v16 = v17;
  sub_10000AC04(v16);
  sub_10000A598();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_100119890()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100119920()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1001199B0()
{
  result = qword_10026DC28;
  if (!qword_10026DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC28);
  }

  return result;
}

unint64_t sub_100119A04()
{
  result = qword_10026DC30;
  if (!qword_10026DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC30);
  }

  return result;
}

id sub_100119A6C(void *a1)
{
  v407 = a1;
  v1 = [a1 members];
  sub_100002BC0(0, &qword_10026DC38, FAFamilyMember_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v373 = sub_100049574(v2);
  if (!v373)
  {

    v259 = 0;
    v3 = _swiftEmptyArrayStorage;
LABEL_62:
    v260 = [v407 ageCategory];
    v444 = &type metadata for Int;
    *&v443 = v260;
    sub_100009E74(v260, v261, v262, v263, v264, v265, v266, v267, v305, v322, v339, v356, v373, v390, v407, v424, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000075D4();
    v444 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    *&v443 = v3;
    sub_100009E74(v444, v268, v269, v270, v271, v272, v273, v274, v320, v337, v354, v371, v388, v405, v422, _swiftEmptyDictionarySingleton, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    v439 = _swiftEmptyDictionarySingleton;
    sub_100011A7C();
    sub_10000DFC4();
    if (v259)
    {
      v275 = v259;
      v276 = [v275 dsid];
      if (v276)
      {
        v277 = v276;
        v278 = [v276 stringValue];

        v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v281 = v280;

        v444 = &type metadata for String;
        *&v443 = v279;
        *(&v443 + 1) = v281;
        sub_100009E74(v282, v283, v284, v285, v286, v287, v288, v289, v321, v338, v355, v372, v389, v406, v423, _swiftEmptyDictionarySingleton, v441, v442, *(&v442 + 1), v443);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100003290();
        sub_10001CC04();
        sub_10000DFC4();
      }

      else
      {
        sub_10001CC04();
        v290 = sub_100012A94();
        if (v291)
        {
          v292 = v290;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v439 = _swiftEmptyDictionarySingleton;
          v294 = _swiftEmptyDictionarySingleton[3];
          sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v294);
          v295 = *(_swiftEmptyDictionarySingleton[6] + 16 * v292 + 8);

          sub_100002C4C((_swiftEmptyDictionarySingleton[7] + 32 * v292), &v441);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v441 = 0u;
          v442 = 0u;
        }

        sub_100002C5C(&v441);
      }
    }

    v296 = v423;
    v297 = [v423 sharedPaymentEnabled];
    v444 = &type metadata for Bool;
    LOBYTE(v443) = v297;
    sub_100009E74(v297, v298, v299, v300, v301, v302, v303, v304, v321, v338, v355, v372, v389, v406, v423, v439, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003290();
    sub_100003E20();

    return v440;
  }

  v390 = 0;
  v339 = "@NSDictionary16";
  v356 = v2 & 0xC000000000000001;
  v322 = "currentSignedInUser";
  v3 = _swiftEmptyArrayStorage;
  v4 = 4;
  while (1)
  {
    sub_1000F1168(v4 - 4, v356 == 0, v2);
    result = v356 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v2 + 8 * v4);
    v6 = result;
    v7 = v4 - 3;
    if (__OFADD__(v4 - 4, 1))
    {
      break;
    }

    if ([result isOrganizer])
    {

      v8 = v6;
      v390 = v6;
    }

    result = [v407 me];
    if (!result)
    {
      goto LABEL_71;
    }

    v9 = result;
    v10 = [result dsid];

    v11 = [v6 dsid];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = v10;
LABEL_17:

LABEL_18:
        v22 = 0;
        v21 = -1;
        goto LABEL_19;
      }

      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      goto LABEL_17;
    }

    v21 = [v407 ageCategory];
    v22 = 1;
LABEL_19:
    v444 = &type metadata for Int;
    *&v443 = v21;
    sub_100009E74(v21, v14, v15, v16, v17, v18, v19, v20, v305, v322, v339, v356, v373, v390, v407, v424, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005388();
    sub_1000075D4();
    v23 = [v6 hasAskToBuyEnabled];
    v444 = &type metadata for Bool;
    LOBYTE(v443) = v23;
    sub_100009E74(v23, v24, v25, v26, v27, v28, v29, v30, v306, v323, v340, v357, v374, v391, v408, v425, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005388();
    v31 = sub_100005CD8();
    v444 = &type metadata for Bool;
    LOBYTE(v443) = v22;
    sub_100009E74(v31, v32, v33, v34, v35, v36, v37, v38, v307, v324, v341, v358, v375, v392, v409, v426, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003290();
    sub_100003E20();
    v39 = v427;
    v40 = sub_100026484(v6, &selRef_firstName);
    if (v41)
    {
      v444 = &type metadata for String;
      *&v443 = v40;
      *(&v443 + 1) = v41;
      sub_100009E74(v40, v41, v42, v43, v44, v45, v46, v47, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000B398();
      v39 = v427;
    }

    else
    {
      sub_10000B220();
      if (v48)
      {
        v49 = sub_10003AEE8();
        *&v441 = v427;
        v50 = *(v427 + 24);
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v39 = &v441;
        v51 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v50);
        v59 = sub_100007AE8(v51, v52, v53, v54, v55, v56, v57, v58, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        sub_100004CE8(v59, v60, v61, v62, v63, v64, v65, v66, v309, v326, v343, v360, v377, v394, v411, v428, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v67 = [v6 dsid];
    if (v67)
    {
      v68 = v67;
      v69 = [v67 stringValue];

      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v444 = &type metadata for String;
      *&v443 = v70;
      *(&v443 + 1) = v72;
      sub_100009E74(v73, v74, v75, v76, v77, v78, v79, v80, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100004924();
      sub_100005FB0();
      v39 = v427;
    }

    else
    {
      sub_10000AFA0();
      sub_100007240();
      if (v81)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v82 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v90 = sub_100019C84(v82, v83, v84, v85, v86, v87, v88, v89, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        v98 = sub_100007AE8(v90, v91, v92, v93, v94, v95, v96, v97, v310, v327, v344, v361, v378, v395, v412, v429, v441);
        sub_100004CE8(v98, v99, v100, v101, v102, v103, v104, v105, v311, v328, v345, v362, v379, v396, v413, v430, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v106 = sub_100026484(v6, &selRef_appleID);
    if (v107)
    {
      v444 = &type metadata for String;
      *&v443 = v106;
      *(&v443 + 1) = v107;
      sub_100009E74(v106, v107, v108, v109, v110, v111, v112, v113, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100004924();
      sub_1000064D0();
      v39 = v427;
    }

    else
    {
      sub_10000AFA0();
      sub_100005958();
      if (v114)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v115 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v123 = sub_100019C84(v115, v116, v117, v118, v119, v120, v121, v122, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        v131 = sub_100007AE8(v123, v124, v125, v126, v127, v128, v129, v130, v312, v329, v346, v363, v380, v397, v414, v431, v441);
        sub_100004CE8(v131, v132, v133, v134, v135, v136, v137, v138, v313, v330, v347, v364, v381, v398, v415, v432, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v139 = [v6 iTunesAccountDSID];
    if (v139)
    {
      v140 = v139;
      v141 = [v139 stringValue];

      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v143;

      v444 = &type metadata for String;
      *&v443 = v142;
      *(&v443 + 1) = v144;
      sub_100009E74(v145, v146, v147, v148, v149, v150, v151, v152, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000A9F8();
      sub_100005FB0();
      v39 = v427;
    }

    else
    {
      sub_10000C41C();
      sub_100007240();
      if (v153)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v154 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v162 = sub_100019C84(v154, v155, v156, v157, v158, v159, v160, v161, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        v170 = sub_100007AE8(v162, v163, v164, v165, v166, v167, v168, v169, v314, v331, v348, v365, v382, v399, v416, v433, v441);
        sub_100004CE8(v170, v171, v172, v173, v174, v175, v176, v177, v315, v332, v349, v366, v383, v400, v417, v434, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v178 = sub_100026484(v6, &selRef_iTunesAccountUsername);
    if (v179)
    {
      v444 = &type metadata for String;
      *&v443 = v178;
      *(&v443 + 1) = v179;
      sub_100009E74(v178, v179, v180, v181, v182, v183, v184, v185, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000A9F8();
      sub_1000064D0();
      v39 = v427;
    }

    else
    {
      sub_10000C41C();
      sub_100005958();
      if (v186)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v187 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v195 = sub_100019C84(v187, v188, v189, v190, v191, v192, v193, v194, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        v203 = sub_100007AE8(v195, v196, v197, v198, v199, v200, v201, v202, v316, v333, v350, v367, v384, v401, v418, v435, v441);
        sub_100004CE8(v203, v204, v205, v206, v207, v208, v209, v210, v317, v334, v351, v368, v385, v402, v419, v436, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v211 = sub_100026484(v6, &selRef_lastName);
    if (v212)
    {
      v444 = &type metadata for String;
      *&v443 = v211;
      *(&v443 + 1) = v212;
      sub_100009E74(v211, v212, v213, v214, v215, v216, v217, v218, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100018218();
      v39 = v427;
    }

    else
    {
      sub_10000A89C();
      if (v219)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v220 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v228 = sub_100019C84(v220, v221, v222, v223, v224, v225, v226, v227, v308, v325, v342, v359, v376, v393, v410, v427, v441);
        v236 = sub_100007AE8(v228, v229, v230, v231, v232, v233, v234, v235, v318, v335, v352, v369, v386, v403, v420, v437, v441);
        sub_100004CE8(v236, v237, v238, v239, v240, v241, v242, v243, v319, v336, v353, v370, v387, v404, v421, v438, v441, *(&v441 + 1), v442, *(&v442 + 1), v443);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v443);
    }

    v244 = [v6 purchaseSharingEnabled];
    v444 = &type metadata for Bool;
    LOBYTE(v443) = v244;
    sub_100009E74(v244, v245, v246, v247, v248, v249, v250, v251, v308, v325, v342, v359, v376, v393, v410, v427, v441, v442, *(&v442 + 1), v443);
    swift_isUniquelyReferenced_nonNull_native();
    v424 = v39;
    sub_10001CC04();
    sub_10000DFC4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D6000(0, v3[2] + 1, 1, v3);
      v3 = v254;
    }

    v253 = v3[2];
    v252 = v3[3];
    if (v253 >= v252 >> 1)
    {
      v255 = sub_100017F7C(v252);
      sub_1000D6000(v255, v256, v257, v3);
      v3 = v258;
    }

    v3[2] = v253 + 1;
    v3[v253 + 4] = v39;
    ++v4;
    if (v7 == v373)
    {

      v259 = v390;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_10011A444(void *a1)
{
  v2 = [a1 familyMembers];
  sub_100002BC0(0, &qword_10026DC40, AMSFamilyMember_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3;
  result = sub_100049574(v3);
  v283 = a1;
  if (!result)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_50:
    v388 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    *&v386 = v8;
    sub_100006810(v388, v254, v255, v256, v257, v258, v259, v260, v283, v300, v317, v334, v351, v368, v383, v384, v385, v386);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100011A7C();
    sub_10000DFC4();
    v261 = v298;
    v262 = [v298 headOfHouseholdICloudDSID];
    v263 = [v262 stringValue];

    v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v266 = v265;

    v388 = &type metadata for String;
    *&v386 = v264;
    *(&v386 + 1) = v266;
    sub_100006810(v267, v268, v269, v270, v271, v272, v273, v274, v298, v315, v332, v349, v366, _swiftEmptyDictionarySingleton, v383, v384, v385, v386);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001CC04();
    sub_10000DFC4();
    v275 = [v261 isHeadOfHouseholdSharingPayment];
    sub_10000AC30(v275, v276, v277, v278, v279, v280, v281, v282, v299, v316, v333, v350, v367, _swiftEmptyDictionarySingleton, v383, v384, v385, v386, v387, v388);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003E20();

    return _swiftEmptyDictionarySingleton;
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    v317 = "@NSDictionary16";
    v334 = v3 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    v300 = "currentSignedInUser";
    v351 = v3;
    do
    {
      if (v334)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v17 = v9;
      v388 = &type metadata for Int;
      *&v386 = -1;
      sub_100006810(v9, v10, v11, v12, v13, v14, v15, v16, v283, v300, v317, v334, v351, v368, v383, v384, v385, v386);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100006D98();
      sub_1000075D4();
      v18 = [v17 isAskToBuyEnabled];
      sub_10000AC30(v18, v19, v20, v21, v22, v23, v24, v25, v284, v301, v318, v335, v352, v369, v383, v384, v385, v386, v387, v388);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100006D98();
      sub_100005CD8();
      v26 = v370;
      v27 = [v17 isCurrentSignedInUser];
      sub_10000AC30(v27, v28, v29, v30, v31, v32, v33, v34, v285, v302, v319, v336, v353, v370, v383, v384, v385, v386, v387, v388);
      swift_isUniquelyReferenced_nonNull_native();
      v371 = v26;
      sub_100003E20();
      v35 = sub_100026484(v17, &selRef_firstName);
      if (v36)
      {
        v388 = &type metadata for String;
        *&v386 = v35;
        *(&v386 + 1) = v36;
        sub_100006810(v35, v36, v37, v38, v39, v40, v41, v42, v286, v303, v320, v337, v354, v26, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000B398();
        v26 = v371;
      }

      else
      {
        sub_10000B220();
        if (v43)
        {
          v44 = sub_100017DAC();
          *&v383 = v26;
          v45 = *(v26 + 3);
          sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v26 = &v383;
          v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v45);
          v54 = sub_100008448(v46, v47, v48, v49, v50, v51, v52, v53, v286, v303, v320, v337, v354, v371, v383);
          sub_100012D04(v54, v55, v56, v57, v58, v59, v60, v61, v287, v304, v321, v338, v355, v372, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v62 = [v17 iCloudDSID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 stringValue];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v388 = &type metadata for String;
        *&v386 = v65;
        *(&v386 + 1) = v67;
        sub_100006810(v68, v69, v70, v71, v72, v73, v74, v75, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100004924();
        sub_100005FB0();
        v26 = v371;
      }

      else
      {
        sub_10000AFA0();
        sub_100007240();
        if (v76)
        {
          sub_100017DAC();
          sub_10000A41C();
          v77 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v85 = sub_10000801C(v77, v78, v79, v80, v81, v82, v83, v84, v286, v303, v320, v337, v354, v371, v383);
          v93 = sub_100008448(v85, v86, v87, v88, v89, v90, v91, v92, v288, v305, v322, v339, v356, v373, v383);
          sub_100012D04(v93, v94, v95, v96, v97, v98, v99, v100, v289, v306, v323, v340, v357, v374, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v101 = sub_100026484(v17, &selRef_iCloudUsername);
      if (v102)
      {
        v388 = &type metadata for String;
        *&v386 = v101;
        *(&v386 + 1) = v102;
        sub_100006810(v101, v102, v103, v104, v105, v106, v107, v108, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100004924();
        sub_1000064D0();
        v26 = v371;
      }

      else
      {
        sub_10000AFA0();
        sub_100005958();
        if (v109)
        {
          sub_100017DAC();
          sub_10000A41C();
          v110 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v118 = sub_10000801C(v110, v111, v112, v113, v114, v115, v116, v117, v286, v303, v320, v337, v354, v371, v383);
          v126 = sub_100008448(v118, v119, v120, v121, v122, v123, v124, v125, v290, v307, v324, v341, v358, v375, v383);
          sub_100012D04(v126, v127, v128, v129, v130, v131, v132, v133, v291, v308, v325, v342, v359, v376, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v134 = [v17 iTunesDSID];
      if (v134)
      {
        v135 = v134;
        v136 = [v134 stringValue];

        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v138;

        v388 = &type metadata for String;
        *&v386 = v137;
        *(&v386 + 1) = v139;
        sub_100006810(v140, v141, v142, v143, v144, v145, v146, v147, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000A9F8();
        sub_100005FB0();
        v26 = v371;
      }

      else
      {
        sub_10000C41C();
        sub_100007240();
        if (v148)
        {
          sub_100017DAC();
          sub_10000A41C();
          v149 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v157 = sub_10000801C(v149, v150, v151, v152, v153, v154, v155, v156, v286, v303, v320, v337, v354, v371, v383);
          v165 = sub_100008448(v157, v158, v159, v160, v161, v162, v163, v164, v292, v309, v326, v343, v360, v377, v383);
          sub_100012D04(v165, v166, v167, v168, v169, v170, v171, v172, v293, v310, v327, v344, v361, v378, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v173 = sub_100026484(v17, &selRef_iTunesUsername);
      if (v174)
      {
        v388 = &type metadata for String;
        *&v386 = v173;
        *(&v386 + 1) = v174;
        sub_100006810(v173, v174, v175, v176, v177, v178, v179, v180, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000A9F8();
        sub_1000064D0();
        v26 = v371;
      }

      else
      {
        sub_10000C41C();
        sub_100005958();
        if (v181)
        {
          sub_100017DAC();
          sub_10000A41C();
          v182 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v190 = sub_10000801C(v182, v183, v184, v185, v186, v187, v188, v189, v286, v303, v320, v337, v354, v371, v383);
          v198 = sub_100008448(v190, v191, v192, v193, v194, v195, v196, v197, v294, v311, v328, v345, v362, v379, v383);
          sub_100012D04(v198, v199, v200, v201, v202, v203, v204, v205, v295, v312, v329, v346, v363, v380, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v206 = sub_100026484(v17, &selRef_lastName);
      if (v207)
      {
        v388 = &type metadata for String;
        *&v386 = v206;
        *(&v386 + 1) = v207;
        sub_100006810(v206, v207, v208, v209, v210, v211, v212, v213, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100018218();
        v26 = v371;
      }

      else
      {
        sub_10000A89C();
        if (v214)
        {
          sub_100017DAC();
          sub_10000A41C();
          v215 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v223 = sub_10000801C(v215, v216, v217, v218, v219, v220, v221, v222, v286, v303, v320, v337, v354, v371, v383);
          v231 = sub_100008448(v223, v224, v225, v226, v227, v228, v229, v230, v296, v313, v330, v347, v364, v381, v383);
          sub_100012D04(v231, v232, v233, v234, v235, v236, v237, v238, v297, v314, v331, v348, v365, v382, v383, *(&v383 + 1), v384, v385, v386);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v386);
      }

      v239 = [v17 isSharingPurchases];
      sub_10000AC30(v239, v240, v241, v242, v243, v244, v245, v246, v286, v303, v320, v337, v354, v371, v383, v384, v385, v386, v387, v388);
      swift_isUniquelyReferenced_nonNull_native();
      v368 = v26;
      sub_10001CC04();
      sub_10000DFC4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D6000(0, v8[2] + 1, 1, v8);
        v8 = v249;
      }

      v248 = v8[2];
      v247 = v8[3];
      if (v248 >= v247 >> 1)
      {
        v250 = sub_100017F7C(v247);
        sub_1000D6000(v250, v251, v252, v8);
        v8 = v253;
      }

      ++v7;

      v8[2] = v248 + 1;
      v8[v248 + 4] = v26;
      v4 = v351;
    }

    while (v6 != v7);

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void *sub_10011ACE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10009BA90(0, v1, 0);
    type metadata accessor for ObscureFeatureFlagResolver();
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = static ObscureFeatureFlagResolver.isEnabled(uuid:)();

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_10009BA90(v7 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *(&_swiftEmptyArrayStorage[4] + v8) = v6 & 1;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10011AE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFeatureFlag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10011AE9C()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_10026DC70 = result;
  return result;
}

uint64_t sub_10011AED0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1000083D8();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = ObjectType;

  v7 = v2;
  v8 = sub_10011F39C("clearFollowUpWithBackingIdentifier(_:)", 0x26uLL, 2);

  return v8;
}

void sub_10011AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v28 = a6;
  v29 = a2;
  v8 = type metadata accessor for JSCallable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v30 = [objc_allocWithZone(AMSFollowUp) init];
  v11 = String._bridgeToObjectiveC()();
  v31 = [v30 clearFollowUpWithBackingIdentifier:v11];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v9 + 16);
  v27(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v13 = *(v9 + 80);
  v26 = (v13 + 24) & ~v13;
  v14 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v25 = *(v9 + 32);
  v16 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v8;
  v25(v15 + ((v13 + 24) & ~v13), v16, v8);
  *(v15 + v14) = v32;
  v37 = sub_10011E0FC;
  v38 = v15;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000266E0;
  v36 = &unk_10024CF80;
  v18 = _Block_copy(&aBlock);

  [v31 addErrorBlock:v18];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v16;
  v27(v16, v29, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v25(v21 + v26, v20, v17);
  *(v21 + v14) = v32;
  v37 = sub_10011E2A0;
  v38 = v21;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100005E50;
  v36 = &unk_10024CFD0;
  v22 = _Block_copy(&aBlock);

  v23 = v31;
  [v31 addSuccessBlock:v22];
  _Block_release(v22);
}

uint64_t sub_10011B370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10011DADC(a3);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;
  v9[5] = v3;
  v9[6] = ObjectType;
  v10 = v8;
  v11 = v3;

  v12 = sub_10011F39C("clearFollowUpWithIdentifier(_:_:)", 0x21uLL, 2);

  return v12;
}

void sub_10011B43C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v27 = a7;
  v28 = a3;
  v29 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(AMSFollowUp) init];
  v30 = v13;
  v14 = String._bridgeToObjectiveC()();
  v31 = [v13 clearFollowUpWithIdentifier:v14 account:a6];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v10 + 16);
  v16 = v9;
  v26(v12, v28, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v28 = *(v10 + 32);
  v28(v19 + v17, v12, v16);
  *(v19 + v18) = v32;
  v37 = sub_10011E080;
  v38 = v19;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v25[1] = &v35;
  v35 = sub_1000266E0;
  v36 = &unk_10024CE68;
  v20 = _Block_copy(&aBlock);

  [v31 addErrorBlock:v20];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26(v12, v29, v16);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v28(v22 + v17, v12, v16);
  *(v22 + v18) = v32;
  v37 = sub_10011E0AC;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100005E50;
  v36 = &unk_10024CEB8;
  v23 = _Block_copy(&aBlock);

  v24 = v31;
  [v31 addSuccessBlock:v23];
  _Block_release(v23);
}

uint64_t sub_10011B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a5;
  v27 = a7;
  v28 = a1;
  v31 = a6;
  v25 = a3;
  v26 = type metadata accessor for JSCallable();
  v8 = sub_100002CC4(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v13 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000064F4();

    if (v33)
    {
      sub_100003CA8(v32, v33);
      v21 = v26;
      (*(v10 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
      v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v23 = swift_allocObject();
      (*(v10 + 32))(v23 + v22, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v32);
    }

    else
    {
      return sub_100009F5C(v32, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v27 = a4;
  v28 = a5;
  v23 = a2;
  v24 = type metadata accessor for JSCallable();
  v7 = sub_100002CC4(v24);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v12 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v15 = *(v14 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000064F4();

    if (v30)
    {
      sub_100003CA8(v29, v30);
      v20 = v24;
      (*(v9 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v24);
      v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v22 = swift_allocObject();
      (*(v9 + 32))(v22 + v21, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v29);
    }

    else
    {
      return sub_100009F5C(v29, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011BD54()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 32) = 1;
  sub_100105E34(v0);
}

uint64_t sub_10011BDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(AMSFollowUp) init];
  v9 = sub_10011DADC(a3);
  sub_100007600();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = v9;
  v10[6] = v3;
  v10[7] = ObjectType;
  v11 = v9;
  v12 = v3;
  v13 = v8;

  v14 = sub_10011F39C("pendingFollowUpWithIdentfier(_:_:)", 0x22uLL, 2);

  return v14;
}

void sub_10011BEDC(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a2;
  v28 = a8;
  v26 = a3;
  v31 = a9;
  v11 = type metadata accessor for JSCallable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = String._bridgeToObjectiveC()();
  v30 = [a4 pendingFollowUpWithIdentifier:v15 account:a7];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v12 + 16);
  v27(v14, v26, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v26 = *(v12 + 32);
  v26(v19 + v17, v14, v11);
  *(v19 + v18) = v31;
  v36 = sub_10011DE94;
  v37 = v19;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000266E0;
  v35 = &unk_10024CD50;
  v20 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v20];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27(v14, v29, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v26(v22 + v17, v14, v11);
  *(v22 + v18) = v31;
  v36 = sub_10011DEAC;
  v37 = v22;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10008E0EC;
  v35 = &unk_10024CDA0;
  v23 = _Block_copy(&aBlock);

  v24 = v30;
  [v30 addSuccessBlock:v23];
  _Block_release(v23);
}

uint64_t sub_10011C234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10011F068("pendingFollowUpWithIdentfier(_:_:)", 34, 2, v20);

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

uint64_t sub_10011C550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v30 = a1;
  v28 = type metadata accessor for JSCallable();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v11 = Strong;
    v34 = type metadata accessor for JSFollowUp();
    *&v33 = v11;
    sub_100002C4C(&v33, &v31);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v31 = a4;
  }

  v29 = a4;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v31);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("pendingFollowUpWithIdentfier(_:_:)", 34, 2, &v31);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v31, MetatypeMetadata);
      v17 = v27;
      v18 = v28;
      (*(v5 + 16))(v27, v26, v28);
      v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v5 + 32))(v21 + v19, v17, v18);
      v23 = v29;
      v22 = v30;
      *(v21 + v20) = v30;
      *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
      v24 = v22;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v31);
    }

    else
    {
      return sub_100009F5C(&v31, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011C8F8()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  if (qword_1002686A0 != -1)
  {
    swift_once();
  }

  v1 = qword_10026DC70;
  v2 = sub_100099C58(v1);

  *(v0 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v0 + 32) = v2;
  sub_100105E34(v0);
}

id sub_10011C9F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a1;
  v12 = a5(v8, v10, a4);

  return v12;
}

uint64_t sub_10011CAB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AMSFollowUp) init];
  sub_1000083D8();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = ObjectType;

  v6 = v4;
  v7 = v1;
  v8 = sub_10011F39C("pendingFollowUps(_:)", 0x14uLL, 2);

  return v8;
}

void sub_10011CB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v45 = a2;
  v47 = a7;
  v41 = a6;
  v37 = a3;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v43 = v14;
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v35 = &v35 - v16;
  v46 = sub_10011CF2C(a4, a5);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v11 + 16);
  v36(v17, a3, v10);
  v19 = *(v11 + 80);
  v20 = (v19 + 24) & ~v19;
  v38 = v20 + v15;
  v40 = v20;
  v21 = (v20 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v39 = *(v11 + 32);
  v23 = v22 + v20;
  v24 = v35;
  v39(v23, v35, v10);
  *(v22 + v21) = v47;
  v52 = sub_10011DCD4;
  v53 = v22;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v42 = &v50;
  v50 = sub_1000266E0;
  v51 = &unk_10024CC38;
  v25 = _Block_copy(&aBlock);

  [v46 addErrorBlock:v25];
  _Block_release(v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v36;
  v36(v24, v37, v10);
  v28 = v44;
  v27(v44, v45, v10);
  v29 = (v38 + v19) & ~v19;
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  v32 = v39;
  v39(v31 + v40, v24, v10);
  v32(v31 + v29, v28, v10);
  *(v31 + v30) = v47;
  v52 = sub_10011DCEC;
  v53 = v31;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10008E0EC;
  v51 = &unk_10024CC88;
  v33 = _Block_copy(&aBlock);

  v34 = v46;
  [v46 addSuccessBlock:v33];
  _Block_release(v33);
}

id sub_10011CF2C(uint64_t a1, void *a2)
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
  if (swift_dynamicCast())
  {
    v3 = [a2 pendingFollowUpsForAccount:*&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account]];

    return v3;
  }

LABEL_7:
  v5 = [a2 pendingFollowUps];

  return v5;
}

uint64_t sub_10011D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v24 = a1;
  v23 = type metadata accessor for JSCallable();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v21 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v11 = Strong;
    v28 = type metadata accessor for JSFollowUp();
    *&v27 = v11;
    sub_100002C4C(&v27, &v25);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v25 = a4;
  }

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v25);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("pendingFollowUps(_:)", 20, 2, &v25);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v25, MetatypeMetadata);
      v17 = v21;
      v18 = v23;
      (*(v5 + 16))(v21, v22, v23);
      v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v20 = swift_allocObject();
      (*(v5 + 32))(v20 + v19, v17, v18);
      *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v25);
    }

    else
    {
      return sub_100009F5C(&v25, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011D3D0(uint64_t a1, uint64_t a2)
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
  sub_100105E34(v3);
}

uint64_t sub_10011D498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v31 = a3;
  v35 = a1;
  v32 = type metadata accessor for JSCallable();
  v34 = *(v32 - 8);
  v6 = *(v34 + 64);
  v7 = __chkstk_darwin(v32);
  v37 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v36 = a5;
  if (Strong)
  {
    v14 = Strong;
    v42 = type metadata accessor for JSFollowUp();
    *&v41 = v14;
    sub_100002C4C(&v41, &v38);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v38 = a5;
  }

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v38);
  LogInterpolation.init(stringLiteral:)();
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_10011F068("pendingFollowUps(_:)", 20, 2, &v38);

    if (MetatypeMetadata)
    {
      v30[1] = v40;
      v30[0] = sub_100003CA8(&v38, MetatypeMetadata);
      v20 = v34;
      v21 = *(v34 + 16);
      v22 = v32;
      v21(v9, v31, v32);
      v21(v37, v33, v22);
      v23 = *(v20 + 80);
      v24 = (v23 + 24) & ~v23;
      v25 = (v6 + v23 + v24) & ~v23;
      v26 = swift_allocObject();
      v27 = v35;
      *(v26 + 16) = v35;
      v28 = *(v20 + 32);
      v28(v26 + v24, v9, v22);
      v28(v26 + v25, v37, v22);
      *(v26 + ((v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
      v29 = v27;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v38);
    }

    else
    {
      return sub_100009F5C(&v38, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011D8A4()
{
  sub_10011DE24();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  v1 = type metadata accessor for JSError();
  v2 = sub_10010F0F0(4, 0xD000000000000018, 0x80000001001FB5F0, 0, 0);
  *(v0 + 56) = v1;
  *(v0 + 32) = v2;
  sub_100105E34(v0);
}

id sub_10011DADC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_100012A94();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_100011BAC(*(a1 + 56) + 32 * v4, &v11);
  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  if ((sub_100023DF8() & 1) == 0)
  {
    return 0;
  }

  sub_100052D94(v10, &v11);

  if (!v12)
  {
    sub_100009F5C(&v11, &qword_10026D350, &qword_1001E6050);
    return 0;
  }

  if ((sub_100023DF8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC14amsengagementd10JSFollowUp_accountStore);
  v7 = [objc_allocWithZone(NSNumber) initWithInteger:v10];
  v8 = [v6 ams_iTunesAccountWithDSID:v7];

  return v8;
}

id sub_10011DC74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFollowUp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011DCEC(void *a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(v1 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + 16);

  return sub_10011D498(a1, v13, v1 + v9, v1 + v11, v12);
}

uint64_t sub_10011DD94()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  v8 = *(v0 + 16);
  v10 = *(v0 + v9);

  return sub_10011D8A4();
}

unint64_t sub_10011DE24()
{
  result = qword_10026DCA8;
  if (!qword_10026DCA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026DCA8);
  }

  return result;
}

uint64_t sub_10011DEC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_10011DF68()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011C8F8();
}

uint64_t sub_10011DFF0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000326C();
  return sub_10011D3D0(v0 + v9, *(v0 + v8));
}

uint64_t sub_10011E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for JSCallable();
  sub_100002CFC(v11);
  v13 = v12;
  v15 = v14;
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = *(v15 + 64);
  sub_10000326C();
  return sub_10011B7C0(a1, *(v5 + 16), v5 + v19, *(v5 + v18), a2, a3, a4, a5);
}

uint64_t sub_10011E1DC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10011E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for JSCallable();
  sub_100002CFC(v9);
  v11 = v10;
  v13 = v12;
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = *(v13 + 64);
  sub_10000326C();
  return sub_10011BA98(*(v4 + 16), v4 + v17, *(v4 + v16), a1, a2, a3, a4);
}

uint64_t sub_10011E378()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10011E448()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10011E510(uint64_t a1, void *a2)
{
  v4 = sub_100073784();
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10011E62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011E660(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v17 = type metadata accessor for JSLocation();
  v16[0] = v2;
  v2;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v16);
  LogInterpolation.init(stringLiteral:)();
  v17 = &type metadata for String;
  v16[0] = a1;
  v16[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v16, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  v12[5] = ObjectType;

  v13 = sub_10011F39C("getAuthorizationStatus(_:)", 0x1AuLL, 2);

  return v13;
}

uint64_t sub_10011E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v8 = type metadata accessor for JSCallable();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v33 = v10;
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 authorizationStatusForBundleIdentifier:v12];

  v14 = sub_10011ED58(v13);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = *(type metadata accessor for LogInterpolation() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v42 = type metadata accessor for JSLocation();
    *&v41 = v19;
    sub_100002C4C(&v41, &v38);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v38 = a7;
  }

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v38);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v38 = v14;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v38, &qword_10026D350, &qword_1001E6050);
  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22);

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
  }

  v24 = v23;
  sub_10011F068("getAuthorizationStatus(_:)", 26, 2, &v38);

  if (MetatypeMetadata)
  {
    v32 = v40;
    sub_100003CA8(&v38, MetatypeMetadata);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    (*(v36 + 16))(v35, v34, v37);
    v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v29 = (v33 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    (*(v26 + 32))(v30 + v28, v25, v27);
    *(v30 + v29) = v14;
    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v38);
  }

  else
  {

    return sub_100009F5C(&v38, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_10011ED58(int a1)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001001FB9A0;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = a1;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_10011EE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011EEBC()
{
  v1 = *(type metadata accessor for JSCallable() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100115FA4(v0 + v2, v3);
}

id sub_10011EFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLog();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10011F068@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v25 = a3;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v23 = type metadata accessor for JSManagedExport();
  v29 = v23;
  v26 = v5;
  v12 = v5;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v26);
  LogInterpolation.init(stringLiteral:)();
  v29 = &type metadata for StaticString;
  v26 = a1;
  v27 = a2;
  v28 = v25;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v26);
  v15 = static os_log_type_t.debug.getter();
  sub_1000036B0(v15);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *(a4 + 24) = type metadata accessor for RunLoopWorkerThread();
    *(a4 + 32) = &protocol witness table for RunLoopWorkerThread;
    *a4 = v17;
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v29 = v23;
    v26 = v12;
    v19 = v12;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    v29 = &type metadata for StaticString;
    v26 = a1;
    v27 = a2;
    v28 = v25;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v26);
    LogInterpolation.init(stringLiteral:)();
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22);

    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10011F39C(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v7 = type metadata accessor for JSManagedExport();
  v25 = v7;
  v22 = v3;
  v8 = v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v22);
  v25 = &type metadata for String;
  v22 = 0xD000000000000010;
  v23 = 0x80000001001FBB00;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v22);
  v25 = &type metadata for StaticString;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v22);
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11);

  type metadata accessor for RunLoopWorkerThread();
  static RunLoopWorkerThread.current.getter();
  swift_weakAssign();

  if (swift_weakLoadStrong())
  {
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v25 = v7;
    v22 = v8;
    v12 = v8;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v22);
    v25 = &type metadata for StaticString;
    v22 = a1;
    v23 = a2;
    v24 = a3;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v22);
    LogInterpolation.init(stringLiteral:)();
    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15);
  }

  sub_10010C05C();
  v16 = static JSContext.requiredCurrent.getter();
  __chkstk_darwin(v16);
  v17 = JSContext.propagateErrorsToExceptions(_:)();

  return v17;
}

id sub_10011F798()
{
  swift_weakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSManagedExport();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10011F804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSManagedExport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011F888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v62 = a3;
  v63 = a4;
  v59 = a2;
  v60 = a1;
  v61 = type metadata accessor for Bag();
  v6 = sub_100002CC4(v61);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v11 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - v13;
  v15 = (*&v4[OBJC_IVAR____TtC14amsengagementd11JSMarketing_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v16 = v15[1];
  if (v16)
  {
    v64 = *v15;
  }

  else
  {
    v64 = 0;
  }

  v17 = OBJC_IVAR____TtC14amsengagementd11JSMarketing_bag;
  v18 = Bag.amsBag.getter();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  swift_unknownObjectRelease();
  *&v65 = 0;
  v21 = [v20 valueWithError:&v65];

  if (v21)
  {
    v22 = v65;
    v23 = [v21 BOOLValue];

    if (v23)
    {
      v24 = type metadata accessor for TaskPriority();
      v58 = v14;
      sub_10000A7C0(v14, 1, 1, v24);
      v25 = OBJC_IVAR____TtC14amsengagementd11JSMarketing_accountStore;
      v26 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_clientInfo];
      v27 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient + 8];
      v56 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient];
      v57 = v26;
      v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = v27;
      (*(v8 + 16))(v54, &v5[v17], v61);
      sub_1000262E4(&v5[v25], &v65);
      v28 = (*(v8 + 80) + 64) & ~*(v8 + 80);
      v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v30 + 47) & 0xFFFFFFFFFFFFFFF8;
      v31 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 2) = 0;
      *(v32 + 3) = 0;
      v33 = v61;
      *(v32 + 4) = v62;
      *(v32 + 5) = v5;
      *(v32 + 6) = v64;
      *(v32 + 7) = v16;
      (*(v8 + 32))(&v32[v28], v54, v33);
      v34 = &v32[v29];
      v35 = v55;
      *v34 = v56;
      *(v34 + 1) = v35;
      sub_10003B104(&v65, &v32[v30]);
      v36 = v57;
      *&v32[v53] = v57;
      v37 = &v32[v31];
      v38 = v59;
      *v37 = v60;
      *(v37 + 1) = v38;
      *&v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8] = v63;
      v39 = v36;

      v40 = v62;
      v41 = v5;

      sub_1000E349C();
    }
  }

  else
  {
    v43 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v44 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v44);
  v46 = *(v45 + 72);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v66 = type metadata accessor for JSMarketing();
  *&v65 = v5;
  v49 = v5;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v65);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v50 = static os_log_type_t.error.getter();
  sub_1000036B0(v50);

  sub_10000539C();
  sub_100052D94(v63, &v65);
  if (!v66)
  {
    return sub_100002C5C(&v65);
  }

  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for ContentManager();
    v51 = v49[OBJC_IVAR____TtC14amsengagementd11JSMarketing_app];
    sub_100121478();
    sub_100007544();
    *v52 = 1;
    sub_1000B40E4();
  }

  return result;
}

uint64_t sub_10011FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1040) = v13;
  *(v8 + 1008) = v11;
  *(v8 + 1024) = v12;
  *(v8 + 992) = v10;
  *(v8 + 984) = a8;
  *(v8 + 976) = a7;
  *(v8 + 968) = a6;
  *(v8 + 960) = a5;
  *(v8 + 952) = a4;
  return _swift_task_switch(sub_10011FE80, 0, 0);
}

uint64_t sub_10011FE80()
{
  sub_10014AEE8(*(v0 + 952), (v0 + 352));
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  *(v0 + 1048) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  *(v0 + 1056) = *(v5 + 72);
  *(v0 + 1120) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v7 = type metadata accessor for JSMarketing();
  *(v0 + 1064) = v7;
  *(v0 + 680) = v7;
  *(v0 + 656) = v3;
  v8 = v3;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 656));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 712) = &type metadata for MarketingItemRequest;
  v9 = swift_allocObject();
  *(v0 + 688) = v9;
  memcpy((v9 + 16), (v0 + 352), 0x48uLL);
  sub_100121748(v0 + 352, v0 + 424);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 688);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v10 = *(v0 + 1008);
  v11 = *(v0 + 1000);
  v40 = *(v0 + 992);
  v41 = *(v0 + 1016);
  v12 = *(v0 + 984);
  *(v0 + 1072) = qword_100287810;
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  v14 = Bag.amsBag.getter();
  v15 = *(v0 + 416);
  v39 = *(v0 + 408);
  v16 = *(v0 + 360);
  v17 = *(v0 + 368);
  v18 = *(v0 + 400);
  *(v0 + 1080) = *(v0 + 392);
  *(v0 + 1088) = v18;
  v19 = objc_allocWithZone(AMSMarketingItemTask);

  v20 = sub_1001217A4(v14);
  *(v0 + 1096) = v20;
  v21 = v10[3];
  v22 = v10[4];
  sub_100003CA8(v10, v21);
  v23 = (*(v22 + 8))(v21, v22);
  [v20 setAccount:{v23, v18}];

  [v20 setClientInfo:v41];
  isa = *(v0 + 352);
  if (isa)
  {
    v25 = *(v0 + 352);

    sub_1000E3EE4(v26);

    sub_10007B9A4(&qword_10026C920, &qword_1001EBE00);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v27 = *(v0 + 976);
  [v20 setContextInfo:isa];

  if (v27)
  {
    v28 = *(v0 + 976);
    v29 = *(v0 + 968);
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v20 setLogKey:v30];

  if (*(v0 + 384))
  {
    v31 = *(v0 + 376);
    v32 = *(v0 + 384);

    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  [v20 setOfferHints:v33];

  v34 = [v20 performWithFetchOnly];
  *(v0 + 1104) = v34;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 944;
  *(v0 + 24) = sub_100120590;
  v35 = swift_continuation_init();
  *(v0 + 552) = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  *(v0 + 528) = v35;
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_100048FD8;
  *(v0 + 520) = &unk_10024D110;
  [v34 resultWithCompletion:v0 + 496];
  sub_100003DC0();

  return _swift_continuation_await(v36);
}

uint64_t sub_100120590()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1112) = v3;
  if (v3)
  {
    sub_1001218A4(v1 + 352);
    v4 = sub_100120F54;
  }

  else
  {
    v4 = sub_1001206A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1001206A8()
{
  v1 = *(v0 + 944);
  sub_100002BC0(0, &qword_10026DDE0, AMSMarketingItem_ptr);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v2 = *(v0 + 1104);
  sub_1001218A4(v0 + 352);

  v3 = *(v0 + 1096);
  sub_100121478();
  sub_100007544();
  *v4 = 0;
  swift_willThrow();

  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(v0 + 584) = type metadata accessor for JSMarketing();
  *(v0 + 560) = v7;
  v13 = v7;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 560));
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v14 = *(v0 + 880);
  v15 = *(v0 + 888);
  *(v0 + 616) = v15;
  sub_100017E64((v0 + 592));
  sub_1000047A4(v15);
  (*(v16 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 592);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v17 = *(v0 + 1040);
  v18 = static os_log_type_t.error.getter();
  sub_1000036B0(v18);

  sub_10000539C();
  sub_100052D94(v17, (v0 + 624));
  if (*(v0 + 648))
  {
    if (sub_10000C02C())
    {
      v19 = *(v0 + 960);
      v20 = *(v0 + 904);
      v21 = *(v0 + 912);
      type metadata accessor for ContentManager();
      v22 = *(v19 + OBJC_IVAR____TtC14amsengagementd11JSMarketing_app);
      sub_100007544();
      *v23 = 0;
      sub_1000B40E4();
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(v0 + 624);
  }

  sub_100002D8C();
  sub_100003DC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100120F54()
{
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1096);
  swift_willThrow();

  v5 = *(v0 + 1112);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  sub_100007B24();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F60;
  v13 = v12 + v1;
  *(v0 + 584) = type metadata accessor for JSMarketing();
  *(v0 + 560) = v8;
  v14 = v8;
  sub_100019CA4();
  sub_100002C00((v0 + 560));
  sub_100008468();
  swift_getErrorValue();
  sub_10000803C();
  sub_1000047A4(v13);
  (*(v15 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 592);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v16 = *(v0 + 1040);
  v17 = static os_log_type_t.error.getter();
  sub_1000036B0(v17);

  sub_10000539C();
  sub_100052D94(v16, (v0 + 624));
  if (*(v0 + 648))
  {
    if (sub_10000C02C())
    {
      v18 = *(v0 + 960);
      v19 = *(v0 + 904);
      v20 = *(v0 + 912);
      type metadata accessor for ContentManager();
      v21 = *(v18 + OBJC_IVAR____TtC14amsengagementd11JSMarketing_app);
      sub_100121478();
      v22 = sub_100007544();
      sub_100023E18(v22, v23);
      sub_1000B40E4();
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(v0 + 624);
  }

  sub_100002D8C();

  return v24();
}

id sub_1001212D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMarketing();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001213BC()
{
  result = type metadata accessor for Bag();
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

unint64_t sub_100121478()
{
  result = qword_10026DDD8;
  if (!qword_10026DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DDD8);
  }

  return result;
}

uint64_t sub_1001214CC(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for Bag();
  sub_100002CFC(v4);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[3];
  v25 = v1[2];
  v22 = v1[5];
  v23 = v1[4];
  v20 = v1[7];
  v21 = v1[6];
  v11 = (v1 + v8);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100121658;

  return sub_10011FE34(a1, v25, v24, v23, v22, v21, v20, v1 + v6);
}

uint64_t sub_100121658()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100002D8C();

  return v2();
}

id sub_1001217A4(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v1 initWithBag:a1 clientIdentifier:v3 clientVersion:v4 placement:v5 serviceType:v6];
  swift_unknownObjectRelease();

  return v7;
}

_BYTE *storeEnumTagSinglePayload for JSMarketing.CacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001219D8()
{
  result = qword_10026DDF0;
  if (!qword_10026DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DDF0);
  }

  return result;
}

uint64_t sub_100121A2C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = (*&v1[OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v4[1];
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
  v19 = type metadata accessor for JSMediaAPI();
  v18[0] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v18);
  LogInterpolation.init(stringLiteral:)();
  v19 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v18[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v18, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v6;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = ObjectType;

  v16 = sub_10011F39C("lookup(_:)", 0xAuLL, 2);

  return v16;
}

void sub_100121CD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a5;
  v72 = a6;
  v78 = a3;
  v68 = a2;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSCallable();
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v67 = v11;
    v20 = a8;
    if (*(*(Strong + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48))
    {
      sub_100052D94(a7, &v73);
      if (v74)
      {
        if (swift_dynamicCast())
        {
          v21 = v77;
          v66 = v76;
          sub_100052D94(a7, &v73);
          if (v74)
          {
            if (swift_dynamicCast())
            {
              v62 = v76;
              v63 = v77;
              sub_100052D94(a7, &v73);
              v65 = v20;
              if (v74)
              {
                type metadata accessor for JSAccount();
                v22 = swift_dynamicCast();
                v23 = v76;
                if (!v22)
                {
                  v23 = 0;
                }

                v64 = v23;
              }

              else
              {
                sub_100009F5C(&v73, &qword_10026D350, &qword_1001E6050);
                v64 = 0;
              }

              sub_100052D94(a7, &v73);
              if (v74)
              {
                if (swift_dynamicCast())
                {
                  v66 = sub_100123608(v76, v77, v66, v21, v35, v36, v64);

LABEL_31:

LABEL_35:
                  v39 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v40 = v69;
                  v41 = *(v69 + 16);
                  v62 = (v69 + 16);
                  v63 = v41;
                  v41(&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v15);
                  v42 = (*(v40 + 80) + 40) & ~*(v40 + 80);
                  v61 = *(v40 + 80);
                  v43 = v16 + v42;
                  v44 = v42;
                  v60 = v42;
                  v45 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v46 = swift_allocObject();
                  v48 = v71;
                  v47 = v72;
                  v46[2] = v39;
                  v46[3] = v48;
                  v46[4] = v47;
                  v59 = *(v40 + 32);
                  v49 = v46 + v44;
                  v50 = v46;
                  v68 = v46;
                  v59(v49, v17, v15);
                  *(v50 + v45) = v65;
                  v51 = swift_allocObject();
                  v69 = v51;
                  swift_unknownObjectWeakInit();
                  v63(v17, v78, v15);
                  v52 = swift_allocObject();
                  v53 = v71;
                  *(v52 + 2) = v51;
                  *(v52 + 3) = v53;
                  *(v52 + 4) = v72;
                  v59(&v52[v60], v17, v15);
                  *&v52[v45] = v65;
                  v54 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
                  v55 = v70;
                  v56 = v67;
                  (*(v70 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v67);
                  swift_bridgeObjectRetain_n();

                  v57 = static OS_dispatch_queue.global(qos:)();
                  (*(v55 + 8))(v14, v56);
                  v74 = v54;
                  v75 = &protocol witness table for OS_dispatch_queue;
                  *&v73 = v57;
                  Promise.then(perform:orCatchError:on:)();

                  sub_100002C00(&v73);

                  return;
                }
              }

              else
              {
                sub_100009F5C(&v73, &qword_10026D350, &qword_1001E6050);
              }

              sub_100052D94(a7, &v73);
              if (v74)
              {
                if (swift_dynamicCast())
                {
                  v66 = sub_100123AE4(v76, v66, v21, v62, v63, v64);

                  goto LABEL_31;
                }
              }

              else
              {

                sub_100009F5C(&v73, &qword_10026D350, &qword_1001E6050);
              }

              sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
              v37 = String._bridgeToObjectiveC()();
              v38 = AMSError();

              v66 = Promise.__allocating_init(error:)();
              goto LABEL_35;
            }
          }

          else
          {

            sub_100009F5C(&v73, &qword_10026D350, &qword_1001E6050);
          }

          sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1001E61B0;
          v32 = 0x80000001001FBDD0;
          *(v31 + 56) = &type metadata for String;
          v33 = 0xD00000000000001ALL;
          goto LABEL_20;
        }
      }

      else
      {
        sub_100009F5C(&v73, &qword_10026D350, &qword_1001E6050);
      }

      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1001E61B0;
      v32 = 0x80000001001FBDB0;
      *(v31 + 56) = &type metadata for String;
      v33 = 0xD00000000000001DLL;
    }

    else
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1001E61B0;
      v32 = 0x80000001001FBE10;
      *(v31 + 56) = &type metadata for String;
      v33 = 0xD000000000000016;
    }

LABEL_20:
    *(v31 + 32) = v33;
    *(v31 + 40) = v32;
    v34 = JSCallable.call(_:)();

    if (!v8)
    {
    }

    return;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v24 = *(type metadata accessor for LogInterpolation() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v27 = static os_log_type_t.error.getter();
  sub_1000036B0(v27);

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001E61B0;
  type metadata accessor for JSError();
  v29 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
  v30 = sub_100051018();

  *(v28 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v28 + 32) = v30;
  sub_10005C768(v28);
}

uint64_t sub_10012275C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v8 = type metadata accessor for JSCallable();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v34 = type metadata accessor for JSMediaAPI();
    *&v33 = v14;
    sub_100002C4C(&v33, &v31);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v31 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v31);
  LogInterpolation.init(stringLiteral:)();
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10011F068("lookup(_:)", 10, 2, &v31);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v31, MetatypeMetadata);
      v19 = v29;
      v18 = v30;
      v20 = v26;
      (*(v29 + 16))(v26, v27, v30);
      v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v22 = swift_allocObject();
      (*(v19 + 32))(v22 + v21, v20, v18);
      v23 = v28;
      *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v24 = v23;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v31);
    }

    else
    {
      return sub_100009F5C(&v31, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100122AC8(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = sub_1001240DC(a2);
  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if (!v4)
  {
    v4 = Dictionary.init(dictionaryLiteral:)();
  }

  *(v3 + 32) = v4;
  sub_10005C768(v3);
}

uint64_t sub_100122B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v27 = a1;
  v7 = type metadata accessor for JSCallable();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v31 = type metadata accessor for JSMediaAPI();
    *&v30 = v13;
    sub_100002C4C(&v30, &v28);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v28 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v28);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("lookup(_:)", 10, 2, &v28);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v28, MetatypeMetadata);
      v17 = v25;
      v18 = v23;
      v19 = v26;
      (*(v25 + 16))(v23, v24, v26);
      v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v20, v18, v19);
      *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      swift_errorRetain();
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

id sub_100122F88(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  Hasher.init()();
  String.hash(into:)();
  if (a3)
  {
    v6 = *&a3[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    v7 = a3;
    v8 = [v6 identifier];
    if (v8)
    {
      v9 = v8;
      Hasher._combine(_:)(1u);
      v10 = v9;
      NSObject.hash(into:)();

      v7 = v10;
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  v11 = [objc_allocWithZone(NSNumber) initWithInteger:Hasher.finalize()()];
  v12 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders;
  v13 = *(v4 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders);
  v14 = v11;
  v15 = [v13 objectForKey:v14];
  if (!v15)
  {
    v16 = sub_100123C20();
    if (qword_1002685F8 != -1)
    {
      sub_100006DAC();
    }

    v17 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v16 bag:qword_10026A070];
    if (a3)
    {
      a3 = *&a3[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    [v17 setAccount:a3];

    v18 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
    [v17 setResponseDecoder:v18];

    v19 = *(v4 + v12);
    v15 = v17;
    [v19 setObject:v15 forKey:v14];
  }

  return v15;
}

uint64_t sub_1001231CC(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.utility(_:), v16);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v13, v8);
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  aBlock[4] = nullsub_1;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024D1F0;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  v25 = v32;
  v26 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v36 + 8))(v25, v26);
  (*(v34 + 8))(v7, v35);
  v22(v15, v29);
}

uint64_t sub_100123608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v46 = a7;
  v47 = a3;
  v48 = a4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10007B9A4(&qword_10026BD40, &unk_1001E9F70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v43 - v17;
  v19 = type metadata accessor for URLComponents();
  v20 = sub_100002CC4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if (sub_100009F34(v18, 1, v19) == 1)
  {
    sub_100009F5C(v18, &qword_10026BD40, &unk_1001E9F70);
    sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = AMSError();

    return Promise.__allocating_init(error:)();
  }

  else
  {
    v44 = v26;
    v45 = v22;
    (*(v22 + 32))(v26, v18, v19);
    v31 = sub_100122F88(v47, v48, v46);
    v32 = sub_100123D5C();
    *v14 = 3;
    v33 = enum case for DispatchTimeInterval.seconds(_:);
    v48 = v19;
    v34 = *(v10 + 104);
    v34(v14, enum case for DispatchTimeInterval.seconds(_:), v7);
    v35 = v31;
    sub_1001231CC(v35, v14);

    v36 = *(v10 + 8);
    v36(v14, v7);
    *v14 = 3;
    v34(v14, v33, v7);
    v37 = v32;
    sub_1001231CC(v37, v14);

    v36(v14, v7);
    v38 = v44;
    isa = URLComponents._bridgeToObjectiveC()().super.isa;
    v40 = [v35 requestWithComponents:isa];

    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    v41 = [v37 dataTaskPromiseWithRequestPromise:v40];
    Promise<A>.init(_:)();
    v50[3] = type metadata accessor for SyncTaskScheduler();
    v50[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v50);
    SyncTaskScheduler.init()();
    sub_100002BC0(0, &qword_10026DE48, AMSMediaResult_ptr);
    v30 = Promise.map<A>(on:_:)();

    (*(v45 + 8))(v38, v48);
    sub_100002C00(v50);
  }

  return v30;
}

id sub_100123A60@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    result = v3;
  }

  else
  {
    result = [objc_allocWithZone(AMSMediaResult) initWithResult:v3];
    v5 = result;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100123AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_1002685F8;

  if (v12 != -1)
  {
    sub_100006DAC();
  }

  v13 = qword_10026A070;
  objc_allocWithZone(AMSMediaTask);
  swift_unknownObjectRetain();
  v14 = sub_10012402C(a1, a2, a3, a4, a5, v13);
  if (a6)
  {
    v15 = *(a6 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account);
  }

  else
  {
    v15 = 0;
  }

  [v14 setAccount:v15];

  sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
  v16 = [v14 perform];
  v17 = Promise<A>.init(_:)();

  return v17;
}

id sub_100123C20()
{
  v1 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices;
  v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices);
  sub_100003B80();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v5 = qword_1002685F8;

    if (v5 != -1)
    {
      sub_100006DAC();
    }

    v6 = qword_10026A070;
    v7 = objc_allocWithZone(AMSMediaTokenService);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_100003B80();
    v10 = sub_100124148(v8, v9, v6, v7);
    v11 = *(v0 + v1);
    v4 = v10;
    sub_100003B80();
    v12 = String._bridgeToObjectiveC()();
    [v11 setObject:v4 forKey:v12];
  }

  return v4;
}

id sub_100123D5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions;
  v3 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions);
  sub_100003B80();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    sub_100003B80();
    v6 = sub_100123C20();
    v7 = (*(v1 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
    v8 = v7[3];
    v10 = *v7;
    v9 = v7[1];
    v21[2] = v7[2];
    v21[3] = v8;
    v21[0] = v10;
    v21[1] = v9;
    v11 = objc_allocWithZone(type metadata accessor for AppURLSession());
    sub_10000F4A4(v21, &v20);
    v12 = sub_100026AEC(v21);
    v13 = objc_allocWithZone(AMSMediaProtocolHandler);
    v14 = v12;
    v15 = [v13 initWithTokenService:v6];
    [v14 setProtocolHandler:v15];

    v16 = *(v1 + v2);
    v5 = v14;
    v17 = v16;
    sub_100003B80();
    v18 = String._bridgeToObjectiveC()();
    [v17 setObject:v5 forKey:v18];
  }

  return v5;
}

void sub_100123F2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions);
}

id sub_100123F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMediaAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1001240DC(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100124148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 initWithClientIdentifier:v6 bag:a3];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1001241D8()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = sub_10000C04C(v5);

  return sub_10012275C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100124258()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100124324()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = sub_10000C04C(v5);

  return sub_100122B98(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001243D4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v7, v8);
}

uint64_t sub_10012446C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1002685E0 != -1)
  {
    sub_10000B984();
  }

  v7 = *(v3 + OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime);
  v8 = qword_100287770;
  v9 = *(v7 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  if (v9)
  {
    v10 = *(v7 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    v11 = *(v7 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004C9C();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = v9;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = v8;

  v14 = a3;

  sub_10000AC50();
  v18 = sub_10011F39C(v15, v16, v17);

  return v18;
}

uint64_t sub_1001245B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v52 = a7;
  v53 = a8;
  v55 = a5;
  v49 = a2;
  v50 = a3;
  v51 = type metadata accessor for JSCallable();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v51);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v42 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v54 = a10;
    v46 = a9;
    v23 = type metadata accessor for TaskPriority();
    v47 = v20;
    sub_10000A7C0(v20, 1, 1, v23);
    v48 = v10;
    v43 = a6;
    v44 = v16;
    v24 = *(v12 + 16);
    v25 = v16;
    v26 = v51;
    v24(v25, v49, v51);
    v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24(v45, v50, v26);
    v27 = *(v12 + 80);
    v28 = (v27 + 88) & ~v27;
    v29 = (v13 + v27 + v28) & ~v27;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v31 = v53;
    *(v30 + 4) = v52;
    *(v30 + 5) = v31;
    v32 = v46;
    *(v30 + 6) = v46;
    *(v30 + 7) = v22;
    v33 = v55;
    *(v30 + 8) = v54;
    *(v30 + 9) = v33;
    v34 = v44;
    *(v30 + 10) = v43;
    v35 = *(v12 + 32);
    v35(&v30[v28], v34, v26);
    v35(&v30[v29], v45, v26);

    v36 = v32;

    sub_1000E349C();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v38 = *(type metadata accessor for LogInterpolation() - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMediaCatalogSync();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v41 = static os_log_type_t.error.getter();
    sub_1000036B0(v41);
  }
}

uint64_t sub_100124998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v15;
  *(v8 + 352) = v16;
  *(v8 + 328) = v14;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 288) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 360) = v9;
  v10 = *(v9 - 8);
  *(v8 + 368) = v10;
  *(v8 + 376) = *(v10 + 64);
  *(v8 + 384) = swift_task_alloc();
  v11 = *(*(sub_10007B9A4(&qword_100269AB8, &qword_1001E6680) - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return _swift_task_switch(sub_100124AC4, 0, 0);
}

uint64_t sub_100124AC4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  sub_1000D00A8();
  *(v0 + 408) = v3;
  sub_1001256E0(*(v0 + 304), *(v0 + 400));
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v4 = *(v0 + 312);
  *(v0 + 416) = qword_100287848;
  *(v0 + 424) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  *(v0 + 432) = *(v6 + 72);
  *(v0 + 472) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v8 = type metadata accessor for JSMediaCatalogSync();
  *(v0 + 440) = v8;
  *(v0 + 184) = v8;
  *(v0 + 160) = v4;
  v9 = v4;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v0 + 392);
  v13 = *(v0 + 400);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 160));
  LogInterpolation.init(stringLiteral:)();
  sub_100126B04(v13, v12);
  v14 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v15 = sub_100009F34(v12, 1, v14);
  v16 = *(v0 + 392);
  if (v15 == 1)
  {
    sub_100009F5C(*(v0 + 392), &qword_100269AB8, &qword_1001E6680);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
  }

  else
  {
    *(v0 + 216) = v14;
    v17 = sub_100017E64((v0 + 192));
    sub_1000E0B38(v16, v17);
  }

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 192, &qword_10026D350, &qword_1001E6050);
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18);

  v19 = swift_task_alloc();
  *(v0 + 448) = v19;
  *v19 = v0;
  v19[1] = sub_100125048;
  v20 = *(v0 + 400);
  v21 = *(v0 + 320);
  sub_100003DC0();

  return sub_100093F28(v22, v23, v24, v25);
}

uint64_t sub_100125048()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  v5 = *(v2 + 448);
  v6 = *v1;
  sub_100002D98();
  *v7 = v6;
  *(v9 + 476) = v8;
  *(v9 + 456) = v10;
  *(v9 + 464) = v0;

  v11 = *(v2 + 408);

  if (v0)
  {
    v12 = sub_100125414;
  }

  else
  {
    v12 = sub_100125180;
  }

  return _swift_task_switch(v12, 0, 0);
}

void sub_100125180()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v32 = *(v0 + 416);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = (*(v0 + 472) + 32) & ~*(v0 + 472);
  v8 = swift_allocObject();
  *(v0 + 224) = v6;
  *(v8 + 16) = xmmword_1001E5F70;
  *(v0 + 248) = v1;
  v6;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 224));
  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9);

  sub_10000AC50();
  sub_10011F068(v10, v11, v12, v13);
  v14 = *(v0 + 80);
  if (v14)
  {
    v30 = *(v0 + 476);
    v15 = *(v0 + 456);
    v17 = *(v0 + 376);
    v16 = *(v0 + 384);
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v31 = *(v0 + 88);
    v33 = *(v0 + 400);
    sub_100003CA8((v0 + 56), v14);
    (*(v19 + 16))(v16, v20, v18);
    v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v22 = swift_allocObject();
    (*(v19 + 32))(v22 + v21, v16, v18);
    v23 = v22 + ((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v23 = v15;
    *(v23 + 8) = v30;
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100009F5C(v33, &qword_100269AB8, &qword_1001E6680);
    sub_100002C00((v0 + 56));
  }

  else
  {
    v24 = *(v0 + 456);
    sub_100009F5C(*(v0 + 400), &qword_100269AB8, &qword_1001E6680);

    sub_100009F5C(v0 + 56, &qword_10026D6C8, &unk_1001ECB60);
  }

  v26 = *(v0 + 392);
  v25 = *(v0 + 400);
  v27 = *(v0 + 384);

  sub_100002D8C();
  sub_100003DC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100125414()
{
  sub_100009F5C(v0[50], &qword_100269AB8, &qword_1001E6680);
  v2 = v0[58];
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  sub_10000760C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F60;
  v10 = v9 + v1;
  v0[15] = type metadata accessor for JSMediaCatalogSync();
  v0[12] = v5;
  v11 = v5;
  sub_10000805C();
  sub_100002C00(v0 + 12);
  sub_100006514();
  v12 = v10 + 2 * v8;
  swift_getErrorValue();
  v13 = v0[32];
  v14 = v0[33];
  v0[19] = v14;
  v15 = sub_100017E64(v0 + 16);
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  static LogInterpolation.safe(_:)();
  sub_100009F5C((v0 + 16), &qword_10026D350, &qword_1001E6050);
  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16);

  sub_10000AC50();
  sub_10011F068(v17, v18, v19, v20);
  v21 = v0[5];
  if (v21)
  {
    sub_10000AFB0();
    sub_100003CA8(v0 + 2, v21);
    v22 = sub_100005988();
    v23(v22);
    sub_10000848C();
    v24 = swift_allocObject();
    v25 = sub_100023E2C(v24);
    v26(v25);
    *(v12 + v8) = v2;
    swift_errorRetain();
    sub_1000032A0();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 2);
  }

  else
  {

    sub_100009F5C((v0 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  v28 = v0[49];
  v27 = v0[50];
  v29 = v0[48];

  sub_100002D8C();

  return v30();
}

uint64_t sub_1001256E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isNull])
  {
    goto LABEL_9;
  }

  v14 = JSValue.subscript.getter();
  v35 = a2;
  v15 = v14;
  JSValue.string.getter();
  v17 = v16;

  a2 = v35;
  if (!v17)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  if (sub_100009F34(v8, 1, v9) == 1)
  {
    sub_100009F5C(v8, &unk_10026FEE0, &unk_1001E67C0);
LABEL_9:
    v26 = type metadata accessor for MediaCatalogSyncPageMetadata();
    v27 = a2;
    v28 = 1;
    return sub_10000A7C0(v27, v28, 1, v26);
  }

  v18 = *(v10 + 32);
  v18(v13, v8, v9);
  v19 = JSValue.subscript.getter();
  JSValue.string.getter();
  v21 = v20;

  if (!v21)
  {
    (*(v10 + 8))(v13, v9);
    a2 = v35;
    goto LABEL_9;
  }

  v22 = sub_1000D00A8();
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v35;
  v18(v35, v13, v9);
  v26 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v33 = v32 + *(v26 + 20);
  *v33 = v29;
  *(v33 + 8) = v30;
  *(v33 + 16) = v31;
  v27 = v32;
  v28 = 0;
  return sub_10000A7C0(v27, v28, 1, v26);
}

uint64_t sub_1001259AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E61B0;
  v6 = sub_100125A58(a2, a3);
  *(v5 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v5 + 32) = v6;
  sub_10005C768(v5);
}

uint64_t sub_100125EF8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = (*&v2[OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = v10[1];
  }

  else
  {
    v12 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v28 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v31 = type metadata accessor for JSMediaCatalogSync();
  v30[0] = v2;
  v19 = v2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v30);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x80000001001FBF10;
  v20._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v31 = &type metadata for String;
  v21 = v29;
  v30[0] = v29;
  v30[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v30, &qword_10026D350, &qword_1001E6050);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  LogInterpolation.init(stringInterpolation:)();
  v23 = static os_log_type_t.default.getter();
  sub_1000036B0(v23);

  v24 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v24);
  sub_100004C9C();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v21;
  v25[5] = a2;
  v25[6] = v19;
  v25[7] = v12;
  v25[8] = v11;
  v26 = v19;

  sub_1001A1E8C(0, 0, v7, &unk_1001ED588, v25);
}

uint64_t sub_100126204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return _swift_task_switch(sub_10012622C, 0, 0);
}

uint64_t sub_10012622C()
{
  if (qword_1002685E0 != -1)
  {
    sub_10000B984();
  }

  v2 = v0[6];
  v1 = v0[7];

  v3 = sub_1000D00A8();
  v0[11] = v4;
  v5 = v3;
  v7 = v6;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_100126364;

  return sub_10009426C(v5, v7, v8);
}

uint64_t sub_100126364()
{
  sub_100004768();
  v2 = *v1;
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_100002D98();
  *v7 = v6;
  *(v2 + 104) = v0;

  if (v0)
  {
    v8 = sub_100126600;
  }

  else
  {
    v9 = *(v2 + 88);

    v8 = sub_100126474;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100126474()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for JSMediaCatalogSync();
  v0[2] = v3;
  v9 = v3;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  sub_100002D8C();

  return v11();
}

uint64_t sub_100126600()
{
  sub_100004768();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  sub_100002D8C();

  return v3();
}

id sub_100126714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMediaCatalogSync();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100126758()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100126828;
  sub_10000C42C();

  return sub_100126204(v10, v11, v12, v13, v14, v15, v16, v8);
}

uint64_t sub_100126828()
{
  sub_100004768();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002D98();
  *v3 = v2;

  sub_100002D8C();

  return v4();
}

uint64_t sub_100126944()
{
  v2 = v1;
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v23 = v0[3];
  v24 = v0[2];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[10];
  v13 = v0 + ((*(v5 + 64) + *(v4 + 80) + ((*(v4 + 80) + 88) & ~*(v4 + 80))) & ~*(v4 + 80));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100126828;
  sub_10000C42C();

  return sub_100124998(v15, v16, v17, v18, v19, v20, v21, v11);
}

uint64_t sub_100126A90()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000A42C();
  v10 = *(v0 + v9);

  return sub_100104450(v0 + v8, v10);
}

uint64_t sub_100126B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100126B74()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000A42C();
  v10 = v0 + v9;
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1001259AC(v0 + v8, v11, v12);
}

uint64_t sub_100126BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v11 = type metadata accessor for JSMetrics();
  v12 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime];
  v25 = v11;
  v24[0] = v4;
  v13 = (v12 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v13[1])
  {
    v14 = *v13;
    v15 = v13[1];
  }

  v4;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v24);
  LogInterpolation.init(stringLiteral:)();
  v25 = &type metadata for String;
  v24[0] = a1;
  v24[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v24, &qword_10026D350, &qword_1001E6050);
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10007B9A4(&qword_100269FD0, &qword_1001E7538);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001E61B0;
  *(v18 + 32) = a3;
  *(inited + 72) = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
  *(inited + 48) = v18;

  v19 = Dictionary.init(dictionaryLiteral:)();
  sub_10005B634(v19, a4);
  v21 = v20;

  return v21;
}

void sub_100126FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v62 = a7;
  v66 = a6;
  v60 = a2;
  v12 = type metadata accessor for JSCallable();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v65 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v63 = v12;
    v64 = a8;
    v58 = a3;
    v59 = v8;
    v18 = a5;
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v70 = type metadata accessor for JSMetrics();
    aBlock = v17;
    v22 = v17;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0x6965756575716E45;
    v23._object = 0xEB0000000020676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    v24 = sub_10004369C(v62);
    v70 = &type metadata for Int;
    aBlock = v24;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v25._object = 0x80000001001FC2E0;
    v25._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26);

    if (qword_100268600 != -1)
    {
      swift_once();
    }

    v27 = qword_10026A078;
    sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v62 = [v27 promiseForEnqueueingEvents:isa];

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v61;
    v54[0] = v22;
    v31 = *(v61 + 16);
    v56 = v61 + 16;
    v57 = v31;
    v32 = v65;
    v33 = v63;
    v31(v65, v58, v63);
    v34 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v55 = v34;
    v35 = (v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v36[2] = v29;
    v36[3] = v18;
    v58 = v18;
    v37 = v66;
    v36[4] = v66;
    v61 = *(v30 + 32);
    (v61)(v36 + v34, v32, v33);
    *(v36 + v35) = v64;
    v71 = sub_10012BF90;
    v72 = v36;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v54[1] = &v69;
    v69 = sub_1000266E0;
    v70 = &unk_10024D7B8;
    v38 = _Block_copy(&aBlock);

    v39 = v54[0];

    [v62 addErrorBlock:v38];
    _Block_release(v38);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v41 = v65;
    v42 = v63;
    v57(v65, v60, v63);
    v43 = swift_allocObject();
    v44 = v58;
    v43[2] = v40;
    v43[3] = v44;
    v43[4] = v37;
    (v61)(v43 + v55, v41, v42);
    *(v43 + v35) = v64;
    v71 = sub_10012BFA8;
    v72 = v43;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100005E50;
    v70 = &unk_10024D808;
    v45 = _Block_copy(&aBlock);

    v46 = v62;
    [v62 addSuccessBlock:v45];
    _Block_release(v45);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v47 = *(type metadata accessor for LogInterpolation() - 8);
    v48 = *(v47 + 72);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v50 = static os_log_type_t.error.getter();
    sub_1000036B0(v50);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v52 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v53 = sub_100051018();

    *(v51 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v51 + 32) = v53;
    sub_10005C768(v51);
  }
}

uint64_t sub_1001277A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v27 = a1;
  v7 = type metadata accessor for JSCallable();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v31 = type metadata accessor for JSMetrics();
    *&v30 = v13;
    sub_100002C4C(&v30, &v28);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v28 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v28);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("enqueueBatch(_:_:)", 18, 2, &v28);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v28, MetatypeMetadata);
      v17 = v25;
      v18 = v23;
      v19 = v26;
      (*(v25 + 16))(v23, v24, v26);
      v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v20, v18, v19);
      *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      swift_errorRetain();
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

uint64_t sub_100127B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v6 = type metadata accessor for JSCallable();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v21 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v28 = type metadata accessor for JSMetrics();
    *&v27 = v12;
    sub_100002C4C(&v27, &v25);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v25 = a5;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v25);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("enqueueBatch(_:_:)", 18, 2, &v25);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v25, MetatypeMetadata);
      v16 = v23;
      v17 = v21;
      v18 = v24;
      (*(v23 + 16))(v21, v22, v24);
      v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v20 = swift_allocObject();
      (*(v16 + 32))(v20 + v19, v17, v18);
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v25);
    }

    else
    {
      return sub_100009F5C(&v25, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100127E5C()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  *(v0 + 56) = &type metadata for () + 8;
  sub_10005C768(v0);
}

uint64_t sub_100127ED4()
{
  ObjectType = swift_getObjectType();
  v2 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = v2[1];
  }

  else
  {
    v4 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v14[3] = type metadata accessor for JSMetrics();
  v14[0] = v0;
  v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9);

  sub_100004AA0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v4;
  v11[4] = v3;
  v11[5] = ObjectType;

  v12 = sub_10011F39C("flush()", 7uLL, 2);

  return v12;
}

void sub_1001280FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a2;
  v55 = a7;
  v11 = type metadata accessor for JSCallable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48))
    {
      v52 = a5;
      v53 = a6;
      v50 = v7;
      if (qword_100268600 != -1)
      {
        swift_once();
      }

      v51 = [qword_10026A078 flush];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = *(v12 + 16);
      v44 = v12 + 16;
      v49 = v18;
      v18(&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
      v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v47 = v19;
      v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v23 = v52;
      v22 = v53;
      *(v21 + 2) = v17;
      *(v21 + 3) = v23;
      *(v21 + 4) = v22;
      v46 = *(v12 + 32);
      v48 = v12 + 32;
      v46(&v21[v19], v14, v11);
      *&v21[v20] = v55;
      v24 = v20;
      v60 = sub_10012BE34;
      v61 = v21;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v45 = &v58;
      v58 = sub_1000266E0;
      v59 = &unk_10024D6A0;
      v25 = _Block_copy(&aBlock);
      v26 = v53;

      v27 = v16;
      v43 = v27;

      [v51 addErrorBlock:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v49(v14, v54, v11);
      v29 = swift_allocObject();
      v30 = v52;
      *(v29 + 2) = v28;
      *(v29 + 3) = v30;
      *(v29 + 4) = v26;
      v46(&v29[v47], v14, v11);
      *&v29[v24] = v55;
      v60 = sub_10012BE4C;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000EA728;
      v59 = &unk_10024D6F0;
      v31 = _Block_copy(&aBlock);

      v32 = v51;
      [v51 addSuccessBlock:v31];
      _Block_release(v31);
    }

    else
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1001E61B0;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = 0xD000000000000019;
      *(v40 + 40) = 0x80000001001FC2A0;
      v41 = JSCallable.call(_:)();

      if (!v7)
      {
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
    v33 = *(type metadata accessor for LogInterpolation() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v36 = static os_log_type_t.error.getter();
    sub_1000036B0(v36);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v38 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v39 = sub_100051018();

    *(v37 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v37 + 32) = v39;
    sub_10005C768(v37);
  }
}

uint64_t sub_10012877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v27 = a1;
  v7 = type metadata accessor for JSCallable();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v31 = type metadata accessor for JSMetrics();
    *&v30 = v13;
    sub_100002C4C(&v30, &v28);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v28 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v28);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("flush()", 7, 2, &v28);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v28, MetatypeMetadata);
      v17 = v25;
      v18 = v23;
      v19 = v26;
      (*(v25 + 16))(v23, v24, v26);
      v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v20, v18, v19);
      *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      swift_errorRetain();
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

uint64_t sub_100128AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v29 = a1;
  v7 = type metadata accessor for JSCallable();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v33 = type metadata accessor for JSMetrics();
    *&v32 = v13;
    sub_100002C4C(&v32, &v30);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v30 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v30);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10011F068("flush()", 7, 2, &v30);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v30, MetatypeMetadata);
      v17 = v27;
      v18 = v25;
      v19 = v28;
      (*(v27 + 16))(v25, v26, v28);
      v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v21 = swift_allocObject();
      (*(v17 + 32))(v21 + v20, v18, v19);
      v22 = v29;
      *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v23 = v22;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v30);
    }

    else
    {
      return sub_100009F5C(&v30, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100128E58(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  *(v3 + 32) = a2;
  v4 = a2;
  sub_10005C768(v3);
}

void sub_100128F38()
{
  sub_100003D74();
  v29 = v1;
  v3 = v2;
  v27 = v4;
  v28 = v5;
  v7 = v6;
  v30 = v8;
  swift_getObjectType();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v26 = v13[1];
  if (v26)
  {
    v25 = *v13;
  }

  else
  {
    v25 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  v16 = *(v15 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v33 = type metadata accessor for JSMetrics();
  v31 = v0;
  v0;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v31);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x80000001001FC1E0;
  v19._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v33 = &type metadata for String;
  v31 = v27;
  v32 = v7;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v20 = sub_100009F5C(&v31, &qword_10026D350, &qword_1001E6050);
  sub_100008080(v20);
  v33 = &type metadata for String;
  v31 = v28;
  v32 = v3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v31, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22);

  sub_100004AA0();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v26;
  v24[5] = v30;
  v24[6] = v27;
  v24[7] = v7;
  v24[8] = v28;
  v24[9] = v3;
  sub_10000AFC4(v24, v29);

  sub_10011F39C("loadIdentifier(_:_:_:_:)", 0x18uLL, 2);

  sub_100005F14();
}

void sub_1001292A8(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v64 = a3;
  v65 = a5;
  v60 = a2;
  v16 = type metadata accessor for JSCallable();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v63 = a6;
    v55 = v16;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    v62 = a13;
    v57 = a12;
    v58 = a11;
    v59 = v13;
    v56 = a10;
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v61 = [v21 identifierStoreWithAccount:a7 bagNamespace:v22 bag:qword_10026A070];

    v23 = swift_allocObject();
    v51[0] = v20;
    swift_unknownObjectWeakInit();
    v24 = v17;
    v25 = *(v17 + 16);
    v53 = v17 + 16;
    v54 = v25;
    v26 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v55;
    v25(v26, v64, v55);
    v28 = *(v24 + 80);
    v29 = (v28 + 40) & ~v28;
    v52 = v18 + 7;
    v30 = swift_allocObject();
    v31 = v65;
    *(v30 + 2) = v23;
    *(v30 + 3) = v31;
    *(v30 + 4) = v63;
    v64 = *(v24 + 32);
    v64(&v30[v29], v26, v27);
    *&v30[(v18 + 7 + v29) & 0xFFFFFFFFFFFFFFF8] = v62;
    v70 = sub_10012BC14;
    v71 = v30;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v51[1] = &v68;
    v68 = sub_1000266E0;
    v69 = &unk_10024D588;
    v32 = _Block_copy(&aBlock);

    v33 = v51[0];

    [v61 addErrorBlock:v32];
    _Block_release(v32);
    v34 = swift_allocObject();
    v51[0] = v33;
    swift_unknownObjectWeakInit();

    v35 = v26;
    v54(v26, v60, v27);
    v36 = (v28 + 64) & ~v28;
    v37 = (v52 + v36) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v58;
    *(v38 + 16) = v56;
    *(v38 + 24) = v39;
    *(v38 + 32) = v57 & 1;
    v40 = v64;
    v41 = v65;
    *(v38 + 40) = v34;
    *(v38 + 48) = v41;
    *(v38 + 56) = v63;
    v40(v38 + v36, v35, v27);
    *(v38 + v37) = v62;
    v70 = sub_10012BCCC;
    v71 = v38;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10008E0EC;
    v69 = &unk_10024D5D8;
    v42 = _Block_copy(&aBlock);

    v43 = v61;
    [v61 addSuccessBlock:v42];
    _Block_release(v42);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v44 = *(type metadata accessor for LogInterpolation() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v47 = static os_log_type_t.error.getter();
    sub_1000036B0(v47);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v49 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v50 = sub_100051018();

    *(v48 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v48 + 32) = v50;
    sub_10005C768(v48);
  }
}

uint64_t sub_10012994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v36 = a1;
  v7 = type metadata accessor for JSCallable();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  v35 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = *(type metadata accessor for LogInterpolation() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v42 = type metadata accessor for JSMetrics();
    *&v41 = v15;
    sub_100002C4C(&v41, &v37);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v37 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v37);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001001FC250;
  v16._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v36;
  swift_getErrorValue();
  v18 = v39;
  v19 = v40;
  MetatypeMetadata = v40;
  v20 = sub_100017E64(&v37);
  (*(*(v19 - 8) + 16))(v20, v18, v19);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v37, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.error.getter();
  sub_1000036B0(v22);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_10011F068("loadIdentifier(_:_:_:_:)", 24, 2, &v37);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v37, MetatypeMetadata);
      v25 = v33;
      v26 = v31;
      v27 = v34;
      (*(v33 + 16))(v31, v32, v34);
      v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v29 = swift_allocObject();
      (*(v25 + 32))(v29 + v28, v26, v27);
      *(v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v37);
    }

    else
    {
      return sub_100009F5C(&v37, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_100129DA0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a8;
  v40 = a7;
  v13 = type metadata accessor for JSCallable();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);

  v41 = sub_1001AF320(a2, a3, a4);
  v17 = [a1 identifierForKey:?];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v46 = type metadata accessor for JSMetrics();
    *&v45 = v24;
    sub_100002C4C(&v45, &v43);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v43 = a9;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v43);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x80000001001FC230;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  MetatypeMetadata = &type metadata for String;
  *&v43 = v42;
  *(&v43 + 1) = v19;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v43, &qword_10026D350, &qword_1001E6050);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  LogInterpolation.init(stringInterpolation:)();
  v27 = static os_log_type_t.default.getter();
  sub_1000036B0(v27);

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    sub_10011F068("loadIdentifier(_:_:_:_:)", 24, 2, &v43);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v43, MetatypeMetadata);
      v30 = v38;
      v31 = v36;
      v32 = v39;
      (*(v38 + 16))(v36, v37, v39);
      v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v34 = swift_allocObject();
      (*(v30 + 32))(v34 + v33, v31, v32);
      v35 = (v34 + ((v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v35 = v42;
      v35[1] = v19;
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(&v43);
    }

    else
    {

      sub_100009F5C(&v43, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
  }
}

uint64_t sub_10012A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E61B0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_10005C768(v5);
}

void sub_10012A308()
{
  sub_100003D74();
  v26 = v1;
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v27 = v9;
  swift_getObjectType();
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v15 = v14[1];
  if (v15)
  {
    v28 = *v14;
  }

  else
  {
    v28 = 0;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v16);
  v18 = *(v17 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v31 = type metadata accessor for JSMetrics();
  v29 = v0;
  v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v29);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x80000001001FC120;
  v19._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v31 = &type metadata for String;
  v29 = v8;
  v30 = v6;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v20 = sub_100009F5C(&v29, &qword_10026D350, &qword_1001E6050);
  sub_100008080(v20);
  v31 = &type metadata for String;
  v29 = v25;
  v30 = v3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v29, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22);

  sub_100004AA0();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v28;
  v24[4] = v15;
  v24[5] = v27;
  v24[6] = v8;
  v24[7] = v6;
  v24[8] = v25;
  v24[9] = v3;
  sub_10000AFC4(v24, v26);

  sub_10011F39C("loadIdentifierFields(_:_:_:_:)", 0x1EuLL, 2);

  sub_100005F14();
}

void sub_10012A648(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v63 = a3;
  v56 = a2;
  v17 = type metadata accessor for JSCallable();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v57 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    v55 = v13;
    v62 = a5;
    v21 = v18;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    v60 = a13;
    v61 = a6;
    v53 = a12;
    v54 = a11;
    v52 = a10;
    v29 = objc_opt_self();
    v30 = String._bridgeToObjectiveC()();
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v59 = [v29 identifierStoreWithAccount:a7 bagNamespace:v30 bag:qword_10026A070];

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = *(v18 + 16);
    v32 = v57;
    v51(v57, v63, v17);
    v33 = *(v21 + 80);
    v34 = (v33 + 40) & ~v33;
    v50 = v19 + 7;
    v35 = (v19 + 7 + v34) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v61;
    *(v36 + 2) = v62;
    *(v36 + 3) = v37;
    *(v36 + 4) = v31;
    v63 = *(v21 + 32);
    v63(&v36[v34], v32, v17);
    *&v36[v35] = v60;
    v68 = sub_10012BA88;
    v69 = v36;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v49[1] = &v66;
    v66 = sub_1000266E0;
    v67 = &unk_10024D470;
    v38 = _Block_copy(&aBlock);
    v39 = v61;

    v40 = v58;

    [v59 addErrorBlock:v38];
    _Block_release(v38);
    v41 = swift_allocObject();
    v58 = v40;
    swift_unknownObjectWeakInit();

    v51(v32, v56, v17);
    v42 = (v33 + 64) & ~v33;
    v43 = (v50 + v42) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v54;
    *(v44 + 16) = v52;
    *(v44 + 24) = v45;
    *(v44 + 32) = v53 & 1;
    v46 = v63;
    *(v44 + 40) = v62;
    *(v44 + 48) = v39;
    *(v44 + 56) = v41;
    v46(v44 + v42, v32, v17);
    *(v44 + v43) = v60;
    v68 = sub_10012BAA0;
    v69 = v44;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10008E0EC;
    v67 = &unk_10024D4C0;
    v47 = _Block_copy(&aBlock);

    v48 = v59;
    [v59 addSuccessBlock:v47];
    _Block_release(v47);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v22 = *(type metadata accessor for LogInterpolation() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v25 = static os_log_type_t.error.getter();
    sub_1000036B0(v25);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v27 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v28 = sub_100051018();

    *(v26 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v26 + 32) = v28;
    sub_10005C768(v26);
  }
}

uint64_t sub_10012ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v6 = type metadata accessor for JSCallable();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v29 = v8;
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = *(type metadata accessor for LogInterpolation() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001001FC1C0;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  swift_getErrorValue();
  v15 = v36;
  v16 = v37;
  v35 = v37;
  v17 = sub_100017E64(v34);
  (*(*(v16 - 8) + 16))(v17, v15, v16);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v34, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_10011F068("loadIdentifierFields(_:_:_:_:)", 30, 2, v34);

    if (v35)
    {
      sub_100003CA8(v34, v35);
      v22 = v32;
      v23 = v30;
      v24 = v33;
      (*(v32 + 16))(v30, v31, v33);
      v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v26 = (v29 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      (*(v22 + 32))(v27 + v25, v23, v24);
      *(v27 + v26) = a1;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v34);
    }

    else
    {
      return sub_100009F5C(v34, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_10012B0CC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v38 = a7;
  v12 = type metadata accessor for JSCallable();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  __chkstk_darwin(v12);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);

  v16 = sub_1001AF320(a2, a3, a4);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001E8AB0;
  *(v17 + 32) = v16;
  v39 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [a1 generateEventFieldsForKeys:isa];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = *(type metadata accessor for LogInterpolation() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x80000001001FC1A0;
  v24._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  v41 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v40[0] = v20;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v40, &qword_10026D350, &qword_1001E6050);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v26 = static os_log_type_t.default.getter();
  sub_1000036B0(v26);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_10011F068("loadIdentifierFields(_:_:_:_:)", 30, 2, v40);

    if (v41)
    {
      sub_100003CA8(v40, v41);
      v29 = v36;
      v30 = v34;
      v31 = v37;
      (*(v36 + 16))(v34, v35, v37);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = swift_allocObject();
      (*(v29 + 32))(v33 + v32, v30, v31);
      *(v33 + ((v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(v40);
    }

    else
    {

      sub_100009F5C(v40, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
  }
}

uint64_t sub_10012B5A0(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v3 + 32) = a2;

  sub_10005C768(v3);
}

id sub_10012B654()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = v5;
  v15 = v7;
  v1(v5, v8, v10, v11, v13, v3);

  sub_100005F14();

  return v16;
}

id sub_10012B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100052D94(a4, &v13);
  if (v14)
  {
    type metadata accessor for JSAccount();
    if (sub_1000059A4())
    {
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_100009F5C(&v13, &qword_10026D350, &qword_1001E6050);
    v5 = 0;
  }

  sub_100052D94(a4, &v13);
  if (v14)
  {
    if (sub_1000059A4())
    {
      v6 = v12 ^ 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009F5C(&v13, &qword_10026D350, &qword_1001E6050);
  }

  v6 = 1;
LABEL_11:
  sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);

  v7 = sub_1001875AC();
  if (v5)
  {
    v8 = *&v5[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
  }

  else
  {
    v8 = 0;
  }

  [v7 setAccount:v8];

  [v7 setAnonymous:v6 & 1];
  [v7 setSuppressEngagement:1];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v7 addPropertiesWithDictionary:isa];

  sub_100052D94(a4, &v13);
  if (v14)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    if (sub_1000059A4())
    {
      sub_10012E0E8(v12);

      v10 = Array._bridgeToObjectiveC()().super.isa;

      [v7 removePropertiesForKeys:v10];
    }
  }

  else
  {

    sub_100009F5C(&v13, &qword_10026D350, &qword_1001E6050);
  }

  return v7;
}

id sub_10012BA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMetrics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012BAD0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000B9A4();
  return sub_100104450(v0 + v9, *(v0 + v8));
}

uint64_t sub_10012BB3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10012BC2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  sub_100002DFC();
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  sub_10000B9A4();
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v14 = *(v3 + 4);
  v16 = *&v3[v15];

  return a2(v2, v12, v13, v14, &v3[v11], v16);
}

uint64_t sub_10012BCE4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, unint64_t, void))
{
  v5 = type metadata accessor for JSCallable();
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v10, *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10012BD98()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000B9A4();
  v10 = (v0 + v9);
  v11 = *v10;
  v12 = v10[1];

  return sub_10012A258(v0 + v8, v11, v12);
}

uint64_t sub_10012BE7C(uint64_t (*a1)(uint64_t, uint64_t))
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

unint64_t sub_10012BF08()
{
  result = qword_10026DEC0;
  if (!qword_10026DEC0)
  {
    sub_10007BC70(&qword_10026BF58, &qword_1001EA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DEC0);
  }

  return result;
}

uint64_t sub_10012BFA8()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_10000B9A4();
  v9 = v0[2];
  v10 = v0[3];
  v12 = *(v0 + v11);
  v13 = v0[4];

  return sub_100127B10(v9, v10, v13, v0 + v8, v12);
}

uint64_t sub_10012C028()
{
  v0 = type metadata accessor for JSCallable();
  sub_100003D10(v0);
  v2 = *(v1 + 80);

  return sub_100127E5C();
}

uint64_t sub_10012C084()
{
  sub_100002DFC();
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5);
  v0(*(v1 + v6));

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

id sub_10012C158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSNetwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012C18C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSOnDeviceDataService();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10012C1E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSOnDeviceDataService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012C23C(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  *(v6 + 32) = a2;
  *(v6 + 40) = ObjectType;

  v7 = v2;
  v8 = sub_10011F39C("askToSync(_:_:)", 0xFuLL, 2);

  return v8;
}

void sub_10012C2EC(double a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v81 = a6;
  v82 = a3;
  v13 = type metadata accessor for JSCallable();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v19 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v57 - v21;
  sub_100052D94(a5, &v86);
  if (!v87)
  {
    sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
    goto LABEL_16;
  }

  type metadata accessor for JSAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001E61B0;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 32) = 0x20676E697373694DLL;
    *(v46 + 40) = 0xEF746E756F636361;
    v47 = JSCallable.call(_:)();
    goto LABEL_26;
  }

  v80 = a4;
  v23 = v84;
  v24 = [*&v84[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] ams_accountID];
  if (!v24)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001E61B0;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 32) = 0xD000000000000011;
    *(v48 + 40) = 0x80000001001FC5D0;
    v47 = JSCallable.call(_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_27;
  }

  v78 = v24;
  v79 = v23;
  sub_100052D94(a5, &v86);
  if (!v87)
  {
    sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
    v8 = v7;
    goto LABEL_20;
  }

  v8 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1001E61B0;
    v50 = 0x80000001001FC5F0;
    *(v49 + 56) = &type metadata for String;
    v51 = 0xD000000000000013;
LABEL_21:
    *(v49 + 32) = v51;
    *(v49 + 40) = v50;
LABEL_25:
    v47 = JSCallable.call(_:)();

LABEL_26:

    if (v8)
    {
      return;
    }

    goto LABEL_27;
  }

  v25 = v85;
  v75 = v84;
  v76 = a7;
  sub_100052D94(a5, &v86);
  v26 = v80;
  if (!v87)
  {

    sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
LABEL_24:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1001E61B0;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = 0x20676E697373694DLL;
    *(v52 + 40) = 0xEA00000000006469;
    goto LABEL_25;
  }

  v77 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v27 = v85;
  v73 = v84;
  sub_100052D94(a5, &v86);
  if (!v87)
  {

    sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
LABEL_31:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1001E61B0;
    v50 = 0x80000001001FC610;
    *(v49 + 56) = &type metadata for String;
    v51 = 0xD000000000000010;
    goto LABEL_21;
  }

  v74 = v27;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v28 = v85;
  v72 = v84;
  sub_100052D94(a5, &v86);
  if (v87)
  {
    if (swift_dynamicCast())
    {
      v70 = v84;
      v71 = v28;
      v29 = v85;
      sub_100052D94(a5, &v86);
      if (v87)
      {
        v69 = v29;
        if (swift_dynamicCast())
        {
          v67 = v84;
          v68 = v85;
          v30 = type metadata accessor for TaskPriority();
          sub_10000A7C0(v22, 1, 1, v30);
          v66 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v31 = *(v83 + 16);
          v31(v18, v26, v13);
          v31(v16, v82, v13);
          v32 = v83;
          v33 = *(v83 + 80);
          v58 = (v33 + 40) & ~v33;
          v61 = (v14 + 7 + v58) & 0xFFFFFFFFFFFFFFF8;
          v59 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
          v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
          v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
          v65 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
          v82 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
          v64 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
          v81 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
          v63 = (v33 + v81 + 8) & ~v33;
          v80 = (v14 + 7 + v63) & 0xFFFFFFFFFFFFFFF8;
          v34 = swift_allocObject();
          *(v34 + 2) = 0;
          *(v34 + 3) = 0;
          *(v34 + 4) = v66;
          v35 = *(v32 + 32);
          v35(&v34[v58], v18, v13);
          *&v34[v61] = v78;
          v36 = &v34[v59];
          v37 = v77;
          *v36 = v75;
          *(v36 + 1) = v37;
          v38 = &v34[v60];
          v39 = v74;
          *v38 = v73;
          *(v38 + 1) = v39;
          v40 = &v34[v62];
          v41 = v71;
          *v40 = v72;
          *(v40 + 1) = v41;
          v42 = &v34[v65];
          v43 = v69;
          *v42 = v70;
          *(v42 + 1) = v43;
          *&v34[v82] = a5;
          v44 = &v34[v64];
          v45 = v68;
          *v44 = v67;
          *(v44 + 1) = v45;
          *&v34[v81] = a1;
          v35(&v34[v63], v16, v13);
          *&v34[v80] = v76;

          sub_1000E349C();

          return;
        }
      }

      else
      {

        sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
      }

      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1001E61B0;
      v54 = 0x80000001001FC650;
      *(v53 + 56) = &type metadata for String;
      v55 = 0xD000000000000011;
      goto LABEL_38;
    }
  }

  else
  {

    sub_100009F5C(&v86, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1001E61B0;
  v54 = 0x80000001001FC630;
  *(v53 + 56) = &type metadata for String;
  v55 = 0xD000000000000010;
LABEL_38:
  *(v53 + 32) = v55;
  *(v53 + 40) = v54;
  v56 = JSCallable.call(_:)();
  if (v7)
  {

    return;
  }

  v47 = v56;

LABEL_27:
}

uint64_t sub_10012CDB0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 448) = v26;
  *(v9 + 456) = v27;
  *(v9 + 440) = a1;
  *(v9 + 432) = v25;
  *(v9 + 400) = v23;
  *(v9 + 416) = v24;
  *(v9 + 368) = v21;
  *(v9 + 384) = v22;
  *(v9 + 352) = a8;
  *(v9 + 360) = a9;
  *(v9 + 336) = a6;
  *(v9 + 344) = a7;
  *(v9 + 328) = a5;
  v10 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  *(v9 + 464) = swift_task_alloc();
  v11 = type metadata accessor for JSCallable();
  *(v9 + 472) = v11;
  v12 = *(v11 - 8);
  *(v9 + 480) = v12;
  *(v9 + 488) = *(v12 + 64);
  *(v9 + 496) = swift_task_alloc();
  v13 = type metadata accessor for TSOnDeviceDataService.DatasetIdentifier();
  *(v9 + 504) = v13;
  v14 = *(v13 - 8);
  *(v9 + 512) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v16 = type metadata accessor for AccountIdentity();
  *(v9 + 528) = v16;
  v17 = *(v16 - 8);
  *(v9 + 536) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();

  return _swift_task_switch(sub_10012CF98, 0, 0);
}

uint64_t sub_10012CF98()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 560) = Strong;
  if (Strong)
  {
    v48 = Strong;
    v3 = *(v0 + 552);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 416);
    v8 = *(v0 + 344);
    AccountIdentity.init(amsAccountID:)();
    (*(v5 + 16))(v4, v3, v6);
    sub_100052D94(v7, (v0 + 96));
    if (*(v0 + 120))
    {
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 304);
        v10 = *(v0 + 312);
      }
    }

    else
    {
      sub_100009F5C(v0 + 96, &qword_10026D350, &qword_1001E6050);
    }

    v45 = *(v0 + 520);
    v46 = *(v0 + 544);
    v24 = *(v0 + 424);
    v25 = *(v0 + 432);
    v26 = *(v0 + 408);
    v47 = *(v0 + 400);
    v28 = *(v0 + 384);
    v27 = *(v0 + 392);
    v29 = *(v0 + 368);
    v30 = *(v0 + 376);
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);

    TSOnDeviceDataService.DatasetIdentifier.init(accountIdentity:datasetName:id:idDomain:idSource:idSuffix:namespace:)();
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    *(v0 + 568) = qword_100287848;
    *(v0 + 576) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v33);
    *(v0 + 584) = *(v34 + 72);
    *(v0 + 616) = *(v35 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v36 = type metadata accessor for JSOnDeviceDataService();
    *(v0 + 592) = v36;
    *(v0 + 152) = v36;
    *(v0 + 128) = v48;
    v37 = v48;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = *(v0 + 440);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 128));
    LogInterpolation.init(stringLiteral:)();
    v41 = static os_log_type_t.default.getter();
    sub_1000036B0(v41);

    v42 = async function pointer to static TSOnDeviceDataService.askToSync(dataset:afterDelay:)[1];
    v43 = swift_task_alloc();
    *(v0 + 600) = v43;
    *v43 = v0;
    v43[1] = sub_10012D568;
    v44 = *(v0 + 520);

    return static TSOnDeviceDataService.askToSync(dataset:afterDelay:)(v44, v40, 0);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230();
    }

    v11 = *(v0 + 456);
    v12 = *(v0 + 336);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v18 = static os_log_type_t.error.getter();
    sub_1000036B0(v18);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v20 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v21 = sub_100051018();

    *(v19 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v19 + 32) = v21;
    sub_10005C768(v19);

    sub_1000053C0();

    sub_100002D8C();

    return v22();
  }
}

uint64_t sub_10012D568()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_10012D980;
  }

  else
  {
    v3 = sub_10012D67C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012D67C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = ((*(v0 + 616) + 32) & ~*(v0 + 616)) + 2 * *(v0 + 584);
  v5 = swift_allocObject();
  *(v0 + 224) = v3;
  *(v5 + 16) = xmmword_1001E5F70;
  *(v0 + 248) = v1;
  v6 = v3;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 584);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 224));
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  sub_10011F068("askToSync(_:_:)", 15, 2, v0 + 56);
  v13 = *(v0 + 80);
  v14 = *(v0 + 552);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  if (v13)
  {
    v34 = *(v0 + 552);
    v32 = *(v0 + 504);
    v33 = *(v0 + 520);
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    v23 = *(v0 + 472);
    v22 = *(v0 + 480);
    v24 = *(v0 + 448);
    v29 = *(v0 + 88);
    v31 = *(v0 + 560);
    sub_100003CA8((v0 + 56), v13);
    (*(v22 + 16))(v20, v24, v23);
    v30 = v16;
    v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v26 = swift_allocObject();
    (*(v22 + 32))(v26 + v25, v20, v23);
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v18 + 8))(v33, v32);
    (*(v15 + 8))(v34, v30);
    sub_100002C00((v0 + 56));
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
    sub_100009F5C(v0 + 56, &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_1000053C0();

  sub_100002D8C();

  return v27();
}

uint64_t sub_10012D980()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = ((*(v0 + 616) + 32) & ~*(v0 + 616)) + 2 * *(v0 + 584);
  (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
  (*(v5 + 8))(v4, v6);
  v8 = swift_allocObject();
  *(v0 + 160) = v3;
  v37 = (v0 + 16);
  *(v8 + 16) = xmmword_1001E5F70;
  *(v0 + 184) = v1;
  v9 = v3;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v0 + 608);
  v13 = *(v0 + 584);
  v14 = *(v0 + 568);
  v35 = *(v0 + 560);
  v15 = *(v0 + 464);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 160));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001001FC670;
  v16._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  swift_getErrorValue();
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  *(v0 + 216) = v18;
  v19 = sub_100017E64((v0 + 192));
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v0 + 192, &qword_10026D350, &qword_1001E6050);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  v21 = static os_log_type_t.error.getter();
  sub_1000036B0(v21);

  sub_10011F068("askToSync(_:_:)", 15, 2, v37);
  v22 = *(v0 + 40);
  v23 = *(v0 + 608);
  v24 = *(v0 + 560);
  if (v22)
  {
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 472);
    v28 = *(v0 + 480);
    v29 = *(v0 + 336);
    v36 = *(v0 + 48);
    sub_100003CA8(v37, v22);
    (*(v28 + 16))(v25, v29, v27);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v31 = swift_allocObject();
    (*(v28 + 32))(v31 + v30, v25, v27);
    *(v31 + ((v26 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    swift_errorRetain();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v37);
  }

  else
  {
    v32 = *(v0 + 608);

    sub_100009F5C(v37, &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_1000053C0();

  sub_100002D8C();

  return v33();
}

uint64_t sub_10012DDD4(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = (v9 + 40) & ~v9;
  v11 = *(v8 + 64) + 7;
  v12 = (v10 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = v1[3];
  v38 = v1[2];
  v35 = *(v1 + v12);
  v36 = v1[4];
  v33 = *(v1 + v13 + 8);
  v34 = *(v1 + v13);
  v31 = *(v1 + v14 + 8);
  v32 = *(v1 + v14);
  v29 = *(v1 + v15 + 8);
  v30 = *(v1 + v15);
  v20 = *(v1 + v16);
  v21 = *(v1 + v16 + 8);
  v22 = *(v1 + v17);
  v23 = *(v1 + v19);
  v25 = *(v1 + v18);
  v24 = *(v1 + v18 + 8);
  v26 = *(v1 + ((((v9 + v19 + 8) & ~v9) + v11) & 0xFFFFFFFFFFFFFFF8));
  v27 = swift_task_alloc();
  *(v3 + 16) = v27;
  *v27 = v3;
  v27[1] = sub_100121658;

  return sub_10012CDB0(v23, a1, v38, v37, v36, v1 + v10, v35, v34, v33);
}

uint64_t sub_10012DFDC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100104450(v0 + v6, v7);
}

uint64_t sub_10012E060()
{
  v0 = *(*(type metadata accessor for JSCallable() - 8) + 80);

  return sub_100127E5C();
}

void *sub_10012E0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_10009BAF4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10009BAF4(v5 > 1, v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100002C4C(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10012E1E8(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0, v4, 0);
    v8 = (a1 + 32);
    do
    {
      v13 = *v8;

      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      sub_10007B9A4(a3, a4);
      swift_dynamicCast();
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      _swiftEmptyArrayStorage[v10 + 4] = v14;
      ++v8;
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10012E324(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(NSCondition) init];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2;
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return v2;
}

uint64_t sub_10012E384@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceNow:)();
    v3 = 0;
  }

  v4 = type metadata accessor for Date();

  return sub_10000A7C0(a2, v3, 1, v4);
}

uint64_t sub_10012E3E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 88) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = *(*(sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10012E48C, 0, 0);
}

uint64_t sub_10012E48C()
{
  sub_100003D28();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_10012E384(*(v0 + 88) & 1, v1);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v9;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  type metadata accessor for Connection();
  *v6 = v0;
  v6[1] = sub_10012E5AC;
  sub_1000060D0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_10012E5AC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_1000060D0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10012E6B0()
{
  sub_100004768();
  sub_100009FB0(v0[7], &unk_100271EA0, &qword_1001E77F0);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10012E734()
{
  sub_100004768();
  v2 = v0[7];
  v1 = v0[8];

  sub_100009FB0(v2, &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();
  v4 = v0[10];

  return v3();
}

id sub_10012E7B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v69 = a6;
  v71 = a4;
  v72 = sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  v67 = *(v72 - 8);
  v64 = *(v67 + 64);
  __chkstk_darwin(v72);
  v65 = &v64 - v9;
  v10 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v66 = &v64 - v12;
  v13 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v73 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v70 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = &v64 - v24;
  __chkstk_darwin(v23);
  v74 = &v64 - v25;
  v75 = (v26 + 32);
  v77 = (v26 + 8);
  while (*(a1 + 56) == 2 && (*(a1 + 48) - 1) <= 1)
  {
    sub_1000A46BC(a2, v18, &unk_100271EA0, &qword_1001E77F0);
    if (sub_100009F34(v18, 1, v19) == 1)
    {
      sub_100009FB0(v18, &unk_100271EA0, &qword_1001E77F0);
      [a3 wait];
    }

    else
    {
      v27 = v74;
      (*v75)(v74, v18, v19);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [a3 waitUntilDate:{isa, v64}];

      v29 = v76;
      static Date.now.getter();
      v78 = static Date.> infix(_:_:)();
      v30 = a2;
      v31 = a1;
      v32 = a3;
      v33 = *v77;
      (*v77)(v29, v19);
      v33(v27, v19);
      a3 = v32;
      a1 = v31;
      a2 = v30;
      if (v78)
      {
        break;
      }
    }
  }

  v34 = v73;
  sub_1000A46BC(a2, v73, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v34, 1, v19) == 1)
  {
    sub_100009FB0(v34, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v35 = v70;
    (*v75)(v70, v34, v19);
    v36 = v76;
    static Date.now.getter();
    v37 = static Date.> infix(_:_:)();
    v38 = *v77;
    (*v77)(v36, v19);
    if (v37)
    {
      sub_1001354A0();
      v39 = swift_allocError();
      *v40 = 1;
      v41 = *(a1 + 48);
      *(a1 + 48) = v39;
      LOBYTE(v40) = *(a1 + 56);
      *(a1 + 56) = 0;
      sub_100135394(v41, v40);
      v42 = swift_allocError();
      *v43 = 1;
      v79 = v42;
      CheckedContinuation.resume(throwing:)();
      [a3 signal];
      return (v38)(v35, v19);
    }

    v38(v35, v19);
  }

  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  if (v46 == 1)
  {
    v79 = *(a1 + 48);
    sub_1001354F4(v45, 1);

    CheckedContinuation.resume(returning:)();
    [a3 signal];
  }

  else if ((*(a1 + 32) & 1) != 0 || *(a1 + 24) >= *(a1 + 40))
  {
    *(a1 + 48) = 1;
    *(a1 + 56) = 2;
    result = sub_100135394(v45, v46);
    v52 = *(a1 + 40);
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 40) = v54;
      v55 = v66;
      static TaskPriority.background.getter();
      v56 = type metadata accessor for TaskPriority();
      sub_10000A7C0(v55, 0, 1, v56);
      v57 = v67;
      v58 = v65;
      v59 = v72;
      (*(v67 + 16))(v65, v71, v72);
      v60 = (*(v57 + 80) + 64) & ~*(v57 + 80);
      v61 = swift_allocObject();
      *(v61 + 2) = 0;
      *(v61 + 3) = 0;
      v62 = v69;
      *(v61 + 4) = v68;
      *(v61 + 5) = v62;
      *(v61 + 6) = a3;
      *(v61 + 7) = a1;
      (*(v57 + 32))(&v61[v60], v58, v59);

      v63 = a3;

      sub_10012F334(0, 0, v55, &unk_1001ED6F0, v61);

      return sub_100009FB0(v55, &unk_10026FEC0, &qword_1001E6280);
    }
  }

  else
  {
    sub_1001354A0();
    v47 = swift_allocError();
    *v48 = 0;
    v49 = *(a1 + 48);
    *(a1 + 48) = v47;
    LOBYTE(v48) = *(a1 + 56);
    *(a1 + 56) = 0;
    sub_100135394(v49, v48);
    v50 = swift_allocError();
    *v51 = 0;
    v79 = v50;
    CheckedContinuation.resume(throwing:)();
    return [a3 signal];
  }

  return result;
}

uint64_t sub_10012EECC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_10012EFC4;

  return v12(v8 + 2);
}

uint64_t sub_10012EFC4()
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

uint64_t sub_10012F0BC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v0 + 2;
  v5[4] = v2;
  v5[5] = v4;
  sub_10012F2BC(sub_100135650);

  v6 = v0[2];

  sub_100002D8C();

  return v7();
}

uint64_t sub_10012F178()
{
  sub_100003D28();
  v4 = sub_100058314();
  v4[2] = v3;
  v4[3] = v0;
  v4[4] = v2;
  v4[5] = v1;
  sub_10012F2BC(sub_100135510);

  sub_100002D8C();

  return v5();
}

id sub_10012F218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 48);
  *(a1 + 48) = a2;
  v6 = *(a1 + 56);
  *(a1 + 56) = 1;

  sub_100135394(v5, v6);

  sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  CheckedContinuation.resume(returning:)();
  return [a4 signal];
}

uint64_t sub_10012F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_1000A46BC(a3, v26 - v11, &unk_10026FEC0, &qword_1001E6280);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100009F34(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100009FB0(v12, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}