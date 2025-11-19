uint64_t sub_100018288()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000182A4()
{

  return type metadata accessor for ScheduleInfo.Metadata(0);
}

uint64_t sub_1000182E8()
{
  v1 = v0;
  v2 = *(v0 + 200);
  if (sub_100015CF8())
  {

    return sub_1001BA7F4();
  }

  else
  {
    v4 = AMSSetLogKeyIfNeeded();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_100268738 != -1)
    {
      sub_100004E84();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v8);
    v10 = *(v9 + 72);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for TreatmentStoreService();
    v17[0] = v1;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    v13 = static os_log_type_t.info.getter();
    sub_1000036B0(v13);

    sub_1000143D8();
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v5;
    v14[4] = v7;
    v18 = type metadata accessor for SyncTaskScheduler();
    v19 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v17);
    sub_100029448();

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000070D4();
    sub_100006070(v15, &qword_100271F20, &qword_1001EBE90);
    v16 = Promise.flatMap<A>(on:_:)();

    sub_100002C00(v17);
    return v16;
  }
}

uint64_t sub_1000185A8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v12[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a3;
  v8 = a3;
  v9 = Promise.__allocating_init()();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v12);
  return v9;
}

void sub_1000186DC(_BYTE *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_10001877C(v1[2], a1);
}

void sub_10001877C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = _convertErrorToNSError(_:)();
  if ([v5 code] != 204)
  {
    goto LABEL_8;
  }

  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
  }

  else
  {
LABEL_8:
    v27 = v2;
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(type metadata accessor for LogInterpolation() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v26 = type metadata accessor for TreatmentStoreService();
    v24 = a1;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v24);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD000000000000011;
    v25 = 0x8000000100203FE0;
    if (qword_100268848 != -1)
    {
      swift_once();
    }

    v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x6176206761622022;
    v17._object = 0xED0000203A65756CLL;
    String.append(_:)(v17);
    v18 = [v5 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v26 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v24, &qword_10026D350, &qword_1001E6050);
    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23);
  }

LABEL_14:
  *a2 = 0;
}

uint64_t sub_100018ADC(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v3 = *(type metadata accessor for LogInterpolation() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v13 = type metadata accessor for TreatmentStoreService();
    v12[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v12);
    LogInterpolation.init(stringLiteral:)();
    v6 = static os_log_type_t.info.getter();
    sub_1000036B0(v6);

    return sub_1001BA7F4();
  }

  else
  {
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = *(type metadata accessor for LogInterpolation() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v13 = type metadata accessor for TreatmentStoreService();
    v12[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v12);
    LogInterpolation.init(stringLiteral:)();
    v11 = static os_log_type_t.info.getter();
    sub_1000036B0(v11);

    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    return Promise.__allocating_init(value:)();
  }
}

uint64_t sub_100018DAC(_BYTE *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_100018ADC(a1, v1[2]);
}

void sub_100018DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] stringForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247FC8;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:4 valuePromise:v22];
  sub_100007470();
}

id sub_100018EDC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_optionalKeys);
  if (v7 && (sub_100179C40(a3, v7) & 1) != 0)
  {
    v8 = _convertErrorToNSError(_:)();
    v9 = [objc_opt_self() promiseWithError:v8];
  }

  else
  {
    v8 = [*(a2 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_secondaryBag) *a4];
    v9 = [v8 valuePromise];
  }

  v10 = v9;

  return v10;
}

uint64_t sub_100018FFC()
{
  sub_100012E04();
  sub_10001ADD4();
  if (!v0)
  {
    if (v1)
    {
      swift_beginAccess();
      sub_1000190C0();
      swift_endAccess();

      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

void sub_1000190C0()
{
  sub_100011690();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_100004E1C();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;

  sub_100019424(v4, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v20;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  sub_100029454();
}

uint64_t sub_1000191F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_100019424(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001958C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000191F0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1001C8EAC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10001958C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000575CC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000197E8()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (v0)
  {
    v9 = *(v3 + 216);

    return _swift_task_switch(sub_1001BCF8C, v9, 0);
  }

  else
  {
    sub_1000222B8();

    v10 = sub_100019DF8();

    return v11(v10);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLStatement.bind(parameters:)(Swift::OpaquePointer parameters)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v1 + 64);

    sub_1000199B0(v5, v1, v2, parameters._rawValue);
  }

  else
  {
    sub_10001ED34();
    v6 = sub_100007544();
    sub_10000BC48(v6, v7);
    swift_willThrow();
  }
}

void sub_1000199B0(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, uint64_t a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v9 || (v8 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v11);
    sub_10000BE84();
    *(v12 - 16) = sub_1001A6740;
    *(v12 - 8) = &v13;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    if (v4)
    {

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_100019EB4(a2, a3, a4);
  if (!v4)
  {
    objc_autoreleasePoolPop(v10);

    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v10);

LABEL_12:
  sub_100009EF8();
}

uint64_t sub_100019B40()
{
  v2 = *(*(v1 - 136) + 8);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_100019B54()
{

  return swift_once();
}

id sub_100019B80(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100019C3C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(a1 - 256);
  v5 = *(v2 - 296) | 7;
  v6 = *(v2 - 280);

  return swift_allocObject();
}

uint64_t *sub_100019C68()
{
  v2 = *(v0 - 152);
  *(v0 - 96) = *(v0 - 144);

  return sub_100017E64((v0 - 120));
}

BOOL sub_100019C84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18);
}

uint64_t sub_100019CA4()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100019CC4(uint64_t a1)
{

  return sub_10011F39C(a1, 0x13uLL, 2);
}

uint64_t sub_100019CE4()
{
  v1 = *sub_100003CA8((v0 + 16), *(v0 + 40));
}

void sub_100019D14()
{
  *(v1 - 216) = v0;

  sub_1000AC178(v1 - 184, v1 - 152);
}

unint64_t sub_100019D38()
{

  return sub_100012A94();
}

void sub_100019D68()
{
  v4 = *(v2 + 56);
  v5 = *(v4 + 8 * v0);
  *(v4 + 8 * v0) = v1;
}

uint64_t sub_100019D84()
{

  return _NativeDictionary._delete(at:)();
}

unint64_t sub_100019DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 64) = a2;
  *(v3 - 56) = a3;

  return sub_100017A08();
}

uint64_t sub_100019E0C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100019E50(uint64_t result)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 64);

    v3(v5, v1, v2);
  }

  return result;
}

void sub_100019EB4(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  SQLStatement.reset()();
  if (!v6)
  {
    sqlite3_clear_bindings(a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      v8 = (a3 + 48);
      v9 = 1;
      v10 = 2147483646;
      v11 = *(a1 + 16);
      v62 = a2;
      v59 = v11;
      do
      {
        v12 = *(v8 - 2);
        v13 = *(v8 - 1);
        v63 = v8 + 24;
        v64 = *v8;
        switch(*v8)
        {
          case 1:
            v31 = sub_100005618();
            v21 = sqlite3_bind_int64(v31, v32, v12);
            goto LABEL_16;
          case 2:
            v22 = sub_100005618();
            v21 = sqlite3_bind_double(v22, v23, v24);
            goto LABEL_16;
          case 3:
            v25 = qword_100268820;

            if (v25 != -1)
            {
              sub_10000706C();
              swift_once();
            }

            v26 = qword_100287918;
            sub_10000358C();
            String.utf8CString.getter();
            v27 = sub_100005618();
            v30 = sqlite3_bind_text(v27, v28, v29, -1, v26);

            v11 = v59;
            break;
          case 4:
            v19 = sub_100005618();
            v21 = sqlite3_bind_null(v19, v20);
LABEL_16:
            v30 = v21;
            break;
          default:
            switch(v13 >> 62)
            {
              case 1uLL:
                v57 = HIDWORD(v12);
                if (v12 > v12 >> 32)
                {
                  goto LABEL_41;
                }

                v58 = v12;
                v48 = sub_10000358C();
                sub_10003A5E0(v48, v49);
                v60 = v13;
                if (__DataStorage._bytes.getter() && __OFSUB__(v12, __DataStorage._offset.getter()))
                {
                  goto LABEL_47;
                }

                v35 = __DataStorage._length.getter();
                LODWORD(v44) = HIDWORD(v12) - v12;
                if (__OFSUB__(HIDWORD(v12), v12))
                {
                  goto LABEL_44;
                }

                if (qword_100268820 == -1)
                {
                  goto LABEL_33;
                }

                goto LABEL_38;
              case 2uLL:
                v57 = *(v12 + 16);

                v58 = v12;
                v33 = sub_10000358C();
                sub_10003A5E0(v33, v34);
                v60 = v13;
                if (__DataStorage._bytes.getter() && __OFSUB__(v57, __DataStorage._offset.getter()))
                {
                  goto LABEL_46;
                }

                v35 = __DataStorage._length.getter();
                v43 = *(v12 + 16);
                v42 = *(v12 + 24);
                v44 = v42 - v43;
                if (__OFSUB__(v42, v43))
                {
                  goto LABEL_42;
                }

                if (v44 < 0xFFFFFFFF80000000)
                {
                  goto LABEL_43;
                }

                if (v44 > 0x7FFFFFFF)
                {
                  goto LABEL_45;
                }

                if (qword_100268820 != -1)
                {
LABEL_38:
                  sub_10000706C();
                  v35 = swift_once();
                }

LABEL_33:
                v50 = sub_10000C1F8(v35, v36, v37, v38, qword_100287918, v39, v40, v41, v56, v57, v58, v59, v60, v62);
                v30 = sqlite3_bind_blob(v50, v51, v52, v44, v53);
                v47 = v12;
                v13 = v61;
LABEL_34:
                sub_10001CE30(v47, v13, 0);
                break;
              case 3uLL:
                if (qword_100268820 != -1)
                {
                  sub_10000706C();
                  swift_once();
                }

                v14 = sub_100005618();
                v17 = 0;
                goto LABEL_27;
              default:
                if (qword_100268820 != -1)
                {
                  sub_10000706C();
                  swift_once();
                }

                v14 = sub_100005618();
LABEL_27:
                v30 = sqlite3_bind_blob(v14, v15, v16, v17, v18);
                v45 = sub_10000358C();
                sub_10001CE30(v45, v46, 0);
                v47 = v12;
                goto LABEL_34;
            }

            break;
        }

        v11(v30, 0x61747320646E6962, 0xEE00746E656D6574);
        v54 = sub_10000358C();
        sub_10001CE30(v54, v55, v64);
        if (!v10)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
        }

        ++v9;
        --v10;
        --v7;
        v8 = v63;
      }

      while (v7);
    }
  }
}

void sub_10001A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019DB8(a1, a2, a3);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v6 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v10 = *(v5 + 72);
    __chkstk_darwin(v6);
    sub_10000BE84();
    *(v11 - 16) = sub_1001A6724;
    *(v11 - 8) = &v12;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    sub_10001A4EC();
    v8 = sqlite3_reset(v4);
    v9 = *(v3 + 24);
    (*(v3 + 16))(v8, 0x7473207465736572, 0xEF746E656D657461);
    objc_autoreleasePoolPop(v7);
  }

  sub_100009EF8();
}

uint64_t sub_10001A4EC()
{
  v1 = *(v0 + 64);

  sub_10001A54C(v2, v0);
}

uint64_t sub_10001A5A0(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);

    sub_10001D534();

    v3 = *(a1 + 32);
  }

  *(a1 + 32) = 0;
}

void sub_10001A61C(int a1, uint64_t a2, void *a3)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[2];
  sub_10001515C(a1, a2, a3, v4, v5);
}

void sub_10001A648(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v7 || (v6 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v9);
    sub_10000BE84();
    *(v10 - 16) = sub_100052DF0;
    *(v10 - 8) = &v11;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    sub_10001A768(a2, a3);
    objc_autoreleasePoolPop(v8);
  }

  sub_100009EF8();
}

void sub_10001A768(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_10001ED34();
    swift_allocError();
    *v10 = 0;
    goto LABEL_18;
  }

  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
    v17 = a2;
    *(a1 + 112) = 1;
    if (*(a1 + 32))
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }

    if (*(a1 + 32))
    {
      v7 = "BEGIN IMMEDIATE TRANSACTION";
    }

    else
    {
      v7 = "SQL Error with type: ";
    }

    v8 = String.utf8CString.getter();
    v9 = sqlite3_exec(v3, (v8 + 32), 0, 0, 0);

    sub_10001515C(v9, 0xD000000000000011, 0x8000000100202EA0, v6, v7 | 0x8000000000000000);

    if (v2)
    {
      *(a1 + 112) = 0;
LABEL_18:
      swift_willThrow();
      return;
    }

    a2 = v17;
  }

  a2();
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  if ((v5 & 1) == 0)
  {
    if (v11)
    {
      v12 = 0x4B4341424C4C4F52;
    }

    else
    {
      v12 = 0x3B54494D4D4F43;
    }

    if (v11)
    {
      v13 = 0xE90000000000003BLL;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    *(a1 + 112) = 0;
    v14 = String.utf8CString.getter();
    v15 = sqlite3_exec(v3, (v14 + 32), 0, 0, 0);

    sub_10001515C(v15, 0x6E61727420646E65, 0xEF6E6F6974636173, v12, v13);

    v16 = sqlite3_exec(v3, "PRAGMA incremental_vacuum(256)", 0, 0, 0);
    sub_10001515C(v16, 0xD000000000000010, 0x8000000100202EE0, 0xD00000000000001ELL, 0x8000000100202EC0);
  }

  if (v11)
  {
    goto LABEL_18;
  }
}

