uint64_t sub_1000E6F50()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  *v4 = v0[7];
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  return sub_1000AFCE0();
}

void sub_1000E6F80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  sub_10008E168(v10, v12);
}

uint64_t StoreKitServiceConnection.performPurchase(_:authDelegate:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000B7E4C();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  sub_1000B7E4C();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v5;
  sub_1000EDD24();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = &unk_1002F0468;
  v11[4] = v10;
  v11[5] = sub_1000ED6AC;
  v11[6] = v9;
  type metadata accessor for PerformPurchaseRequest();
  v12 = swift_allocBox();
  v14 = v13;
  swift_unknownObjectRetain();

  swift_retain_n();
  v15 = v5;
  sub_1000EA808(v14);
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v16 = qword_1003F2700;
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);

  sub_1000E4C10(v17, v18, 0xD000000000000029, 0x80000001003173B0, 150, v16, 0xD000000000000026, 0x8000000100317400, v12, &unk_1002F0478, v11);
}

uint64_t sub_1000E72D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1000E7388;

  return sub_10008C0F0(a2, a4, a5);
}

uint64_t sub_1000E7388()
{
  sub_1000B072C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10008C070();
  v9 = v8;
  sub_1000AFE64();
  *v10 = v9;
  *v10 = *v1;
  v9[4] = v11;

  if (!v0)
  {
    v9[5] = v3;
    v9[6] = v5;
    v9[7] = v7;
  }

  sub_100098AD0();
  sub_1000B0718();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000E74A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v2->i64[0] = *(v0 + 32);
  v2->i64[1] = v1;
  v2[1] = vextq_s8(v3, v3, 8uLL);
  return sub_1000AFCE0();
}

uint64_t sub_1000E74C8()
{
  sub_10008BE9C();
  v1 = *(v0 + 32);
  sub_10008B5E0();
  sub_1000ED9E4();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E7630(uint64_t a1, int *a2)
{
  v2[5] = a1;
  v2[6] = type metadata accessor for ClientTypeResponse();
  v4 = swift_task_alloc();
  v2[7] = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1000E7764;

  return v7(v4);
}

uint64_t sub_1000E7764()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E785C()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000E7B68(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1000E7C5C;

  return v5(v2 + 16);
}

uint64_t sub_1000E7C5C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E7FB0(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1000E80A4;

  return v5(v2 + 16);
}

uint64_t sub_1000E80A4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8400()
{
  sub_10008BE9C();
  sub_1000ED968(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v3 = sub_1000EDCDC(v2);

  return v4(v3);
}

uint64_t sub_1000E84B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8820()
{
  sub_10008BE9C();
  sub_1000ED968(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v3 = sub_1000EDCDC(v2);

  return v4(v3);
}

uint64_t sub_1000E88D0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8C3C(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1000E8D30;

  return v5(v2 + 16);
}

uint64_t sub_1000E8D30()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E907C(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1000E9170;

  return v5(v2 + 32);
}

uint64_t sub_1000E9170()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E94FC, 0, 0);
}

uint64_t sub_1000E94FC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7630(v4, v5);
}

uint64_t sub_1000E959C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E969C()
{
  sub_10008BE9C();

  *(v0 + 32) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  v2 = sub_1000EDB08(v1);
  *v2 = v3;
  sub_1000ED728(v2);

  return sub_1001E521C();
}

uint64_t sub_1000E9730()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  sub_1000EDCB0(v3);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E9814()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E94D0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000E98A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E98CC, 0, 0);
}

uint64_t sub_1000E98CC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7B68(v4, v5);
}

uint64_t sub_1000E996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E9998, 0, 0);
}

uint64_t sub_1000E9998()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7FB0(v4, v5);
}

uint64_t sub_1000E9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9A58()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E8C3C(v4, v5);
}

uint64_t sub_1000E9AF8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E9BF8()
{
  v7 = v0;
  v1 = v0[11];
  v2 = v0[3];
  v5 = v0[2];
  v6 = v2;
  sub_1000BC808(v5, v2);
  v1(&v5, 0);
  sub_1000BC8B4(v5, v6);
  sub_10008E168(v0[2], v0[3]);
  sub_100098AC4();

  return v3();
}

uint64_t sub_1000E9C84()
{
  sub_10008BE9C();

  *(v0 + 32) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  v2 = sub_1000EDB08(v1);
  *v2 = v3;
  sub_1000ED728(v2);

  return sub_1001E521C();
}

uint64_t sub_1000E9D18()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  sub_1000EDCB0(v3);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E9DFC()
{
  (*(v0 + 88))(v0 + 32, *(v0 + 136));

  sub_1000BC8B4(*(v0 + 32), *(v0 + 40));
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000E9E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9EAC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E907C(v4, v5);
}

uint64_t sub_1000E9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9F6C()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E907C(v4, v5);
}

uint64_t sub_1000EA00C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000A7644;

  return v11(a1, a4, a5);
}

uint64_t sub_1000EA120@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClientTypeRequest();
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE0C0, type metadata accessor for ClientTypeRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v7._countAndFlagsBits = 0x656420726F727245;
    v7._object = 0xEF20676E69646F63;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 1635017028;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v20 = v1;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v11 = v18;
    v10 = v19;
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v18);
      *(v14 + 12) = 2082;
      v15 = sub_100080210(v11, v10, &v18);

      *(v14 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v5, a1, type metadata accessor for ClientTypeRequest);
  }
}

uint64_t sub_1000EA494@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProcessPurchaseResultRequest();
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE2F0, type metadata accessor for ProcessPurchaseResultRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v7._countAndFlagsBits = 0x656420726F727245;
    v7._object = 0xEF20676E69646F63;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 1635017028;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v20 = v1;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v11 = v18;
    v10 = v19;
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v18);
      *(v14 + 12) = 2082;
      v15 = sub_100080210(v11, v10, &v18);

      *(v14 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v5, a1, type metadata accessor for ProcessPurchaseResultRequest);
  }
}

uint64_t sub_1000EA808@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PerformPurchaseRequest();
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE2D8, type metadata accessor for PerformPurchaseRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v7._countAndFlagsBits = 0x656420726F727245;
    v7._object = 0xEF20676E69646F63;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 1635017028;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v20 = v1;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v11 = v18;
    v10 = v19;
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v18);
      *(v14 + 12) = 2082;
      v15 = sub_100080210(v11, v10, &v18);

      *(v14 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v5, a1, type metadata accessor for PerformPurchaseRequest);
  }
}

uint64_t sub_1000EABE4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  type metadata accessor for JSONDecoder();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000ED9F0();
  if (v4)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    v8 = sub_10007EDA4(v7, qword_1003F26C8);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v9._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v9);
    sub_1000EDA2C();
    v10._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v10);
    v18[4] = a4;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v11 = v8;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v12 = swift_slowAlloc();
      sub_1000B7DBC();
      v18[0] = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, v18);
      *(v12 + 12) = 2082;
      sub_100080210(0, 0xE000000000000000, v18);
      sub_1000EDBD8();
      *(v12 + 14) = 0;
      sub_1000ED8E8(&_mh_execute_header, v13, v14, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v16 = swift_allocError();
    sub_1000ED908(v16, v17);
  }

  else
  {

    return v18[0];
  }
}

void sub_1000EAE38()
{
  sub_1000EDDFC();
  v2 = sub_1000ED76C();
  type metadata accessor for SubscriptionStatusQuery(v2);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE280, type metadata accessor for SubscriptionStatusQuery);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v4 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v4, qword_1003F26C8);
    v5._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v5);
    sub_1000EDA2C();
    v6._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v6);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v7 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v8 = swift_slowAlloc();
      sub_1000B7DBC();
      v9 = swift_slowAlloc();
      sub_1000EDAFC(v9);
      v10 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v10);
      sub_1000EDBD8();
      *(v8 + 14) = v15;
      sub_1000ED8E8(&_mh_execute_header, v11, v12, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v13 = swift_allocError();
    sub_1000ED908(v13, v14);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB05C()
{
  sub_1000EDDFC();
  v2 = sub_1000ED76C();
  type metadata accessor for TransactionQuery(v2);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE278, type metadata accessor for TransactionQuery);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v4 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v4, qword_1003F26C8);
    v5._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v5);
    sub_1000EDA2C();
    v6._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v6);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v7 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v8 = swift_slowAlloc();
      sub_1000B7DBC();
      v9 = swift_slowAlloc();
      sub_1000EDAFC(v9);
      v10 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v10);
      sub_1000EDBD8();
      *(v8 + 14) = v15;
      sub_1000ED8E8(&_mh_execute_header, v11, v12, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v13 = swift_allocError();
    sub_1000ED908(v13, v14);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB280()
{
  sub_1000EDDFC();
  sub_1000ED76C();
  type metadata accessor for ExternalGatewayRequest();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE268, type metadata accessor for ExternalGatewayRequest);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v3, qword_1003F26C8);
    v4._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v4);
    sub_1000EDA2C();
    v5._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v5);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v6 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v7 = swift_slowAlloc();
      sub_1000B7DBC();
      v8 = swift_slowAlloc();
      sub_1000EDAFC(v8);
      v9 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v9);
      sub_1000EDBD8();
      *(v7 + 14) = v14;
      sub_1000ED8E8(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v12 = swift_allocError();
    sub_1000ED908(v12, v13);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB4A4()
{
  sub_1000EDDFC();
  sub_1000ED76C();
  type metadata accessor for FinishTransactionTask();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE260, type metadata accessor for FinishTransactionTask);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v3, qword_1003F26C8);
    v4._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v4);
    sub_1000EDA2C();
    v5._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v5);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v6 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v7 = swift_slowAlloc();
      sub_1000B7DBC();
      v8 = swift_slowAlloc();
      sub_1000EDAFC(v8);
      v9 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v9);
      sub_1000EDBD8();
      *(v7 + 14) = v14;
      sub_1000ED8E8(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v12 = swift_allocError();
    sub_1000ED908(v12, v13);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB6C8()
{
  sub_1000EDDFC();
  sub_1000ED76C();
  type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CDB08, type metadata accessor for LegacyRestoreCompletedTransactionsTask);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v3, qword_1003F26C8);
    v4._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v4);
    sub_1000EDA2C();
    v5._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v5);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v6 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v7 = swift_slowAlloc();
      sub_1000B7DBC();
      v8 = swift_slowAlloc();
      sub_1000EDAFC(v8);
      v9 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v9);
      sub_1000EDBD8();
      *(v7 + 14) = v14;
      sub_1000ED8E8(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v12 = swift_allocError();
    sub_1000ED908(v12, v13);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB8EC()
{
  sub_1000EDDFC();
  sub_1000ED76C();
  type metadata accessor for LegacyUnfinishedTransactionsTask();
  sub_100098B7C();
  __chkstk_darwin(v2);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CD560, type metadata accessor for LegacyUnfinishedTransactionsTask);
  sub_1000ED79C();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    sub_1000ED8A0(v3, qword_1003F26C8);
    v4._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v4);
    sub_1000EDA2C();
    v5._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v5);
    sub_100080FB4(&qword_1003CCCB0);
    sub_1000EDC98();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v6 = v1;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v7 = swift_slowAlloc();
      sub_1000B7DBC();
      v8 = swift_slowAlloc();
      sub_1000EDAFC(v8);
      v9 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v9);
      sub_1000EDBD8();
      *(v7 + 14) = v14;
      sub_1000ED8E8(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v12 = swift_allocError();
    sub_1000ED908(v12, v13);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

uint64_t sub_1000EBB10()
{
  type metadata accessor for JSONDecoder();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000EBFE8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000ED9F0();
  if (v0)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v1 = type metadata accessor for SKLogger();
    v2 = sub_10007EDA4(v1, qword_1003F26C8);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v3._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v3);
    sub_1000EDA2C();
    v4._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v4);
    v15[5] = v0;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v5 = v2;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v6 = swift_slowAlloc();
      sub_1000B7DBC();
      swift_slowAlloc();
      sub_1000EDAD0();
      *v6 = 136446466;
      v7 = sub_1000ED8D8();
      *(v6 + 4) = sub_100080210(v7, v8, v9);
      *(v6 + 12) = 2082;
      sub_100080210(0, 0xE000000000000000, v15);
      sub_1000EDBD8();
      *(v6 + 14) = 0;
      sub_1000ED8E8(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v13 = swift_allocError();
    sub_1000ED908(v13, v14);
  }

  else
  {

    return v15[0];
  }
}

uint64_t sub_1000EBD58()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E98A0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000EBDE4()
{
  swift_unknownObjectRelease();

  sub_1000B7E4C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000EBE20()
{
  sub_1000B0004();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_1000AFE54(v9);
  *v10 = v11;
  v10[1] = sub_1000A7644;

  return sub_1000E72D0(v6, v4, v2, v8, v7);
}

uint64_t sub_1000EBED8()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E996C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000EBF64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EBFA4()
{

  sub_1000EDD24();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_1000EBFE8()
{
  result = qword_1003CE230;
  if (!qword_1003CE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE230);
  }

  return result;
}

uint64_t sub_1000EC03C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC14C;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC14C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC244()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return sub_1000AFCE0();
}

uint64_t sub_1000EC25C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC36C;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC36C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC464()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return sub_1000AFCE0();
}

uint64_t sub_1000EC4A0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC5B0;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC5B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC6DC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC7EC;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC7EC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC8E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC9F4;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC9F4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000ECB1C()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ECBAC()
{
  result = qword_1003CE248;
  if (!qword_1003CE248)
  {
    sub_1000852D4(&qword_1003CE240);
    sub_1000ED5C0(&unk_1003CE250, type metadata accessor for LegacyTransactionInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE248);
  }

  return result;
}

uint64_t sub_1000ECC60()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000ECCF0()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ECD80()
{
  result = qword_1003CE270;
  if (!qword_1003CE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE270);
  }

  return result;
}

unint64_t sub_1000ECDD4()
{
  result = qword_1003CE288;
  if (!qword_1003CE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE288);
  }

  return result;
}

unint64_t sub_1000ECE28()
{
  result = qword_1003CE290;
  if (!qword_1003CE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE290);
  }

  return result;
}

unint64_t sub_1000ECE7C()
{
  result = qword_1003CE298;
  if (!qword_1003CE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE298);
  }

  return result;
}

unint64_t sub_1000ECED0()
{
  result = qword_1003CE2A8;
  if (!qword_1003CE2A8)
  {
    sub_1000852D4(&qword_1003CE2A0);
    sub_1000ECE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2A8);
  }

  return result;
}

uint64_t sub_1000ECF54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000ECFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformPurchaseRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D20F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED078()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E66E4();
}

uint64_t sub_1000ED110()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ED1A0()
{
  result = qword_1003CE2E0;
  if (!qword_1003CE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2E0);
  }

  return result;
}

uint64_t sub_1000ED1F4()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E649C();
}

uint64_t sub_1000ED28C()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ED31C()
{
  result = qword_1003CE2F8;
  if (!qword_1003CE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2F8);
  }

  return result;
}

uint64_t sub_1000ED370(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000ED3D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000ED42C()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E6254();
}

uint64_t sub_1000ED4C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000ED524()
{
  sub_1000B0004();
  sub_1000ED948();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  v4 = sub_1000AFD08();

  return sub_1000EA00C(v4, v5, v6, v7, v0);
}