uint64_t sub_10001AA2C(uint64_t a1, sqlite3_stmt *a2, _BYTE *a3)
{
  sub_10001A4EC();
  v7 = sqlite3_step(a2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  result = v8();
  if (!v3)
  {
    result = sub_100016CE0(v7);
    *a3 = result;
  }

  return result;
}

void sub_10001AAC4()
{
  sub_10000C398();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v7 == v8)
  {
LABEL_7:
    sub_10000B860(v6);
    if (v3)
    {
      sub_10007B9A4(&qword_10026BFA8, &qword_1001EA300);
      v9 = sub_10001CD54();
      sub_100019BE0(v9);
      sub_100023D60(v10);
      if (v1)
      {
LABEL_9:
        sub_10003CD70(v0 + 32, v2, v3 + 32);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = &_swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
    sub_1000071C0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_10000AE9C();
  if (!v7)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_10001ABBC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = 0;
  v2[2] = a2;
  return v2;
}

void sub_10001ABEC()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v15[2] = v3;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v1;
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if (LOBYTE(v16[0]) == 2 || (v16[0] & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v13);
    sub_10000BE84();
    *(v14 - 16) = sub_1001A677C;
    *(v14 - 8) = v15;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    if (v0)
    {

      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v7 = objc_autoreleasePoolPush();
  sub_10001AED0();
  v8 = *(v4 + 32);
  if (!v8 || (v9 = String.lowercased()(), , v10 = sub_10001B0E4(v9._countAndFlagsBits, v9._object, v8), v12 = v11, , , (v12 & 1) != 0))
  {
LABEL_13:
    objc_autoreleasePoolPop(v7);

    goto LABEL_14;
  }

  sub_10001B138(v10, v16);
  if (!v0)
  {
    sub_10001D2C8(v16, v2);
    goto LABEL_13;
  }

  objc_autoreleasePoolPop(v7);

LABEL_15:
  sub_1000072EC();
  sub_100005B78();
}

uint64_t sub_10001ADD4()
{
  if (*(v0 + 16))
  {
    memset(v7, 0, sizeof(v7));
    v2 = *(v0 + 24);

    sub_10001ABEC();

    if (v1)
    {
      return sub_100002C5C(v7);
    }

    else
    {
      sub_100003C38(v7, &v6);
      sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v8 = 0;
        v9 = 0;
      }

      sub_100002C5C(v7);
      return v8;
    }
  }

  else
  {
    sub_10001ED34();
    v4 = sub_100007544();
    return sub_100006E04(v4, v5);
  }
}

void sub_10001AED0()
{
  if (*(v0 + 32))
  {
    return;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = sqlite3_column_count(v1);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
LABEL_17:
    v20 = *(v0 + 32);
    *(v0 + 32) = v2;

    return;
  }

  v4 = 0;
  v5 = v3;
  while (1)
  {
    if (!sqlite3_column_name(v1, v4))
    {
      goto LABEL_16;
    }

    String.init(cString:)();
    v6 = String.lowercased()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v2;
    v8 = sub_100012A94();
    v10 = *(v2 + 16);
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    sub_10007B9A4(&qword_10026AE68, &qword_1001E8618);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
    {
      v15 = sub_100012A94();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }

      v13 = v15;
    }

    if (v14)
    {

      v2 = v21;
      *(v21[7] + 8 * v13) = v4;
    }

    else
    {
      v2 = v21;
      v21[(v13 >> 6) + 8] |= 1 << v13;
      *(v21[6] + 16 * v13) = v6;
      *(v21[7] + 8 * v13) = v4;
      v17 = v21[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_21;
      }

      v21[2] = v19;
    }

LABEL_16:
    if (v5 == ++v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10001B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if (v4)
  {
    return sub_10000A864(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B138@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10000357C();

    sub_10001D058(v6, v3, a1, v10);

    sub_100003C38(v10, &v9);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    return sub_100002C5C(v10);
  }

  else
  {
    sub_10001ED34();
    sub_100007544();
    *v8 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10001B228()
{
}

uint64_t sub_10001B244(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for JSOnDeviceStorageDatabase();
}

uint64_t sub_10001B25C()
{

  return sub_10007B9A4(v0, v1);
}

uint64_t sub_10001B274()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10001B2C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v40._countAndFlagsBits = 0xD00000000000002FLL;
      v40._object = 0x8000000100203B50;
      SQLDatabase.execute(sql:parameters:)(v40, _swiftEmptyArrayStorage);
      if (!v41)
      {
        return 2;
      }
    }

    else if (a2)
    {
      sub_1001B80FC();
      swift_allocError();
      *v42 = 0;
      v42[1] = 0;
      swift_willThrow();
    }

    else
    {
      _StringGuts.grow(_:)(73);
      v2._countAndFlagsBits = 0x5420455441455243;
      v2._object = 0xED000020454C4241;
      String.append(_:)(v2);
      v3._countAndFlagsBits = 0x7361657261;
      v3._object = 0xE500000000000000;
      String.append(_:)(v3);
      v4._countAndFlagsBits = 10272;
      v4._object = 0xE200000000000000;
      String.append(_:)(v4);
      v5._countAndFlagsBits = 0x696669746E656469;
      v5._object = 0xEA00000000007265;
      String.append(_:)(v5);
      v6._countAndFlagsBits = 0xD000000000000013;
      v6._object = 0x80000001001F4F20;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 1953259891;
      v7._object = 0xE400000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = 0x202C5458455420;
      v8._object = 0xE700000000000000;
      String.append(_:)(v8);
      v9._object = 0x8000000100203990;
      v9._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 0x202C5458455420;
      v10._object = 0xE700000000000000;
      String.append(_:)(v10);
      v11._object = 0xEA00000000006E69;
      v11._countAndFlagsBits = 0x616D6F4464656573;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 0x202C5458455420;
      v12._object = 0xE700000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0x6570795464656573;
      v13._object = 0xE800000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0x295458455420;
      v14._object = 0xE600000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      SQLDatabase.execute(sql:parameters:)(v15, _swiftEmptyArrayStorage);

      if (!v16)
      {
        v17._countAndFlagsBits = 0xD00000000000003BLL;
        v17._object = 0x8000000100203B80;
        SQLDatabase.execute(sql:parameters:)(v17, _swiftEmptyArrayStorage);
        if (!v18)
        {
          v19._countAndFlagsBits = 0xD000000000000033;
          v19._object = 0x8000000100203BC0;
          SQLDatabase.execute(sql:parameters:)(v19, _swiftEmptyArrayStorage);
          if (!v20)
          {
            _StringGuts.grow(_:)(85);
            v21._countAndFlagsBits = 0x5420455441455243;
            v21._object = 0xED000020454C4241;
            String.append(_:)(v21);
            v22._countAndFlagsBits = 0x6E656D7461657274;
            v22._object = 0xEA00000000007374;
            String.append(_:)(v22);
            v23._countAndFlagsBits = 10272;
            v23._object = 0xE200000000000000;
            String.append(_:)(v23);
            v24._countAndFlagsBits = 0x444961657261;
            v24._object = 0xE600000000000000;
            String.append(_:)(v24);
            v25._countAndFlagsBits = 0x202C5458455420;
            v25._object = 0xE700000000000000;
            String.append(_:)(v25);
            v26._countAndFlagsBits = 0x614D74656B637562;
            v26._object = 0xE900000000000078;
            String.append(_:)(v26);
            v27._countAndFlagsBits = 0x52454745544E4920;
            v27._object = 0xEA0000000000202CLL;
            String.append(_:)(v27);
            v28._countAndFlagsBits = 0x694D74656B637562;
            v28._object = 0xE90000000000006ELL;
            String.append(_:)(v28);
            v29._countAndFlagsBits = 0x52454745544E4920;
            v29._object = 0xEA0000000000202CLL;
            String.append(_:)(v29);
            v30._countAndFlagsBits = 0x65746144646E65;
            v30._object = 0xE700000000000000;
            String.append(_:)(v30);
            v31._countAndFlagsBits = 0x202C4C41455220;
            v31._object = 0xE700000000000000;
            String.append(_:)(v31);
            v32._countAndFlagsBits = 0x696669746E656469;
            v32._object = 0xEA00000000007265;
            String.append(_:)(v32);
            v33._countAndFlagsBits = 0x202C5458455420;
            v33._object = 0xE700000000000000;
            String.append(_:)(v33);
            v34._countAndFlagsBits = 0x7461447472617473;
            v34._object = 0xE900000000000065;
            String.append(_:)(v34);
            v35._countAndFlagsBits = 0x202C4C41455220;
            v35._object = 0xE700000000000000;
            String.append(_:)(v35);
            v36._countAndFlagsBits = 0x6F726665726F7473;
            v36._object = 0xEA0000000000746ELL;
            String.append(_:)(v36);
            v37._countAndFlagsBits = 0x295458455420;
            v37._object = 0xE600000000000000;
            String.append(_:)(v37);
            v38._countAndFlagsBits = 0;
            v38._object = 0xE000000000000000;
            SQLDatabase.execute(sql:parameters:)(v38, _swiftEmptyArrayStorage);

            if (!v39)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return a2;
}

uint64_t sub_10001B7D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  if (*(a1 + 64))
  {
    v31 = *(a1 + 64);
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for SQLDatabase();
    v32 = a1;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v32);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x8000000100202BE0;
    v12._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v13 = *(a1 + 32) == 0;
    v14 = 0x6E6F646165722820;
    if (!*(a1 + 32))
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    v34 = &type metadata for String;
    if (!v13)
    {
      v15 = 0xEB0000000029796CLL;
    }

    v32 = v14;
    v33 = v15;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 8250;
    v16._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v34 = &type metadata for String;
    v32 = v18;
    v33 = v17;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    LogInterpolation.init(stringInterpolation:)();
    v20 = static os_log_type_t.debug.getter();
    sub_1000036B0(v20);

    swift_beginAccess();
    v21 = *(a1 + 104);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 32;
      v24 = *(a1 + 104);

      do
      {
        sub_10001C56C(v23, v35);
        if (swift_weakLoadStrong())
        {
          sub_10001D3C8();
          if (v2)
          {

            sub_10000A00C(v35, &qword_10026BFB0, &qword_1001EA308);
            v2 = 0;
          }

          else
          {
            sub_10000A00C(v35, &qword_10026BFB0, &qword_1001EA308);
          }
        }

        else
        {
          sub_10000A00C(v35, &qword_10026BFB0, &qword_1001EA308);
        }

        v23 += 8;
        --v22;
      }

      while (v22);

      v25 = *(a1 + 104);
    }

    *(a1 + 104) = &_swiftEmptyArrayStorage;

    v26 = sqlite3_close(v31);
    result = sub_100016CE0(v26);
    *(a1 + 64) = 0;
    if (result)
    {
      v27 = result;
      sub_1000A0624();
      v28 = swift_allocError();
      *v29 = v27;
      sub_1001A504C(0xD00000000000001FLL, 0x8000000100202C00, 0, 0, v28);

      swift_allocError();
      *v30 = v27;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10001BC30()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = sub_100011A30();

    return v13(v12);
  }
}

uint64_t sub_10001BD44()
{
}

uint64_t sub_10001BD98()
{

  return swift_once();
}

uint64_t sub_10001BDB8()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 48);
  return v0 + 16;
}

id sub_10001BDE0()
{
  *(v0 + 112) = v1;
  *(v0 + 136) = v2;

  return v1;
}

uint64_t sub_10001BE14()
{
  sub_1001BF340();
  sub_100003D28();
  v2 = v0;
  sub_1000056A8();
  v4 = v3;
  sub_100004EEC();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  sub_100002D20();
  *v11 = v10;

  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
  }

  else
  {
    sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v13 = 0;
  }

  v14 = sub_10000A214();
  v15(v14);

  _Block_release(v4);
  sub_100002D8C();
  sub_1001BF32C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_10001BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_10000C504(a1, a2);
  v7 = sub_10007B9A4(v5, v6);
  sub_100003D10(v7);
  v9 = *(v8 + 80);
  sub_1000F11BC();

  return a4(a1);
}

void sub_10001C04C(os_log_type_t a1)
{
  v3 = *(v1 - 216);

  sub_1000036B0(a1);
}

uint64_t sub_10001C070()
{

  return swift_allocObject();
}

uint64_t sub_10001C090()
{
  sub_1000F1284();

  v0 = sub_100008FE8();
  sub_10007B9A4(v0, v1);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001C110@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = *(a1 + 32);
  sub_100004E5C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v42 = v13;

  v14 = 0;
  v15 = &_swiftEmptyDictionarySingleton;
  v39 = v12;
  v40 = v6;
  if (v10)
  {
LABEL_6:
    while (1)
    {
      v17 = (*(v42 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v19 = *v17;
      v18 = v17[1];

      v20 = a2(v19, v18);
      if (v4)
      {
        break;
      }

      v43 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v15;
      v22 = sub_100012A94();
      v24 = v15[2];
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_20;
      }

      v27 = v22;
      v28 = v23;
      sub_10007B9A4(&qword_100271F18, &qword_1001F1B10);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26))
      {
        v29 = sub_100012A94();
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_22;
        }

        v27 = v29;
      }

      v15 = v44;
      if (v28)
      {
        v31 = v44[7];
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v43;
      }

      else
      {
        v44[(v27 >> 6) + 8] |= 1 << v27;
        v33 = (v44[6] + 16 * v27);
        *v33 = v19;
        v33[1] = v18;
        *(v44[7] + 8 * v27) = v43;
        v34 = v44[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_21;
        }

        v44[2] = v36;
      }

      v10 &= v10 - 1;
      v4 = 0;
      v12 = v39;
      v6 = v40;
      if (!v10)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        *a3 = v15;
        return result;
      }

      v10 = *(v6 + 8 * v16);
      ++v14;
      if (v10)
      {
        v14 = v16;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001C364(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  sub_100004AA0();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptySetSingleton;

  v8[2] = sub_100017C14();
  v8[3] = 0xD000000000000037;
  v8[4] = 0x8000000100203A80;
  v8[5] = inited;
  v8[6] = sub_1000190A0;
  v8[7] = v6;
  sub_100014A20(sub_10001D7C8, v8);

  if (v2)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C();
    inited = *(v6 + 16);
  }

  return inited;
}

uint64_t sub_10001C4D4()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10001C56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C5DC()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (v0)
  {
    v9 = *(v3 + 216);

    return _swift_task_switch(sub_1001BF314, v9, 0);
  }

  else
  {
    sub_1000222B8();

    v10 = sub_100019DF8();

    return v11(v10);
  }
}

uint64_t sub_10001C74C(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  sub_100004AA0();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptySetSingleton;

  v8[2] = sub_100017C14();
  v8[3] = 0xD00000000000002FLL;
  v8[4] = 0x8000000100203A50;
  v8[5] = inited;
  v8[6] = sub_1001B84F0;
  v8[7] = v6;
  sub_100014A20(sub_10001D7C8, v8);

  if (v2)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C();
    inited = *(v6 + 16);
  }

  return inited;
}

uint64_t sub_10001C8BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C8FC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_100007628();
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = sub_100008428();
  v9(v8);
  v10 = sub_100007B40();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10001C9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ABCC(0);
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    swift_beginAccess();
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return 0;
}

uint64_t sub_10001CA20(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    memset(v11, 0, sizeof(v11));
    v4 = *(v1 + 24);

    sub_10001D058(v5, v2, a1, v11);

    sub_100003C38(v11, &v10);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    v6 = sub_10000BC24();
    if ((v6 & 1) == 0)
    {
      v12 = 0;
    }

    v13 = v6 ^ 1;
    sub_100002C5C(v11);
    return v12;
  }

  else
  {
    sub_10001ED34();
    v8 = sub_100007544();
    return sub_100006E04(v8, v9);
  }
}

uint64_t sub_10001CB1C@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AE448(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000);
}

void sub_10001CB54(os_log_type_t a1)
{
  v3 = *(v1 - 328);

  sub_1000036B0(a1);
}

uint64_t sub_10001CB88(uint64_t result)
{
  strcpy((result + 48), "amsengagementd");
  *(result + 63) = -18;
  return result;
}

void sub_10001CBC0()
{

  sub_1000D507C();
}

uint64_t sub_10001CBE4()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10001CC10()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_10001CC78()
{

  return String.hash(into:)();
}

void sub_10001CCA8()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = *(v0[12] + 112);
}

uint64_t sub_10001CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000A7C0(a1, 1, 1, a4);
}

void sub_10001CCDC()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0xE000000000000000;

  _StringGuts.grow(_:)(30);
}

uint64_t sub_10001CD1C()
{

  return swift_getErrorValue();
}

void sub_10001CD3C(uint64_t a1@<X8>, uint64_t a2, int a3, char a4, uint64_t a5)
{
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = a5;
  *(a1 + 80) = a4;
}

uint64_t sub_10001CD54()
{

  return swift_allocObject();
}

uint64_t sub_10001CDFC()
{
  sub_100002C00(v0);

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10001CE30(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (!a3)
  {
    return sub_1000253FC(result, a2);
  }

  return result;
}

uint64_t sub_10001CE50()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_10001CE8C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

void *SQLStatement.step()(uint64_t a1)
{
  v3 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    sub_10001ED34();
    v9 = sub_100007544();
    sub_10000BC48(v9, v10);
LABEL_12:
    swift_willThrow();
    return v4;
  }

  v15 = 31;
  v5 = *(v3 + 64);
  __chkstk_darwin(a1);
  v14[2] = v3;
  v14[3] = v4;
  v14[4] = &v15;
  v6 = swift_retain_n();
  sub_10001A648(v6, v5, sub_10001AAA4, v14);

  if (!v2)
  {
    v7 = v15;
    if (v15 == 7)
    {
      return 0;
    }

    else
    {
      if (v15 != 27)
      {
        if (v15 == 31)
        {
          sub_10001ED34();
          sub_100007544();
          v7 = 6;
        }

        else
        {
          sub_1000A0624();
          sub_100007544();
        }

        *v8 = v7;
        goto LABEL_12;
      }

      v11 = *(v3 + 64);
      type metadata accessor for SQLRow();
      swift_allocObject();
      v4 = sub_10001ABBC(v11, v4);
      swift_beginAccess();
      v12 = *(v3 + 32);
      *(v3 + 32) = v4;
    }
  }

  return v4;
}

void sub_10001D058(uint64_t a1, sqlite3_stmt *a2, uint64_t a3, _OWORD *a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v8 || (v7 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v10);
    sub_10000BE84();
    *(v11 - 16) = sub_1001A6798;
    *(v11 - 8) = &v12;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    sub_10001D170(a2, a3, a4);
    objc_autoreleasePoolPop(v9);
  }

  sub_1000068D4();
}