uint64_t sub_1000ED5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000ED608(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 sub_1000ED784(uint64_t a1)
{
  *(v1 + 104) = a1;
  result = *(v1 + 72);
  v3 = *(v1 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000ED79C()
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

unint64_t sub_1000ED7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 4) = a1;
  *(v9 + 12) = 2082;

  return sub_100080210(v11, v10, &a9);
}

uint64_t sub_1000ED818()
{

  return type metadata accessor for JSONDecoder();
}

unint64_t sub_1000ED840(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_100080210(v3, v1, (v4 - 80));
}

void sub_1000ED87C()
{

  _StringGuts.grow(_:)(36);
}

void sub_1000ED8A0(uint64_t a1, uint64_t a2)
{
  sub_10007EDA4(a1, a2);
  *(v2 - 80) = 0;
  *(v2 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(20);
}

void sub_1000ED8E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1000ED908(uint64_t a1, _BYTE *a2)
{
  *a2 = 6;

  return swift_willThrow();
}

void sub_1000ED928(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t sub_1000ED9A4(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 80));
}

uint64_t sub_1000ED9C4(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

void sub_1000EDA2C()
{
  v1 = 1635017028;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000EDA6C()
{

  return swift_beginAccess();
}

uint64_t sub_1000EDA8C()
{

  return sub_1000ED4C4(v2, v1, v0);
}

uint64_t sub_1000EDB20()
{
  v3 = *(v1 - 216);
  v4 = *(v1 - 224);

  return sub_1000ED370(v0, v4, v3);
}

BOOL sub_1000EDB78()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000EDBA0()
{
  *v0 = v2;
  v0[1] = v3;
  return *(v1 + 24);
}

uint64_t sub_1000EDBC0()
{
}

uint64_t sub_1000EDBD8()
{
}

uint64_t sub_1000EDC18()
{
}

BOOL sub_1000EDC50()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000EDC68()
{
}

void sub_1000EDC80(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001FLL;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_1000EDC98()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_1000EDCB0(uint64_t a1)
{
  *(v1 + 136) = a1;
}

void sub_1000EDD4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1000EDD6C()
{

  return swift_retain_n();
}

uint64_t sub_1000EDD8C()
{

  return sub_100081DFC(v1, 1, 1, v0);
}

uint64_t sub_1000EDDAC(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1000EDDCC()
{
  v3 = *(v1 - 240);

  return sub_1000ED608(v0, v3);
}

uint64_t sub_1000EDDE4()
{

  return _typeName(_:qualified:)();
}

uint64_t getEnumTagSinglePayload for AuditTokenDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuditTokenDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000EDE74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EDE90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1000EDF10@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000EDF88()
{
  v0 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for AsyncStream();
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000EDF10(v2);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000EE0E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_100081DFC(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_100165CBC();
}

uint64_t sub_1000EE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000EE2E4, a4, 0);
}

uint64_t sub_1000EE2E4()
{
  sub_1000EE344(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EE344(uint64_t a1)
{
  v2 = type metadata accessor for AsyncStream.Continuation();
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  UUID.init()();
  (*(*(v2 - 8) + 16))(v5, a1, v2);
  sub_100081DFC(v5, 0, 1, v2);
  swift_beginAccess();
  sub_1000EE588();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t sub_1000EE4C8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000EE4F0()
{
  sub_1000EE4C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EE550()
{
  sub_1000EDF88();
}

unint64_t sub_1000EE588()
{
  result = qword_1003D3100;
  if (!qword_1003D3100)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3100);
  }

  return result;
}

uint64_t sub_1000EE5E8()
{
  v1 = type metadata accessor for AsyncStream.Continuation();
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000EE6AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncStream.Continuation() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE7A8;

  return sub_1000EE2C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000EE7A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000EE8AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885956979 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6576697244676162 && a2 == 0xE90000000000006ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000EE9C0(char a1)
{
  if (!a1)
  {
    return 1885956979;
  }

  if (a1 == 1)
  {
    return 0x6576697244676162;
  }

  return 0x6563726F66;
}

uint64_t sub_1000EEA10(void *a1, int a2)
{
  v33 = a2;
  sub_100080FB4(&qword_1003CE3E8);
  sub_1000890DC();
  v31 = v4;
  v32 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_100080FB4(&qword_1003CE3F0);
  sub_1000890DC();
  v28 = v8;
  v29 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100080FB4(&qword_1003CE3F8);
  sub_1000890DC();
  v27 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100080FB4(&qword_1003CE400);
  sub_1000890DC();
  v19 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_100086D24(a1, a1[3]);
  sub_1000EF570();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1000EF618();
      sub_1000EFB1C();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1000EF5C4();
      v24 = v30;
      sub_1000EFB1C();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1000EF66C();
    sub_1000EFB1C();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1000EED2C(void *a1)
{
  v63 = sub_100080FB4(&qword_1003CE3A8);
  sub_1000890DC();
  v61 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_100080FB4(&qword_1003CE3B0);
  sub_1000890DC();
  v58 = v5;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_100080FB4(&qword_1003CE3B8);
  sub_1000890DC();
  v57 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_100080FB4(&qword_1003CE3C0);
  sub_1000890DC();
  v62 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_100086D24(a1, v17);
  sub_1000EF570();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100162694(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_1000EF618();
          v35 = v55;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_1000893A0();
            v37(v36);
LABEL_21:
            sub_100080F0C(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_1000EF5C4();
          v17 = v59;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_1000893A0();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_1000893A0();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_1000EF66C();
        v43 = v54;
        sub_1000893B0();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100089250();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100089250();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100080FB4(&qword_1003CC798);
    *v40 = &type metadata for SyncStrategy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100089250();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100080F0C(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EF2C0(uint64_t a1)
{
  v2 = sub_1000EF618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF2FC(uint64_t a1)
{
  v2 = sub_1000EF618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EE8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EF368(uint64_t a1)
{
  v2 = sub_1000EF570();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF3A4(uint64_t a1)
{
  v2 = sub_1000EF570();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF3E0(uint64_t a1)
{
  v2 = sub_1000EF5C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF41C(uint64_t a1)
{
  v2 = sub_1000EF5C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF458(uint64_t a1)
{
  v2 = sub_1000EF66C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF494(uint64_t a1)
{
  v2 = sub_1000EF66C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF4D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EED2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000EF51C()
{
  result = qword_1003CE3A0;
  if (!qword_1003CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3A0);
  }

  return result;
}

unint64_t sub_1000EF570()
{
  result = qword_1003CE3C8;
  if (!qword_1003CE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3C8);
  }

  return result;
}

unint64_t sub_1000EF5C4()
{
  result = qword_1003CE3D0;
  if (!qword_1003CE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3D0);
  }

  return result;
}

unint64_t sub_1000EF618()
{
  result = qword_1003CE3D8;
  if (!qword_1003CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3D8);
  }

  return result;
}

unint64_t sub_1000EF66C()
{
  result = qword_1003CE3E0;
  if (!qword_1003CE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3E0);
  }

  return result;
}

_BYTE *sub_1000EF6C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000EF794);
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

unint64_t sub_1000EF800()
{
  result = qword_1003CE408;
  if (!qword_1003CE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE408);
  }

  return result;
}

unint64_t sub_1000EF858()
{
  result = qword_1003CE410;
  if (!qword_1003CE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE410);
  }

  return result;
}

unint64_t sub_1000EF8B0()
{
  result = qword_1003CE418;
  if (!qword_1003CE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE418);
  }

  return result;
}

unint64_t sub_1000EF908()
{
  result = qword_1003CE420;
  if (!qword_1003CE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE420);
  }

  return result;
}

unint64_t sub_1000EF960()
{
  result = qword_1003CE428;
  if (!qword_1003CE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE428);
  }

  return result;
}

unint64_t sub_1000EF9B8()
{
  result = qword_1003CE430;
  if (!qword_1003CE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE430);
  }

  return result;
}

unint64_t sub_1000EFA10()
{
  result = qword_1003CE438;
  if (!qword_1003CE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE438);
  }

  return result;
}

unint64_t sub_1000EFA68()
{
  result = qword_1003CE440;
  if (!qword_1003CE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE440);
  }

  return result;
}

unint64_t sub_1000EFAC0()
{
  result = qword_1003CE448;
  if (!qword_1003CE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE448);
  }

  return result;
}

uint64_t sub_1000EFB1C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000EFB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  if (sub_1001B57B8(*v2))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v7 = type metadata accessor for SKLogger();
    sub_10007EDA4(v7, qword_1003F26C8);
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    sub_10008BFF4();
    LODWORD(v32) = [a1 processIdentifier];
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x6C7469746E45205DLL;
    v9._object = 0xEF20726F66206465;
    String.append(_:)(v9);
    LOBYTE(v32) = v6;
    _print_unlocked<A, B>(_:_:)();
    v10 = static os_log_type_t.default.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = sub_10008E688();
      v33 = sub_10008E670();
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, &v33);
      *(v12 + 12) = 2082;
      v13 = sub_100080210(0, 0xE000000000000000, &v33);

      *(v12 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_1000F2600(v3, a2);
    v27 = type metadata accessor for ExternalGatewayRequest();
    v28 = a2;
    v29 = 0;
    v30 = 1;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v14 = type metadata accessor for SKLogger();
    sub_10007EDA4(v14, qword_1003F26C8);
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    sub_10008BFF4();
    LODWORD(v32) = [a1 processIdentifier];
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._object = 0x8000000100317500;
    v16._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v16);
    LOBYTE(v32) = v6;
    _print_unlocked<A, B>(_:_:)();
    v17 = type metadata accessor for ExternalGatewayRequest();
    v18 = &v2[*(v17 + 40)];
    v20 = *v18;
    v19 = v18[1];
    v21 = static os_log_type_t.error.getter();

    v22 = Logger.logObject.getter();

    if (os_log_type_enabled(v22, v21))
    {
      v23 = sub_10008E688();
      v32 = sub_10008E670();
      *v23 = 136446466;
      v33 = 91;
      v34 = 0xE100000000000000;
      v24._countAndFlagsBits = v20;
      v24._object = v19;
      String.append(_:)(v24);
      sub_10009F134();
      v25 = sub_100080210(91, 0xE100000000000000, &v32);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2082;
      v26 = sub_100080210(0, 0xE000000000000000, &v32);

      *(v23 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_1000B0690();
    v27 = v17;
  }

  return sub_100081DFC(v28, v29, v30, v27);
}

uint64_t sub_1000EFFC8()
{
  sub_10008BE9C();
  v1[23] = v2;
  v1[24] = v0;
  sub_100080FB4(&unk_1003CE2B0);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for ExternalGatewayRequest();
  v1[26] = v3;
  sub_1000B046C(v3);
  v1[27] = v4;
  v1[28] = *(v5 + 64);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_100080FB4(&qword_1003CE450);
  sub_1000B046C(v6);
  v1[31] = v7;
  v1[32] = *(v8 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000F0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v17 = v16 + 344;
  v18 = *(v16 + 208);
  v19 = *(v16 + 184);
  v20 = *(v16 + 192);
  v21 = type metadata accessor for SKLogger();
  sub_10007EDA4(v21, qword_1003F26C8);
  _StringGuts.grow(_:)(43);

  v22 = *v20;
  *(v16 + 345) = v22;
  *(v16 + 176) = v22;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x20726F6620;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v26 = *(v19 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v25._object = *(v19 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v25._countAndFlagsBits = v26;
  object = v25._object;
  String.append(_:)(v25);
  v27 = &v20[*(v18 + 40)];
  v28 = *v27;
  *(v16 + 288) = *v27;
  v29 = v27[1];
  *(v16 + 296) = v29;
  v30 = static os_log_type_t.debug.getter();

  v31 = Logger.logObject.getter();

  if (os_log_type_enabled(v31, v30))
  {
    v32 = sub_10008E688();
    v82 = sub_10008E670();
    *v32 = 136446466;
    v33._countAndFlagsBits = v28;
    v33._object = v29;
    String.append(_:)(v33);
    sub_10009F134();
    v29 = sub_100080210(91, 0xE100000000000000, &v82);

    *(v32 + 4) = v29;
    *(v32 + 12) = 2082;
    v34 = sub_100080210(0xD000000000000022, 0x8000000100317520, &v82);

    *(v32 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    v17 = v16 + 344;
    sub_100081C28();
  }

  else
  {
  }

  sub_1000F14CC(v26, object);
  if (v22 == 4)
  {
    type metadata accessor for ExternalGatewaySheet();
    sub_1000B0690();
    sub_100081DFC(v35, v36, v37, v38);
    v39 = *(v16 + 192);
    if (*(v39 + 16) == 2)
    {
      sub_1000F2E48();
      if (v26 == 1)
      {
        v81 = *(v16 + 345);
        sub_1000F2DAC();
        v79 = v40;
        v77 = v41;
        v78 = *(v16 + 184);
        type metadata accessor for TaskPriority();
        sub_1000B0690();
        sub_100081DFC(v42, v43, v44, v45);
        sub_1000B75B8(0x8000000100317520, v22, &qword_1003CE450);
        sub_1000B75B8(v16 + 16, v16 + 96, &qword_1003CE458);
        sub_1000F2600(v39, v29);
        sub_1000F2D48();
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = 0;
        v46[4] = v78;
        sub_1000F2664(v22, (v46 - 0xFFFFFFFDFF9D15CLL));
        sub_1000F2E00();
        v47 = (v46 + ((v77 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v47 = v79;
        v47[1] = 2;
        v48 = v78;
        v49 = sub_1000F2C90();
        sub_100235408(v49, v50, v17, v51, v46);
        *(v16 + 320) = v52;
        if ((v81 & 0xFFFFFFFD) != 0)
        {
          v53 = swift_task_alloc();
          *(v16 + 328) = v53;
          sub_100080FB4(&qword_1003CCCB0);
          *v53 = v16;
          sub_1000F2CB0();
          sub_1000F2D98();
          sub_1000F2E70();

          return Task.value.getter(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
        }
      }

      else
      {
      }

      sub_1000F2F5C(v70, v71, &qword_1003CE458);
      sub_1000F2EF8();
      if (v26)
      {
        v72 = sub_1000F2CD0();
        v73(v72);
        sub_1000F2F04();
        sub_1000AF25C(v16 + 16, &qword_1003CE458);
        sub_1000AF25C(v29, &qword_1003CE450);
        sub_100080F0C(v16 + 56);
      }

      else
      {
        sub_1000F2E2C();
        sub_1000AF25C(v29, &qword_1003CE450);
        sub_1000F2DC8();
        sub_1000F2EEC();
      }

      sub_1000F2D78();

      sub_1000F2D04();
      sub_1000F2E70();

      return v74();
    }

    else
    {
      sub_1000F2EA0();

      swift_task_alloc();
      sub_1000F2F10();
      *(v16 + 312) = v67;
      *v67 = v68;
      sub_1000F2D1C(v67);
      sub_1000F2E88();
      sub_1000F2E70();

      return sub_10018F288();
    }
  }

  else
  {
    v62 = *(v16 + 184);
    sub_1000F2600(*(v16 + 192), *(v16 + 240));
    v63 = v62;
    swift_task_alloc();
    sub_1000F2F10();
    *(v16 + 304) = v64;
    *v64 = v65;
    v64[1] = sub_1000F0790;
    sub_1000F2E70();

    return sub_100244D30();
  }
}

uint64_t sub_1000F0790()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 346) = *(v3 + 344);
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F0890()
{
  sub_1000B0004();
  v1 = *(v0 + 346);
  sub_10008B5E0();
  sub_1000894A0();
  *v2 = v1;
  sub_1000F2EB8();

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000F0940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = *(v17 + 272);
  v22 = *(v17 + 280);
  v23 = type metadata accessor for ExternalGatewaySheet();
  sub_100081DFC(v21, 0, 1, v23);
  sub_1000F2664(v21, v22);
  v24 = *(v17 + 192);
  if (*(v24 + 16) == 2)
  {
    sub_1000F2E48();
    if (v21 == 1)
    {
      v60 = *(v17 + 345);
      sub_1000F2DAC();
      v59 = v25;
      v57 = v26;
      v58 = *(v17 + 184);
      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v27, v28, v29, v30);
      sub_1000B75B8(v19, v18, &qword_1003CE450);
      sub_1000B75B8(v17 + 16, v17 + 96, &qword_1003CE458);
      sub_1000F2600(v24, v16);
      sub_1000F2D48();
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v58;
      sub_1000F2664(v18, v31 + v19);
      sub_1000F2E00();
      v32 = (v31 + ((v57 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = v59;
      v32[1] = 2;
      v33 = v58;
      v34 = sub_1000F2C90();
      sub_100235408(v34, v35, v20, v36, v31);
      *(v17 + 320) = v37;
      if ((v60 & 0xFFFFFFFD) != 0)
      {
        v38 = swift_task_alloc();
        *(v17 + 328) = v38;
        sub_100080FB4(&qword_1003CCCB0);
        *v38 = v17;
        sub_1000F2CB0();
        sub_1000F2D98();
        sub_1000F2ED4();

        return Task.value.getter(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }

    else
    {
    }

    sub_1000F2F5C(v50, v51, &qword_1003CE458);
    sub_1000F2EF8();
    if (v21)
    {
      v52 = sub_1000F2CD0();
      v53(v52);
      sub_1000F2F04();
      sub_1000AF25C(v17 + 16, &qword_1003CE458);
      sub_1000AF25C(v16, &qword_1003CE450);
      sub_100080F0C(v17 + 56);
    }

    else
    {
      sub_1000F2E2C();
      sub_1000AF25C(v16, &qword_1003CE450);
      sub_1000F2DC8();
      sub_1000F2EEC();
    }

    sub_1000F2D78();

    sub_1000F2D04();
    sub_1000F2ED4();

    return v54();
  }

  else
  {
    sub_1000F2EA0();

    swift_task_alloc();
    sub_1000F2F10();
    *(v17 + 312) = v47;
    *v47 = v48;
    sub_1000F2D1C(v47);
    sub_1000F2E88();
    sub_1000F2ED4();

    return sub_10018F288();
  }
}

uint64_t sub_1000F0CB0()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 347) = *(v3 + 344);
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F0DB8()
{
  sub_1000B0004();
  v1 = *(v0 + 347);
  v2 = *(v0 + 280);
  sub_10008B5E0();
  sub_1000894A0();
  *v3 = v1;
  sub_1000AF25C(v2, &qword_1003CE450);
  sub_1000F2EB8();

  sub_100098AC4();

  return v4();
}

uint64_t sub_1000F0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 + 152);
  *(v18 + 16) = *(v18 + 136);
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v18 + 168);
  v20 = *(v18 + 192);
  if (*(v20 + 24) == 1)
  {
    v62 = *(v18 + 345);
    v21 = *(v18 + 280);
    v60 = *(v18 + 288);
    v61 = *(v18 + 296);
    v22 = *(v18 + 256);
    v17 = *(v18 + 264);
    v23 = *(v18 + 248);
    v16 = *(v18 + 232);
    v59 = *(v18 + 224);
    v24 = *(v18 + 216);
    v25 = *(v18 + 200);
    v26 = *(v18 + 184);
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v27, v28, v29, v30);
    sub_1000B75B8(v21, v17, &qword_1003CE450);
    sub_1000B75B8(v18 + 16, v18 + 96, &qword_1003CE458);
    sub_1000F2600(v20, v16);
    v31 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (*(v24 + 80) + v32 + 40) & ~*(v24 + 80);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v26;
    sub_1000F2664(v17, v34 + v31);
    v35 = v34 + v32;
    v36 = *(v18 + 112);
    *v35 = *(v18 + 96);
    *(v35 + 1) = v36;
    *(v35 + 4) = *(v18 + 128);
    sub_1000F2A08(v16, v34 + v33);
    v37 = (v34 + ((v59 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = v60;
    v37[1] = v61;
    v38 = v26;
    v39 = sub_1000F2C90();
    sub_100235408(v39, v40, v25, v41, v34);
    *(v18 + 320) = v42;
    if ((v62 & 0xFFFFFFFD) != 0)
    {
      v43 = swift_task_alloc();
      *(v18 + 328) = v43;
      sub_100080FB4(&qword_1003CCCB0);
      *v43 = v18;
      sub_1000F2CB0();
      sub_1000F2D98();
      sub_1000F2ED4();

      return Task.value.getter(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
    }
  }

  else
  {
  }

  sub_1000F2F5C(v52, v53, &qword_1003CE458);
  sub_1000F2EF8();
  if (v16)
  {
    v54 = sub_1000F2CD0();
    v55(v54);
    sub_1000F2F04();
    sub_1000AF25C(v18 + 16, &qword_1003CE458);
    sub_1000AF25C(v17, &qword_1003CE450);
    sub_100080F0C(v18 + 56);
  }

  else
  {
    sub_1000F2E2C();
    sub_1000AF25C(v17, &qword_1003CE450);
    sub_1000F2DC8();
    sub_1000F2EEC();
  }

  sub_1000F2D78();

  sub_1000F2D04();
  sub_1000F2ED4();

  return v56();
}

uint64_t sub_1000F11C0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F12BC()
{

  sub_1000F2F5C(v3, v4, &qword_1003CE458);
  sub_1000F2EF8();
  if (v0)
  {
    v5 = sub_1000F2CD0();
    v6(v5);
    sub_1000F2F04();
    sub_1000AF25C(v2 + 16, &qword_1003CE458);
    sub_1000AF25C(v1, &qword_1003CE450);
    sub_100080F0C(v2 + 56);
  }

  else
  {
    sub_1000F2E2C();
    sub_1000AF25C(v1, &qword_1003CE450);
    sub_1000F2DC8();
    sub_1000F2EEC();
  }

  sub_1000F2D78();

  v7 = sub_1000F2D04();

  return v8(v7);
}

uint64_t sub_1000F13FC()
{
  sub_1000B0004();
  v1 = *(v0 + 280);

  sub_1000AF25C(v0 + 16, &qword_1003CE458);
  sub_1000AF25C(v1, &qword_1003CE450);
  sub_1000F2EB8();

  sub_100098AC4();

  return v2();
}

void sub_1000F14CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  sub_100080FB4(&qword_1003D30B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 120) = &type metadata for Int;
  v7 = *v2;
  *(inited + 88) = 0x8000000100317590;
  *(inited + 96) = v7;

  Dictionary.init(dictionaryLiteral:)();
  v8 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:&v36];

  v11 = v36;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    static String.Encoding.utf8.getter();
    v15 = String.init(data:encoding:)();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for SKLogger();
      sub_10007EDA4(v19, qword_1003F26C8);
      v20 = static os_log_type_t.default.getter();

      v21 = Logger.logObject.getter();

      if (os_log_type_enabled(v21, v20))
      {
        v22 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v22 = 136446466;
        *(v22 + 4) = sub_100080210(0, 0xE000000000000000, &v36);
        *(v22 + 12) = 2082;
        v23 = sub_100080210(v17, v18, &v36);

        *(v22 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
        swift_arrayDestroy();

        sub_10008E168(v12, v14);
      }

      else
      {
        sub_10008E168(v12, v14);
      }

      return;
    }

    sub_10008E168(v12, v14);
  }

  else
  {
    v24 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for SKLogger();
  sub_10007EDA4(v25, qword_1003F26C8);
  v26 = &v2[*(type metadata accessor for ExternalGatewayRequest() + 40)];
  v27 = *v26;
  v28 = v26[1];
  v29 = static os_log_type_t.error.getter();

  v30 = Logger.logObject.getter();

  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446466;
    v36 = 91;
    v37 = 0xE100000000000000;
    v38 = v32;
    v33._countAndFlagsBits = v27;
    v33._object = v28;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 8285;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    v35 = sub_100080210(v36, v37, &v38);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_100080210(0xD000000000000032, 0x80000001003175B0, &v38);
    _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F19FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v12;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  sub_100080FB4(&qword_1003CE450);
  v8[28] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1B04, 0, 0);
}

uint64_t sub_1000F1B04()
{
  sub_1000B0004();
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[23];
  v5 = *(v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID);
  v6 = *(v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8);
  (*(v0[30] + 16))(v1, v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v0[29]);

  v7 = sub_1001A8808();
  v8 = objc_allocWithZone(type metadata accessor for DialogContext());
  v9 = sub_10019E3E0(v5, v6, v1, v7, 0);
  v0[32] = v9;
  sub_1000B75B8(v4, v2, &qword_1003CE450);
  v10 = type metadata accessor for ExternalGatewaySheet();
  if (sub_100081D0C(v2, 1, v10) == 1)
  {
    v11 = v0[28];

    sub_1000AF25C(v11, &qword_1003CE450);

    sub_100098AC4();

    return v12();
  }

  else
  {
    v0[33] = type metadata accessor for ExternalGatewayRequest();
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = sub_1000F1CF8;

    return sub_100246A38();
  }
}

uint64_t sub_1000F1CF8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
    sub_1000F2C1C(*(v3 + 224));
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F1DFC()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000F1E6C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F1F54()
{
  sub_100080F0C(v0 + 16);
  swift_getErrorValue();
  if (sub_100184DA8(*(v0 + 104)))
  {
    sub_10008B5E0();
    v1 = sub_1000894A0();
    sub_1000F2F3C(v1, v2);
  }

  else
  {
    swift_willThrow();
  }

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000F2028()
{
  v49 = v0;
  sub_1000F2C1C(*(v0 + 224));
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 200);
  v4 = type metadata accessor for SKLogger();
  sub_10007EDA4(v4, qword_1003F26C8);
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v5._object = 0x8000000100317550;
  String.append(_:)(v5);
  *(v0 + 296) = *v3;
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  *(v0 + 152) = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = &v3[*(v2 + 40)];
  v11 = *v9;
  v10 = v9[1];
  v12 = static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  v45 = v11;
  if (os_log_type_enabled(v13, v12))
  {
    v14 = sub_10008E688();
    sub_10008E670();
    sub_1000F2DE4(4.8752e-34);
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    String.append(_:)(v15);
    sub_10009F134();
    v16 = sub_100080210(v47, v48, &v46);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    v17 = sub_100080210(v7, v8, &v46);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_1000B75B8(*(v0 + 192), v0 + 56, &qword_1003CE458);
  if (*(v0 + 80))
  {
    v18 = *(v0 + 280);
    sub_1000F2C78((v0 + 56), v0 + 16);
    swift_errorRetain();
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 isCancelledError];

    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v21 = v48;
    *(v0 + 136) = v47;
    *(v0 + 144) = v21;
    v22._object = 0x8000000100317570;
    v22._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v22);
    *(v0 + 297) = v20 ^ 1;
    _print_unlocked<A, B>(_:_:)();
    v23._countAndFlagsBits = 0x72726520726F6620;
    v23._object = 0xEB0000000020726FLL;
    String.append(_:)(v23);
    *(v0 + 168) = v18;
    _print_unlocked<A, B>(_:_:)();
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = static os_log_type_t.default.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v26))
    {
      v28 = sub_10008E688();
      sub_10008E670();
      sub_1000F2DE4(4.8752e-34);
      v29._countAndFlagsBits = v45;
      v29._object = v10;
      String.append(_:)(v29);
      sub_10009F134();
      v30 = sub_100080210(v47, v48, &v46);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2082;
      v31 = sub_100080210(v25, v24, &v46);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    swift_task_alloc();
    sub_1000F2F10();
    *(v0 + 288) = v34;
    *v34 = v35;
    v34[1] = sub_1000F1E6C;
    sub_1000F2E70();

    return sub_1001914BC(v36, v37, v38, v39, v40);
  }

  else
  {
    sub_1000AF25C(v0 + 56, &qword_1003CE458);
    swift_getErrorValue();
    if (sub_100184DA8(*(v0 + 104)))
    {
      sub_10008B5E0();
      v32 = sub_1000894A0();
      sub_1000F2F3C(v32, v33);
    }

    else
    {
      swift_willThrow();
    }

    sub_100098AC4();
    sub_1000F2E70();

    return v43();
  }
}

uint64_t sub_1000F2600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalGatewayRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CE450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F26D4()
{
  v2 = sub_100080FB4(&qword_1003CE450);
  sub_1000B046C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for ExternalGatewayRequest();
  v9 = *(*(v8 - 8) + 80);
  v24 = *(*(v8 - 8) + 64);
  swift_unknownObjectRelease();

  v10 = (v0 + v5);
  v11 = type metadata accessor for ExternalGatewaySheet();
  if (!sub_1000F2F1C(v11))
  {

    v12 = v1[5];
    v13 = type metadata accessor for URL();
    if (!sub_100081D0C(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = (v7 + v9 + 40) & ~v9;
  if (*(v0 + v7 + 24))
  {
    sub_100080F0C(v0 + v7);
  }

  if (*(v0 + v14 + 16) >= 3uLL)
  {
  }

  v15 = (v0 + v14 + *(v8 + 28));
  v16 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v16))
  {
    v17 = v15[1];
    if (v17 >> 60 != 15)
    {
      sub_10008E168(*v15, v17);
    }

    v18 = v1[7];
    v19 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v15 + v18, 3, v19))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v20 + 8))(v15 + v18);
    }

    v21 = v1[10];
    v22 = type metadata accessor for UUID();
    if (!sub_100081D0C(v15 + v21, 1, v22))
    {
      (*(*(v22 - 8) + 8))(v15 + v21, v22);
    }
  }

  return _swift_deallocObject(v0, ((v24 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | v9 | 7);
}

uint64_t sub_1000F2A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalGatewayRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2A6C(uint64_t a1)
{
  v3 = sub_100080FB4(&qword_1003CE450);
  sub_1000B046C(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for ExternalGatewayRequest();
  sub_1000B046C(v8);
  v10 = (v7 + *(v9 + 80) + 40) & ~*(v9 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + ((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1000A7644;

  return sub_1000F19FC(a1, v12, v13, v14, v1 + v5, v1 + v7, v1 + v10, v15);
}

uint64_t sub_1000F2C1C(uint64_t a1)
{
  v2 = type metadata accessor for ExternalGatewaySheet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F2C78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000F2D78()
{
}

uint64_t sub_1000F2DC8()
{

  return sub_1000AF25C(v1 + 56, v0);
}

uint64_t sub_1000F2E00()
{
  v6 = v3 + v4;
  v7 = *(v2 + 112);
  *v6 = *(v2 + 96);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(v2 + 128);

  return sub_1000F2A08(v1, v3 + v0);
}

uint64_t sub_1000F2E2C()
{

  return sub_1000AF25C(v1 + 16, v0);
}

uint64_t sub_1000F2E48()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
}

uint64_t sub_1000F2EB8()
{
}

uint64_t sub_1000F2F1C(uint64_t a1)
{

  return sub_100081D0C(v1, 1, a1);
}

uint64_t sub_1000F2F3C(uint64_t a1, _BYTE *a2)
{
  *a2 = 11;

  return swift_willThrow();
}

uint64_t sub_1000F2F5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000B75B8(v3 + 16, v3 + 56, a3);
}

id sub_1000F2F74()
{
  sub_10001E104();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100106CE0();
  String._bridgeToObjectiveC()();
  sub_1000B02A4();
  v3 = [v0 initWithString:v1];

  return v3;
}

unint64_t sub_1000F3004(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100080FB4(&qword_1003CE650);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1001060C4(*(a1 + 48) + 40 * v10, __src);
    sub_100080F58(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001060C4(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100080F58(&__dst[40], v20);
    sub_1000AF25C(__dst, &qword_1003CE658);
    v21 = v18;
    sub_10008B5D0(v20, v22);
    v11 = v21;
    sub_10008B5D0(v22, v23);
    sub_10008B5D0(v23, &v21);
    result = sub_1000B6328(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100080F0C(v14);
      result = sub_10008B5D0(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_10008B5D0(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1000AF25C(__dst, &qword_1003CE658);

  return 0;
}

BOOL sub_1000F32BC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1000F3320(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  sub_100098AD0();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F334C()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = [objc_allocWithZone(AMSURLParser) initWithBag:v0[20]];
  v0[21] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[22] = [v1 typeForURL:v3];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000F34B0;
  v5 = swift_continuation_init();
  v6 = sub_100080FB4(&qword_1003CE660);
  v0[17] = v6;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000F2FD8;
  v0[13] = &unk_100388B88;
  v0[14] = v5;
  sub_100107944(v6, "resultWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000F34B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F35AC()
{
  sub_100098BB4();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = [v3 integerValue];

  sub_10009F198();

  return v5(v4);
}

uint64_t sub_1000F3634()
{
  sub_100098BB4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_100098AC4();

  return v3();
}

NSString sub_1000F36A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE460 = result;
  return result;
}

NSString sub_1000F36DC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE468 = result;
  return result;
}

NSString sub_1000F371C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE470 = result;
  return result;
}

NSString sub_1000F3754()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE478 = result;
  return result;
}

NSString sub_1000F3780()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE480 = result;
  return result;
}

NSString sub_1000F37B8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE488 = result;
  return result;
}

NSString sub_1000F37F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE490 = result;
  return result;
}

NSString sub_1000F382C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE498 = result;
  return result;
}

NSString sub_1000F3864()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4A0 = result;
  return result;
}

NSString sub_1000F38A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4A8 = result;
  return result;
}

NSString sub_1000F38E4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4B0 = result;
  return result;
}

NSString sub_1000F391C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4B8 = result;
  return result;
}

NSString sub_1000F395C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4C0 = result;
  return result;
}

NSString sub_1000F399C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4C8 = result;
  return result;
}

NSString sub_1000F39D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4D0 = result;
  return result;
}

NSString sub_1000F3A0C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4D8 = result;
  return result;
}

NSString sub_1000F3A4C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4E0 = result;
  return result;
}