uint64_t sub_10001D170(sqlite3_stmt *a1, uint64_t iCol, _OWORD *a3)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    JUMPOUT(0x10001D2B4);
  }

  result = sqlite3_column_type(a1, iCol);
  switch(result)
  {
    case 1:
      v7 = sub_100004894();
      v19 = &type metadata for Int;
      v18[0] = sqlite3_column_int64(v7, v8);
      return sub_10001D2C8(v18, a3);
    case 2:
      v16 = sub_100004894();
      v19 = &type metadata for Double;
      v18[0] = sqlite3_column_double(v16, v17);
      return sub_10001D2C8(v18, a3);
    case 3:
      v9 = sub_100004894();
      result = sqlite3_column_text(v9, v10);
      if (!result)
      {
        return result;
      }

      v11 = String.init(cString:)();
      v13 = &type metadata for String;
      break;
    case 4:
      sqlite3_column_bytes(a1, v3);
      v14 = sub_100004894();
      result = sqlite3_column_blob(v14, v15);
      if (!result)
      {
        return result;
      }

      v11 = Data.init(bytes:count:)();
      v13 = &type metadata for Data;
      break;
    case 5:
      result = sub_100002C5C(a3);
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    default:
      return result;
  }

  v19 = v13;
  v18[0] = v11;
  v18[1] = v12;
  return sub_10001D2C8(v18, a3);
}

uint64_t sub_10001D2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SQLStatement.__deallocating_deinit()
{
  SQLStatement.deinit();

  return swift_deallocClassInstance();
}

void *SQLStatement.deinit()
{
  sub_10001D3C8();
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return v0;
}

void sub_10001D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019DB8(a1, a2, a3);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v6 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v10 = *(v5 + 72);
    __chkstk_darwin(v6);
    sub_10000BE84();
    *(v11 - 16) = sub_1001A6760;
    *(v11 - 8) = &v12;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    sub_10001A4EC();
    *(v3 + 56) = 0;
    v8 = sqlite3_finalize(v4);
    v9 = *(v3 + 24);
    (*(v3 + 16))(v8, 0xD000000000000012, 0x8000000100202E60);
    objc_autoreleasePoolPop(v7);
  }

  sub_100009EF8();
}

uint64_t sub_10001D534()
{
  v1 = *(v0 + 24);

  sub_10001D594(v2, v0);
}

void sub_10001D594(uint64_t a1, uint64_t a2)
{
  sub_10000A658();
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v4 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v6 = *(v2 + 72);
    __chkstk_darwin(v4);
    sub_10000BE84();
    *(v7 - 16) = sub_1001A66D0;
    *(v7 - 8) = a2;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    *(a2 + 16) = 0;
    objc_autoreleasePoolPop(v5);
  }

  sub_1000068D4();
}

uint64_t SQLRow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SQLRow.__deallocating_deinit()
{
  SQLRow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10001D6F8()
{

  return swift_getWitnessTable();
}

uint64_t sub_10001D730()
{
  v2 = *(v0 + 240);

  return swift_beginAccess();
}

uint64_t sub_10001D754()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10001D778()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v8 = v0[10];
}

uint64_t sub_10001D794()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t sub_10001D804(uint64_t a1)
{
  if (qword_100268618 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for AppDatabase();
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v3;
  }

  return result;
}

void sub_10001DCD4()
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v7 = sub_100023F60();
  v8 = sub_100002CC4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v11);
  sub_100005B48();
  v12 = [objc_opt_self() ams_engagementDirectory];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_1000086AC();
    v2(v14);
    v15 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v16)
    {
      v17 = sub_10000AE08();
      v2(v17);
      sub_10000360C();
      if (!v16)
      {
        sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v25 = sub_100012E30();
      v26(v25);
      v27 = sub_100019E40();
      v2(v27);
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = sub_100003DE8();
    sub_100002CFC(v18);
    v20 = *(v19 + 72);
    v21 = sub_1000077EC();
    v22 = sub_100007358(v21, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v23 = static os_log_type_t.fault.getter();
    sub_1000036B0(v23);

    v24 = [objc_opt_self() defaultManager];
    v28 = [v24 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_10001DFD8(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000056E8();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  sub_10001E78C(a1);
  URL.appendingPathComponent(_:)();
  v18 = *(v9 + 8);
  v18(v14, v6);
  v21[0] = 0x2E74757074756FLL;
  v21[1] = 0xE700000000000000;
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);
  URL.appendingPathComponent(_:)();

  return v18(v17, v6);
}

void sub_10001E148()
{
  sub_100003D74();
  v1 = v0;
  isa = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v0 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = type metadata accessor for URL();
    sub_1000047A4(v16);
    (*(v17 + 16))(v9, v7, v16);
    sub_100005F14();

    sub_10000A7C0(v18, v19, v20, v21);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v23 = sub_100003DE8();
    sub_100002CFC(v23);
    v54 = ((*(v25 + 80) + 32) & ~*(v25 + 80)) + 2 * *(v24 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v53 = sub_1001CCA14();
    v57 = v53;
    v56[0] = v1;
    v52 = v1;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v56);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._object = 0x80000001001F7D60;
    v28._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v29 = type metadata accessor for URL();
    v57 = v29;
    sub_100017E64(v56);
    sub_1000047A4(v29);
    v31 = *(v30 + 16);
    v31();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v56, &qword_10026D350, &qword_1001E6050);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v33 = static os_log_type_t.debug.getter();
    sub_1000036B0(v33);

    v34 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    if (isa)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1000FA840();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v56[0] = 0;
    v38 = [v34 createDirectoryAtURL:v37 withIntermediateDirectories:v5 & 1 attributes:isa error:v56];

    if (v38)
    {
      (v31)(v9, v7, v29);
      sub_10000A7C0(v9, 0, 1, v29);
      sub_100005F14();

      v41 = v39;
    }

    else
    {
      v42 = v56[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v57 = v53;
      v56[0] = v52;
      v43 = v52;
      v44 = AMSLogKey();
      if (v44)
      {
        v45 = v44;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v56);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v46._countAndFlagsBits = 0xD00000000000001CLL;
      v46._object = 0x80000001001F7D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v57 = v55;
      sub_100017E64(v56);
      sub_1000047A4(v55);
      (*(v47 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v56, &qword_10026D350, &qword_1001E6050);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
      LogInterpolation.init(stringInterpolation:)();
      v49 = static os_log_type_t.error.getter();
      sub_1000036B0(v49);

      v50 = sub_100011B84();
      sub_10000A7C0(v50, v51, 1, v29);
      sub_100005F14();
    }
  }
}

uint64_t sub_10001E78C(char a1)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002EF0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000078F0();
  sub_10001DCD4();
  switch(a1)
  {
    case 1:
      sub_1000062AC();
      break;
    case 2:
      sub_10000571C();
      break;
    case 3:
      sub_100002ECC();
      break;
    default:
      break;
  }

  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v7 + 8))(v2, v1);
}

uint64_t sub_10001E8B8()
{
  v0 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v1 = sub_100003D10(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_1000056E8();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for URL();
  v11 = sub_100002CC4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_1000056E8();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = [objc_opt_self() ams_dataVaultDirectory];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_10000A7C0(v6, v24, 1, v10);
  sub_10001EC00(v6, v9);
  if (sub_100009F34(v9, 1, v10) == 1)
  {
    sub_100009FB0(v9, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = sub_100003DE8();
    sub_100002CFC(v25);
    v27 = *(v26 + 72);
    v28 = sub_1000077EC();
    v29 = sub_100007358(v28, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v30 = static os_log_type_t.fault.getter();
    sub_1000036B0(v30);

    v31 = sub_100011B84();
    return sub_10000A7C0(v31, v32, 1, v10);
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v34 = *(v13 + 8);
    v34(v9, v10);
    (*(v13 + 32))(v21, v18, v10);
    v35 = [objc_opt_self() defaultManager];
    sub_10001E148();

    return (v34)(v21, v10);
  }
}

uint64_t sub_10001EC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001ECE0()
{
  result = qword_100271FA0;
  if (!qword_100271FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271FA0);
  }

  return result;
}

unint64_t sub_10001ED34()
{
  result = qword_100270BC0;
  if (!qword_100270BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270BC0);
  }

  return result;
}

void sub_10001EDAC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    sub_100051328(*(a1 + 56) + 8 * v4, a2);
    v6 = 0;
  }

  else
  {
    *a2 = 0;
    v6 = 1;
  }

  *(a2 + 8) = v6;
}

uint64_t sub_10001EE04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10001EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v5[7] = 0;
  *(v5 + 5) = 0u;
  *(v5 + 3) = 0u;
  v18 = a1;
  v20 = v19;
  sub_10001F0D0(v18, a2, a3);
  (*(v11 + 16))(v15, v17, v20);
  v21 = **(&off_100247460 + a2);
  type metadata accessor for SQLDatabase();
  v22 = SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(v15, 0, v21, sub_100040638, 0, 0, 0);
  if (v4)
  {
    (*(v11 + 8))(v17, v20);
    v23 = v5[3];

    v24 = v5[4];

    v25 = v5[5];

    v26 = v5[6];

    v27 = v5[7];

    type metadata accessor for AppDatabase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5[2] = v22;
    v28 = swift_retain_n();
    sub_1000179B4(v28, v28);
    sub_1000170D4();

    (*(v11 + 8))(v17, v20);
  }

  return v5;
}

uint64_t SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  if (URL.isFileURL.getter())
  {
    v22 = a3;
    v15 = URL.path.getter();
    v23 = a5;
    v17 = v16;
    type metadata accessor for SQLDatabase();
    sub_10000600C();
    v14 = swift_allocObject();
    SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(v15, v17, a2 & 1, v22, a4, v23, a6, a7);
  }

  else
  {
    sub_10001ED34();
    sub_100007544();
    *v20 = 4;
    swift_willThrow();
    sub_100014A10(a6);
    sub_100014A10(a4);
  }

  v18 = type metadata accessor for URL();
  sub_100002DDC(v18);
  (*(v19 + 8))(a1);
  return v14;
}

uint64_t SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v42 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = sub_100002DDC(v42);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_100003D10(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v38 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = sub_100002CC4(v38);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100002DEC();
  v27 = v26 - v25;
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = sub_100002CC4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_100002DEC();
  v36 = v35 - v34;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 112) = 0;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 96) = a6;
  *(v9 + 104) = &_swiftEmptyArrayStorage;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  sub_100017A08();
  (*(v31 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v28);
  (*(v22 + 104))(v27, enum case for DispatchQoS.QoSClass.default(_:), v38);
  sub_100017E54(a7);
  sub_100017E54(a5);
  v41 = a4;
  static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v27, v38);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v9 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  OS_dispatch_queue.setSpecific<A>(key:value:)();
  sub_100014A10(a7);
  sub_100014A10(a5);

  return v9;
}

uint64_t sub_10001FAA0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v1 == sub_1000049C4() && v0 == v2)
  {

    return 0x400000;
  }

  v4 = sub_1000066B8();

  if (v4)
  {
    return 0x400000;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v4 == sub_1000049C4() && v0 == v5)
  {

    return 0x100000;
  }

  v7 = sub_1000066B8();

  if (v7)
  {
    return 0x100000;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7 == sub_1000049C4() && v0 == v8)
  {

    return 0x200000;
  }

  v10 = sub_1000066B8();

  if (v10)
  {
    return 0x200000;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    return 3145728;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      return 3145728;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_10001FC50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002443C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001FC9C()
{
  v1 = v0;
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  setenv("JavaScriptCoreUseJIT", "0", 1);
  v2 = objc_opt_self();
  [v2 setHARLoggingItemLimit:0];
  [v2 setPreferEphemeralURLSessions:1];
  type metadata accessor for Migrator();
  sub_100020910();
  sub_10004C664();
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd7RunLoop_setupAssistantObserver);
  sub_1000464E4();
  if (qword_100268608 != -1)
  {
    sub_100007CEC();
  }

  sub_1000426FC();
  if (qword_1002685D8 != -1)
  {
    swift_once();
  }

  sub_100047F28();
  if (qword_1002687D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NetworkStatusObserver();
  sub_10017C9C4();
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  sub_10004DB78();
  if (qword_1002687E8 != -1)
  {
    swift_once();
  }

  sub_10004E21C();
  if (qword_100268850 != -1)
  {
    swift_once();
  }

  if (qword_1002687C8 != -1)
  {
    swift_once();
  }

  if (qword_100268828 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC14amsengagementd7RunLoop_userNotificationsService);
  sub_1001CDFA0();
  v5 = sub_10018BF68(0xD000000000000033, 0x80000001001FF470, sub_10018F930, 0);
  v6 = *(v1 + OBJC_IVAR____TtC14amsengagementd7RunLoop_cloudKitPushSubscription);
  *(v1 + OBJC_IVAR____TtC14amsengagementd7RunLoop_cloudKitPushSubscription) = v5;

  type metadata accessor for ServerDataCacheService();
  v7 = [objc_opt_self() ams_sharedAccountStore];
  sub_100194608();

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100092D78(0, 0, 0, 0x73206E6F6D656144, 0xEE00707574726174);
  return 1;
}

uint64_t sub_100020010(unsigned int a1)
{
  v75 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v69 - v7;
  v8 = __chkstk_darwin(v6);
  v76 = &v69 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v69 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v69 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v69 - v17;
  __chkstk_darwin(v16);
  v20 = &v69 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();
  v24 = *(v2 + 8);
  v24(v18, v1);
  sub_1000209D4();
  v71 = v21;
  v72 = v12;
  v25 = v76;
  v24(v20, v1);
  sub_10001DCD4();
  URL.appendingPathComponent(_:)();
  v24(v18, v1);
  sub_1000209D4();
  v69 = v2 + 8;
  v70 = v1;
  v24(v15, v1);
  v35 = v72;
  v36 = v75;
  sub_100020B34(v75, 29546, 0xE200000000000000);
  sub_10001DFD8(v36, 29546, 0xE200000000000000);
  v37 = v71;
  v38 = [v71 defaultManager];
  URL.path.getter();
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 fileExistsAtPath:v39];

  v41 = v74;
  if (v40)
  {
    v42 = [v37 defaultManager];
    URL.path.getter();
    v43 = String._bridgeToObjectiveC()();

    v44 = [v42 fileExistsAtPath:v43];

    v41 = v74;
    if ((v44 & 1) == 0)
    {
      v45 = [v37 defaultManager];
      URL.path.getter();
      v46 = String._bridgeToObjectiveC()();

      URL.path.getter();
      v47 = v35;
      v48 = String._bridgeToObjectiveC()();

      v79[0] = 0;
      v49 = [v45 moveItemAtPath:v46 toPath:v48 error:v79];

      if (!v49)
      {
        v66 = v79[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v67 = v70;
        v24(v25, v70);
        goto LABEL_2;
      }

      v50 = v79[0];
      v35 = v47;
      v41 = v74;
    }
  }

  v51 = v73;
  v52 = v75;
  sub_100020B34(v75, 0x6B63617074656ALL, 0xE700000000000000);
  sub_10001DFD8(v52, 0x6B63617074656ALL, 0xE700000000000000);
  v53 = [v37 defaultManager];
  URL.path.getter();
  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 fileExistsAtPath:v54];

  if (!v55 || (v56 = [v37 defaultManager], URL.path.getter(), v57 = String._bridgeToObjectiveC()(), , v58 = objc_msgSend(v56, "fileExistsAtPath:", v57), v56, v57, (v58 & 1) != 0))
  {
    v59 = v70;
    v24(v41, v70);
    v24(v51, v59);
    v24(v76, v59);
    v60 = v35;
    return (v24)(v60, v59);
  }

  v61 = [v37 defaultManager];
  URL.path.getter();
  v62 = String._bridgeToObjectiveC()();

  URL.path.getter();
  v63 = String._bridgeToObjectiveC()();

  v79[0] = 0;
  v64 = [v61 moveItemAtPath:v62 toPath:v63 error:v79];

  if (v64)
  {
    v65 = v79[0];
    v59 = v70;
    v24(v41, v70);
    v24(v51, v59);
    v24(v76, v59);
    v60 = v72;
    return (v24)(v60, v59);
  }

  v68 = v79[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v67 = v70;
  v24(v41, v70);
  v24(v51, v67);
  v24(v76, v67);
  v47 = v72;
LABEL_2:
  v24(v47, v67);
  if (qword_100268708 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v26 = *(type metadata accessor for LogInterpolation() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v29 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for Migrator();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v30 = v77;
  v31 = v78;
  v79[3] = v78;
  v32 = sub_100017E64(v79);
  (*(*(v31 - 1) + 16))(v32, v30, v31);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v79, &qword_10026D350, &qword_1001E6050);
  v33 = static os_log_type_t.error.getter();
  sub_1000036B0(v33);
}

uint64_t sub_100020910()
{
  v0 = 0;
  do
  {
    v1 = &off_100244588 + v0++;
    v2 = v1[32];
    sub_100020010(v1[32]);
    sub_100020D58();
    sub_10002125C(v2);
    sub_100022B4C(v2);
  }

  while (v0 != 4);
  v5[3] = &type metadata for AMSFlags;
  v5[4] = sub_10000D884();
  LOBYTE(v5[0]) = 0;
  v3 = isFeatureEnabled(_:)();
  sub_100002C00(v5);
  if (v3)
  {
    [objc_opt_self() erase];
  }

  type metadata accessor for AppDatabase();
  return sub_100044A6C();
}

void sub_1000209D4()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [v0 defaultManager];
    URL.path.getter();
    v5 = String._bridgeToObjectiveC()();

    v9 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100020D58()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v34 - v9;
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  sub_10001DCD4();
  URL.appendingPathComponent(_:isDirectory:)();

  v13 = *(v3 + 8);
  v13(v7, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v13(v10, v2);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  LODWORD(v7) = [v15 fileExistsAtPath:v16];

  if (v7)
  {
    v17 = [v14 defaultManager];
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v39[0] = 0;
    v21 = [v17 removeItemAtURL:v19 error:v39];

    if (v21)
    {
      v22 = v39[0];
    }

    else
    {
      v35 = v13;
      v36 = v1;
      v23 = v39[0];
      v24 = _convertNSErrorToError(_:)();

      v34[1] = v24;
      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v25 = *(type metadata accessor for LogInterpolation() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v28 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v29 = v37;
      v30 = v38;
      v39[3] = v38;
      v31 = sub_100017E64(v39);
      (*(*(v30 - 1) + 16))(v31, v29, v30);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v39, &qword_10026D350, &qword_1001E6050);
      v32 = static os_log_type_t.error.getter();
      sub_1000036B0(v32);

      v13 = v35;
    }
  }

  return (v13)(v12, v2);
}

uint64_t sub_10002125C(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v85 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v83 - v11;
  __chkstk_darwin(v10);
  v92 = v83 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v86 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v83 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v83 - v23;
  __chkstk_darwin(v22);
  v93 = v83 - v25;
  sub_1000220D8();
  v89 = v26;
  sub_10001DCD4();
  v88 = a1;
  URL.appendingPathComponent(_:isDirectory:)();

  v90 = *(v15 + 8);
  v91 = v15 + 8;
  v90(v24, v14);
  sub_10001E8B8();
  if (sub_100009F34(v12, 1, v14) == 1)
  {
    sub_10000A064(v12, &unk_10026FEE0, &unk_1001E67C0);
    v27 = 1;
    v28 = v92;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();

    v29 = v90;
    v90(v12, v14);
    v28 = v92;
    URL.appendingPathComponent(_:isDirectory:)();
    v29(v21, v14);
    v27 = 0;
  }

  sub_10000A7C0(v28, v27, 1, v14);
  sub_10001EC70(v28, v9);
  v30 = sub_100009F34(v9, 1, v14);
  v31 = v89;
  if (v30 == 1)
  {

    sub_10000A064(v9, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_100268708 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v32 = *(type metadata accessor for LogInterpolation() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v35 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for Migrator();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v36 = static os_log_type_t.fault.getter();
    sub_1000036B0(v36);

    sub_10000A064(v28, &unk_10026FEE0, &unk_1001E67C0);
    return (v90)(v93, v14);
  }

  else
  {
    v38 = v86;
    (*(v15 + 32))(v86, v9, v14);
    v39 = objc_opt_self();
    v40 = [v39 defaultManager];
    v96 = 1;
    URL.path.getter();
    v41 = String._bridgeToObjectiveC()();

    v84 = v40;
    v42 = [v40 fileExistsAtPath:v41 isDirectory:&v96];

    if (v42)
    {
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v43 = *(type metadata accessor for LogInterpolation() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v46 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      v47 = v87;
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 0xD000000000000020;
      v48._object = 0x8000000100200050;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
      v98 = &unk_1002471C0;
      v49 = v88;
      LOBYTE(v97[0]) = v88;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v97, &qword_10026D350, &qword_1001E6050);
      v50._countAndFlagsBits = 41;
      v50._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
      LogInterpolation.init(stringInterpolation:)();
      v51 = static os_log_type_t.debug.getter();
      sub_1000036B0(v51);

      __chkstk_darwin(v52);
      v53 = v93;
      v54 = v84;
      v83[-4] = v93;
      v83[-3] = v54;
      v83[-2] = v47;
      LOBYTE(v83[-1]) = v49;
      sub_100022300(sub_100022438, &v83[-6], v89);

      sub_10000A064(v92, &unk_10026FEE0, &unk_1001E67C0);
      v55 = v90;
      v90(v86, v14);
      return v55(v53, v14);
    }

    else
    {
      v56 = [v39 defaultManager];
      URL.path.getter();
      v57 = String._bridgeToObjectiveC()();

      v97[0] = 0;
      v58 = [v56 createDirectoryAtPath:v57 withIntermediateDirectories:1 attributes:0 error:v97];

      v59 = v87;
      if (v58)
      {
        v60 = v97[0];
      }

      else
      {
        v61 = v97[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100268708 != -1)
        {
          swift_once();
        }

        v83[3] = qword_100287868;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v62 = *(type metadata accessor for LogInterpolation() - 8);
        v83[2] = *(v62 + 72);
        v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1001E5F70;
        v83[1] = v64 + v63;
        v65 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for Migrator();
        v59 = v87;
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v66._countAndFlagsBits = 0xD000000000000025;
        v66._object = 0x8000000100200000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v66);
        v98 = &unk_1002471C0;
        LOBYTE(v97[0]) = v88;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(v97, &qword_10026D350, &qword_1001E6050);
        v67._object = 0xE900000000000020;
        v67._countAndFlagsBits = 0x3A726F727265202CLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
        swift_getErrorValue();
        v69 = v94;
        v68 = v95;
        v98 = v95;
        v70 = sub_100017E64(v97);
        (*(*(v68 - 1) + 16))(v70, v69, v68);
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(v97, &qword_10026D350, &qword_1001E6050);
        v71._countAndFlagsBits = 41;
        v71._object = 0xE100000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
        LogInterpolation.init(stringInterpolation:)();
        v72 = static os_log_type_t.fault.getter();
        sub_1000036B0(v72);

        v38 = v86;
        v31 = v89;
      }

      __chkstk_darwin(v60);
      v83[-4] = v93;
      v83[-3] = v59;
      v83[-2] = v38;
      LOBYTE(v83[-1]) = v73;
      sub_100022300(sub_100179C1C, &v83[-6], v31);
      v89 = 0;
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v74 = *(type metadata accessor for LogInterpolation() - 8);
      v75 = *(v74 + 72);
      v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v77 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v78 = static os_log_type_t.default.getter();
      sub_1000036B0(v78);

      __chkstk_darwin(v79);
      v80 = v93;
      v81 = v84;
      v83[-4] = v93;
      v83[-3] = v81;
      v83[-2] = v59;
      LOBYTE(v83[-1]) = v88;
      sub_100022300(sub_100022B28, &v83[-6], v31);

      sub_10000A064(v92, &unk_10026FEE0, &unk_1001E67C0);
      v82 = v90;
      v90(v86, v14);
      return v82(v80, v14);
    }
  }
}

void sub_1000220D8()
{
  sub_100011690();
  v1 = v0;
  if (*(v0 + 16) && (sub_10007B9A4(&qword_10026F288, &qword_1001EEB98), v2 = sub_10003AF6C(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      sub_10005AE68();
      Hasher._finalize()();
      v11 = *(v3 + 32);
      sub_100004E1C();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v6 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = (*(v3 + 48) + 16 * v15);
        v20 = *v19 == v9 && v19[1] == v8;
        if (v20 || (sub_1000240DC() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v15 + 1;
      }

      *(v6 + 8 * v16) = v18 | v17;
      v21 = (*(v3 + 48) + 16 * v15);
      *v21 = v9;
      v21[1] = v8;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v24;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_100029454();
  }
}

id sub_100022238(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100022264()
{

  return swift_getErrorValue();
}

void *sub_100022280()
{
  v2 = *(v0 + 40);

  return sub_100003CA8((v0 + 16), v2);
}

uint64_t sub_1000222B8()
{
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[28];
}

uint64_t sub_100022300(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100022450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v50 = a5;
  v49 = a4;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v52);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  v55[0] = *a1;
  v55[1] = v18;
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v10 + 8))(v13, v9);
  URL.path.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [a3 fileExistsAtPath:v19];

  if (v20)
  {
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v55[0] = 0;
    v24 = [a3 removeItemAtURL:v22 error:v55];

    if (v24)
    {
      v25 = qword_100268708;
      v26 = v55[0];
      if (v25 != -1)
      {
        swift_once();
      }

      v48 = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v27 = *(type metadata accessor for LogInterpolation() - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v30 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._object = 0x80000001002000C0;
      v31._countAndFlagsBits = 0xD00000000000002DLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
      v56 = &unk_1002471C0;
      LOBYTE(v55[0]) = v50;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
      LogInterpolation.init(stringInterpolation:)();
      v33 = static os_log_type_t.debug.getter();
      sub_1000036B0(v33);
    }

    else
    {
      v34 = v55[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      v51 = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v35 = *(type metadata accessor for LogInterpolation() - 8);
      v48 = *(v35 + 72);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1001E5F70;
      v47[1] = v37 + v36;
      v38 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v39._countAndFlagsBits = 0xD000000000000035;
      v39._object = 0x8000000100200080;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
      v56 = &unk_1002471C0;
      LOBYTE(v55[0]) = v50;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
      v40._countAndFlagsBits = 0x3A726F727265202CLL;
      v40._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
      swift_getErrorValue();
      v41 = v53;
      v42 = v54;
      v56 = v54;
      v43 = sub_100017E64(v55);
      (*(*(v42 - 1) + 16))(v43, v41, v42);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
      v44._countAndFlagsBits = 41;
      v44._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      LogInterpolation.init(stringInterpolation:)();
      v45 = static os_log_type_t.debug.getter();
      sub_1000036B0(v45);
    }
  }

  return (*(v14 + 8))(v17, v52);
}

uint64_t sub_100022B4C(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduleInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDatabase();
  sub_10001D804(a1);
  v34 = v8;
  v35 = v6;
  v36 = v1;
  v12 = sub_100041404();

  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = v13 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = swift_allocObject();
  v38 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  *(v16 + 32) = v13;
  v37 = v12;
  sub_1000415E4(sub_100044664, v16);

  swift_beginAccess();
  v25 = *(v15 + 16);
  if (*(v25 + 16))
  {
    sub_1000A8E8C(v25);
    v33[1] = v15;
    swift_beginAccess();
    v30 = *v14;
    v31 = *(*v14 + 16);

    v17 = 0;
    v32 = v34;
    while (1)
    {
      if (v31 == v17)
      {

        goto LABEL_2;
      }

      if (v17 >= *(v30 + 16))
      {
        break;
      }

      sub_1000A9424(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v17, v11);
      sub_1000A9108(v11);
      ++v17;
      sub_1000A1B7C(v11);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_100268708 != -1)
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
  v29 = static os_log_type_t.debug.getter();
  sub_1000036B0(v29);

LABEL_2:
  LOBYTE(v17) = v38;
  if (qword_100268708 != -1)
  {
LABEL_14:
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._object = 0x80000001001FFFA0;
  v21._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  v40 = &unk_1002471C0;
  v39[0] = v17;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v39, &qword_10026D350, &qword_1001E6050);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  LogInterpolation.init(stringInterpolation:)();
  v23 = static os_log_type_t.info.getter();
  sub_1000036B0(v23);
}

uint64_t sub_100023468()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000234A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023504(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002353C()
{
  if (!qword_100270778)
  {
    sub_10007BC70(&qword_10026AE50, &unk_1001E83A0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100270778);
    }
  }
}

void sub_1000235A0()
{
  sub_10002353C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScheduleInfo.Metadata(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002364C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100023724();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100023724()
{
  if (!qword_10026C658)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026C658);
    }
  }
}

uint64_t sub_10002377C()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10026A3A8 = result;
  return result;
}

void sub_100023A18()
{
  sub_100003D74();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = sub_100002CC4(v13);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002DEC();
  v3 = sub_100006658();
  v4 = sub_1000085C8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = sub_100007754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v9, v10);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0();
  v11 = sub_100005ABC();
  v12(v11);
  qword_1002878F0 = sub_10000BB64();
  sub_100005F14();
}

uint64_t sub_100023C0C()
{

  return swift_task_alloc();
}

uint64_t sub_100023C24(uint64_t a1)
{

  return sub_10000A064(a1, v1, v2);
}

uint64_t sub_100023C50(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
}

__n128 sub_100023C6C(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  return result;
}

uint64_t sub_100023CB0()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 176);
  return result;
}

BOOL sub_100023CE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100023D00()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100023D2C(uint64_t a1)
{
  *(v1 + 104) = a1;
  *(v1 + 80) = v2;
}

unint64_t sub_100023D48()
{

  return sub_100012A94();
}

uint64_t sub_100023D70()
{

  return sub_10000A064(v0 + 496, v1, v2);
}

uint64_t sub_100023DC0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100023DF8()
{

  return swift_dynamicCast();
}

id sub_100023E54()
{

  return v0;
}

id sub_100023E6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t sub_100023E88()
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_100023EE8@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a1 = a16;
  a1[1] = v18;
  *(*(v17 + 56) + 8 * v16) = a14;
}

uint64_t sub_100023F3C(uint64_t a1)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = v2;
  *(v3 - 144) = a1;
  return v3 - 144;
}

uint64_t sub_100023F60()
{

  return type metadata accessor for URL();
}

uint64_t sub_100023FC8()
{

  return swift_getErrorValue();
}

uint64_t sub_10002400C()
{

  return swift_getWitnessTable();
}

void sub_10002402C()
{
}

uint64_t sub_100024044()
{
  v1 = *sub_100003CA8((v0 + 16), *(v0 + 40));
}

uint64_t sub_100024078()
{
  v2 = *(v0 - 136);

  return Publisher<>.sink(receiveValue:)();
}

uint64_t sub_1000240BC()
{

  return Promise.flatMap<A>(on:_:)();
}

uint64_t sub_1000240DC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10002411C()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void *sub_1000241D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(a3, a4);
  v6 = sub_10001CD54();
  j__malloc_size(v6);
  sub_10000A3BC();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

uint64_t sub_100024234()
{

  sub_1000ED448(sub_100062700, v0);

  sub_1000ED294();
}