NSString sub_1000F3A84()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4E8 = result;
  return result;
}

NSString sub_1000F3AAC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4F0 = result;
  return result;
}

NSString sub_1000F3AEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4F8 = result;
  return result;
}

NSString sub_1000F3B24()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE500 = result;
  return result;
}

NSString sub_1000F3B5C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE508 = result;
  return result;
}

NSString sub_1000F3B94()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE510 = result;
  return result;
}

NSString sub_1000F3BC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE518 = result;
  return result;
}

NSString sub_1000F3C00()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE520 = result;
  return result;
}

NSString sub_1000F3C3C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE528 = result;
  return result;
}

NSString sub_1000F3C78()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE530 = result;
  return result;
}

NSString sub_1000F3CB0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE538 = result;
  return result;
}

NSString sub_1000F3CEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE540 = result;
  return result;
}

NSString sub_1000F3D24()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE548 = result;
  return result;
}

uint64_t sub_1000F3D58(id a1)
{
  if (qword_1003CBCF8 != -1)
  {
    swift_once();
  }

  v2 = qword_1003CE4C8;
  if ([a1 objectForKeyedSubscript:qword_1003CE4C8])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (sub_100107D44())
    {
      v3 = v7 == 1702195828 && v8 == 0xE400000000000000;
      if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 == 49 ? (v4 = v8 == 0xE100000000000000) : (v4 = 0), v4))
      {

        return 1;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1000AF25C(&v11, &unk_1003CCB70);
  }

  if ([a1 objectForKeyedSubscript:v2])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (sub_100107D44())
    {
      return v7;
    }
  }

  else
  {
    sub_1000AF25C(&v11, &unk_1003CCB70);
  }

  return 0;
}