uint64_t sub_100024308()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002433C(void *a1, void (*a2)(void, void, void), uint64_t a3)
{
  v4 = v3;
  v103 = a2;
  v104 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  v8 = type metadata accessor for OSSignposter();
  v9 = sub_100002CC4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v16 = v15 - v14;
  v99 = type metadata accessor for OSSignpostID();
  v17 = sub_100002CC4(v99);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v96 = v23;
  v97 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v89 - v24;
  v102 = a1;
  v26 = sub_10000D7F8(a1);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  if (qword_1002686F0 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v28 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    OSSignposter.logHandle.getter();

    OSSignpostID.init(log:object:)();
    v11[1](v16, v8);
    v29 = *(v4 + 72);
    if ((v29 & 2) != 0)
    {
      sub_10003B1C0(v27);
    }

    v101 = v25;
    if ((v29 & 1) == 0)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v30 = sub_100003DE8();
      sub_100002CFC(v30);
      v32 = *(v31 + 72);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(&v109 + 1) = type metadata accessor for EnqueueRunner();
      *&v108 = v4;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v108);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v35._countAndFlagsBits = 0xD000000000000036;
      v35._object = 0x80000001001F77C0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
      v36 = *(v27 + 16);

      *(&v109 + 1) = &type metadata for Int;
      *&v108 = v36;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v108, &qword_10026D350, &qword_1001E6050);
      v37._countAndFlagsBits = 0x7328746E65766520;
      v37._object = 0xE900000000000029;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v38 = static os_log_type_t.info.getter();
      sub_1000036B0(v38);

      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      *&v108 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
      v39 = Promise.__allocating_init(value:)();
      (*(v19 + 8))(v101, v99);
      return v39;
    }

    v98 = v4;
    v40 = v102;
    v41 = [v102 clientInfo];
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    v91 = xmmword_1001E5F70;
    *(inited + 16) = xmmword_1001E5F70;
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_1001E6580;
    *(v43 + 32) = 0x6449656C646E7562;
    *(v43 + 40) = 0xE800000000000000;
    v44 = sub_100026484(v41, &selRef_bundleIdentifier);
    v46 = v45 ? v44 : 0;
    v47 = v45 ? v45 : 0xE000000000000000;
    *(v43 + 48) = v46;
    *(v43 + 56) = v47;
    *(v43 + 72) = &type metadata for String;
    *(v43 + 80) = 0x6E6F6973726576;
    *(v43 + 88) = 0xE700000000000000;
    v48 = sub_100026484(v41, &selRef_clientVersion);
    v50 = v49 ? v48 : 0;
    v51 = v49 ? v49 : 0xE000000000000000;
    *(v43 + 96) = v50;
    *(v43 + 104) = v51;
    *(v43 + 120) = &type metadata for String;
    *(v43 + 128) = 1701667182;
    *(v43 + 136) = 0xE400000000000000;
    v93 = v41;
    v52 = sub_100026484(v41, &selRef_executableName);
    v54 = v53 ? v52 : 0;
    v55 = v53 ? v53 : 0xE000000000000000;
    *(v43 + 144) = v54;
    *(v43 + 152) = v55;
    *(v43 + 168) = &type metadata for String;
    *(v43 + 176) = 6580592;
    *(v43 + 184) = 0xE300000000000000;
    v56 = [v40 processIdentifier];
    *(v43 + 216) = &type metadata for Int32;
    *(v43 + 192) = v56;
    v57 = Dictionary.init(dictionaryLiteral:)();
    v58 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(inited + 48) = v57;
    *(inited + 72) = v58;
    *(inited + 80) = 0x73746E657665;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 120) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    *(inited + 96) = v27;
    v59 = Dictionary.init(dictionaryLiteral:)();
    if (sub_100024F14())
    {
      v60 = objc_autoreleasePoolPush();
      v61 = v98;
      v63 = v103;
      v62 = v104;
      sub_100024F20(v59, v98);
      v90 = 0;
      objc_autoreleasePoolPop(v60);
    }

    else
    {
      v90 = 0;
      v61 = v98;
      v63 = v103;
      v62 = v104;
    }

    v16 = *(v61 + 15);
    v64 = *(v61 + 16);
    v65 = *(v61 + 136);
    sub_1000262D0(v16, v64, v65);
    v92 = sub_100025454(v59, v63, v62);
    sub_100026D5C(v16, v64, v65);

    v66 = sub_10000D7F8(v102);
    v94 = v19;
    if (!v66)
    {
      break;
    }

    v67 = v66;
    v27 = 0;
    v25 = *(v66 + 16);
    v4 = 0x707954746E657665;
    v8 = 0xE900000000000065;
    v11 = &protocol witness table for String;
    while (1)
    {
      v19 = v25 != v27;
      if (v25 == v27)
      {
        goto LABEL_53;
      }

      if (v27 >= *(v67 + 16))
      {
        break;
      }

      v16 = *(v67 + 8 * v27 + 32);
      v105 = 0x707954746E657665;
      v106 = 0xE900000000000065;

      AnyHashable.init<A>(_:)();
      if (*(v16 + 16) && (v68 = sub_10000C818(&v108), (v69 & 1) != 0))
      {
        sub_100011BAC(*(v16 + 56) + 32 * v68, &v107);
        sub_10000E1E8(&v108);
        if (swift_dynamicCast())
        {
          v95 = v25 != v27;
          if (v105 == 0x526567617373654DLL && v106 == 0xEE00747365757165)
          {

LABEL_50:

            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v71 = sub_100003DE8();
            sub_100002CFC(v71);
            v73 = *(v72 + 72);
            sub_10000BF7C();
            *(swift_allocObject() + 16) = v91;
            *(&v109 + 1) = type metadata accessor for EnqueueRunner();
            *&v108 = v98;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v108);
            LogInterpolation.init(stringLiteral:)();
            LOBYTE(v19) = v95;
            if (qword_1002686B0 != -1)
            {
              sub_100002D44();
            }

            v74 = static os_log_type_t.default.getter();
            sub_1000036B0(v74);
LABEL_53:

            goto LABEL_54;
          }

          v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v100)
          {
            goto LABEL_50;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000E1E8(&v108);
      }

      ++v27;
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  LOBYTE(v19) = 0;
LABEL_54:
  v75 = v94;
  v76 = v97;
  v77 = v99;
  (*(v94 + 16))(v97, v101, v99);
  v78 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v79 = (v96 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v102;
  *(v80 + 16) = v102;
  (*(v75 + 32))(v80 + v78, v76, v77);
  v82 = v98;
  *(v80 + v79) = v98;
  v83 = v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8);
  v84 = v104;
  *v83 = v103;
  *(v83 + 8) = v84;
  *(v83 + 16) = v19;
  *(&v109 + 1) = type metadata accessor for SyncTaskScheduler();
  *&v110 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v108);

  v85 = v81;

  SyncTaskScheduler.init()();
  sub_100026D70();
  v39 = Promise.map<A>(on:_:)();

  sub_100002C00(&v108);
  v86 = *(v82 + 72);
  v108 = *(v82 + 56);
  v109 = v86;
  v87 = *(v82 + 104);
  v110 = *(v82 + 88);
  v111 = v87;
  sub_100026DB4(&v108, v85, v39);

  (*(v75 + 8))(v101, v77);
  return v39;
}

uint64_t sub_100024E2C()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  v10 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 17, v4 | 7);
}

uint64_t sub_100024F20(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32[0] = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v32];

  v8 = v32[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = Data.count.getter();
    result = sub_1000253FC(v9, v11);
    if (v12 / 1000.0 / 1000.0 > 0.1)
    {
      v14 = [objc_allocWithZone(NSByteCountFormatter) init];
      [v14 setAllowedUnits:4];
      v31 = v14;
      v15 = [v14 stringFromByteCount:v12];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v17;
      v30 = v16;

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v18 = *(type metadata accessor for LogInterpolation() - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v33 = type metadata accessor for EnqueueRunner();
      v32[0] = a2;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v32);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21._object = 0x80000001001F7870;
      v21._countAndFlagsBits = 0xD00000000000001FLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
      v33 = &type metadata for String;
      v32[0] = v30;
      v32[1] = v29;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v32, &qword_10026D350, &qword_1001E6050);
      v22._countAndFlagsBits = 0x65756C617620;
      v22._object = 0xE600000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v23 = static os_log_type_t.default.getter();
      sub_1000036B0(v23);
    }
  }

  else
  {
    v24 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = *(type metadata accessor for LogInterpolation() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for EnqueueRunner();
    v32[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v32);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v28 = static os_log_type_t.default.getter();
    sub_1000036B0(v28);
  }

  return result;
}

uint64_t sub_1000253FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100025454(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v143 = sub_100002CC4(v9);
  v144 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v143);
  sub_100002DEC();
  v141 = v14 - v13;
  v131 = type metadata accessor for JSONObject();
  v15 = sub_100002CC4(v131);
  v130 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v129 = v20 - v19;
  v21 = type metadata accessor for LogInterpolation.StringInterpolation();
  v22 = sub_100003D10(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v136 = v26 - v25;
  v128 = type metadata accessor for JSRoute();
  v27 = sub_100002CC4(v128);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  v34 = v33 - v32;
  v35 = type metadata accessor for JSRequest();
  v36 = sub_100002CC4(v35);
  v134 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10000AF3C();
  v145 = v40;
  v132 = v41;
  __chkstk_darwin(v42);
  v44 = v127 - v43;
  v45 = type metadata accessor for Date();
  v46 = sub_100002CC4(v45);
  v148 = v47;
  v149 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  sub_10000AF3C();
  v137 = v51;
  v138 = v50;
  __chkstk_darwin(v52);
  v54 = v127 - v53;
  v146 = v4[3];
  v55 = &v146[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
  v56 = *&v146[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8];
  v142 = a2;
  *v55 = a2;
  v55[1] = a3;

  v139 = a3;
  swift_bridgeObjectRetain_n();
  v147 = v54;
  Date.init()();
  v57 = sub_100026A14();
  v140 = v8;
  if ((v57 & 0x10000) != 0)
  {
    v135 = v35;
    v64 = v146[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48] == 0;
    sub_10002F8B8(v146[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48]);

    sub_10002E810(v64, a1);
    v127[2] = sub_10002F940();
    JSRequest.route.getter();
    v65 = JSRoute.service.getter();
    v67 = v66;
    v68 = *(v29 + 8);
    v69 = v128;
    v68(v34, v128);
    v150 = v65;
    v151 = v67;
    v70._countAndFlagsBits = 46;
    v70._object = 0xE100000000000000;
    String.append(_:)(v70);
    v133 = v44;
    JSRequest.route.getter();
    v71 = JSRoute.function.getter();
    v73 = v72;
    v68(v34, v69);
    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    v75 = v151;
    v128 = v150;
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0();
    }

    v127[1] = qword_100287820;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v76 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v76);
    v78 = *(v77 + 72);
    sub_1000056F8();
    v81 = v80 & ~v79;
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1001E5F70;
    v127[3] = v82 + v81;
    v153 = type metadata accessor for JSAppEngine();
    v150 = v4;

    v83 = AMSLogKey();
    if (v83)
    {
      v84 = v83;
      v85 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v85 = v4;
    }

    v86 = v142;
    v87 = v133;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v150);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v88._object = 0x80000001001F9B60;
    v88._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v88);
    v153 = &type metadata for String;
    v150 = v128;
    v151 = v75;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v150, &qword_10026D350, &qword_1001E6050);
    v89._countAndFlagsBits = 0x736E6F6974706F20;
    v89._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
    v90 = JSRequest.options.getter();
    v153 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v150 = v90;
    v91 = v129;
    v92 = JSONObject.init(wrapping:)();
    v93 = sub_10002EAD0(v92);
    v95 = v94;
    (*(v130 + 8))(v91, v131);
    if (v95)
    {
      v96 = &type metadata for String;
    }

    else
    {
      v93 = 0;
      v96 = 0;
      v152 = 0;
    }

    v150 = v93;
    v151 = v95;
    v153 = v96;
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(&v150, &qword_10026D350, &qword_1001E6050);
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v97);
    LogInterpolation.init(stringInterpolation:)();
    v98 = static os_log_type_t.default.getter();
    sub_1000036B0(v98);

    v99 = v134;
    v100 = v145;
    v101 = v135;
    (*(v134 + 16))(v145, v87, v135);
    v102 = (*(v99 + 80) + 56) & ~*(v99 + 80);
    v103 = swift_allocObject();
    v63 = v139;
    *(v103 + 2) = v86;
    *(v103 + 3) = v63;
    v104 = v128;
    *(v103 + 4) = v85;
    *(v103 + 5) = v104;
    *(v103 + 6) = v75;
    (*(v99 + 32))(&v103[v102], v100, v101);
    v153 = type metadata accessor for SyncTaskScheduler();
    v154 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(&v150);

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_10026D658, &qword_1001EC9A0);
    sub_100006070(&qword_10026D660, &qword_10026D658, &qword_1001EC9A0);
    Promise.flatMap<A>(on:_:)();

    sub_100002C00(&v150);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v105 = v143;
    v106 = v144;
    v107 = *(v144 + 104);
    v62 = v141;
    LODWORD(v145) = enum case for DispatchQoS.QoSClass.default(_:);
    v107(v141);
    v108 = static OS_dispatch_queue.global(qos:)();
    (*(v106 + 8))(v62, v105);
    v136 = sub_100026C38(sub_10005C9BC, 0, v108);

    (*(v99 + 8))(v133, v135);
  }

  else
  {
    type metadata accessor for DebugSocketService();
    swift_allocObject();
    v58 = sub_1000C0F9C();
    v59 = swift_allocObject();
    v60 = v146;
    v59[2] = a1;
    v59[3] = v60;
    v59[4] = v58;
    v59[5] = v4;
    v61 = v60;

    v136 = sub_100101674(&unk_1001EC9B0, v59);
    LODWORD(v145) = enum case for DispatchQoS.QoSClass.default(_:);
    v62 = v141;
    v63 = v139;
  }

  v109 = swift_allocObject();
  swift_weakInit();
  v110 = v148;
  v111 = v138;
  v112 = v149;
  (*(v148 + 16))(v138, v147, v149);
  v113 = v110;
  v114 = (*(v110 + 80) + 40) & ~*(v110 + 80);
  v115 = (v137 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  v117 = v142;
  *(v116 + 2) = v109;
  *(v116 + 3) = v117;
  *(v116 + 4) = v63;
  (*(v113 + 32))(&v116[v114], v111, v112);
  *&v116[v115] = v140;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v118 = v143;
  v119 = v144;
  v142 = *(v144 + 104);
  v142(v62, v145, v143);
  v120 = v136;

  v121 = static OS_dispatch_queue.global(qos:)();
  v122 = *(v119 + 8);
  v122(v62, v118);
  v123 = sub_10010242C(sub_10005CF44, v116, v121, v120);

  v142(v62, v145, v118);
  v124 = static OS_dispatch_queue.global(qos:)();
  v122(v62, v118);
  sub_10002F25C(sub_1001017A8, 0, v124, v123);

  sub_10002F8B8(v146[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48]);
  v125 = sub_10002F38C(0x74756F656D6954, 0xE700000000000000);

  (*(v148 + 8))(v147, v149);
  return v125;
}

uint64_t sub_1000260C4()
{
  v1 = type metadata accessor for JSRequest();
  sub_100002CC4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[3];

  v7 = v0[4];

  v8 = v0[6];

  v9 = sub_100008428();
  v10(v9);
  v11 = sub_100012C90();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_100026180()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000261B8()
{
  v1 = type metadata accessor for Date();
  sub_100002CC4(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_100008428();
  v8(v7);
  v9 = sub_100012C90();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_100026278()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000262D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000262E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002636C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C878, &qword_1001EBCD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026438(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a1 + 16);
  *(v4 + 56) = *a1;
  v6 = *(a1 + 32);
  *(v4 + 72) = v5;
  *(v4 + 88) = v6;
  *(v4 + 104) = *(a1 + 48);
  v7 = *(a1 + 1);
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 136) = v7;
  v8 = *a4;
  v9 = a4[1];
  *(v4 + 176) = *(a4 + 4);
  *(v4 + 144) = v8;
  *(v4 + 160) = v9;
  return v4;
}

uint64_t sub_100026484(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000264E4()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v4[1] = sub_100009CC8;
  v6 = sub_100005F88();

  return v7(v6);
}

uint64_t sub_100026588()
{
  sub_1000061B4();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009CCC;

  return v8(v1);
}

void sub_100026674(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002671C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a7;
  v32 = a8;
  v30 = a6;
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = *(type metadata accessor for LogInterpolation() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v33[3] = type metadata accessor for EngagementService();
  v33[0] = a2;
  v20 = a2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v33);
  LogInterpolation.init(stringLiteral:)();
  v21 = static os_log_type_t.default.getter();
  sub_1000036B0(v21);

  v22 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v16, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v25 = v30;
  v24 = v31;
  v23[4] = a5;
  v23[5] = v25;
  v26 = v32;
  v23[6] = v24;
  v23[7] = v26;
  v23[8] = v20;
  v23[9] = a3;
  v23[10] = a4;
  v23[11] = a9;

  v27 = v20;

  sub_1000E349C();
}

uint64_t sub_1000269A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_100026A14()
{
  LODWORD(result) = sub_100024F14();
  if (!result)
  {
    goto LABEL_4;
  }

  type metadata accessor for Defaults();
  result = sub_10002E3EC(6);
  if (v1)
  {
    LODWORD(result) = 0;
LABEL_4:
    LODWORD(v2) = 1;
    return (result + (v2 << 16));
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result >> 16;
    if (!(result >> 16))
    {
      return (result + (v2 << 16));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100026A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

id sub_100026AEC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [objc_opt_self() currentProcess];
  v6 = [v4 ams_configurationWithProcessInfo:v5 bag:0];

  v7 = String._bridgeToObjectiveC()();
  [v6 set_sourceApplicationBundleIdentifier:v7];

  v8 = objc_allocWithZone(NSURLCache);
  v9 = sub_100030580(0, 10000000, 0, 0);
  [v6 setURLCache:v9];

  v12.receiver = v2;
  v12.super_class = type metadata accessor for AppURLSession();
  v10 = objc_msgSendSuper2(&v12, "initWithConfiguration:delegate:delegateQueue:", v6, 0, 0);

  sub_10000FF10(a1);
  return v10;
}

uint64_t sub_100026C38(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  sub_10007B9A4(&qword_10026D668, &qword_1001EC9C0);
  v6 = a3;
  v7 = Promise.__allocating_init()();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v10);
  return v7;
}

uint64_t sub_100026D5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100026D70()
{
  result = qword_10026FEB0;
  if (!qword_10026FEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026FEB0);
  }

  return result;
}

void sub_100026DB4(_OWORD *a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D7F8(a2);
  v9 = 0;
  v49 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];
  while (1)
  {
    if (v11 == v9)
    {
      sub_1000263DC(v44, &v50);
      v23 = swift_allocObject();
      v24 = a1[1];
      *(v23 + 16) = *a1;
      *(v23 + 32) = v24;
      v25 = a1[3];
      *(v23 + 48) = a1[2];
      *(v23 + 64) = v25;
      v26 = v51;
      *(v23 + 80) = v50;
      *(v23 + 96) = v26;
      v27 = v49;
      *(v23 + 112) = v52;
      *(v23 + 120) = v27;
      *(v23 + 128) = v10;
      v28 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
      v30 = v45;
      v29 = v46;
      v31 = v47;
      (*(v46 + 104))(v45, enum case for DispatchQoS.QoSClass.default(_:), v47);
      sub_10000F4A4(a1, &v50);
      v32 = static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v30, v31);
      *(&v51 + 1) = v28;
      v52 = &protocol witness table for OS_dispatch_queue;
      *&v50 = v32;
      sub_100002FB8();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10005F924;
      *(v33 + 24) = v23;
      v34 = objc_allocWithZone(NSLock);
      v35 = v32;

      v36 = [v34 init];
      sub_100002FB8();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v33;
      sub_100002FB8();
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v33;
      v39 = v36;
      swift_retain_n();
      v40 = v39;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(&v50);
      return;
    }

    if (v9 >= v10[2])
    {
      break;
    }

    v12 = v10[v9 + 4];
    v53 = 0x707954746E657665;
    v54 = 0xE900000000000065;

    AnyHashable.init<A>(_:)();
    if (!*(v12 + 16) || (v13 = sub_10000C818(&v50), (v14 & 1) == 0))
    {

      sub_10000E1E8(&v50);
      goto LABEL_17;
    }

    sub_100011BAC(*(v12 + 56) + 32 * v13, v55);
    sub_10000E1E8(&v50);

    if ((swift_dynamicCast() & 1) != 0 && (v15 = v57) != 0)
    {
      v43 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = v49[2];
        sub_10000DE9C();
        v49 = v21;
      }

      v16 = v49[2];
      v17 = v16 + 1;
      if (v16 >= v49[3] >> 1)
      {
        v42 = v16 + 1;
        v41 = v16;
        sub_10000DE9C();
        v17 = v42;
        v16 = v41;
        v49 = v22;
      }

      ++v9;
      v18 = v49;
      v49[2] = v17;
      v19 = &v18[2 * v16];
      v19[4] = v43;
      v19[5] = v15;
    }

    else
    {
LABEL_17:
      ++v9;
    }
  }

  __break(1u);
}

uint64_t sub_100027228()
{
  v1 = *(v0 + 48);

  sub_100002C00((v0 + 80));
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100027280()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000272C4(char a1)
{
  result = 0x79616C6544736ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      sub_10000BEB4();
      result = v5 + 7;
      break;
    case 3:
      sub_10000BEB4();
      result = v7 + 3;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6954646E65747865;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      sub_10000BEB4();
      result = v8 - 2;
      break;
    case 8:
      result = 0x636E79537473616CLL;
      break;
    case 9:
      result = 0x65747441636E7973;
      break;
    case 10:
      sub_10000BEB4();
      result = v10 + 2;
      break;
    case 11:
      result = 0x764F656372756F73;
      break;
    case 12:
      result = 0x727265764F6C7275;
      break;
    case 13:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      sub_10000BEB4();
      result = v4 + 15;
      break;
    case 15:
      sub_10000BEB4();
      result = v6 + 14;
      break;
    case 17:
      sub_10000BEB4();
      result = v9 + 20;
      break;
    default:
      sub_10000BEB4();
      result = v3 | 4;
      break;
  }

  return result;
}

Swift::Int sub_100027568(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000EF810(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10002765C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002765C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + (a3 << 6));
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      while (1)
      {
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[3];
        v32[2] = v9[2];
        v32[3] = v12;
        v32[0] = v10;
        v32[1] = v11;
        v13 = *(v9 - 4);
        v14 = *(v9 - 3);
        v15 = *(v9 - 1);
        v31[2] = *(v9 - 2);
        v31[3] = v15;
        v31[0] = v13;
        v31[1] = v14;
        sub_10000F4A4(v32, v30);
        sub_10000F4A4(v31, v30);
        v16 = sub_100027970();
        v18 = v17;
        if (v16 == sub_100027970() && v18 == v19)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000FF10(v31);
        result = sub_10000FF10(v32);
        if (v21)
        {
          if (!v5)
          {
            __break(1u);
            return result;
          }

          v22 = v9 - 4;
          v24 = v9[2];
          v23 = v9[3];
          v26 = *v9;
          v25 = v9[1];
          v27 = *(v9 - 3);
          *v9 = *(v9 - 4);
          v9[1] = v27;
          v28 = *(v9 - 1);
          v9[2] = *(v9 - 2);
          v9[3] = v28;
          *v22 = v26;
          v22[1] = v25;
          v9 -= 4;
          v22[2] = v24;
          v22[3] = v23;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10000FF10(v31);
      result = sub_10000FF10(v32);
LABEL_14:
      ++v4;
      v6 += 4;
      --v7;
      if (v4 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Swift::Int sub_100027804(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10002795C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100027568(v6);
  *a1 = v2;
  return result;
}

void sub_100027870(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_10007B9A4(&qword_100269F98, &qword_1001E74E8);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 64);
      if (a1)
      {
LABEL_12:
        sub_1000D6878((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v7)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100027970()
{
  v0[48];
  v1 = (*v0 & 1) == 0;
  v2 = qword_1001E7818[v0[1]];
  sub_100027C2C(0, 3, 0);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    sub_100004F98(v6);
  }

  _swiftEmptyArrayStorage[2] = v8;
  v9 = &_swiftEmptyArrayStorage[2 * v7];
  *(v9 + 4) = v3;
  *(v9 + 5) = v5;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100008244();
  if (v11)
  {
    sub_100004F98(v10);
  }

  _swiftEmptyArrayStorage[2] = v8;
  v12 = &_swiftEmptyArrayStorage[2 * v1];
  *(v12 + 4) = v3;
  *(v12 + 5) = v5;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100008244();
  if (v11)
  {
    sub_100004F98(v13);
  }

  _swiftEmptyArrayStorage[2] = v8;
  v14 = &_swiftEmptyArrayStorage[2 * v1];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_100006A34();
  sub_100006070(v15, &qword_1002704A0, &unk_1001ECCF0);
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

char *sub_100027B2C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10004F7A8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100027C2C(char *a1, int64_t a2, char a3)
{
  result = sub_100027B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100027C4C@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0xE900000000000073;
  v6 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v5 = 0xE800000000000000;
      v6 = 0x6C616E7265746E69;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v6 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v5 = 0xEF736E6F69746164;
      v6 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v13 = v6;

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);

  *a4 = a1;
  *(a4 + 1) = 0;
  *(a4 + 8) = v13;
  *(a4 + 16) = v5;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_100027E3C(unint64_t a1)
{
  v65 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v65 - 8);
  v3 = *(v2 + 8);
  __chkstk_darwin(v65);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v69 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v69);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchQoS();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  __chkstk_darwin(v15);
  v55 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v18 = sub_1000116AC(a1);
  sub_10007B9A4(&qword_10026C8A0, &unk_1001EBD30);
  v68 = v18;
  if (!v18)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    return Promise.__allocating_init(value:)();
  }

  v60 = v2;
  v50 = v15;
  v51 = v9;
  v52 = v6;
  v53 = v5;
  v49 = Promise.__allocating_init()();
  v63 = dispatch_group_create();
  v66 = swift_allocObject();
  *(v66 + 16) = _swiftEmptyArrayStorage;
  v19 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v61 = "rk completed with error: ";
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v20 = qword_1002878E8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v62 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
  v62 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = swift_allocObject();
  v69 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (v68 >= 1)
  {
    v61 = v19;
    v22 = 0;
    v59 = v67 & 0xC000000000000001;
    v58 = enum case for DispatchQoS.QoSClass.default(_:);
    v56 = (v60 + 8);
    v57 = (v60 + 104);
    do
    {
      if (v59)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v67 + 8 * v22 + 32);
      }

      ++v22;
      v24 = v63;
      dispatch_group_enter(v63);
      v25 = swift_allocObject();
      v26 = v62;
      v27 = v69;
      v25[2] = v62;
      v25[3] = v27;
      v28 = v65;
      v25[4] = v66;
      v25[5] = v24;
      v29 = v64;
      (*v57)(v64, v58, v28);

      v60 = v26;
      v30 = v24;
      v31 = v61;
      v32 = static OS_dispatch_queue.global(qos:)();
      (*v56)(v29, v28);
      v72 = v31;
      v73 = &protocol witness table for OS_dispatch_queue;
      aBlock[0] = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10006124C;
      *(v33 + 24) = v25;
      v34 = objc_allocWithZone(NSLock);
      v35 = v32;

      v36 = [v34 init];
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v33;
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v33;
      v39 = v36;
      swift_retain_n();
      v40 = v39;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(aBlock);
    }

    while (v68 != v22);
    v41 = swift_allocObject();
    v42 = v49;
    v41[2] = v66;
    v41[3] = v42;
    v41[4] = v69;
    v73 = sub_1000615BC;
    v74 = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v72 = &unk_10024A888;
    v43 = _Block_copy(aBlock);

    v44 = v55;
    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_1000140D0(&qword_10026CD50, &unk_100270490);
    v45 = v51;
    v46 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v60;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v43);

    (*(v52 + 8))(v45, v46);
    (*(v54 + 8))(v44, v50);

    return v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028764()
{
  v1 = *(v0 + 16);

  v2 = sub_100005254();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000287B4(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  CFPreferencesGetAppBooleanValue(v5, v6, v7);

  return 2;
}

uint64_t sub_1000288B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v51 = a3;
  v52 = a4;
  v53 = a1;
  v54 = a2;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100002CC4(v57);
  v60 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_100012F7C();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100002CC4(v12);
  v58 = v14;
  v59 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  sub_10005E2AC();
  v17 = type metadata accessor for DispatchTime();
  v50 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_1000056E8();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v48 - v24;
  v26 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = sub_100002CC4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  v34 = v33 - v32;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v29 + 104))(v34, enum case for DispatchQoS.QoSClass.default(_:), v26);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v29 + 8))(v34, v26);
  static DispatchTime.now()();
  + infix(_:_:)();
  v49 = *(v18 + 8);
  v49(v22, v17);
  static DispatchQoS.background.getter();
  sub_100004AA0();
  v35 = swift_allocObject();
  swift_weakInit();
  sub_100007A3C();
  v36 = swift_allocObject();
  v37 = v53;
  v38 = v54;
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v38;
  v66 = v55;
  v67 = v36;
  sub_1000181CC();
  v63 = 1107296256;
  sub_100007A28();
  v64 = v39;
  v65 = v56;
  v40 = _Block_copy(aBlock);
  v61 = _swiftEmptyArrayStorage;
  sub_10000B890();
  sub_100005DC0(v41, v42);

  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v43, v44);
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v48;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v40);

  (*(v60 + 8))(v6, v45);
  (*(v58 + 8))(v7, v59);
  v49(v25, v50);
}

uint64_t sub_100028D04(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100002CC4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1000034A4();
  v9 = *(v3 + 72);
  *v2 = v9;
  v10 = sub_100006638();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100005A90();
  v14(v13, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  sub_10000602C();
  v17 = *(v3 + 16);

  v5 = sub_100012A40(v15, v16, v17);

  if (v5)
  {
    v18 = qword_100268710;

    if (v18 == -1)
    {
LABEL_4:

      sub_100008FE8();
      sub_10004F504();
      goto LABEL_8;
    }

LABEL_10:
    sub_100006F8C();
    swift_once();
    goto LABEL_4;
  }

  v25 = *(a1 + 24);
  type metadata accessor for Worker();
  v5 = swift_allocObject();
  sub_1000290FC(a1, 5);

  sub_100027D8C(&v25, v24);
  v19 = qword_100268710;

  if (v19 != -1)
  {
    sub_100006F8C();
    swift_once();
  }

  swift_retain_n();

  sub_100008FE8();
  sub_100029470();
  sub_10000619C();
  v20 = *(v3 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + 16);
  sub_100007F3C();
  sub_100029498();
  *(v3 + 16) = v23;
  swift_endAccess();
  sub_10000619C();
  v21 = *(v3 + 48);
  sub_1000294AC((v3 + 32), *(v3 + 40));
  swift_endAccess();
LABEL_8:

  return v5;
}

uint64_t sub_100028F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100028D04(a2);
  if (qword_100268710 != -1)
  {
    sub_1000063EC();
  }

  sub_100015AEC();
  sub_100029688();
  sub_1000083D8();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;

  sub_1000298A0(a7, v12);

  sub_10002A3E4(v13);
}

uint64_t sub_1000290FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  v3 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 32);
  *(v2 + 16) = sub_100029140(_swiftEmptyArrayStorage, 0);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  return v2;
}