uint64_t sub_1000F3FA0()
{
  sub_10008BE9C();
  *(v1 + 1792) = v0;
  *(v1 + 1681) = v2;
  v3 = type metadata accessor for URL();
  *(v1 + 1800) = v3;
  sub_1000B046C(v3);
  *(v1 + 1808) = v4;
  *(v1 + 1816) = sub_1000B05D0();
  v5 = type metadata accessor for UUID();
  *(v1 + 1824) = v5;
  sub_1000B046C(v5);
  *(v1 + 1832) = v6;
  *(v1 + 1840) = sub_1000B05D0();
  v7 = sub_100080FB4(&qword_1003CE608);
  sub_1000B01B0(v7);
  *(v1 + 1848) = sub_1000B05D0();
  v8 = type metadata accessor for PurchaseIntentInternal();
  *(v1 + 1856) = v8;
  sub_1000B01B0(v8);
  *(v1 + 1864) = sub_1000B05D0();
  v9 = type metadata accessor for Date();
  *(v1 + 1872) = v9;
  sub_1000B046C(v9);
  *(v1 + 1880) = v10;
  *(v1 + 1888) = *(v11 + 64);
  *(v1 + 1896) = sub_1001078CC();
  *(v1 + 1904) = swift_task_alloc();
  v12 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v12);
  *(v1 + 1912) = sub_1001078CC();
  *(v1 + 1920) = swift_task_alloc();
  v13 = sub_100080FB4(&unk_1003CE610);
  sub_1000B01B0(v13);
  *(v1 + 1928) = sub_1000B05D0();
  v14 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v14);
  *(v1 + 1936) = sub_1000B05D0();
  v15 = type metadata accessor for NSFastEnumerationIterator();
  *(v1 + 1944) = v15;
  sub_1000B046C(v15);
  *(v1 + 1952) = v16;
  *(v1 + 1960) = sub_1000B05D0();
  sub_100098AD0();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_1000F4244()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = *(v1 + 1792);
  *(v1 + 1968) = [objc_allocWithZone(AMSBuyParams) init];
  if ([v3 apiVersion] == 1 || (v4 = sub_1001056B8(*(v1 + 1792), &selRef_customBuyParams), (*(v1 + 1976) = v4) == 0))
  {
    *(v1 + 2032) = 0;
    v11 = [*(v1 + 1792) client];
    v12 = sub_1001A7AB4(v11);

    if (qword_1003CC028 != -1)
    {
      sub_100106700();
    }

    sub_100107AE0();
    sub_1001074E8([v12 arrayForKey:qword_1003F2890]);
    sub_1001073D8();
    *(v1 + 16) = v13;
    *(v1 + 56) = v1 + 1672;
    sub_1001066CC();
    v14 = sub_100080FB4(&qword_1003CE620);
    sub_10010647C(v14);
    sub_100107AD4(COERCE_DOUBLE(1107296256));
    sub_10010649C();
    [v2 valueWithCompletion:v0];
  }

  else
  {
    v5 = [*(v1 + 1792) client];
    v6 = sub_1001A7AB4(v5);

    if (qword_1003CBEB0 != -1)
    {
      swift_once();
    }

    v7 = [v6 arrayForKey:qword_1003F2718];
    *(v1 + 1984) = v7;
    swift_unknownObjectRelease();
    sub_1001073D8();
    *(v1 + 144) = v8;
    *(v1 + 184) = v1 + 1704;
    *(v1 + 152) = sub_1000F4524;
    v9 = sub_1000B0500();
    v10 = sub_100080FB4(&qword_1003CE620);
    *(v1 + 1992) = v10;
    *(v1 + 456) = v10;
    *(v1 + 400) = _NSConcreteStackBlock;
    *(v1 + 408) = 1107296256;
    *(v1 + 416) = sub_1000FF948;
    *(v1 + 424) = &unk_1003884F8;
    *(v1 + 432) = v9;
    [v7 valueWithCompletion:v1 + 400];
  }

  sub_1000B0518();

  return _swift_continuation_await(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1000F4524()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2000) = *(v3 + 176);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F4650()
{
  sub_1000B02BC();
  v1 = v0[248];
  v2 = v0[224];
  v0[251] = v0[213];

  v3 = [v2 client];
  v4 = sub_1001A7AB4(v3);

  if (qword_1003CC010 != -1)
  {
    swift_once();
  }

  v5 = v0[249];
  v0[252] = [v4 arrayForKey:qword_1003F2878];
  swift_unknownObjectRelease();
  sub_1001073D8();
  v0[10] = v6;
  v0[15] = v0 + 211;
  v0[11] = sub_1000F4810;
  v7 = sub_1000B0500();
  v0[49] = v5;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_1000FF948;
  v0[45] = &unk_1003886B0;
  v0[46] = v7;
  sub_100107944(v7, "valueWithCompletion:");

  return _swift_continuation_await(v0 + 10, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000F4810()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2024) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F493C()
{
  v291 = v1;
  sub_100107AA8();
  v2 = *(v1 + 1688);

  if (!v2)
  {
    sub_10008E5A4(0, &qword_1003CE638);
    v2 = NSArray.init(arrayLiteral:)();
  }

  v284 = (v1 + 624);
  v278 = (v1 + 1232);
  v231 = v2;
  NSArray.makeIterator()();
  sub_1000C446C();
  v283 = v3;
  v276 = "allowedBuyParams";
  v280 = 0xD000000000000010;
  *(&v4 + 1) = 12;
  v269 = xmmword_1002F0B70;
  *&v4 = 136446466;
  v282 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        NSFastEnumerationIterator.next()();
        if (!*(v1 + 1416))
        {
          v70 = sub_100107B78();
          v71(v70);
          v72 = _swiftEmptyArrayStorage;
          goto LABEL_34;
        }

        sub_10008B5D0((v1 + 1392), (v1 + 1264));
        sub_100080F58(v1 + 1264, v1 + 1168);
        sub_100080FB4(&unk_1003CE640);
        if (sub_100107854())
        {
          break;
        }

LABEL_12:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v12 = sub_100107660();
        v13 = sub_10007EDA4(v12, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(49);
        *(v1 + 1656) = v288;
        *(v1 + 1664) = v289;
        sub_1001072C0();
        sub_100107DA4(v14);
        _print_unlocked<A, B>(_:_:)();
        v285 = *(v1 + 1656);
        v15 = *(v1 + 1664);
        v16 = [v0 logKey];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v0 = static os_log_type_t.error.getter();

        v18 = Logger.logObject.getter();

        if (os_log_type_enabled(v18, v0))
        {
          v19 = sub_10008E688();
          v20 = sub_10008E670();
          *v19 = sub_10010715C(v20, v21, v22, v23, v24, v25, v26, v27, v231, v236, v241, v247, v252, v256, v259, v261, v264, v267, v269, *(&v269 + 1), v270, v271, v273, v274, v275, v276, v278, v280, v282).n128_u32[0];
          sub_100106448();
          v28._countAndFlagsBits = sub_1001073E4();
          String.append(_:)(v28);
          sub_10009F134();
          sub_100106D28();
          sub_1000B02F8();
          *(v19 + 4) = v17;
          sub_100107628();
          sub_100080210(v285, v15, v29);
          sub_1000B047C();
          *(v19 + 14) = v13;
          sub_100107A58(&_mh_execute_header, v18, v0, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100106D44();
          sub_100081C28();
        }

        else
        {
        }

        sub_100080F0C(v1 + 1264);
      }

      v5 = *(v1 + 1736);
      sub_100107200();
      AnyHashable.init<A>(_:)();
      if (!*(v5 + 16) || (v6 = sub_100212CF4(v1 + 936), (v7 & 1) == 0))
      {

        sub_10008E550(v1 + 936);
        goto LABEL_12;
      }

      sub_100080F58(*(v5 + 56) + 32 * v6, v1 + 976);
      sub_10008E550(v1 + 936);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      v8 = *(v1 + 1576);
      v9 = *(v1 + 1584);
      v10 = [*(v1 + 1792) client];
      v11 = *&v10[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v0 = *&v10[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

      *(v1 + 1640) = v11;
      *(v1 + 1648) = v0;
      *(v1 + 1480) = v8;
      *(v1 + 1488) = v9;
      sub_100106050();
      StringProtocol.caseInsensitiveCompare<A>(_:)();
      sub_100106CE0();

      if (v1 == -1640)
      {
        break;
      }

      sub_100080F0C(v1 + 1264);
    }

    MEMORY[0xFFFFFFFFFFFFFFB0] = v280;
    MEMORY[0xFFFFFFFFFFFFFFB8] = v283;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v30 = sub_100212CF4(-744), (v31 & 1) != 0))
    {
      v32 = v278;
      sub_100080F58(*(v5 + 56) + 32 * v30, v278);
    }

    else
    {
      v32 = v278;
      *v278 = 0u;
      v278[1] = 0u;
    }

    sub_10008E550(-744);
    if (MEMORY[0xFFFFFFFFFFFFFE80])
    {
      break;
    }

    sub_1000AF25C(v32, &unk_1003CCB70);
LABEL_27:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v33 = sub_100107600();
    sub_10007EDA4(v33, qword_1003F26C8);
    sub_100106C30();
    _StringGuts.grow(_:)(61);
    sub_1001072C0();
    v35._countAndFlagsBits = v34 + 32;
    v35._object = (v276 | 0x8000000000000000);
    String.append(_:)(v35);
    v36._countAndFlagsBits = Dictionary.description.getter();
    object = v36._object;
    String.append(_:)(v36);

    v38._countAndFlagsBits = 46;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = [v9 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107B60();

    v40 = static os_log_type_t.error.getter();
    sub_1000B7E4C();
    v41 = swift_allocObject();
    v271 = &type metadata for String;
    *(v41 + 16) = &type metadata for String;
    *(v41 + 24) = object;
    sub_1000B7E4C();
    v42 = swift_allocObject();
    v273 = v288;
    *(v42 + 16) = v288;
    *(v42 + 24) = v289;
    v286 = object;

    v275 = v289;

    v274 = Logger.logObject.getter();
    sub_100106B7C();
    *(swift_allocObject() + 16) = 34;
    sub_100106B7C();
    v0 = swift_allocObject();
    *(v0 + 16) = 8;
    sub_1000B7E4C();
    v43 = swift_allocObject();
    sub_100107004(v43);
    sub_1000B7E4C();
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1001063F0;
    *(v44 + 24) = v43;
    sub_100106B7C();
    v45 = swift_allocObject();
    *(v45 + 16) = 34;
    sub_100106B7C();
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    sub_1000B7E4C();
    swift_allocObject();
    sub_100106FEC();
    *(v47 + 16) = v48;
    *(v47 + 24) = v42;
    sub_1000B7E4C();
    v49 = swift_allocObject();
    sub_100106FD4(v49);
    sub_100080FB4(&qword_1003CE628);
    v50 = sub_100107388();
    sub_100106DE0(v50, v51, v52, v53, v54, v55, v56, v57, v231, v236, v241, v247, v252, v256, v259, v261, v264, v267, v58);
    v59[6] = sub_1001063FC;
    v59[7] = v0;
    v59[8] = sub_10010620C;
    v59[9] = v44;
    v59[10] = sub_1001063FC;
    v59[11] = v45;
    v59[12] = sub_1001063FC;
    v59[13] = v46;
    v60 = v274;
    v59[14] = sub_10010620C;
    v59[15] = v49;
    swift_setDeallocating();
    sub_10009E36C();
    if (os_log_type_enabled(v274, v40))
    {
      sub_10008E688();
      v61 = sub_100106F40();
      *v0 = sub_10010715C(v61, v62, v63, v64, v65, v66, v67, v68, v231, v236, v241, v247, v252, v256, v259, v261, v264, v267, v269, *(&v269 + 1), v270, &type metadata for String, v288, v274, v289, v276, v278, v280, v282).n128_u32[0];
      sub_100106448();
      v69._countAndFlagsBits = v271;
      v69._object = v286;
      String.append(_:)(v69);
      sub_10009F134();
      sub_100106D28();
      sub_1001076A0();
      *(v0 + 1) = v49;
      sub_100107300();
      sub_100080210(v273, v275, v290);
      sub_1000B03CC();
      *(v0 + 14) = &type metadata for Any;
      sub_1001076B8(&_mh_execute_header, v60, v40, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100106D44();
      sub_100106E50();
    }

    else
    {
    }

    sub_100080F0C(-376);
  }

  sub_100080FB4(&unk_1003D0530);
  if ((sub_100107830() & 1) == 0)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v227 = *(v1 + 1952);

    sub_100080F0C(v1 + 1264);
    v0 = (v227 + 8);
    v228 = sub_100107174();
    v229(v228);
    v72 = *(v1 + 1784);
LABEL_34:
    v272 = v72;
    v73 = 0;
    v74 = *(v1 + 1976) + 64;
    v281 = *(v1 + 1976);
    sub_1001074CC();
    v77 = v76 & v75;
    v79 = (63 - v78) >> 6;
    v248 = "Ignoring custom buy param ";
    v253 = " because they are not allowed";
    sub_1000C446C();
    v242 = v80;
    sub_1000C446C();
    v265 = v81;
    v277 = v79;
    v279 = v74;
    if (!v77)
    {
      goto LABEL_36;
    }

LABEL_35:
    v82 = v73;
LABEL_40:
    v83 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    sub_100107920(v83 | (v82 << 6));
    sub_100107F2C();
LABEL_41:
    v84 = *(v1 + 592);
    *v284 = *(v1 + 576);
    *(v1 + 640) = v84;
    *(v1 + 656) = *(v1 + 608);
    v85 = *(v1 + 632);
    v86 = *(v1 + 2008);
    if (v85)
    {
      v87 = *v284;
      sub_10008B5D0((v1 + 640), (v1 + 1296));
      sub_1001073E4();
      v88 = String._bridgeToObjectiveC()();
      v89 = sub_1001077CC();
      v91 = [v89 v90];

      if (v91)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v92 = sub_100107600();
        sub_1000B01C8(v92, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(26);

        sub_1001072C0();
        v288 = v93 - 2;
        v289 = v265;
        v94._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v94);
        v95 = v265;
        HIDWORD(v275) = HIDWORD(v288);
        v96 = [v88 logKey];
        v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        v99 = static os_log_type_t.info.getter();

        Logger.logObject.getter();
        sub_1000B02A4();

        LODWORD(v274) = v99;
        if (os_log_type_enabled(v0, v99))
        {
          sub_10008E688();
          v100 = sub_1000B002C();
          *v79 = sub_100106D18(v100, v101, v102, v103, v104, v105, v106, v107, v231, v236, v242, v248, v253, v256, v259, v261, v265, v267, v269, *(&v269 + 1), v270, v272, v273, v274, v288, v277, v279, v281, v282).n128_u32[0];
          sub_100106448();
          v108._countAndFlagsBits = v273;
          v108._object = v98;
          String.append(_:)(v108);
          sub_10009F134();
          sub_100106D28();
          sub_1000B0494();
          *(v79 + 4) = v99;
          sub_100107150();
          sub_100080210(v275, v95, v290);
          sub_100107A70();
          *(v79 + 14) = v0;
          _os_log_impl(&_mh_execute_header, v0, v274, "%{public}s%{public}s", v79, 0x16u);
          sub_100106E34();
          v74 = v279;
          sub_100081C28();
          v79 = v277;
          sub_100081C28();
        }

        else
        {
        }

        goto LABEL_61;
      }

      *(v1 + 1608) = v87;
      *(v1 + 1616) = v85;
      v109 = swift_task_alloc();
      v117 = sub_100106CEC(v109, v110, v111, v112, v113, v114, v115, v116, v231, v236, v242, v248, v253, v256, v259, v261, v265, v267);
      v120 = sub_100178848(v117, v118, v119);

      if (v120)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v121 = sub_100107600();
        sub_1000B01C8(v121, qword_1003F26C8);
        sub_1001072C0();
        sub_100107B00(v122, v232, v237, v243);
        v123._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v123);
        v124 = [v120 logKey];
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        LODWORD(v273) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v128 = swift_allocObject();
        v258 = v125;
        *(v128 + 16) = v125;
        *(v128 + 24) = v127;
        sub_1000B7E4C();
        v129 = swift_allocObject();
        *(v129 + 16) = v288;
        *(v129 + 24) = v289;
        v275 = v127;

        HIDWORD(v274) = HIDWORD(v289);

        v262 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v130 = swift_allocObject();
        sub_1001072E8(v130);
        sub_1000B7E4C();
        v131 = swift_allocObject();
        *(v131 + 16) = sub_1001063F4;
        *(v131 + 24) = v128;
        sub_1000B7E4C();
        v132 = swift_allocObject();
        *(v132 + 16) = sub_1001063F0;
        *(v132 + 24) = v131;
        sub_100106B7C();
        v133 = swift_allocObject();
        *(v133 + 16) = 34;
        sub_100106B7C();
        v134 = swift_allocObject();
        sub_1001072E8(v134);
        sub_1000B7E4C();
        v135 = swift_allocObject();
        *(v135 + 16) = sub_1001063F8;
        *(v135 + 24) = v129;
        sub_1000B7E4C();
        v136 = swift_allocObject();
        *(v136 + 16) = sub_1001063F0;
        *(v136 + 24) = v135;
        sub_100080FB4(&qword_1003CE628);
        v137 = sub_100107388();
        sub_100106E6C(v137, v138, v139, v140, v141, v142, v143, v144, v233, v238, v244, v249, v254, v258, v288, v262, v266, v268, v145);
        v146[6] = sub_1001063FC;
        v146[7] = v130;
        v146[8] = sub_10010620C;
        v146[9] = v132;
        v146[10] = sub_1001063FC;
        v146[11] = v133;
        v146[12] = sub_1001063FC;
        v146[13] = v134;
        v146[14] = sub_10010620C;
        v146[15] = v136;
        v147 = v273;
        swift_setDeallocating();
        v148 = v137;
        v149 = v261;
        sub_10009E36C();
        if (os_log_type_enabled(v261, v273))
        {
          sub_10008E688();
          v150 = sub_100106F40();
          *v130 = sub_100106D18(v150, v151, v152, v153, v154, v155, v156, v157, v231, v236, v242, v248, v253, v256, v259, v261, v265, v267, v269, *(&v269 + 1), v270, v272, v273, v289, v275, v277, v279, v281, v282).n128_u32[0];
          sub_100106448();
          v158._countAndFlagsBits = v256;
          v158._object = v275;
          String.append(_:)(v158);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v130 + 4) = v132;
          sub_100107300();
          sub_100080210(v259, v274, v290);
          sub_10001E11C();

          *(v130 + 14) = v148;
          sub_1001076B8(&_mh_execute_header, v149, v147, "%{public}s%{public}s");
          sub_100106E34();
          sub_1000AFFE8();
          sub_100106E50();
        }

        else
        {
        }

        v79 = v277;
        v74 = v279;
LABEL_61:
        sub_1001073A0();
        v0 = String._bridgeToObjectiveC()();

        v213 = sub_1001077CC();
        [v213 v214];

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v159 = sub_100107660();
        sub_10007EDA4(v159, qword_1003F26C8);
        v160 = sub_1000800E8(54);
        sub_100107678(v160, v161, v162, v163, v164, v165, v166, v167, v232, v237, v243, v249, v254);
        v168._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v168);

        sub_100107CA4(v169, v170, v171, v172, v173, v174, v175, v176, v234, v239, v245, v250);
        v177 = [0 logKey];
        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        LODWORD(v275) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v181 = swift_allocObject();
        v263 = v178;
        *(v181 + 16) = v178;
        *(v181 + 24) = v180;
        sub_1000B7E4C();
        v182 = swift_allocObject();
        HIDWORD(v273) = HIDWORD(v288);
        *(v182 + 16) = v288;
        *(v182 + 24) = v289;
        v287 = v180;

        v274 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v0 = swift_allocObject();
        sub_1001072E8(v0);
        sub_1000B7E4C();
        v183 = swift_allocObject();
        *(v183 + 16) = sub_1001063F4;
        *(v183 + 24) = v181;
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010701C();
        *(v184 + 16) = v185;
        *(v184 + 24) = v183;
        sub_100106B7C();
        v186 = swift_allocObject();
        *(v186 + 16) = 34;
        sub_100106B7C();
        v187 = swift_allocObject();
        sub_1001072E8(v187);
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010704C();
        *(v188 + 16) = v189;
        *(v188 + 24) = v182;
        sub_1000B7E4C();
        v190 = swift_allocObject();
        sub_100106F74(v190);
        sub_100080FB4(&qword_1003CE628);
        v191 = sub_100107388();
        sub_100106E10(v191, v192, v193, v194, v195, v196, v197, v198, v235, v240, v246, v251, v255, v257, v260, v263, v266, v268, v199);
        v200[6] = sub_1001063FC;
        v200[7] = v0;
        v200[8] = sub_10010620C;
        v200[9] = v288;
        sub_100106F5C();
        v201[10] = v202;
        v201[11] = v186;
        v201[12] = sub_1001063FC;
        v201[13] = v187;
        v203 = v274;
        v201[14] = sub_10010620C;
        v201[15] = v190;
        swift_setDeallocating();
        sub_10009E36C();
        if (os_log_type_enabled(v274, v288))
        {
          sub_10008E688();
          v204 = sub_100106F40();
          *v0 = sub_100106D18(v204, v205, v206, v207, v208, v209, v210, v211, v231, v236, v242, v248, v253, v256, v259, v261, v265, v267, v269, *(&v269 + 1), v270, v272, v288, v274, v275, v277, v279, v281, v282).n128_u32[0];
          sub_100106448();
          v212._countAndFlagsBits = v261;
          v212._object = v287;
          String.append(_:)(v212);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v0 + 1) = 34;
          sub_100107300();
          sub_100080210(v273, v289, v290);
          sub_10001E11C();

          *(v0 + 14) = 34;
          sub_1001076B8(&_mh_execute_header, v203, v288, "%{public}s%{public}s");
          sub_100106E34();
          sub_1000AFFE8();
          sub_100106E50();
        }

        else
        {
        }

        v79 = v277;
        v74 = v279;
      }

      sub_100080F0C(v1 + 1296);
      if (!v77)
      {
LABEL_36:
        while (1)
        {
          v82 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v82 >= v79)
          {
            v77 = 0;
            *(v1 + 592) = 0u;
            *(v1 + 608) = 0u;
            *(v1 + 576) = 0u;
            goto LABEL_41;
          }

          v77 = *(v74 + 8 * v82);
          ++v73;
          if (v77)
          {
            v73 = v82;
            goto LABEL_40;
          }
        }

        __break(1u);
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  *(v1 + 2032) = 0;
  v215 = [*(v1 + 1792) client];
  v216 = sub_1001A7AB4(v215);

  if (qword_1003CC028 != -1)
  {
    sub_100106700();
  }

  sub_100107AE0();
  sub_1001074E8([v216 arrayForKey:qword_1003F2890]);
  sub_1001073D8();
  *(v1 + 16) = v217;
  *(v1 + 56) = v236;
  sub_1001066CC();
  v218 = sub_100080FB4(&qword_1003CE620);
  sub_10010647C(v218);
  sub_100107AD4(COERCE_DOUBLE(1107296256));
  sub_10010649C();
  sub_100107944(v219, "valueWithCompletion:");

  return _swift_continuation_await(v215, v220, v221, v222, v223, v224, v225, v226);
}