uint64_t sub_100029140(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_100029188()
{
  sub_100003D74();
  v4 = v3;
  v6 = v5;
  v7 = sub_100012D2C();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005478();
  v11 = *(v2 + 16);
  v12 = static os_log_type_t.default.getter();
  if (sub_100006114(v12))
  {
    v23 = v6;
    v24 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    sub_1000056F8();
    *(sub_10000E6EC() + 16) = xmmword_1001E6580;
    v26 = type metadata accessor for PriorityQueue();
    v25[0] = v1;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011630();

    sub_100002C00(v25);
    LogInterpolation.init(stringLiteral:)();
    sub_10000DD58();
    v18._countAndFlagsBits = v23;
    v18._object = v4;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v26 = type metadata accessor for Worker();
    v25[0] = v0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v19 = sub_100002C5C(v25);
    sub_100003B48(v19);
    v20 = LogInterpolation.init(stringInterpolation:)();
    v21 = PriorityQueue.debugDescription.getter(v20);
    sub_100008794(v21, v22, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v25);
    sub_1000036B0(v24);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_1000293BC()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 280);

  return sub_1000253FC(v2, v3);
}

uint64_t sub_1000293DC()
{

  return swift_once();
}

uint64_t sub_1000293FC()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_1000294AC(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v4 = *(*a1 + 16);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *(*a1 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_2:
  result = specialized ContiguousArray._endMutation()();
  while (v4)
  {
    v7 = v4;
    v8 = *a1;
    v9 = *(*a1 + 16);
    if (v4 >= v9)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v8 + 32;
    v21 = *(v8 + 32 + 8 * v4);
    v4 = (v4 - 1) >> 1;
    if (v4 >= v9)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 8 * v4);

    v11 = a2(&v21, &v20);

    if ((v11 & 1) == 0)
    {
      return result;
    }

    if (v7 != v4)
    {
      v12 = *(v8 + 16);
      if (v7 < v12)
      {
        if (v4 < v12)
        {
          v13 = *(v10 + 8 * v7);
          v14 = *(v10 + 8 * v4);

          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v8;
          if ((result & 1) == 0)
          {
            result = sub_10002B89C(v8);
            v8 = result;
            *a1 = result;
          }

          if (v7 < *(v8 + 16))
          {
            v15 = v8 + 8 * v7;
            v16 = *(v15 + 32);
            *(v15 + 32) = v14;

            specialized ContiguousArray._endMutation()();
            v17 = *a1;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v17;
            if ((result & 1) == 0)
            {
              result = sub_10002B89C(v17);
              v17 = result;
              *a1 = result;
            }

            if (v4 < *(v17 + 16))
            {
              v18 = v17 + 8 * v4;
              v19 = *(v18 + 32);
              *(v18 + 32) = v13;

              goto LABEL_2;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  return result;
}

void sub_100029688()
{
  sub_100003D74();
  v1 = sub_100012D2C();
  v2 = sub_100003D10(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100005478();
  v5 = *(v0 + 16);
  v6 = static os_log_type_t.default.getter();
  if (sub_100006114(v6))
  {
    v18 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_10000A1C0();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    sub_1000056F8();
    v10 = swift_allocObject();
    sub_1000059F0(v10, xmmword_1001E6580);
    v11 = type metadata accessor for PriorityQueue();
    sub_10000767C(v11);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100017F90();
    }

    else
    {
      sub_10000A640();
    }

    sub_10000494C();

    sub_100002C00(v19);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0x6965756575716E45;
    v12._object = 0xEE00206F7420676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v13 = type metadata accessor for Worker();
    sub_10000727C(v13);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v14 = sub_100002C5C(v19);
    sub_100003B48(v14);
    v15 = LogInterpolation.init(stringInterpolation:)();
    v16 = PriorityQueue.debugDescription.getter(v15);
    sub_100008794(v16, v17, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v19);
    sub_1000036B0(v18);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_100029994()
{
  v1 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000299CC()
{
  v1 = v0[3];
  if ((v1 & 1) == 0 || (v2 = *v0, result = swift_isUniquelyReferenced_nonNull(), *v0 = v2, (result & 1) == 0))
  {
    v4 = v0[2];
    result = (v1 >> 1) - v4;
    if (__OFSUB__(v1 >> 1, v4))
    {
      __break(1u);
    }

    else
    {

      return sub_100029A40(result);
    }
  }

  return result;
}

uint64_t sub_100029A40(void *a1)
{
  v5 = sub_100029AC4(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = sub_10002A064();
  sub_100029C98(&v5, a1, 0, v3);
}

void *sub_100029AC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_100029C84(v6, v25);
}

uint64_t sub_100029C98(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = (v7 - a2);
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = &v14[-v13];
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v4;
  v39 = v15;
  v18 = v9 + 32;
  v19 = v9 + 32 + 16 * a2;
  v37 = v19 + 16 * a3;
  result = sub_100029F0C(v7);
  v38 = v9;
  if (result)
  {
    v20 = result;
    v35 = v13;
    v36 = v4[2];
    v21 = v4[1] + 16 * v36;
    v22 = result + 32;
    sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
    swift_arrayDestroy();
    sub_10004F7A4(v21, a2, v18);
    swift_arrayDestroy();
    a4(v19, a3);
    sub_10004F7A4(v21 + 16 * a2 + 16 * v39, v35, v37);
    v23 = v22 + 16 * *(v20 + 16) - (v21 + 16 * v7);
    swift_arrayDestroy();
    *(v20 + 16) = 0;
    v24 = v36;

LABEL_15:
    v31 = *v16;

    swift_unknownObjectRelease();
    result = sub_100029140(v38, v24);
    *v16 = result;
    v16[1] = v32;
    v16[2] = v33;
    v16[3] = v34;
    return result;
  }

  v24 = v4[2];
  v25 = v24 + a2;
  if (__OFADD__(v24, a2))
  {
    goto LABEL_21;
  }

  v26 = a2;
  if (v25 < v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v25, v24))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = a4;
  v28 = v16[1];
  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  swift_arrayInitWithCopy();
  result = v27(v18 + 16 * v26, a3);
  v29 = &v39[v25];
  if (__OFADD__(v25, v39))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v16[3] >> 1;
  if (v30 < v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v30, v29))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100029F0C(void *a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  if ((v10 + 16 * v8) != &v11[2 * v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v16 = (v14 >> 1) - v12;
  v17 = __OFADD__(v8, v16);
  v13 = v8 + v16;
  if (!v17)
  {
LABEL_10:
    if (v13 < a1)
    {
      return 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = _swiftEmptyArrayStorage;
    }

    v18 = (v10 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v8 + v18;
    if (!__OFADD__(v8, v18))
    {
      v5 = a1[2];
      if (isUniquelyReferenced_nonNull >= v5)
      {
        return a1;
      }

LABEL_19:
      sub_10018BA60(isUniquelyReferenced_nonNull, v5, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A080(uint64_t result)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
LABEL_11:

    return sub_100029A40(v1);
  }

  v1 = result;
  if (v3)
  {
    v6 = *v2;
    v7 = v2[1];
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = _swiftEmptyArrayStorage;
    }

    v9 = v8[2];
    if ((v7 + 16 * v4 + 16 * v5) == &v8[2 * v9 + 4])
    {
      v10 = v8[3];

      v11 = (v10 >> 1) - v9;
      v12 = __OFADD__(v5, v11);
      v5 += v11;
      if (v12)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  if (v5 < v1 + 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_10002A180(void *result, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = result - v7 + 1;
  if (__OFSUB__(result + 1, v7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v9)
  {
LABEL_10:
    v17 = (v3[1] + 16 * v4 + 16 * v8);
    *v17 = a2;
    v17[1] = a3;
    return result;
  }

  v12 = *v3;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v13 = result[2];
  v14 = __OFADD__(v13, v9);
  v15 = &v9[v13];
  if (v14)
  {
    goto LABEL_13;
  }

  result[2] = v15;

  v16 = &v9[v6];
  if (__OFADD__(v6, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v3[3] = v5 & 1 | (2 * v16);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10002A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.default.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for Worker();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    sub_1000180F0();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    sub_10018B640();
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_10002A660()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002B268()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002B2C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (qword_100268710 != -1)
  {
    sub_1000063EC();
  }

  v11 = qword_100287870;

  v12 = sub_10002CFFC(v11, a3);
  a4(v12);
  sub_1000083D8();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a6;
  v13[4] = a1;
  v13[5] = a2;
  sub_1000083D8();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;
  v15 = *(a3 + 72);
  v18[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18[4] = &protocol witness table for OS_dispatch_queue;
  v18[0] = v15;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v16 = v15;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v18);
}

unint64_t sub_10002B80C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B830()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v1);
    v1 = result;
    *v0 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    specialized ContiguousArray._endMutation()();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002B8B0()
{
  if (*(*v0 + 16))
  {
    if (!sub_10002B830())
    {
      v1 = *(*v0 + 16) - 1;

      sub_10018BE20(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002B900(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for Worker();
    v5 = *(v4 + 8 * v2);
    sub_10002B97C();
    if (v6)
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_10002B97C()
{
  sub_100003D74();
  v1 = *(v0 + 49);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v6 + 49);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v10 = *(v6 + 72);
  v11 = *(v6 + 80);
  if (sub_10002BA30(*(v0 + 48), *(v6 + 48)))
  {
    v12 = v4 == v10 && v5 == v11;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 != v8 || v3 != v9))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_100005F14();
}

uint64_t sub_10002BA30(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  v4 = a1;
  v5 = 0x636974796C616E61;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6C616E7265746E69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = sub_1000058B4();
      break;
    case 3:
      v5 = 0x6E656D6D6F636572;
      v6 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34();
  }

  return v8 & 1;
}

void sub_10002BBA4()
{
  sub_100003D74();
  v38 = v1;
  v3 = v2;
  v37 = v4;
  v6 = v5;
  v8 = v7;
  sub_100003EFC();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_10001C064();
  if (qword_1002686F0 != -1)
  {
    sub_100006C90();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v15 = *(v14 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v41 = type metadata accessor for EngagementService();
  v39 = v0;
  v16 = v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v39);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20676E696E6E7552;
  v17._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  if (v37)
  {
    if (v37 == 1)
    {
      v18 = 0xEF636E7953746867;
      v19 = 0x696577746867696CLL;
    }

    else
    {
      v18 = 0xE400000000000000;
      v19 = 1668184435;
    }
  }

  else
  {
    v18 = 0xE700000000000000;
    v19 = 0x65756575716E65;
  }

  v41 = &type metadata for String;
  v39 = v19;
  v40 = v18;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v20, v21);
  v22._countAndFlagsBits = 0x7473657571657220;
  v22._object = 0xEF203A7070612820;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v3[1];
  v41 = &unk_1002471C0;
  LOBYTE(v39) = v23;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v24, v25);
  sub_100004810();
  v26._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v27 = *v3;
  v41 = &type metadata for Bool;
  LOBYTE(v39) = v27;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v28, v29);
  v30._countAndFlagsBits = 0x69726F697270202CLL;
  v30._object = 0xEC000000203A7974;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  v31 = sub_100027970();
  v41 = &type metadata for String;
  v39 = v31;
  v40 = v32;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v33, v34);
  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
  LogInterpolation.init(stringInterpolation:)();
  v36 = static os_log_type_t.default.getter();
  sub_1000036B0(v36);

  v38(v3, v8, v6);
  sub_100005F14();
}

uint64_t sub_10002BEDC(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_100060638, v5);
}

void sub_10002C26C()
{
  sub_100003D74();
  v2 = v1;
  sub_10000AF94();
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005478();
  v7 = *(v0 + 16);
  v8 = static os_log_type_t.default.getter();
  if (sub_100003F9C(v8))
  {
    v22 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    sub_10000C0C4();
    v12 = swift_allocObject();
    sub_1000059F0(v12, xmmword_1001E6580);
    v13 = type metadata accessor for PriorityQueue();
    sub_10000727C(v13);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100017F90();
    }

    else
    {
      sub_10000A640();
    }

    sub_10000494C();

    sub_100002C00(v23);
    sub_10000B3CC();
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0x6E696E7275746572;
    v15._object = 0xEB00000000203A67;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v16 = *v2;
    if (v16)
    {
      v17 = type metadata accessor for Worker();
    }

    else
    {
      v17 = 0;
      v23[1] = 0;
      v23[2] = 0;
    }

    v23[0] = v16;
    v23[3] = v17;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v18 = sub_100002C5C(v23);
    sub_100003B48(v18);
    LogInterpolation.init(stringInterpolation:)();
    sub_100012F98();
    v20 = PriorityQueue.debugDescription.getter(v19);
    sub_100008794(v20, v21, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v23);
    sub_1000036B0(v22);

    sub_100005F14();
  }

  else
  {
    sub_100005F14();
  }
}

uint64_t sub_10002C4B4()
{
  if (v0[1])
  {
    return 0x72656972726162;
  }

  result = 0x636974796C616E61;
  switch(*v0)
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0x7379656E72756F6ALL;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10002C574()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = sub_100012D2C();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005478();
  v9 = *(v0 + 16);
  v10 = static os_log_type_t.default.getter();
  if (sub_100006114(v10))
  {
    v23 = v4;
    v24 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v13 = *(v12 + 72);
    sub_1000056F8();
    *(sub_10000E6EC() + 16) = xmmword_1001E6580;
    v14 = type metadata accessor for PriorityQueue();
    sub_10000767C(v14);
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011630();

    sub_100002C00(v25);
    sub_100007BB4();
    LogInterpolation.init(stringLiteral:)();
    sub_10000DD58();
    v17._countAndFlagsBits = v23;
    v17._object = v2;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v18 = type metadata accessor for Worker();
    sub_10000727C(v18);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v19 = sub_100002C5C(v25);
    sub_100003B48(v19);
    v20 = LogInterpolation.init(stringInterpolation:)();
    v21 = PriorityQueue.debugDescription.getter(v20);
    sub_100008794(v21, v22, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v25);
    sub_1000036B0(v24);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_10002C91C(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100002CC4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000034A4();
  v8 = v1[9];
  *v2 = v8;
  v9 = sub_100006638();
  v10(v9);
  v11 = v8;
  _dispatchPreconditionTest(_:)();
  v12 = sub_100005A90();
  result = v13(v12, v4);
  if (v8)
  {
    v15 = a1[9];
    v16 = a1[10];
    if (sub_10002CB00() == v15 && v17 == v16)
    {
    }

    else
    {
      sub_10000771C();
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        sub_10000602C();
        v20 = sub_10018A3D8(v1[4]);
        if (v20)
        {
          v21 = *(v20 + 72);
          v22 = *(v20 + 80);
          if (v1[10] == v21 && v1[11] == v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          if (a1[12] >= a1[11])
          {
            if (v15 == v21 && v16 == v22)
            {

              v25 = 1;
            }

            else
            {
              sub_100007F3C();
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v25 = v24 & v27 ^ 1;
            }
          }

          else
          {

            v25 = v24 ^ 1;
          }

          return v25 & 1;
        }
      }
    }

    v25 = 0;
    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CB00()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
  }

  else
  {
    v1 = sub_10018AEEC();
    v3 = *(v0 + 88);
    *(v0 + 80) = v1;
    *(v0 + 88) = v4;
  }

  return v1;
}

void sub_10002CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.default.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for Worker();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    sub_10018B640();
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_10002CCF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_10002CE28(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_10002CDAC(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CDAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10002CE28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_10002D088()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 40);
  sub_10002BBA4();
}

uint64_t sub_10002D0CC(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
  v4 = *&v1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 8];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  v6 = v3[2];
  v7 = v3[3];
  v8 = *&v1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 8];

  swift_unknownObjectRetain();
  if (v5 == sub_10002D7EC() && v4 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      swift_unknownObjectRelease();

LABEL_8:
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A610();
      v12 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v12);
      v14 = *(v13 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v36 = type metadata accessor for EngagementService();
      v34 = v1;
      v15 = v1;
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v34);
      v36 = &type metadata for String;
      v34 = 0xD00000000000001DLL;
      v35 = 0x80000001001F72A0;
      static LogInterpolation.safe(_:)();
      sub_10000A0C4(&v34, &qword_10026D350);
      v24 = static os_log_type_t.debug.getter();
      sub_1000036B0(v24);

      type metadata accessor for JSAppEngine();
      sub_100002FB8();
      swift_allocObject();
      sub_10000F4A4(a1, &v34);
      v25 = sub_10002D6B8(a1);

      v26 = sub_10002D7EC();
      v27 = *v3;
      v28 = v3[1];
      v29 = v3[2];
      v30 = v3[3];
      *v3 = v26;
      v3[1] = v31;
      v3[2] = v25;
      v3[3] = &off_10024BC70;
      sub_10002DA34(v27, v28);
      return sub_100007F3C();
    }
  }

  if (qword_1002686F0 != -1)
  {
    sub_100006C90();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v18 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v18);
  v20 = *(v19 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v36 = type metadata accessor for EngagementService();
  v34 = v1;
  v21 = v1;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v34);
  v36 = &type metadata for String;
  v34 = 0xD00000000000001FLL;
  v35 = 0x80000001001F72C0;
  static LogInterpolation.safe(_:)();
  sub_10000A0C4(&v34, &qword_10026D350);
  v32 = static os_log_type_t.debug.getter();
  sub_1000036B0(v32);

  return sub_100007F3C();
}

uint64_t sub_10002D4EC(unint64_t a1)
{
  v2 = v1 + 1;
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = sub_10002B80C(a1, v1[1]);
  v7 = v4 - 1;
  if (!v7 || (type metadata accessor for Worker(), sub_10002B80C(a1, v3), sub_10002B80C(v7, v3), sub_10002B97C(), v9 = v8, , , (v9 & 1) != 0))
  {
LABEL_12:
    sub_10002B8B0();

    return v6;
  }

  v10 = v1[2];
  v11 = v1[3];
  v18 = sub_10002B80C(a1, v3);
  v17 = sub_10002B80C(*(v3 + 16) - 1, v3);
  v12 = v10(&v18, &v17);

  v13 = sub_10002B80C(*(v3 + 16) - 1, v3);
  if ((v12 & 1) == 0)
  {
    sub_10018A7A8(v2, v10, v11, a1, v13);

    goto LABEL_12;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v3);
    v3 = result;
    *v2 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a1)
  {
    v15 = v3 + 8 * a1;
    v16 = *(v15 + 32);
    *(v15 + 32) = v13;

    specialized ContiguousArray._endMutation()();
    sub_10002B8B0();

    sub_10018A50C(v2, v10, v11, a1);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D6B8(_OWORD *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  v4 = objc_allocWithZone(type metadata accessor for JSRuntime());
  *(v2 + 24) = sub_10002D750(a1);
  return v2;
}

uint64_t type metadata accessor for JSRuntime()
{
  result = qword_10026D538;
  if (!qword_10026D538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002D750(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC14amsengagementd9JSRuntime_date;
  v5 = type metadata accessor for Date();
  sub_10000A7C0(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for JSRuntime();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10002D7EC()
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100002EF0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000078F0();
  if (*(v1 + 48) - 1 > 1)
  {
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    v11 = 0xE900000000000073;
    v12 = 0x636974796C616E61;
    v13 = v10;
    switch(*(v1 + 1))
    {
      case 1:
        v11 = 0xE800000000000000;
        v12 = 0x6C616E7265746E69;
        break;
      case 2:
        v11 = 0xE800000000000000;
        v12 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v11 = 0xEF736E6F69746164;
        v12 = 0x6E656D6D6F636572;
        break;
      default:
        break;
    }

    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    *(v10 + 48) = String.init<A>(_:)();
    *(v13 + 56) = v14;
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_100006A34();
    sub_100006070(v15, &qword_1002704A0, &unk_1001ECCF0);
    v9 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {
    UUID.init()();
    v9 = UUID.uuidString.getter();
    (*(v6 + 8))(v2, v0);
  }

  return v9;
}

uint64_t sub_10002DA34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002DB2C()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002DB84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_100009F04(v7);
  *v8 = v9;
  v8[1] = sub_100009BE8;
  v10 = sub_1000077B0();

  return v11(v10);
}

uint64_t sub_10002DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v6[2] = a6;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v6[3] = v12;
  v13 = *(*(sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v6[4] = v14;
  v15 = swift_task_alloc();
  v6[5] = v15;
  v6[6] = _Block_copy(a5);
  v6[7] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v15, v12, v9);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = 1;
  sub_10000A7C0(v15, v16, 1, v9);
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v14, v12, v9);
    v17 = 0;
  }

  sub_10000A7C0(v14, v17, 1, v9);

  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1001BE274;

  return sub_10002DE9C();
}

uint64_t sub_10002DE9C()
{
  sub_100004768();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  v1[33] = swift_getObjectType();
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v6);
  v1[34] = v7;
  v1[35] = *(v8 + 64);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v9);
  v11 = *(v10 + 64);
  v1[38] = sub_100023C0C();
  v12 = sub_1000047B0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10002DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v17 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100015AC0();
  *(v14 + 312) = v15;
  *(v14 + 320) = v16;
  if (qword_100268738 != -1)
  {
    sub_100004E84();
  }

  v18 = *(v14 + 304);
  v19 = *(v14 + 256);
  v20 = *(v14 + 224);
  v40 = qword_100287898;
  v41 = *(v14 + 232);
  *(v14 + 328) = qword_100287898;
  *(v14 + 336) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v21);
  *(v14 + 344) = *(v22 + 72);
  *(v14 + 456) = *(v23 + 80);
  v24 = swift_allocObject();
  v25 = sub_100006044(v24, xmmword_1001E5F70);
  *(v14 + 352) = v25;
  *(v14 + 40) = v25;
  *(v14 + 16) = v19;

  sub_100007324();
  sub_1001BF354();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v26._countAndFlagsBits = 0xD00000000000001CLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  *(v14 + 72) = sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  *(v14 + 48) = v20;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v27 = sub_10000A00C(v14 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100012FBC(v27);
  sub_100015B10();
  v28 = static os_log_type_t.info.getter();
  sub_1000091D0(v28);

  *(v14 + 360) = sub_100015E2C();
  sub_1000058A4(&dword_1001EBD70);
  v42 = v29;
  v30 = swift_task_alloc();
  *(v14 + 368) = v30;
  *v30 = v14;
  sub_10001CC4C(v30);
  sub_10000A820();

  return v31(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v42, a12, a13, a14);
}

uint64_t sub_10002E1E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100006CA4();
}

id sub_10002E1F4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 1);
  sub_100030F40(*(a3 + 1));
  v15 = type metadata accessor for JSStackContext();
  v16 = v15[6];
  sub_1000310D0(v14, 0);
  URL.appendingPathComponent(_:)();
  v17 = a5 + v15[7];
  URL.appendingPathExtension(_:)();
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_1000338E0(v14, a5 + v15[5]);
  sub_10001E78C(v14);
  v19 = a5 + v15[9];
  URL.appendingPathComponent(_:)();
  v18(v13, v9);
  v20 = a5 + v15[10];
  sub_10001DFD8(v14, 0x6B63617074656ALL, 0xE700000000000000);
  sub_10001EC70(a2, a5 + v15[8]);
  *(a5 + v15[11]) = a1 & 1;
  v21 = v24;
  *(a5 + v15[12]) = v24;

  return v21;
}

uint64_t sub_10002E3EC(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  CFPreferencesGetAppIntegerValue(v5, v6, v7);

  return 0;
}

uint64_t sub_10002E500(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_10002E810(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for JSRoute();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  JSRoute.init(service:function:)();
  v26 = v4;
  v11 = *(v4 + 16);
  v25 = v10;
  v27 = v3;
  v11(v8, v10, v3);
  result = JSRequest.init(route:timeoutInterval:version:)();
  v13 = 0;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v18 = v13;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(a2 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_100011BAC(*(a2 + 56) + 32 * v20, v28);
      *&v29 = v23;
      *(&v29 + 1) = v22;
      sub_100002C4C(v28, &v30);

LABEL_10:
      v32 = v29;
      v33[0] = v30;
      v33[1] = v31;
      if (!*(&v29 + 1))
      {
        break;
      }

      sub_100002C4C(v33, &v29);
      JSRequest.addOption(_:withName:)();

      result = sub_100002C5C(&v29);
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return (*(v26 + 8))(v25, v27);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        v16 = 0;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        goto LABEL_10;
      }

      v16 = *(a2 + 64 + 8 * v18);
      ++v13;
      if (v16)
      {
        v13 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002F144()
{
  JSONObject.untyped.getter();
  if (v3)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002C5C(v2);
    return 0;
  }
}

id sub_10002F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
  v11[0] = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  v11[1] = v6;
  v7 = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
  v11[2] = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
  v11[3] = v7;
  v8 = objc_allocWithZone(type metadata accessor for AppURLSession());
  sub_10000F4A4(v11, &v10);
  return sub_100026AEC(v11);
}

uint64_t sub_10002F25C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v12[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a3;
  v8 = a3;
  v9 = Promise.__allocating_init()();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v12);
  return v9;
}

uint64_t sub_10002F3C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v22 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = swift_task_alloc();
  v10 = sub_100004ABC(v9);
  *v10 = v11;
  v10[1] = sub_100009CC8;
  sub_100005F88();
  sub_10000A820();

  return sub_10002F4A8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10002F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v13;
  *(v8 + 224) = v12;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 200) = a6;
  v9 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10002F550, 0, 0);
}

uint64_t sub_10002F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  v17 = sub_1000116AC(v13[25]);
  v13[32] = v17;
  if (v17)
  {
    v18 = v13[25];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v13[33] = v19;
      v13[34] = 1;
      sub_1000058A4(&unk_1001EBD18);
      v52 = v31;
      v32 = swift_task_alloc();
      v13[35] = v32;
      *v32 = v13;
      sub_100007FAC(v32);
      sub_10000481C();

      return v33(v33, v34, v35, v36, v37, v38, v39, v40, v52, a10, a11, a12);
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v18 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_10001D730();
  v20 = *(v12 + 16);

  v21 = Promise.isResolved.getter();

  if ((v21 & 1) == 0)
  {
    if (qword_1002686F0 == -1)
    {
LABEL_6:
      sub_10000F3F0();
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v22 = sub_10000C3AC();
      sub_100002CFC(v22);
      v24 = *(v23 + 72);
      sub_1000056F8();
      v25 = sub_100015C9C();
      v13[5] = sub_1000F12D0(v25, xmmword_1001E5F70);
      v13[2] = v16;
      v26 = v16;
      sub_100015A84();
      sub_100002C00(v13 + 2);
      sub_10000DD34();
      v27 = static os_log_type_t.default.getter();
      sub_1000036B0(v27);

      sub_10000602C();
      v28 = *(v14 + 16);
      v29 = v13[26];
      if (v15)
      {
        v30 = *(v14 + 16);
      }

      else
      {
        sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
        v42 = objc_allocWithZone(AMSEngagementEnqueueResult);

        v13[23] = [v42 init];
        Promise.__allocating_init(value:)();
      }

      sub_100019C18();
      sub_100061EDC();

      goto LABEL_15;
    }

LABEL_19:
    sub_100006C90();
    swift_once();
    goto LABEL_6;
  }

LABEL_15:
  v43 = v13[31];

  sub_100002D8C();
  sub_10000481C();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_10002F804()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  sub_100061DE4(v2);
  sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
  sub_10001CD6C();
  *v0 = v3;
  sub_100017EE4();
  sub_10000522C();
  v4 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
}

double sub_10002F8B8(char a1)
{
  type metadata accessor for Defaults();
  v2 = sub_1000287B4(5);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = dbl_1001E7800[a1];
  }

  else
  {
    v3 = 600.0;
  }

  v4 = sub_10002E3EC(4);
  if (v5)
  {
    v4 = -0.0;
  }

  return v3 + v4;
}

uint64_t sub_10002F940()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = sub_10007B9A4(&qword_10026D638, &qword_1001EC980);
  v11 = sub_100003D10(v10);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = type metadata accessor for Date();
  v20 = sub_100002CC4(v19);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v23);
  v29 = &v62 - v28;
  v30 = *(v0 + 16);
  if (v30)
  {
    sub_10007B9A4(&qword_10026D650, &qword_1001EC988);
    v86[0] = v30;

    return Promise.__allocating_init(value:)();
  }

  else
  {
    v62 = v27;
    v64 = v26;
    v67 = v25;
    v32 = *(v0 + 24);
    v69 = v24;
    v70 = v32;
    v73 = *(v32 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
    if (v73)
    {
      v75 = *(v32 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    }

    else
    {
      v75 = 0;
    }

    v74 = v0;
    v65 = v9;
    v66 = v4;
    v68 = v1;
    v72 = v29;
    Date.init()();
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v33);
    v35 = *(v34 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v87 = type metadata accessor for JSAppEngine();
    v86[0] = v74;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v86);
    LogInterpolation.init(stringLiteral:)();
    v36 = static os_log_type_t.info.getter();
    sub_1000036B0(v36);

    v37 = objc_opt_self();
    v38 = v70 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config;
    v39 = [*(v70 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 8) accountMediaType];
    v71 = [v37 ams_sharedAccountStoreForMediaType:v39];

    type metadata accessor for BaseObjectGraph();
    static BaseObjectGraph.build(withName:)();
    v40 = type metadata accessor for Bag();
    sub_10000A7C0(v18, 1, 1, v40);
    if (v38[48])
    {
      if (qword_1002685F8 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();
      Bag.init(from:)();
      sub_10000A064(v18, &qword_10026D638, &qword_1001EC980);
      sub_10000A7C0(v16, 0, 1, v40);
      sub_100101D8C(v16, v18);
    }

    sub_100003CA8(v86, v87);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    v41 = v84;
    v42 = v85;
    sub_100003CA8(v83, v84);
    sub_10003035C(v40, v18, v41, v40, v42, v82);
    sub_100003CA8(v82, v82[3]);
    sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
    v63 = v18;
    sub_100007A3C();
    v43 = swift_allocObject();
    v44 = v73;
    v43[2] = v75;
    v43[3] = v44;
    v45 = v70;
    v43[4] = v70;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_100026ABC;
    *(v46 + 24) = v43;

    v47 = v45;
    AsyncObjectGraphBuilder.satisfying<A>(_:with:)();

    sub_100003CA8(v81, v81[3]);
    sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
    v79[0] = *(v38 + 1);
    sub_10000C3DC();
    sub_100003CA8(v80, v80[3]);
    sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
    v78[0] = v71;
    sub_10000C3DC();
    sub_100003CA8(v79, v79[3]);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    sub_100003CA8(v78, v78[3]);
    type metadata accessor for JSStack();
    sub_100007A3C();
    v48 = swift_allocObject();
    v49 = v75;
    v48[2] = v75;
    v48[3] = v44;
    v48[4] = v47;

    v50 = v47;
    dispatch thunk of AsyncObjectGraphBuilder.satisfying<A>(_:with:)();

    sub_100003CA8(v77, v77[3]);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    sub_100003CA8(v76, v76[3]);
    v70 = dispatch thunk of AsyncObjectGraphBuilder.makeObjectGraph()();
    sub_100002C00(v76);
    sub_100002C00(v77);
    sub_100002C00(v78);
    sub_100002C00(v79);
    sub_100002C00(v80);
    sub_100002C00(v81);
    sub_100002C00(v82);
    sub_100002C00(v83);
    v51 = v67;
    v52 = v64;
    v53 = v69;
    (*(v67 + 16))(v64, v72, v69);
    v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v55 = (v62 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v49;
    *(v56 + 24) = v44;
    (*(v51 + 32))(v56 + v54, v52, v53);
    *(v56 + v55) = v74;
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v57 = v65;
    v58 = v66;
    v59 = v68;
    (*(v66 + 104))(v65, enum case for DispatchQoS.QoSClass.default(_:), v68);

    v60 = static OS_dispatch_queue.global(qos:)();
    (*(v58 + 8))(v57, v59);
    v31 = sub_10010242C(sub_1000387C4, v56, v60, v70);

    sub_10000A064(v63, &qword_10026D638, &qword_1001EC980);
    (*(v51 + 8))(v72, v53);
    sub_100002C00(v86);
  }

  return v31;
}

uint64_t sub_100030264()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100030294()
{
  v1 = type metadata accessor for Date();
  sub_100002CC4(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = sub_100008428();
  v7(v6);
  v8 = *(v0 + v4);

  v9 = sub_100012C90();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10003035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23[0] = a1;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v23 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a2, v11);
  if (sub_100009F34(v16, 1, a4) == 1)
  {
    (*(v12 + 8))(v16, v11);
    a6[3] = a3;
    a6[4] = a5;
    v21 = sub_100017E64(a6);
    return (*(*(a3 - 8) + 16))(v21, v23[1], a3);
  }

  else
  {
    (*(v17 + 32))(v20, v16, a4);
    AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
    return (*(v17 + 8))(v20, a4);
  }
}

id sub_100030580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMemoryCapacity:a1 diskCapacity:a2 diskPath:v7];

  return v8;
}

uint64_t type metadata accessor for JSStackContext()
{
  result = qword_10026E148;
  if (!qword_10026E148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100030650(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  result = [objc_allocWithZone(JSVirtualMachine) init];
  if (result)
  {
    v8 = result;
    type metadata accessor for JSStackProvider();
    v9 = sub_100030C7C(a4, a1, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100030730(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_10007B9A4(&qword_10026E268, &qword_1001EDA10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v36 - v7;
  v9 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v36 - v11;
  v13 = type metadata accessor for URL();
  v14 = sub_100002CC4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v36 - v22;
  sub_10001E78C(*(a1 + 1));
  URL.appendingPathComponent(_:)();
  v24 = *(v16 + 8);
  v24(v21, v13);
  if (*(a1 + 48) > 1u)
  {
    sub_1000FE50C(a1);
    v39[3] = type metadata accessor for SyncTaskScheduler();
    v39[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v39);
    SyncTaskScheduler.init()();
    Promise.map<A>(on:_:)();

    sub_100002C00(v39);
  }

  else
  {
    v36[6] = v3;
    v37 = v12;
    v25 = sub_100031380();
    sub_10007B9A4(&qword_10026E270, &qword_1001EDA18);
    v26 = v37;
    sub_10000A7C0(v37, 1, 1, v13);
    v27 = *(v5 + 48);
    *v8 = v25 & 1;
    sub_10001EC00(v26, &v8[v27]);
    Promise.__allocating_init(value:)();
  }

  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  v30 = *(a1 + 48);
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = v30;
  v31 = v38;
  *(v28 + 80) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10003164C;
  *(v32 + 24) = v28;
  v40[3] = type metadata accessor for SyncTaskScheduler();
  v40[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v40);

  sub_10000F4A4(a1, v39);
  v33 = v31;
  SyncTaskScheduler.init()();
  type metadata accessor for JSStackContext();
  v34 = Promise.map<A>(on:_:)();

  v24(v23, v13);
  sub_100002C00(v40);
  return v34;
}