uint64_t sub_1000F5C74()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2048) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F733C()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2080) = *(v3 + 240);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F8DB0()
{
  sub_10008BE9C();
  *(v0 + 2168) = sub_10019D99C();
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000F8E40()
{
  v1 = v0[268];
  v16 = v0[269];
  v17 = v0[266];
  v14 = v0[267];
  v15 = v0[265];
  v2 = v0[237];
  v3 = v0[236];
  v4 = v0[235];
  v5 = v0[234];
  (*(v4 + 16))(v2, v0[238], v5);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[272] = v9;
  (*(v4 + 32))(v9 + v6, v2, v5);
  v10 = (v9 + v7);
  *v10 = v14;
  v10[1] = v1;
  *(v9 + v8) = v16;
  v11 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v15;
  v11[1] = v17;

  v12 = swift_task_alloc();
  v0[273] = v12;
  *v12 = v0;
  v12[1] = sub_1000F901C;

  return sub_1001D5D00(sub_100105DE0, v9);
}

uint64_t sub_1000F901C()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F98B8()
{
  sub_100098BB4();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F9A2C()
{
  v117 = v0;
  v2 = *(v0 + 1840);
  v3 = [*(v0 + 1792) purchaseIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v4 = sub_100106DA0();
  v5(v4);
  sub_1000C4514();
  String.lowercased()();
  sub_100106D80();

  sub_100107174();
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  if (qword_1003CBD48 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    [*(v0 + 1968) setParameter:v2 forKey:qword_1003CE518];

    v6 = objc_opt_self();
    v7 = [v6 operatingSystem];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD18 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v7 forKey:qword_1003CE4E8];

    v8 = [v6 productVersion];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD28 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v8 forKey:qword_1003CE4F8];

    v9 = [v6 buildVersion];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD20 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v9 forKey:qword_1003CE4F0];

    sub_10017772C(v6);
    if (v10)
    {
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    else
    {
      v9 = 0;
    }

    if (qword_1003CBCF0 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v9 forKey:qword_1003CE4C0];
    swift_unknownObjectRelease();
    sub_1001057D0(v6, &selRef_sk_hardwareFamily);
    if (v11)
    {
      String._bridgeToObjectiveC()();
      sub_10001E11C();
    }

    else
    {
      v6 = 0;
    }

    if (qword_1003CBCE8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 2192);
    v13 = *(v0 + 1816);
    v14 = *(v0 + 1808);
    v15 = *(v0 + 1800);
    v16 = *(v0 + 1792);
    [*(v0 + 1968) setParameter:v6 forKey:qword_1003CE4B8];
    swift_unknownObjectRelease();
    v17 = [v16 client];
    (*(v14 + 16))(v13, v17 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v15);

    v18 = objc_allocWithZone(LSApplicationRecord);
    v19 = sub_10001E11C();
    v20 = sub_1001B35E8(v19, 0);
    if (v12)
    {
      v106 = v12;
      v21 = v12;
      goto LABEL_26;
    }

    v71 = v20;
    v72 = [v20 iTunesMetadata];
    *(v0 + 1752) = 0;
    v73 = [v72 storeCohortWithError:v0 + 1752];

    v74 = *(v0 + 1752);
    if (!v73)
    {
      v82 = v74;
      sub_10001E104();
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v106 = v21;

LABEL_26:
      v22 = *(v0 + 1792);
      *(v0 + 1544) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v0 + 1552) = v23;
      v24._countAndFlagsBits = 0xD00000000000001BLL;
      v24._object = 0x8000000100317C20;
      String.append(_:)(v24);
      v112 = v21;
      *(v0 + 1760) = v21;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      sub_1001077E4();
      v25 = *(v0 + 1544);
      v26 = *(v0 + 1552);
      v27 = [v22 logKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100107638();
      LODWORD(v110) = static os_log_type_t.error.getter();
      sub_1000B7E4C();
      v28 = swift_allocObject();
      v107 = &selRef__appDidLaunch_;
      *(v28 + 16) = &selRef__appDidLaunch_;
      *(v28 + 24) = v22;
      sub_1000B7E4C();
      v29 = swift_allocObject();
      v108 = v25;
      *(v29 + 16) = v25;
      *(v29 + 24) = v26;
      v111 = v22;

      v109 = Logger.logObject.getter();
      sub_100106B7C();
      v30 = swift_allocObject();
      *(v30 + 16) = 34;
      sub_100106B7C();
      v31 = swift_allocObject();
      *(v31 + 16) = 8;
      sub_1000B7E4C();
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100105E94;
      *(v32 + 24) = v28;
      sub_1000B7E4C();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_100105EAC;
      *(v33 + 24) = v32;
      sub_100106B7C();
      v34 = swift_allocObject();
      *(v34 + 16) = 34;
      sub_100106B7C();
      v1 = swift_allocObject();
      *(v1 + 16) = 8;
      sub_1000B7E4C();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_100105E9C;
      *(v35 + 24) = v29;
      sub_1000B7E4C();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1001063F0;
      *(v36 + 24) = v35;
      sub_100080FB4(&qword_1003CE628);
      v37 = sub_100107388();
      *(v37 + 16) = xmmword_1002F0B70;
      *(v37 + 32) = sub_100105EA4;
      *(v37 + 40) = v30;
      *(v37 + 48) = sub_1001063FC;
      *(v37 + 56) = v31;
      *(v37 + 64) = sub_100105EB4;
      *(v37 + 72) = v33;
      *(v37 + 80) = sub_1001063FC;
      *(v37 + 88) = v34;
      *(v37 + 96) = sub_1001063FC;
      *(v37 + 104) = v1;
      *(v37 + 112) = sub_10010620C;
      *(v37 + 120) = v36;
      swift_setDeallocating();
      v38 = v109;
      sub_10009E36C();
      if (sub_100107DF4())
      {
        v39 = sub_10008E688();
        v116[0] = sub_10008E670();
        *v39 = 136446466;
        sub_10009F0F8();
        v113 = v40;
        v114 = v41;
        v42._countAndFlagsBits = &selRef__appDidLaunch_;
        v42._object = v22;
        String.append(_:)(v42);
        sub_10009F134();
        sub_100080210(v113, v114, v116);
        sub_10001E104();

        *(v39 + 4) = v33;
        *(v39 + 12) = 2082;
        sub_100080210(v108, v26, v116);
        sub_1000B047C();
        *(v39 + 14) = v114;
        sub_100107A58(&_mh_execute_header, v109, v110, "%{public}s%{public}s");
        sub_100098BC0();
        sub_10008BF3C();
        sub_100081C28();
      }

      else
      {
      }

LABEL_29:

      goto LABEL_30;
    }

    v106 = 0;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
    v78 = v74;

    v79 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v79 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (!v79)
    {
      v83 = *(v0 + 1792);

      v84 = [v83 logKey];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      LODWORD(v111) = static os_log_type_t.info.getter();
      sub_1000B7E4C();
      v88 = swift_allocObject();
      v108 = v85;
      *(v88 + 16) = v85;
      *(v88 + 24) = v87;
      sub_1000B7E4C();
      v89 = swift_allocObject();
      *(v89 + 16) = 0xD000000000000015;
      *(v89 + 24) = 0x8000000100317C70;
      v109 = 0x8000000100317C70;
      v112 = v87;

      v110 = Logger.logObject.getter();
      sub_100106B7C();
      v90 = swift_allocObject();
      *(v90 + 16) = 34;
      sub_100106B7C();
      v91 = swift_allocObject();
      sub_100106C00(v91);
      sub_1000B7E4C();
      v92 = swift_allocObject();
      *(v92 + 16) = sub_1001063F4;
      *(v92 + 24) = v88;
      sub_1000B7E4C();
      v93 = swift_allocObject();
      *(v93 + 16) = sub_1001063F0;
      *(v93 + 24) = v92;
      sub_100106B7C();
      v94 = swift_allocObject();
      *(v94 + 16) = 34;
      sub_100106B7C();
      v95 = swift_allocObject();
      *(v95 + 16) = v87;
      sub_1000B7E4C();
      v96 = swift_allocObject();
      *(v96 + 16) = sub_1001063F8;
      *(v96 + 24) = v89;
      sub_1000B7E4C();
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1001063F0;
      *(v97 + 24) = v96;
      sub_100080FB4(&qword_1003CE628);
      v98 = sub_100107388();
      *(v98 + 16) = xmmword_1002F0B70;
      *(v98 + 32) = sub_1001063FC;
      *(v98 + 40) = v90;
      *(v98 + 48) = sub_1001063FC;
      *(v98 + 56) = v1;
      *(v98 + 64) = sub_10010620C;
      *(v98 + 72) = v93;
      v38 = v110;
      *(v98 + 80) = sub_1001063FC;
      *(v98 + 88) = v94;
      *(v98 + 96) = sub_1001063FC;
      *(v98 + 104) = v95;
      *(v98 + 112) = sub_10010620C;
      *(v98 + 120) = v97;
      swift_setDeallocating();
      sub_10009E36C();
      if (sub_1001076EC())
      {
        sub_10008E688();
        v116[0] = sub_100106C60();
        sub_100106A14(4.8752e-34);
        v113 = v99;
        v114 = v100;
        v101._countAndFlagsBits = v108;
        v101._object = v87;
        String.append(_:)(v101);
        sub_10009F134();
        sub_100080210(v113, v114, v116);
        sub_100107144();

        *(v1 + 4) = v98;
        sub_100106E04();
        *(v1 + 14) = sub_100080210(0xD000000000000015, 0x8000000100317C70, v116);
        sub_100106B88(&_mh_execute_header, v102, v103, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100106E50();
        sub_1000B0080();
      }

      goto LABEL_29;
    }

    if (qword_1003CBD68 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v73 forKey:qword_1003CE538];

LABEL_30:
    v43 = *(v0 + 2104);
    v44 = *(v0 + 1920);
    v45 = *(v0 + 1912);
    v46 = [*(v0 + 1792) client];
    sub_1001A7E5C(v46, v47, v48, v49, v50, v51, v52, v53, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);

    sub_100081DFC(v45, 1, 2, v43);
    v54 = sub_1000C4514();
    sub_1001A9B8C(v54, v55);
    sub_100106430();
    v57 = v56;
    sub_100105FA4(v45, v56);
    sub_100105FA4(v44, v57);
    if (v46)
    {
      v58 = [*(v0 + 1792) client];
      v59 = *&v58[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

      if (v59)
      {
        if (qword_1003CBDE0 != -1)
        {
          swift_once();
        }

        v60 = qword_1003F25D8;
        *(v0 + 2224) = qword_1003F25D8;

        return _swift_task_switch(sub_1000FA8D8, v60, 0);
      }
    }

    v61 = sub_1001056B8(*(v0 + 1792), &selRef_additionalBuyParams);
    if (!v61)
    {
      break;
    }

    v2 = v61;
    v62 = 0;
    v63 = v61 + 64;
    sub_1001066B4();
    sub_10010728C();
    v65 = v64 >> 6;
    if (!v1)
    {
      goto LABEL_40;
    }

    do
    {
LABEL_44:
      sub_100106B34();
      sub_100107890(v67);
      sub_100107F64();
LABEL_45:
      sub_1001077B4();
      if (!v57)
      {
        v70 = *(v0 + 2096);

        goto LABEL_58;
      }

      sub_100107598();
      sub_100080F0C(v0 + 1040);
      v68 = String._bridgeToObjectiveC()();

      sub_1001079E8(v69, "setParameter:forKey:");

      swift_unknownObjectRelease();
    }

    while (v1);
LABEL_40:
    while (1)
    {
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v66 >= v65)
      {
        sub_100107B38();
        goto LABEL_45;
      }

      v1 = *(v63 + 8 * v66);
      ++v62;
      if (v1)
      {
        v62 = v66;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
  }

LABEL_58:
  sub_100106FA4();

  sub_10009F198();
  v81 = *(v0 + 1968);

  return v80(v81);
}

uint64_t sub_1000FA8D8()
{
  sub_10008BE9C();
  *(v0 + 2232) = sub_10019D99C();
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000FA968()
{
  sub_100098BB4();
  v1 = [*(v0 + 1792) client];
  v2 = *&v1[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

  v3 = swift_task_alloc();
  *(v0 + 2240) = v3;
  *v3 = v0;
  v3[1] = sub_1000FAA58;

  return sub_10015DB20(v2);
}

uint64_t sub_1000FAA58()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  v4 = *(v3 + 2232);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;
  *(v8 + 1682) = v7;

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000FAB88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::String a9, NSObject *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_100107C4C();
  a28 = v32;
  a29 = v33;
  a27 = v30;
  v34 = *(v30 + 1682);
  if (v34 == 2)
  {
    goto LABEL_13;
  }

  v35 = *(v30 + 1792);
  a15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  a16 = v36;
  sub_1000B00A8();
  v37._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v37);
  if (v34)
  {
    v38 = 0x73656D6147;
  }

  else
  {
    v38 = 0x65726F7453707041;
  }

  if (v34)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  a13 = v38;
  v40 = v39;
  String.append(_:)(*&v38);
  v78 = v39;

  sub_1001077E4();
  v41 = a16;
  v42 = [v35 logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100106E8C();

  HIDWORD(a11) = static os_log_type_t.info.getter();
  sub_1000B7E4C();
  v43 = swift_allocObject();
  a9._countAndFlagsBits = v35;
  *(v43 + 16) = v35;
  *(v43 + 24) = v34;
  sub_1000B7E4C();
  v44 = swift_allocObject();
  a9._object = a15;
  *(v44 + 16) = a15;
  *(v44 + 24) = a16;
  a12 = v34;

  a10 = Logger.logObject.getter();
  sub_100106B7C();
  v45 = swift_allocObject();
  *(v45 + 16) = 34;
  sub_100106B7C();
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  sub_1000B7E4C();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1001063F4;
  *(v47 + 24) = v43;
  sub_1000B7E4C();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1001063F0;
  *(v48 + 24) = v47;
  sub_100106B7C();
  v31 = swift_allocObject();
  *(v31 + 16) = 34;
  sub_100106B7C();
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  sub_1000B7E4C();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1001063F8;
  *(v50 + 24) = v44;
  sub_1000B7E4C();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1001063F0;
  *(v51 + 24) = v50;
  sub_100080FB4(&qword_1003CE628);
  v52 = sub_100107388();
  *(v52 + 16) = xmmword_1002F0B70;
  *(v52 + 32) = sub_1001063FC;
  *(v52 + 40) = v45;
  *(v52 + 48) = sub_1001063FC;
  *(v52 + 56) = v46;
  *(v52 + 64) = sub_10010620C;
  *(v52 + 72) = v48;
  *(v52 + 80) = sub_1001063FC;
  *(v52 + 88) = v31;
  *(v52 + 96) = sub_1001063FC;
  *(v52 + 104) = v49;
  *(v52 + 112) = sub_10010620C;
  *(v52 + 120) = v51;
  swift_setDeallocating();
  v53 = v52;
  sub_10009E36C();
  if (os_log_type_enabled(a10, BYTE4(a11)))
  {
    sub_10008E688();
    sub_100106F40();
    *v46 = 136446466;
    sub_10009F0F8();
    a15 = v54;
    a16 = v56;
    a17 = v55;
    v57._countAndFlagsBits = a9._countAndFlagsBits;
    v57._object = v34;
    String.append(_:)(v57);
    sub_10009F134();
    v53 = a16;
    sub_100080210(a15, a16, &a17);
    sub_1000C44AC();

    *(v46 + 4) = v52;
    sub_100107300();
    sub_100080210(a9._object, v41, &a17);
    sub_1000B047C();
    *(v46 + 14) = a16;
    sub_1001076B8(&_mh_execute_header, a10, BYTE4(a11), "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_100106E50();
  }

  else
  {
  }

  v29 = v78;
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  if (qword_1003CBD08 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    [*(v30 + 1968) setParameter:v53 forKey:qword_1003CE4D8];

LABEL_13:
    v58 = sub_1001056B8(*(v30 + 1792), &selRef_additionalBuyParams);
    if (!v58)
    {
      break;
    }

    v53 = v58;
    v59 = 0;
    v60 = v58 + 64;
    sub_1001066B4();
    sub_10010728C();
    v62 = v61 >> 6;
    if (!v31)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_20:
      sub_100106B34();
      sub_100107890(v64);
      sub_100107F64();
LABEL_21:
      sub_1001077B4();
      if (!v29)
      {
        v67 = *(v30 + 2096);

        goto LABEL_27;
      }

      sub_100107598();
      sub_100080F0C(v30 + 1040);
      v65 = String._bridgeToObjectiveC()();

      sub_1001079E8(v66, "setParameter:forKey:");

      swift_unknownObjectRelease();
    }

    while (v31);
LABEL_16:
    while (1)
    {
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v63 >= v62)
      {
        sub_100107B38();
        goto LABEL_21;
      }

      v31 = *(v60 + 8 * v63);
      ++v59;
      if (v31)
      {
        v59 = v63;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_27:
  sub_100106FA4();
  v79 = v68;

  sub_10009F198();
  sub_100107C68();

  return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9._countAndFlagsBits, a9._object, a10, a11, a12, a13, v79, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1000FB8BC()
{
  v310 = v0;
  v302 = (v0 + 624);
  v299 = (v0 + 1232);
  sub_100107AA8();
  v1 = *(v0 + 2016);
  v2 = *(v0 + 2024);
  swift_willThrow();
  v280 = v2;

  sub_10008E5A4(0, &qword_1003CE638);
  v247 = NSArray.init(arrayLiteral:)();
  NSArray.makeIterator()();
  sub_1000C446C();
  v303 = v3;
  v297 = "allowedBuyParams";
  *(&v4 + 1) = 12;
  v288 = xmmword_1002F0B70;
  *&v4 = 136446466;
  v301 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        NSFastEnumerationIterator.next()();
        if (!*(v0 + 1416))
        {
          v74 = sub_100107B78();
          v75(v74);
          v76 = _swiftEmptyArrayStorage;
          goto LABEL_32;
        }

        sub_10008B5D0((v0 + 1392), (v0 + 1264));
        sub_100080F58(v0 + 1264, v0 + 1168);
        sub_100080FB4(&unk_1003CE640);
        if (sub_100107854())
        {
          break;
        }

LABEL_10:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v12 = sub_100107600();
        sub_10007EDA4(v12, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(49);
        *(v0 + 1656) = v307;
        *(v0 + 1664) = v308;
        sub_1001072C0();
        sub_100107DA4(v13);
        _print_unlocked<A, B>(_:_:)();
        v305 = *(v0 + 1656);
        v14 = *(v0 + 1664);
        v15 = [v1 logKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100107168();

        v16 = static os_log_type_t.error.getter();

        v17 = Logger.logObject.getter();

        if (os_log_type_enabled(v17, v16))
        {
          sub_10008E688();
          v18 = sub_100106C60();
          type metadata for Any = sub_100106D18(v18, v19, v20, v21, v22, v23, v24, v25, v247, v252, v257, v263, v268, v272, v275, v277, v280, v286, v288, *(&v288 + 1), v289, v290, v292, v293, v294, v295, v297, v299, v301).n128_u32[0];
          sub_100106448();
          v26._countAndFlagsBits = sub_1000C43E8();
          String.append(_:)(v26);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(&type metadata for Any + 4) = v1;
          sub_100106E04();
          v27 = sub_100080210(v305, v14, v309);

          *(&type metadata for Any + 14) = v27;
          _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", &type metadata for Any, 0x16u);
          swift_arrayDestroy();
          sub_1000AFFE8();
          sub_100081C28();
        }

        else
        {
        }

        sub_100080F0C(v0 + 1264);
      }

      v5 = *(v0 + 1736);
      sub_100107200();
      AnyHashable.init<A>(_:)();
      if (!*(v5 + 16) || (v6 = sub_100212CF4(v0 + 936), (v7 & 1) == 0))
      {

        sub_10008E550(v0 + 936);
        goto LABEL_10;
      }

      sub_100080F58(*(v5 + 56) + 32 * v6, v0 + 976);
      sub_10008E550(v0 + 936);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_10;
      }

      v8 = *(v0 + 1576);
      v1 = *(v0 + 1584);
      v9 = [*(v0 + 1792) client];
      v11 = *&v9[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v10 = *&v9[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

      *(v0 + 1640) = v11;
      *(v0 + 1648) = v10;
      *(v0 + 1480) = v8;
      *(v0 + 1488) = v1;
      sub_100106050();
      StringProtocol.caseInsensitiveCompare<A>(_:)();
      sub_100106CE0();

      if (v0 == -1640)
      {
        break;
      }

      sub_100080F0C(v0 + 1264);
    }

    sub_1001072C0();
    MEMORY[0xFFFFFFFFFFFFFFB0] = v28 - 10;
    MEMORY[0xFFFFFFFFFFFFFFB8] = v303;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v29 = sub_100212CF4(-744), (v30 & 1) != 0))
    {
      v31 = v299;
      sub_100080F58(*(v5 + 56) + 32 * v29, v299);
    }

    else
    {
      v31 = v299;
      *v299 = 0u;
      v299[1] = 0u;
    }

    sub_10008E550(-744);
    if (MEMORY[0xFFFFFFFFFFFFFE80])
    {
      break;
    }

    sub_1000AF25C(v31, &unk_1003CCB70);
LABEL_25:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v32 = sub_100107660();
    sub_10007EDA4(v32, qword_1003F26C8);
    sub_100106C30();
    _StringGuts.grow(_:)(61);
    sub_1001072C0();
    v34._countAndFlagsBits = v33 + 32;
    v34._object = (v297 | 0x8000000000000000);
    String.append(_:)(v34);
    v35._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 46;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = [v10 logKey];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    LODWORD(v293) = static os_log_type_t.error.getter();
    sub_1000B7E4C();
    v41 = swift_allocObject();
    v290 = v38;
    *(v41 + 16) = v38;
    *(v41 + 24) = v40;
    sub_1000B7E4C();
    v42 = swift_allocObject();
    v292 = v307;
    *(v42 + 16) = v307;
    *(v42 + 24) = v308;

    v295 = v308;

    v294 = Logger.logObject.getter();
    sub_100106B7C();
    v43 = swift_allocObject();
    sub_100107650(v43);
    sub_100106B7C();
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    sub_1000B7E4C();
    v45 = swift_allocObject();
    sub_100107004(v45);
    sub_1000B7E4C();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1001063F0;
    *(v46 + 24) = v45;
    sub_100106B7C();
    v1 = swift_allocObject();
    v1[16] = v40;
    sub_100106B7C();
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v48 = v293;
    sub_1000B7E4C();
    swift_allocObject();
    sub_100106FEC();
    *(v49 + 16) = v50;
    *(v49 + 24) = v42;
    sub_1000B7E4C();
    v51 = swift_allocObject();
    sub_100106FD4(v51);
    sub_100080FB4(&qword_1003CE628);
    v52 = sub_100107388();
    sub_100106DE0(v52, v53, v54, v55, v56, v57, v58, v59, v247, v252, v257, v263, v268, v272, v275, v277, v280, v286, v60);
    v61[6] = sub_1001063FC;
    v61[7] = v44;
    v61[8] = sub_10010620C;
    v61[9] = v46;
    v61[10] = sub_1001063FC;
    v61[11] = v1;
    v61[12] = sub_1001063FC;
    v61[13] = v47;
    v62 = v294;
    v61[14] = sub_10010620C;
    v61[15] = v51;
    swift_setDeallocating();
    sub_10009E36C();
    if (sub_1001076EC())
    {
      v63 = sub_10008E688();
      v64 = sub_10008E670();
      *v63 = sub_100106D18(v64, v65, v66, v67, v68, v69, v70, v71, v247, v252, v257, v263, v268, v272, v275, v277, v280, v286, v288, *(&v288 + 1), v289, v290, v307, v293, v294, v308, v297, v299, v301).n128_u32[0];
      sub_100106448();
      v72._countAndFlagsBits = v290;
      v72._object = v40;
      String.append(_:)(v72);
      sub_10009F134();
      sub_100106D28();
      sub_1000C44AC();

      *(v63 + 4) = v1;
      sub_100107628();
      v1 = v295;
      sub_100080210(v292, v295, v73);
      sub_10001E11C();

      *(v63 + 14) = &type metadata for Any;
      sub_100107A58(&_mh_execute_header, v62, v48, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000AFFE8();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080F0C(-376);
  }

  sub_100080FB4(&unk_1003D0530);
  if ((sub_100107830() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_69:

  sub_100080F0C(v0 + 1264);
  v244 = sub_100107174();
  v245(v244);
  v76 = *(v0 + 1784);
LABEL_32:
  v291 = v76;
  v77 = 0;
  v78 = 0;
  v79 = *(v0 + 1976) + 64;
  v298 = *(v0 + 1976);
  sub_1001074CC();
  v82 = v81 & v80;
  v84 = (63 - v83) >> 6;
  v264 = "Ignoring custom buy param ";
  v269 = " because they are not allowed";
  sub_1000C446C();
  v258 = v85;
  sub_1000C446C();
  v278 = v86;
  v296 = v79;
  v300 = v84;
  if (!v82)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v87 = v78;
LABEL_38:
    v88 = __clz(__rbit64(v82));
    v82 &= v82 - 1;
    sub_100107920(v88 | (v87 << 6));
    sub_100107F2C();
LABEL_39:
    v89 = *(v0 + 592);
    *v302 = *(v0 + 576);
    *(v0 + 640) = v89;
    *(v0 + 656) = *(v0 + 608);
    v90 = *(v0 + 632);
    v91 = *(v0 + 2008);
    if (!v90)
    {
      break;
    }

    v92 = *v302;
    sub_10008B5D0((v0 + 640), (v0 + 1296));
    sub_10008943C();
    v93 = String._bridgeToObjectiveC()();
    v94 = sub_1001077CC();
    v96 = [v94 v95];

    if (v96)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v97 = sub_100107600();
      v98 = sub_10007EDA4(v97, qword_1003F26C8);
      sub_100106C30();
      _StringGuts.grow(_:)(26);

      sub_1001072C0();
      v307 = v99 - 2;
      v308 = v278;
      v100._countAndFlagsBits = sub_10008943C();
      String.append(_:)(v100);
      v101 = v278;
      HIDWORD(v294) = HIDWORD(v307);
      v102 = [v93 logKey];
      v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = static os_log_type_t.info.getter();

      v106 = v98;
      v107 = Logger.logObject.getter();

      LODWORD(v293) = v105;
      if (sub_100107DF4())
      {
        sub_10008E688();
        v108 = sub_100106C60();
        *v79 = sub_10010715C(v108, v109, v110, v111, v112, v113, v114, v115, v247, v252, v258, v264, v269, v272, v275, v278, v280, v286, v288, *(&v288 + 1), v289, v291, v292, v293, v307, v296, v298, v300, v301).n128_u32[0];
        sub_100106448();
        v116._countAndFlagsBits = v292;
        v116._object = v104;
        String.append(_:)(v116);
        sub_10009F134();
        v117 = sub_100106D28();

        *(v79 + 4) = v117;
        sub_100106E04();
        sub_100080210(v294, v101, v309);
        sub_1000B03CC();
        *(v79 + 14) = v106;
        _os_log_impl(&_mh_execute_header, v107, v293, "%{public}s%{public}s", v79, 0x16u);
        swift_arrayDestroy();
        sub_100081C28();
        v79 = v296;
        sub_100081C28();
      }

      else
      {
      }

      sub_1001073A0();
      v169 = String._bridgeToObjectiveC()();

      v170 = sub_1001077CC();
      [v170 v171];

      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 1608) = v92;
      *(v0 + 1616) = v90;
      v118 = swift_task_alloc();
      v126 = sub_100106CEC(v118, v119, v120, v121, v122, v123, v124, v125, v247, v252, v258, v264, v269, v272, v275, v278, v280, v286);
      v129 = sub_100178848(v126, v127, v128);

      v306 = v77;
      if (v129)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v130 = sub_100107660();
        sub_10007EDA4(v130, qword_1003F26C8);
        sub_1001072C0();
        sub_100107B00(v131, v248, v253, v259);
        v132._countAndFlagsBits = sub_10008943C();
        String.append(_:)(v132);
        v133 = [v77 logKey];
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        LODWORD(v292) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v137 = swift_allocObject();
        v274 = v134;
        *(v137 + 16) = v134;
        *(v137 + 24) = v136;
        sub_1000B7E4C();
        v138 = swift_allocObject();
        *(v138 + 16) = v307;
        *(v138 + 24) = v308;
        v294 = v136;

        HIDWORD(v293) = HIDWORD(v308);

        v281 = Logger.logObject.getter();
        sub_100106B7C();
        v139 = swift_allocObject();
        sub_100107650(v139);
        sub_100106B7C();
        v140 = swift_allocObject();
        sub_1001072E8(v140);
        sub_1000B7E4C();
        v141 = swift_allocObject();
        *(v141 + 16) = sub_1001063F4;
        *(v141 + 24) = v137;
        sub_1000B7E4C();
        v142 = swift_allocObject();
        *(v142 + 16) = sub_1001063F0;
        *(v142 + 24) = v141;
        sub_100106B7C();
        v143 = swift_allocObject();
        *(v143 + 16) = v136;
        sub_100106B7C();
        v144 = swift_allocObject();
        sub_1001072E8(v144);
        sub_1000B7E4C();
        v145 = swift_allocObject();
        *(v145 + 16) = sub_1001063F8;
        *(v145 + 24) = v138;
        sub_1000B7E4C();
        v146 = swift_allocObject();
        *(v146 + 16) = sub_1001063F0;
        *(v146 + 24) = v145;
        sub_100080FB4(&qword_1003CE628);
        v147 = sub_100107388();
        sub_100106E6C(v147, v148, v149, v150, v151, v152, v153, v154, v249, v254, v260, v265, v270, v274, v307, v279, v281, v287, v155);
        v156[6] = sub_1001063FC;
        v156[7] = v140;
        v156[8] = sub_10010620C;
        v156[9] = v142;
        v156[10] = sub_1001063FC;
        v156[11] = v143;
        v157 = v282;
        v156[12] = sub_1001063FC;
        v156[13] = v144;
        v156[14] = sub_10010620C;
        v156[15] = v146;
        v158 = v292;
        swift_setDeallocating();
        sub_10009E36C();
        if (os_log_type_enabled(v282, v292))
        {
          v159 = sub_10008E688();
          v160 = sub_10008E670();
          *v159 = sub_10010715C(v160, v161, v162, v163, v164, v165, v166, v167, v247, v252, v258, v264, v269, v272, v275, v278, v282, v286, v288, *(&v288 + 1), v289, v291, v292, v308, v294, v296, v298, v300, v301).n128_u32[0];
          sub_100106448();
          v168._countAndFlagsBits = v272;
          v168._object = v294;
          String.append(_:)(v168);
          sub_10009F134();
          sub_100106D28();
          sub_10001E104();

          *(v159 + 4) = v147;
          *(v159 + 12) = 2082;
          sub_100080210(v275, v293, v309);
          sub_100106CE0();

          *(v159 + 14) = v147;
          _os_log_impl(&_mh_execute_header, v157, v158, "%{public}s%{public}s", v159, 0x16u);
          swift_arrayDestroy();
          sub_100081C28();
          sub_100106D44();
        }

        else
        {
        }

        v77 = v306;
        v79 = v296;
        sub_1001073A0();
        v229 = String._bridgeToObjectiveC()();

        v230 = sub_1001077CC();
        [v230 v231];

        swift_unknownObjectRelease();
        v280 = v306;
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v172 = sub_100107660();
        sub_10007EDA4(v172, qword_1003F26C8);
        v173 = sub_1000800E8(54);
        sub_100107678(v173, v174, v175, v176, v177, v178, v179, v180, v248, v253, v259, v265, v270);
        v181._countAndFlagsBits = sub_10008943C();
        String.append(_:)(v181);

        sub_100107CA4(v182, v183, v184, v185, v186, v187, v188, v189, v250, v255, v261, v266);
        v190 = [v77 logKey];
        v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v193 = v192;

        LODWORD(v294) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v194 = swift_allocObject();
        v283 = v191;
        *(v194 + 16) = v191;
        *(v194 + 24) = v193;
        sub_1000B7E4C();
        v195 = swift_allocObject();
        HIDWORD(v292) = HIDWORD(v307);
        *(v195 + 16) = v307;
        *(v195 + 24) = v308;
        v304 = v193;

        v293 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v196 = swift_allocObject();
        sub_1001072E8(v196);
        sub_1000B7E4C();
        v197 = swift_allocObject();
        *(v197 + 16) = sub_1001063F4;
        *(v197 + 24) = v194;
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010701C();
        *(v198 + 16) = v199;
        *(v198 + 24) = v197;
        sub_100106B7C();
        v200 = swift_allocObject();
        *(v200 + 16) = 34;
        sub_100106B7C();
        v201 = swift_allocObject();
        sub_1001072E8(v201);
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010704C();
        *(v202 + 16) = v203;
        *(v202 + 24) = v195;
        sub_1000B7E4C();
        v204 = swift_allocObject();
        sub_100106F74(v204);
        sub_100080FB4(&qword_1003CE628);
        v205 = sub_100107388();
        sub_100106E10(v205, v206, v207, v208, v209, v210, v211, v212, v251, v256, v262, v267, v271, v273, v276, v279, v283, v287, v213);
        v214[6] = sub_1001063FC;
        v214[7] = v196;
        v214[8] = sub_10010620C;
        v214[9] = v307;
        sub_100106F5C();
        v215[10] = v216;
        v215[11] = v200;
        v217 = v293;
        v215[12] = sub_1001063FC;
        v215[13] = v201;
        v215[14] = sub_10010620C;
        v215[15] = v204;
        swift_setDeallocating();
        sub_10009E36C();
        if (sub_100107DF4())
        {
          v218 = sub_10008E688();
          v219 = sub_10008E670();
          *v218 = sub_10010715C(v219, v220, v221, v222, v223, v224, v225, v226, v247, v252, v258, v264, v269, v272, v275, v278, v284, v286, v288, *(&v288 + 1), v289, v291, v307, v293, v294, v296, v298, v300, v301).n128_u32[0];
          sub_100106448();
          v227._countAndFlagsBits = v285;
          v227._object = v304;
          String.append(_:)(v227);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v218 + 4) = 34;
          sub_100107628();
          sub_100080210(v292, v308, v228);
          sub_10001E11C();

          *(v218 + 14) = 34;
          sub_100107A58(&_mh_execute_header, v217, v307, "%{public}s%{public}s");
          sub_1000B0048();
          sub_1000B0080();
          sub_100081C28();
        }

        else
        {
        }

        v77 = v306;
        v280 = v306;
        v79 = v296;
      }
    }

    v84 = v300;
    sub_100080F0C(v0 + 1296);
    if (!v82)
    {
LABEL_34:
      while (1)
      {
        v87 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v87 >= v84)
        {
          v82 = 0;
          *(v0 + 592) = 0u;
          *(v0 + 608) = 0u;
          *(v0 + 576) = 0u;
          goto LABEL_39;
        }

        v82 = *(v79 + 8 * v87);
        ++v78;
        if (v82)
        {
          v78 = v87;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_69;
    }
  }

  *(v0 + 2032) = v77;
  v232 = [*(v0 + 1792) client];
  v233 = sub_1001A7AB4(v232);

  if (qword_1003CC028 != -1)
  {
    sub_100106700();
  }

  sub_100107AE0();
  sub_1001074E8([v233 arrayForKey:qword_1003F2890]);
  sub_1001073D8();
  *(v0 + 16) = v234;
  *(v0 + 56) = v252;
  sub_1001066CC();
  v235 = sub_100080FB4(&qword_1003CE620);
  sub_10010647C(v235);
  sub_100107AD4(COERCE_DOUBLE(1107296256));
  sub_10010649C();
  sub_100107944(v236, "valueWithCompletion:");

  return _swift_continuation_await(v232, v237, v238, v239, v240, v241, v242, v243);
}

uint64_t *sub_1000FF948(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_10023FCD4(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_10023FCD8(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000FF9E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  v7 = sub_100105324(a1, v6);
  if (!v3)
  {
    __chkstk_darwin(v7);
    sub_10010553C(sub_100106158, v9, v8 & 1, a3);
  }
}

uint64_t sub_1000FFB34(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000FFBF0;

  return sub_1000F3FA0();
}

uint64_t sub_1000FFBF0()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = sub_1001073F0();
  v9(v8);
  _Block_release(v4);

  sub_100098AC4();

  return v10();
}

uint64_t sub_1000FFD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100080FB4(&unk_1003CE2B0);
  v8 = sub_1000B01B0(v7);
  __chkstk_darwin(v8);
  type metadata accessor for TaskPriority();
  sub_1000B0690();
  sub_100081DFC(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a3;
  v13[6] = a1;
  v13[7] = a2;
  v14 = v3;

  sub_100165CBC();
}

uint64_t sub_1000FFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[51] = a6;
  v7[52] = a7;
  v7[49] = a4;
  v7[50] = a5;
  type metadata accessor for Date();
  v7[53] = swift_task_alloc();
  v8 = type metadata accessor for PurchaseIntake.InAppPurchase();
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  sub_100080FB4(&unk_1003CE5D8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v9 = type metadata accessor for PurchaseIntake.InAppPurchase.InAppPurchaseType();
  v7[59] = v9;
  v7[60] = *(v9 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return _swift_task_switch(sub_100100024, 0, 0);
}

uint64_t sub_100100024()
{
  v58 = v1;
  v3 = *(v1 + 504);
  v4 = [*(v1 + 392) client];
  sub_100107704(v4, v5, v6, v7, v8, v9, v10, v11, v49, v53, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v1);

  v12 = sub_100080FB4(&qword_1003CCB50);
  sub_100106BC8(v12, v13, v14, v12);
  sub_100106430();
  sub_100105FA4(v3, v15);
  v16 = sub_100107510();
  sub_100105FA4(v16, v17);
  if ((v0 & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v23 = sub_100107538();
    sub_1000B01C8(v23, qword_1003F26C8);
    v24 = [v0 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.debug.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_15;
    }

    sub_1000B0064();
    sub_1000AFF64();
    sub_100106A78(4.8752e-34);
    sub_1001078E4(v25, v26, v27, v28, v29, v30, v31, v32, v50, v54, v57[0]);
    sub_10009F134();
    sub_100080210(v51, v55, v57);
    sub_1000B02F8();
    sub_1000AFD94();
    v33 = 0xD000000000000045;
    v34 = v2 | 0x8000000000000000;
    goto LABEL_14;
  }

  v18 = [*(v1 + 392) client];
  v19 = *&v18[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

  if (v19)
  {
    v20 = [*(v1 + 392) client];
    v21 = *&v20[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

    v22 = swift_task_alloc();
    *(v1 + 520) = v22;
    *v22 = v1;
    v22[1] = sub_100100414;

    return static PurchaseIntake.isEligibleForPurchaseProcessing(appItemID:)(v21);
  }

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v35 = sub_100107538();
  sub_1000B01C8(v35, qword_1003F26C8);
  v36 = [&OBJC_IVAR____TtC9storekitd6Client_storeItemID logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100107638();
  static os_log_type_t.fault.getter();
  sub_1000B0374();
  Logger.logObject.getter();
  sub_1000B02A4();
  if (sub_1000B035C())
  {
    sub_1000B0064();
    sub_1000AFF64();
    sub_100106A78(4.8752e-34);
    sub_1001078E4(v37, v38, v39, v40, v41, v42, v43, v44, v50, v54, v57[0]);
    sub_10009F134();
    sub_100080210(v52, v56, v57);
    sub_1000B02F8();
    sub_1000AFD94();
    v34 = v2 | 0x8000000000000000;
    v33 = 0xD000000000000029;
LABEL_14:
    *(&selRef__appTransactionSyncWithRevision_forceAuth_ + 6) = sub_100080210(v33, v34, v57);
    sub_1000AFE74(&_mh_execute_header, v45, v46, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_1000AFFE8();
  }

LABEL_15:

  sub_100106CA0();

  sub_100098AC4();

  return v47();
}

uint64_t sub_100100414()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100100530()
{
  v241 = v3;
  if (*(v3 + 672) != 1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v10 = sub_100107538();
    sub_1000B01C8(v10, qword_1003F26C8);
    v11 = [v1 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.debug.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_1000B0064();
    v12 = sub_1000AFF64();
    v13 = sub_10010779C(v12);
    sub_100106A24(v13, v14, v15, v16, v17, v18, v19, v20, 4.8752e-34, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v222, v228, v234);
    sub_100106ED0();
    sub_100106EB4(v21, v22, v23, v24, v25, v26, v27, v28, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v223, v229, v235);
    sub_1000B02F8();
    sub_1000AFD94();
    v29 = 0xD000000000000039;
LABEL_17:
    v50 = v5 | 0x8000000000000000;
    goto LABEL_18;
  }

  sub_1001057D0(*(v3 + 392), &selRef_productKind);
  if (!v7)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v30 = sub_100107538();
    sub_1000B01C8(v30, qword_1003F26C8);
    v31 = [v1 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.fault.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_1000B0064();
    v32 = sub_1000AFF64();
    v33 = sub_10010779C(v32);
    sub_100106A24(v33, v34, v35, v36, v37, v38, v39, v40, 4.8752e-34, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v222, v228, v234);
    sub_100106ED0();
    sub_100106EB4(v41, v42, v43, v44, v45, v46, v47, v48, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v224, v230, v236);
    sub_1000B02F8();
    sub_1000AFD94();
    sub_1001074C0();
    v29 = v49 + 23;
    goto LABEL_17;
  }

  sub_100107BFC();
  v4 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
  v9 = v0 == 0x62616D75736E6F43 && v8 == 0xEA0000000000656CLL;
  v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
  if (v9)
  {
    goto LABEL_26;
  }

  if (sub_10010723C())
  {
    v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
LABEL_26:

    goto LABEL_27;
  }

  v53 = v0 == 0x736E6F432D6E6F4ELL && v1 == 0xEE00656C62616D75;
  if (v53 || (sub_10010723C() & 1) != 0)
  {
    v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.nonConsumable(_:);
    goto LABEL_26;
  }

  sub_1000B00A8();
  v139 = v0 == 0xD000000000000019 && v138 == v1;
  if (v139 || (sub_10010723C() & 1) != 0)
  {
    v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.nonRenewingSubscription(_:);
    goto LABEL_26;
  }

  sub_1000B00A8();
  v145 = v0 == 0xD00000000000001BLL && v144 == v1;
  if (v145 || (sub_10010723C() & 1) != 0 || ((sub_1000B00A8(), v0 == 0xD000000000000013) ? (v147 = v146 == v1) : (v147 = 0), v147 || (sub_10010723C() & 1) != 0 || ((sub_1000B00A8(), v0 == 0xD000000000000011) ? (v149 = v148 == v1) : (v149 = 0), v149)))
  {
    v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.autoRenewableSubscription(_:);
    goto LABEL_26;
  }

  v150 = sub_10010723C();

  if ((v150 & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v151 = sub_100107538();
    sub_1000B01C8(v151, qword_1003F26C8);
    v152 = [v1 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.fault.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_10008E688();
    v153 = sub_1000AFF64();
    v154 = sub_10010779C(v153);
    sub_100106A24(v154, v155, v156, v157, v158, v159, v160, v161, 4.8752e-34, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v222, v228, v234);
    sub_100106ED0();
    sub_100106EB4(v162, v163, v164, v165, v166, v167, v168, v169, v175, v180, v185, v190, v195, v200, v205, v210, v215, v221, v227, v233, v239);
    sub_1000B02F8();
    sub_1000AFD94();
    v29 = 0xD000000000000028;
    v50 = 0x8000000100317A40;
LABEL_18:
    *(v4 + 14) = sub_100080210(v29, v50, v240);
    sub_1000AFE74(&_mh_execute_header, v51, v52, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_1000AFFE8();
LABEL_19:

    goto LABEL_48;
  }

  v2 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.autoRenewableSubscription(_:);
LABEL_27:
  v54 = *(v3 + 400);
  v55 = *(*(v3 + 480) + 104);
  (v55)(*(v3 + 496), *v2, *(v3 + 472));
  sub_1001DA990(0x6563697270, 0xE500000000000000, v54, (v3 + 144));
  if (!*(v3 + 168))
  {
    v110 = v3 + 144;
LABEL_42:
    sub_1000AF25C(v110, &unk_1003CCB70);
    goto LABEL_43;
  }

  v54 = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v111 = sub_100107538();
    sub_1000B01C8(v111, qword_1003F26C8);
    v112 = [v54 logKey];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116 = static os_log_type_t.fault.getter();

    v117 = Logger.logObject.getter();

    v118 = os_log_type_enabled(v117, v116);
    v119 = *(v3 + 496);
    v121 = *(v3 + 472);
    v120 = *(v3 + 480);
    if (v118)
    {
      v122 = sub_10008E688();
      v240[0] = sub_10008E670();
      *v122 = 136446466;
      sub_10009F0F8();
      v232 = v123;
      v238 = v124;
      v125._countAndFlagsBits = v113;
      v125._object = v115;
      String.append(_:)(v125);
      sub_100106ED0();
      v134 = sub_100106EB4(v126, v127, v128, v129, v130, v131, v132, v133, v171, v176, v181, v186, v191, v196, v201, v206, v211, "type for purchase intake", v119, v232, v238);

      *(v122 + 4) = v134;
      *(v122 + 12) = 2082;
      sub_1001074C0();
      *(v122 + 14) = sub_100080210(v135 + 16, v220 | 0x8000000000000000, v240);
      _os_log_impl(&_mh_execute_header, v117, v116, "%{public}s%{public}s", v122, 0x16u);
      swift_arrayDestroy();
      sub_10008BF90();
      sub_10008BF3C();

      (*(v120 + 8))(v226, v121);
    }

    else
    {

      (*(v120 + 8))(v119, v121);
    }

LABEL_48:
    sub_100106CA0();

    sub_100098AC4();
    sub_100107450();

    __asm { BRAA            X1, X16 }
  }

  v56 = *(v3 + 400);
  *(v3 + 528) = *(v3 + 368);
  sub_1001DA990(0x79636E6572727563, 0xE800000000000000, v56, (v3 + 176));
  if (!*(v3 + 200))
  {
    v110 = v3 + 176;
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_43;
  }

  v57 = *(v3 + 480);
  v58 = *(v3 + 280);
  *(v3 + 536) = *(v3 + 272);
  *(v3 + 544) = v58;
  *(v3 + 552) = type metadata accessor for PurchaseIntake.InAppPurchase.OfferType();
  sub_1000B0690();
  sub_100081DFC(v59, v60, v61, v62);
  v63 = v57 + 104;
  v64 = sub_1000B04B8();
  v55(v64);
  sub_100105B48();
  sub_1000C44AC();
  v65 = sub_100107CE4();
  v66 = *(v57 + 8);
  *(v3 + 560) = v66;
  *(v3 + 568) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67 = sub_1000C4514();
  (v66)(v67);
  if (v65 & 1) != 0 || (v69 = sub_1000B04B8(), v55(v69), v70 = sub_100107CE4(), v71 = sub_1000C4514(), (v66)(v71), (v70))
  {
    v72 = *(v3 + 392);
    NSDecimal.init(_:)(v68, *(v3 + 528));
    sub_10010733C(v73, v74, v75);
    sub_1001070B8();
    if (([v72 quantity] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_1001071C0();
      v76 = sub_1001073E4();
      v77(v76);
      v63 = sub_1001057D0(v63, &selRef_subscriptionPeriod);
      v78 = sub_100105C8C(v6, v3 + 652, &unk_1003CE5D8);
      sub_100107180(v78, v79, v80, v81, v82, v83, v84, v85, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v222);
      if (qword_1003CBE58 == -1)
      {
LABEL_35:
        v86 = sub_100107538();
        sub_1000B01C8(v86, qword_1003F26C8);
        v87 = [v3 + 652 logKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100107638();
        static os_log_type_t.default.getter();
        sub_1000B0374();
        Logger.logObject.getter();
        sub_1000B02A4();
        if (sub_1000B035C())
        {
          sub_1000B0064();
          v88 = sub_1000AFF64();
          v89 = sub_10010779C(v88);
          sub_100106A24(v89, v90, v91, v92, v93, v94, v95, v96, 4.8752e-34, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v222, v228, v234);
          sub_100106ED0();
          sub_100106EB4(v97, v98, v99, v100, v101, v102, v103, v104, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v225, v231, v237);
          sub_1000B02F8();
          sub_1000AFD94();
          sub_1001074C0();
          *(v63 + 14) = sub_100080210(v105 + 24, v66 | 0x8000000000000000, v240);
          sub_1000AFE74(&_mh_execute_header, v106, v107, "%{public}s%{public}s");
          sub_1000B0010();
          sub_1000AFF34();
          sub_1000AFFE8();
        }

        v108 = swift_task_alloc();
        *(v3 + 624) = v108;
        *v108 = v3;
        sub_100106DB8(v108);
        sub_100107450();

        return static PurchaseIntake.processPurchase(_:appItemID:)();
      }
    }

    sub_1000B7CD0();
    swift_once();
    goto LABEL_35;
  }

  v140 = *(v3 + 392);
  sub_10008E5A4(0, &unk_1003CE5F0);
  *(v3 + 576) = [v140 client];
  v141 = swift_task_alloc();
  *(v3 + 584) = v141;
  *v141 = v3;
  v141[1] = sub_100101010;
  sub_100107450();

  return sub_100148CA8(v142);
}

uint64_t sub_100101010()
{
  sub_100098BB4();
  v2 = v1;
  v3 = *v0;
  sub_1000AFE64();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v0;
  sub_100098AB4();
  *v8 = v7;
  *(v3 + 592) = v2;

  v9 = swift_task_alloc();
  *(v3 + 600) = v9;
  *v9 = v7;
  v9[1] = sub_10010117C;

  return sub_1001495E8();
}

uint64_t sub_10010117C()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 608) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001012A4()
{
  sub_1000B061C();
  sub_1000B0004();
  v0[77] = String._bridgeToObjectiveC()();
  v0[2] = v0;
  v0[7] = v0 + 40;
  v0[3] = sub_1001013F8;
  v1 = swift_continuation_init();
  v0[17] = sub_100080FB4(&qword_1003CE600);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100102400;
  v0[13] = &unk_100387788;
  v0[14] = v1;
  v2 = sub_1000B04B8();
  [v2 v3];
  sub_1000B0518();

  return _swift_continuation_await(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001013F8()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001014F4()
{
  v157 = v1;
  if (!*(v1 + 328))
  {
    v6 = *(v1 + 616);

    v7 = 0;
LABEL_8:
    v144 = v7;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v9 = sub_100107538();
    sub_10007EDA4(v9, qword_1003F26C8);
    v10 = [v6 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107B60();

    v11 = static os_log_type_t.fault.getter();

    v12 = Logger.logObject.getter();

    v13 = sub_100107DF4();
    v14 = *(v1 + 592);
    v15 = *(v1 + 568);
    v16 = *(v1 + 560);
    v17 = *(v1 + 464);
    v133 = *(v1 + 472);
    v138 = *(v1 + 496);
    if (v13)
    {
      sub_10008E688();
      v18 = sub_100106C60();
      sub_100107BF0(v18);
      sub_100106A14(4.8752e-34);
      v149 = v19;
      v153 = v20;
      v21._countAndFlagsBits = v2;
      v21._object = v0;
      String.append(_:)(v21);
      sub_100106ED0();
      sub_100106EB4(v22, v23, v24, v25, v26, v27, v28, v29, v113, v115, v117, v119, v121, "v16@?0@NSString8", v15, v16, v133, v138, v144, v149, v153);
      sub_1001076A0();
      sub_100106C10();
      sub_1001074C0();
      *(v4 + 14) = sub_100080210(v30 + 37, v124 | 0x8000000000000000, v156);
      sub_100106CC4(&_mh_execute_header, v31, v11, "%{public}s%{public}s");
      sub_10010709C();
      sub_100106D44();
      sub_1000B0080();

      sub_1000AF25C(v17, &unk_1003CE5D8);
      v130(v139, v134);
    }

    else
    {

      sub_1000AF25C(v17, &unk_1003CE5D8);
      v16(v138, v133);
    }

    goto LABEL_14;
  }

  v5 = *(v1 + 320);

  sub_1001073F0();
  String._bridgeToObjectiveC()();
  sub_1000C44AC();

  *(v1 + 384) = 0;
  v6 = sub_100027B30(v5, v1 + 384);

  v7 = *(v1 + 384);
  if (!v6)
  {
    v6 = *(v1 + 544);
    v8 = v7;
    sub_1000C44AC();
    goto LABEL_7;
  }

  v0 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v7;

  if (v7)
  {

LABEL_7:

    goto LABEL_8;
  }

  sub_1001DA990(0x49746375646F7270, 0xE900000000000064, v0, (v1 + 208));
  if (!*(v1 + 232))
  {

    sub_1000AF25C(v1 + 208, &unk_1003CCB70);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

LABEL_26:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v41 = sub_100107538();
    sub_10007EDA4(v41, qword_1003F26C8);
    v42 = [v6 logKey];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = static os_log_type_t.default.getter();

    v47 = Logger.logObject.getter();

    v48 = os_log_type_enabled(v47, v46);
    v49 = *(v1 + 592);
    v50 = *(v1 + 568);
    v51 = *(v1 + 560);
    v52 = *(v1 + 464);
    v140 = *(v1 + 472);
    v145 = *(v1 + 496);
    if (v48)
    {
      sub_10008E688();
      v156[0] = sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      v150 = v53;
      v154 = v54;
      v55._countAndFlagsBits = v43;
      v55._object = v45;
      String.append(_:)(v55);
      sub_100106ED0();
      sub_100106EB4(v56, v57, v58, v59, v60, v61, v62, v63, v113, v115, v117, v119, v121, v123, "bution purchase intake", v50, v51, v140, v145, v150, v154);
      sub_10001E104();

      *(v51 + 4) = v43;
      sub_100107150();
      sub_1001074C0();
      *(v51 + 14) = sub_100080210(v64 + 45, v127 | 0x8000000000000000, v156);
      sub_100106BA8(&_mh_execute_header, v65, v66, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();

      sub_1000AF25C(v52, &unk_1003CE5D8);
      v135(v146, v141);
    }

    else
    {

      sub_1000AF25C(v52, &unk_1003CE5D8);
      (v51)(v145, v140);
    }

LABEL_14:
    sub_100106CA0();

    sub_100098AC4();
    sub_100107450();

    __asm { BRAA            X1, X16 }
  }

  v34 = *(v1 + 336);
  v6 = *(v1 + 344);
  v35 = [*(v1 + 392) productIdentifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v34 == v36 && v6 == v38)
  {
  }

  else
  {
    sub_1001073F0();
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_1001DA990(0xD000000000000011, 0x8000000100317B70, v0, (v1 + 240));

  if (!*(v1 + 264))
  {

    sub_1000AF25C(v1 + 240, &unk_1003CCB70);
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_45;
  }

  v36 = *(v1 + 592);
  v67 = *(v1 + 464);
  if (*(v1 + 352) == 0x4952545F45455246 && *(v1 + 360) == 0xEA00000000004C41)
  {

    sub_1000AF25C(v67, &unk_1003CE5D8);
    goto LABEL_43;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1000AF25C(v67, &unk_1003CE5D8);
  if (v69)
  {
LABEL_43:
    v70 = *(v1 + 552);
    v71 = *(v1 + 464);
    v72 = &enum case for PurchaseIntake.InAppPurchase.OfferType.freeTrial(_:);
    goto LABEL_44;
  }

  v70 = *(v1 + 552);
  v71 = *(v1 + 464);
  v72 = &enum case for PurchaseIntake.InAppPurchase.OfferType.discounted(_:);
LABEL_44:
  (*(*(v70 - 8) + 104))(v71, *v72, v70);
  sub_100081DFC(v71, 0, 1, v70);
LABEL_45:
  v74 = *(v1 + 392);
  NSDecimal.init(_:)(v73, *(v1 + 528));
  sub_10010733C(v75, v76, v77);
  sub_1001070B8();
  if (([v74 quantity] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001071C0();
    v78 = sub_1001073E4();
    v79(v78);
    v36 = sub_1001057D0(v36, &selRef_subscriptionPeriod);
    v80 = sub_100105C8C(v4, v1 + 652, &unk_1003CE5D8);
    sub_100107180(v80, v81, v82, v83, v84, v85, v86, v87, v113, v115, v117, v119, v121, v123, v126, v129, v132, v137, v143);
    if (qword_1003CBE58 == -1)
    {
      goto LABEL_47;
    }
  }

  sub_1000B7CD0();
  swift_once();
LABEL_47:
  v88 = sub_100107538();
  sub_1000B01C8(v88, qword_1003F26C8);
  v89 = [v1 + 652 logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100107638();
  static os_log_type_t.default.getter();
  sub_1000B0374();
  Logger.logObject.getter();
  sub_1000B02A4();
  if (sub_1000B035C())
  {
    sub_1000B0064();
    v90 = sub_1000AFF64();
    v91 = sub_10010779C(v90);
    sub_100106A24(v91, v92, v93, v94, v95, v96, v97, v98, 4.8752e-34, v113, v115, v117, v119, v121, v123, v126, v129, v132, v137, v143, v148, v152);
    sub_100106ED0();
    sub_100106EB4(v99, v100, v101, v102, v103, v104, v105, v106, v114, v116, v118, v120, v122, v125, v128, v131, v136, v142, v147, v151, v155);
    sub_1000B02F8();
    sub_1000AFD94();
    sub_1001074C0();
    *(v36 + 14) = sub_100080210(v107 + 24, v3 | 0x8000000000000000, v156);
    sub_1000AFE74(&_mh_execute_header, v108, v109, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
    sub_1000AFFE8();
  }

  v110 = swift_task_alloc();
  *(v1 + 624) = v110;
  *v110 = v1;
  sub_100106DB8(v110);
  sub_100107450();

  return static PurchaseIntake.processPurchase(_:appItemID:)();
}

uint64_t sub_100101E94()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100101FAC()
{
  sub_1000B02BC();
  v1 = v0[70];
  v2 = v0[58];
  (*(v0[55] + 8))(v0[56], v0[54]);
  sub_1000AF25C(v2, &unk_1003CE5D8);
  v3 = sub_100107174();
  v1(v3);
  sub_100106CA0();

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001020C4()
{
  v31 = v1;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v2 = v1[76];
  v3 = type metadata accessor for SKLogger();
  sub_1000B01C8(v3, qword_1003F26C8);
  _StringGuts.grow(_:)(45);
  v1[36] = 0;
  v1[37] = 0xE000000000000000;
  sub_1000B00A8();
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v4);
  v1[47] = v2;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v1[36];
  v5 = v1[37];
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v8 = v1[38];
  v7 = v1[39];
  v9 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  if (os_log_type_enabled(v0, v9))
  {
    sub_10008E688();
    sub_1000B002C();
    sub_1000AFD6C(4.8752e-34);
    v28 = v10;
    v29 = v12;
    v30 = v11;
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);
    sub_10009F134();
    sub_100080210(v28, v29, &v30);
    sub_100107144();

    *(v6 + 4) = v8;
    sub_100107150();
    sub_100080210(v6, v5, &v30);
    sub_1000B03CC();
    *(v6 + 14) = v29;
    sub_100107D64(&_mh_execute_header, v14, v15, "%{public}s%{public}s");
    sub_1000B0048();
    sub_1000B0080();
    sub_10008BF90();
  }

  else
  {
  }

  v1[77] = String._bridgeToObjectiveC()();
  v1[2] = v1;
  v1[7] = v1 + 40;
  v1[3] = sub_1001013F8;
  v16 = swift_continuation_init();
  v17 = sub_100080FB4(&qword_1003CE600);
  sub_10008BD44(v17);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  v1[12] = sub_100102400;
  v1[13] = &unk_100387788;
  v1[14] = v16;
  v18 = sub_1000B04B8();
  [v18 v19];

  return _swift_continuation_await(v1 + 2, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_100102400(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100086D24((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1000982A8(v3, v4, v6);
}

uint64_t InAppTransactionTask.purchase(_:handle:)()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for SKLogger();
  v1[12] = v4;
  sub_1000B01B0(v4);
  v1[13] = sub_1001078CC();
  v1[14] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

{
  sub_10008BE9C();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for SKLogger();
  v1[26] = v4;
  sub_1000B01B0(v4);
  v1[27] = sub_1001078CC();
  v1[28] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

{
  sub_10008BE9C();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v4);
  v1[28] = sub_1000B05D0();
  v5 = type metadata accessor for SKLogger();
  v1[29] = v5;
  sub_1000B01B0(v5);
  v1[30] = sub_1001078CC();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[33] = v6;
  sub_1000B046C(v6);
  v1[34] = v7;
  v1[35] = sub_1001078CC();
  v1[36] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100102594()
{
  sub_1001077D8();
  v87 = v0;
  v3 = [*(v0 + 88) dialogContext];
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    sub_10007EDA4(*(v0 + 96), qword_1003F26C8);
    sub_100106418();
    sub_100106178(v8, v5, v9);
    sub_100106A88();
    _StringGuts.grow(_:)(47);

    sub_1000C446C();
    v85 = 0xD00000000000002DLL;
    v86 = v10;
    *(v0 + 32) = sub_1001057D0(v7, &selRef_logUUID);
    *(v0 + 40) = v11;
    sub_100080FB4(&unk_1003CE550);
    v12._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v12);

    v13 = v86;
    v81 = v85;
    v14 = &selRef_domain;
    v15 = [v6 logKey];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    static os_log_type_t.default.getter();
    v19 = sub_100107A28();
    v20 = sub_100107A40(v19);
    v21 = *(v0 + 112);
    if (v20)
    {
      v22 = sub_10008E688();
      sub_10008E670();
      *v22 = 136446466;
      sub_10009F0F8();
      v84 = v23;
      v85 = v24;
      v86 = v25;
      sub_100107BD0();
      v26._countAndFlagsBits = v16;
      v26._object = v18;
      String.append(_:)(v26);
      sub_1000E3F28();
      sub_1000E3F4C(v27, v28, v29, v30, v31, v32, v33, v34, v77, v78, v81, v84, v85, v86);
      sub_10001E104();

      *(v22 + 4) = v16;
      *(v22 + 12) = 2082;
      sub_100080210(v82, v13, &v84);
      sub_1000B047C();
      *(v22 + 14) = v21;
      sub_100107A58(&_mh_execute_header, 0xD00000000000002ALL, v2, "%{public}s%{public}s");
      sub_100098BC0();
      v14 = &selRef_domain;
      sub_100081C28();
      sub_100081C28();

      sub_100106400();
      v36 = v79;
    }

    else
    {

      sub_100106400();
      v36 = v21;
    }

    sub_100105FA4(v36, v35);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v64 = *(v0 + 80);
    v65 = [*(v0 + 88) v14[328]];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    *(v0 + 128) = v68;
    *(v0 + 48) = v66;
    *(v0 + 56) = v68;
    v69 = swift_task_alloc();
    *(v0 + 136) = v69;
    *(v69 + 16) = v64;
    *(v69 + 24) = v4;
    v70 = swift_task_alloc();
    *(v0 + 144) = v70;
    v71 = sub_10008E5A4(0, &unk_1003CE560);
    *v70 = v0;
    v70[1] = sub_100102B00;
    v89 = 419;
    v90 = v71;
    sub_10009F1B8();

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v37 = *(v0 + 104);
    v38 = *(v0 + 88);
    v39 = *(v0 + 72);
    sub_10007EDA4(*(v0 + 96), qword_1003F26C8);
    sub_100106418();
    sub_100106178(v40, v37, v41);
    sub_100106A88();
    _StringGuts.grow(_:)(68);
    sub_100107504();
    v42._countAndFlagsBits = 0xD000000000000042;
    v42._object = 0x80000001003175F0;
    String.append(_:)(v42);
    *(v0 + 16) = sub_1001057D0(v39, &selRef_logUUID);
    *(v0 + 24) = v43;
    sub_100080FB4(&unk_1003CE550);
    v91._countAndFlagsBits = String.init<A>(describing:)();
    sub_1001077FC(v91);

    v44 = v85;
    v45 = [v38 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107908();
    static os_log_type_t.error.getter();
    v46 = sub_100107878();
    v47 = sub_1001079AC(v46);
    v48 = *(v0 + 104);
    if (v47)
    {
      sub_10008E688();
      sub_100106C40();
      *v85 = 136446466;
      sub_100106460();
      sub_100107994();
      sub_1000E3F28();
      sub_1000E3F4C(v49, v50, v51, v52, v53, v54, v55, v56, v77, v78, v80, v84, v85, v86);
      v57 = sub_1000B0494();
      sub_100106A50(v57, v58, v59);
      sub_1000B03CC();
      *(v44 + 14) = v48;
      sub_100106BA8(&_mh_execute_header, v60, v61, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();

      sub_100106400();
      v63 = v83;
    }

    else
    {

      sub_100106400();
      v63 = v48;
    }

    sub_100105FA4(v63, v62);
    sub_10008B5E0();
    v73 = sub_1000894A0();
    sub_100106D60(v73, v74);

    sub_100098AC4();

    return v75();
  }
}

uint64_t sub_100102B00()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 152) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100102C18()
{
  sub_100098BB4();
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_100102C98()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100102D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100102DA4;

  return sub_1000A53AC(a2, a3);
}

uint64_t sub_100102DA4()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100102ED4()
{
  **(v0 + 16) = *(v0 + 32);
  sub_100098AC4();
  return v1();
}

uint64_t sub_100102F24(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100106210;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t sub_100103544()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100103640()
{
  sub_100098BB4();
  swift_unknownObjectRelease();
  v1 = *(v0 + 176);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_1001036C0()
{
  sub_100098BB4();
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_10010375C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100103834;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t sub_100103834()
{
  sub_1000B02BC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;
  sub_100098AB4();
  *v10 = v9;

  v11 = *(v5 + 40);
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001E11C();

    (v11)[2](v11, 0, v4);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), v4, 0);
    _Block_release(v11);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100104118()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 312) = v3;
  }

  sub_100098AD0();
  sub_1000B0518();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100104950()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104A4C()
{
  v1 = *(v0 + 336);
  swift_unknownObjectRelease();
  v2 = *(v0 + 192);

  swift_unknownObjectRelease();

  sub_10009F198();

  return v3(v2);
}

uint64_t sub_100105040()
{
  sub_1000B02BC();
  v1 = *(v0 + 336);
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1001070E4();

  sub_100098AC4();

  return v2();
}

uint64_t sub_100105118(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  _Block_copy(aBlock);
  sub_100107144();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v5;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1001073F0();

  return sub_100224DF8(v13, v14);
}

uint64_t sub_10010519C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100106210;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t *sub_100105274(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
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

uint64_t sub_100105324(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16) - 1;
  while (1)
  {
    v5 = v4;
    if (v4 == -1)
    {

      return 0;
    }

    v6 = *(type metadata accessor for PurchaseIntentInternal() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = [a2 productIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v8 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 - 1;
    if (v15)
    {

      return v5;
    }
  }

  return v5;
}

unint64_t sub_100105474@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for PurchaseIntentInternal() - 8);
      return sub_100106178(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3, type metadata accessor for PurchaseIntentInternal);
    }
  }

  __break(1u);
  return result;
}

void *sub_10010553C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for PurchaseIntentInternal();
    return sub_100081DFC(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for PurchaseIntentInternal();
      return sub_100081DFC(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_1001055DC(void *a1)
{
  v1 = [a1 requestData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100105640(void *a1)
{
  v2 = [a1 dictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001056B8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_100105720()
{
  sub_100098BB4();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1000B00E0(v2);
  *v3 = v4;
  v5 = sub_1000AFF94(v3);

  return sub_100102D04(v5, v6, v1);
}

uint64_t sub_1001057D0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107BFC();
  }

  return sub_1001073F0();
}

uint64_t sub_10010582C()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001058C0()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100105954()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001059A4()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100105A38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100105A88()
{
  sub_1000B02BC();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v7 = sub_1000B00E0(v6);
  *v7 = v8;
  v9 = sub_1000AFF94(v7);

  return sub_1000FFE24(v9, v10, v1, v2, v3, v5, v4);
}

unint64_t sub_100105B48()
{
  result = qword_1003CE5E8;
  if (!qword_1003CE5E8)
  {
    type metadata accessor for PurchaseIntake.InAppPurchase.InAppPurchaseType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE5E8);
  }

  return result;
}

uint64_t sub_100105BA0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100105BE0()
{
  sub_100098BB4();
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_1000B00E0(v4);
  *v5 = v6;
  v5[1] = sub_1000AFC98;

  return sub_1000FFB34(v1, v3, v2);
}

uint64_t sub_100105C8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100080FB4(a3);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_100105CE8()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105D1C()
{
  type metadata accessor for Date();
  sub_100098B7C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100105DE0(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_1000B046C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v10);
  v15 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_100141DEC(a1, v1 + v8, v12, v13, v14, v16, v17);
}

uint64_t sub_100105EBC()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105F0C()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105FA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100106050()
{
  result = qword_1003CE630;
  if (!qword_1003CE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE630);
  }

  return result;
}

uint64_t sub_100106178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_10010647C(uint64_t result)
{
  *(v1 + 328) = result;
  *(v1 + 272) = _NSConcreteStackBlock;
  return result;
}

void sub_10010649C()
{
  v2[36] = sub_1000FF948;
  v2[37] = v0;
  v2[38] = v1;
}

uint64_t sub_1001064B4(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001064D0(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

__n128 *sub_1001064EC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1001063FC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_100106508(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106524(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106540(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10010655C(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106578(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106594(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065B0(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065CC(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065E8(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106604(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106634(uint64_t result)
{
  *(result + 96) = sub_1001063FC;
  *(result + 104) = v1;
  return result;
}

uint64_t sub_10010664C(uint64_t result)
{
  *(result + 80) = sub_1001063FC;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_10010667C(uint64_t result)
{
  *(result + 80) = sub_1001063FC;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_100106694()
{

  return swift_once();
}

uint64_t sub_1001066CC()
{
  *(v0 + 24) = sub_1000F5C74;

  return swift_continuation_init();
}

uint64_t sub_100106700()
{

  return swift_once();
}

uint64_t sub_100106720()
{

  return swift_once();
}

uint64_t sub_100106740()
{

  return swift_once();
}

uint64_t sub_100106760()
{

  return swift_once();
}

uint64_t sub_100106780()
{

  return swift_once();
}

uint64_t sub_1001067A0()
{

  return swift_once();
}

uint64_t sub_1001067C0()
{

  return swift_once();
}

uint64_t sub_1001067E0()
{

  return swift_once();
}

uint64_t sub_100106800()
{

  return swift_once();
}

uint64_t sub_100106820()
{

  return swift_once();
}

uint64_t sub_100106840()
{

  return swift_once();
}

uint64_t sub_100106860()
{

  return swift_once();
}

uint64_t sub_100106880()
{

  return swift_once();
}

uint64_t sub_1001068A0()
{

  return swift_once();
}

uint64_t sub_1001068C0()
{

  return swift_once();
}

uint64_t sub_1001068E0()
{

  return swift_once();
}

uint64_t sub_100106900()
{

  return swift_once();
}

uint64_t sub_100106920()
{

  return swift_once();
}

uint64_t sub_100106940()
{

  return swift_once();
}

uint64_t sub_100106960()
{

  return swift_once();
}

uint64_t sub_100106980()
{

  return swift_once();
}

uint64_t sub_1001069A0(uint64_t a1)
{
  *(a1 + 112) = sub_10010620C;
  *(a1 + 120) = v1;

  return swift_setDeallocating();
}

uint64_t sub_1001069C4(uint64_t a1)
{
  *(a1 + 112) = sub_10010620C;
  *(a1 + 120) = v1;

  return swift_setDeallocating();
}

void sub_1001069FC()
{
  v1[12] = sub_1000F2FD8;
  v1[13] = v0;
  v1[14] = v2;
}

void sub_100106A24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *v23 = a9;
  v26 = v24;
  v27 = v22;

  String.append(_:)(*&v26);
}

unint64_t sub_100106A50(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v6 + 4) = v5;
  *(v6 + 12) = 2082;

  return sub_100080210(v3, v4, va);
}

uint64_t sub_100106A98()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_100104950;

  return swift_continuation_init();
}

uint64_t sub_100106AD0()
{
  v2 = *(v0 + 224);

  return sub_100105FA4(v2, type metadata accessor for Client.Server);
}

uint64_t sub_100106B4C(uint64_t result)
{
  *(v1 - 104) = 91;
  *(v1 - 96) = 0xE100000000000000;
  *(v1 - 88) = result;
  return result;
}

void sub_100106B88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100106BA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100106BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100081DFC(v5, 1, 2, a4);

  return sub_1001A9B8C(v4, v5);
}

uint64_t sub_100106C40()
{

  return swift_slowAlloc();
}

uint64_t sub_100106C60()
{

  return swift_slowAlloc();
}

uint64_t sub_100106C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + a2);
  *(v2 + 2136) = *v4;
  *(v2 + 2144) = v4[1];
}

uint64_t sub_100106CA0()
{
}

void sub_100106CC4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

unint64_t sub_100106D28()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_100080210(v2, v3, (v0 - 96));
}

uint64_t sub_100106D44()
{
}

uint64_t sub_100106D60(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

__n128 sub_100106DE0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v19;
  return result;
}

__n128 sub_100106E10(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v19;
  return result;
}

uint64_t sub_100106E34()
{

  return swift_arrayDestroy();
}

uint64_t sub_100106E50()
{
}

__n128 sub_100106E6C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v19;
  return result;
}

uint64_t sub_100106E98(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_100106EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_100080210(a20, a21, (v21 - 88));
}

void sub_100106ED0()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100106EEC(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F08(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F24(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F40()
{

  return swift_slowAlloc();
}

uint64_t sub_100106F74(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F8C(uint64_t result)
{
  *(result + 64) = sub_10010620C;
  *(result + 72) = v1;
  return result;
}

uint64_t sub_100106FD4(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100107004(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_100107064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{

  return sub_100080210(a23, a24, (v24 - 88));
}

void sub_100107080()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_10010709C()
{

  return swift_arrayDestroy();
}

uint64_t sub_1001070E4()
{
}

void sub_100107104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100107124(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100107180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{

  return PurchaseIntake.InAppPurchase.init(price:quantity:currencyCode:purchaseDate:purchaseType:subscriptionDuration:offerType:)(a17 | (a16 << 32) | (a15 << 48), a19, a18, v20, a13, a14, v21, v24, v22, v23, v19);
}

uint64_t sub_1001071C0()
{

  return static Date.now.getter();
}

uint64_t sub_100107200()
{
  *(v0 + 1512) = 0x6449656C646E7562;
  *(v0 + 1520) = 0xE800000000000000;
  return v0 + 1512;
}

uint64_t sub_10010723C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10010729C(uint64_t a1, const char *a2)
{

  return [v6 a2];
}

id sub_100107324(void *a1)
{
  v4 = *(v2 + 1640);

  return [a1 v4];
}

void sub_10010733C(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 632) = a1;
  *(v4 + 640) = a2;
  *(v4 + 648) = a3;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  NSDecimalRound(v3, (v4 + 632), 3, NSRoundPlain);
}

id sub_100107370(void *a1)
{
  v4 = *(v2 + 1640);

  return [a1 v4];
}

uint64_t sub_100107388()
{

  return swift_allocObject();
}

uint64_t sub_1001073A0()
{
  sub_100086D24((v0 + 1296), *(v0 + 1320));

  return _bridgeAnythingToObjectiveC<A>(_:)();
}

unint64_t sub_1001073FC(uint64_t a1)
{

  return sub_100080210(a1, v1, (v2 - 88));
}

void sub_100107414(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 21;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  String.append(_:)(v3);
}