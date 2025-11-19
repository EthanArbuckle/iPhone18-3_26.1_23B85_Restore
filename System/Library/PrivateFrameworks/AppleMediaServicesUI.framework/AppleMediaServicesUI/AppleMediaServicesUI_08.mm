uint64_t sub_1000BE260(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for ContentInfo() + 48);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    if (v6 == *v8 && v7 == v8[1])
    {
      v10 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

void sub_1000BE300(uint64_t a1)
{

  v2._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v2);
  v3 = 0;
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  v6 = v4 + 40;
  v7 = _swiftEmptyArrayStorage;
LABEL_2:
  v8 = (v6 + 16 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v8 - 1);
    v9 = *v8;

    v11._countAndFlagsBits = sub_100003B80();
    if (String.hasPrefix(_:)(v11))
    {
      v31 = v6;
      v32 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BF744(v7[2]);
      }

      v13 = v7[2];
      v12 = v7[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v16 = sub_100005C40(v12);
        v18 = v17;
        sub_100027C2C(v16, v17, 1);
        v14 = v18;
        v7 = v32;
      }

      ++v3;
      v7[2] = v14;
      v15 = &v7[2 * v13];
      v15[4] = v10;
      v15[5] = v9;
      v6 = v31;
      goto LABEL_2;
    }

    v8 += 2;
    ++v3;
  }

  v19 = v7[2];
  if (v19)
  {
    sub_100027C2C(0, v19, 0);
    v20 = v7 + 5;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      swift_bridgeObjectRetain_n();
      sub_100003B80();
      v23 = String.count.getter();
      sub_10018A408(v23, v21, v22);
      v24 = static String._fromSubstring(_:)();
      v26 = v25;

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        v30 = sub_100005C40(v27);
        sub_100027C2C(v30, v28 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      v20 += 2;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1000BE534(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v18 = type metadata accessor for ContentManager();
  v16 = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v16 = v6;
  v17 = v7;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v16, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v18 = &type metadata for String;
  v16 = a3;
  v17 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v16, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  sub_1000BF3AC();
  swift_allocError();
  sub_1000B40E4();
}

void sub_1000BE7D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v17 = type metadata accessor for ContentManager();
  v15 = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v15);
  LogInterpolation.init(stringLiteral:)();
  v17 = &type metadata for String;
  v15 = v6;
  v16 = v7;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v15, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v17 = &type metadata for String;
  v15 = a3;
  v16 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v15, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  sub_1000B40E4();
}

uint64_t sub_1000BEA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_1000BEB2C(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v5 = a1 + 32;

  v6 = 0;
  v19 = a1 + 32;
  while (1)
  {
    if (v6 == v4)
    {

      v17 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v6;
  }

  v7 = (v5 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(a2 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(a2 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      v5 = v19;
      goto LABEL_13;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v9 && v14[1] == v8)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  v17 = v6;
LABEL_15:

  return v17;
}

uint64_t sub_1000BECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_1000BECF4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1000D54B8();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1000D54B8();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v49[2];
      sub_1000D54B8();
      v49 = v28;
    }

    v12 = v49[2];
    v11 = v12 + 1;
    if (v12 >= v49[3] >> 1)
    {
      sub_1000D54B8();
      v49 = v29;
    }

    v49[2] = v11;
    v26 = &v49[4 * v12];
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v49[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1000D54B8();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BF090(uint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  result = sub_1000BEB2C(v6, a2);
  if (v2)
  {
LABEL_29:

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);

    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v11 = v6 + 32;
      v12 = (v6 + 32 + 16 * v9);
      if (*(a2 + 16))
      {
        v38 = v6 + 32;
        v39 = v6;
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v19 = (*(a2 + 48) + 16 * v18);
          if (*v19 != v14 || v19[1] != v13)
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v16 = v18 + 1;
            if ((v21 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v39;
          goto LABEL_26;
        }

        v6 = v39;
        v11 = v38;
      }

      if (v3 != v9)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v22 = *(v6 + 16);
        if (v3 >= v22)
        {
          goto LABEL_35;
        }

        if (v9 >= v22)
        {
          goto LABEL_36;
        }

        v23 = (v11 + 16 * v3);
        v25 = *v23;
        v24 = v23[1];
        v26 = v6;
        v28 = *v12;
        v27 = v12[1];

        v29 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D1A2C(v26);
          v29 = v37;
        }

        v30 = v29;
        v31 = v29 + 32;
        v32 = (v31 + 16 * v3);
        v33 = v32[1];
        *v32 = v28;
        v32[1] = v27;
        v6 = v30;

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v34 = (v31 + 16 * v9);
        v35 = v34[1];
        *v34 = v25;
        v34[1] = v24;

        *a1 = v6;
      }

      v36 = __OFADD__(v3++, 1);
      if (v36)
      {
        goto LABEL_33;
      }

LABEL_26:
      v36 = __OFADD__(v9++, 1);
      if (v36)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BF330(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100005B9C();
}

unint64_t sub_1000BF3AC()
{
  result = qword_10026B510;
  if (!qword_10026B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B510);
  }

  return result;
}

uint64_t sub_1000BF470(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003EFC();
  v5 = v4(v3);
  sub_100002DDC(v5);
  v7 = *(v6 + 16);
  v8 = sub_100005B9C();
  v9(v8);
  return a2;
}

uint64_t sub_1000BF4C8()
{
  v1 = sub_100002DFC();
  v3 = v2(v1);
  sub_100002DDC(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1000BF51C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC(v5);
  v7 = *(v6 + 32);
  v8 = sub_100005B9C();
  v9(v8);
  return v4;
}

uint64_t sub_1000BF568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC(v5);
  v7 = *(v6 + 16);
  v8 = sub_100005B9C();
  v9(v8);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for ContentManager.BatchDownloadingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000BF664()
{
  result = qword_10026B520;
  if (!qword_10026B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B520);
  }

  return result;
}

uint64_t sub_1000BF704()
{
  v2 = *(v0 - 280);
}

char *sub_1000BF744@<X0>(uint64_t a1@<X8>)
{

  return sub_100027C2C(0, a1 + 1, 1);
}

uint64_t sub_1000BF764()
{

  return static LogInterpolation.prefix(_:_:)();
}

unint64_t sub_1000BF7B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244A80, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BF800(char a1)
{
  result = 1415071060;
  switch(a1)
  {
    case 1:
      result = 0x52454745544E49;
      break;
    case 2:
      result = 1112493122;
      break;
    case 3:
      result = 1279346002;
      break;
    case 4:
      result = 0x205952414D495250;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000BF8A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF7B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF8D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BF800(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BF904(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BF944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BF990(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BF9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MercuryCacheUpdateTask.UpdateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000BFAA8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BFB84()
{
  result = qword_10026B528;
  if (!qword_10026B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B528);
  }

  return result;
}

id sub_1000BFBD8()
{
  v0 = sub_10007B9A4(&qword_10026B530, &unk_1001EFCD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1000BFD18(0xD00000000000001DLL, 0x80000001001F5E20, v4);
  TimeZone.init(identifier:)();
  v5 = type metadata accessor for TimeZone();
  isa = 0;
  if (sub_100009F34(v3, 1, v5) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  [v4 setTimeZone:isa];

  return v4;
}

void sub_1000BFD18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

uint64_t sub_1000BFD7C()
{
  sub_100004768();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  return _swift_task_switch(sub_1000BFE9C, v3, 0);
}

uint64_t sub_1000BFE9C()
{
  sub_100004768();
  v1 = *(v0 + 24);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000BFEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  v9 = v2[2];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v10 = sub_1000C09B4;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = sub_1000C0098;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000C0098()
{
  sub_100004768();
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[5];

    sub_100002D8C();

    return v2();
  }

  else
  {
    v4 = v0[2];
    *(v4 + 152) = 1;
    v5 = *(v4 + 136);
    v8 = (*(v4 + 128) + **(v4 + 128));
    v6 = *(*(v4 + 128) + 4);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1000C01C4;

    return v8();
  }
}

uint64_t sub_1000C01C4()
{
  sub_100004768();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  return _swift_task_switch(sub_1000C02C8, v2, 0);
}

uint64_t sub_1000C02C8()
{
  sub_100004768();
  v1 = *(v0 + 16);
  *(v1 + 152) = 0;
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;

  v3 = *(v0 + 40);

  sub_100002D8C();

  return v4();
}

uint64_t sub_1000C0334()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C0364()
{
  sub_1000C0334();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C0390(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v37 = a2;
  v45 = a1;
  v6 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  v38 = sub_100002CC4(v10);
  v39 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v38);
  v15 = &v36 - v14;
  v16 = sub_10007B9A4(&qword_10026B6F8, &qword_1001E8EC8);
  v41 = sub_100002CC4(v16);
  v42 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  v22 = sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = PassthroughSubject.init()();
  v40 = v4;
  *(v4 + 16) = v25;
  *(v4 + 24) = 0;
  v46 = a2;
  v47 = v25;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000BE94();
  sub_100017A08();
  sub_100006070(&qword_10026B700, &unk_10026F890, &unk_1001E74C0);
  sub_100062FCC(&qword_10026CFC0, 255, sub_100017A08);

  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000C0868(v9);

  v26 = v37;
  v47 = v37;
  sub_10000BE94();
  sub_100006070(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0);
  v27 = v38;
  Publisher.receive<A>(on:options:)();
  sub_1000C0868(v9);
  (*(v39 + 8))(v15, v27);
  v28 = swift_allocObject();
  v29 = v44;
  *(v28 + 16) = v43;
  *(v28 + 24) = v29;
  sub_100006070(&qword_10026B710, &qword_10026B6F8, &qword_1001E8EC8);

  v30 = v41;
  v31 = Publisher<>.sink(receiveValue:)();

  v32 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v32 - 8) + 8))(v45, v32);
  (*(v42 + 8))(v21, v30);
  v33 = v40;
  v34 = *(v40 + 24);
  *(v40 + 24) = v31;

  return v33;
}

uint64_t sub_1000C07AC()
{
  if (*(v0 + 24))
  {

    AnyCancellable.cancel()();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  return v0;
}

uint64_t sub_1000C0810()
{
  sub_1000C07AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0868(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C08D0()
{
  sub_100004768();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;

  sub_100002D8C();

  return v4();
}

uint64_t sub_1000C09B8()
{
  type metadata accessor for DebugSocketProtocol();
  sub_1000C0E2C();
  v0 = type metadata accessor for NWProtocolFramer.Definition();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  qword_100287790 = result;
  return result;
}

uint64_t sub_1000C0A14()
{

  return swift_allocObject();
}

uint64_t sub_1000C0A48@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWProtocolFramer.StartResult.ready(_:);
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}

uint64_t sub_1000C0ABC(uint64_t a1)
{
  __chkstk_darwin(a1);
  NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)();
  return 4;
}

_DWORD *sub_1000C0BC4(_DWORD *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  if (result)
  {
    if (a2 - result >= a5)
    {
      *a6 = *result;
      *(a6 + 4) = 0;
      return a5;
    }

    return 0;
  }

  if (a5 >= 1)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1000C0C00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (HIDWORD(a3))
  {
    goto LABEL_7;
  }

  v4 = Data.init(bytes:count:)();
  v6 = v5;
  NWProtocolFramer.Instance.writeOutput(data:)();
  sub_1000253FC(v4, v6);
  NWProtocolFramer.Instance.writeOutputNoCopy(length:)(a3);
  if (v7)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E61B0;
    _StringGuts.grow(_:)(20);
    v9._object = 0x80000001001F5F10;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }
}

unint64_t sub_1000C0E2C()
{
  result = qword_10026B7B8;
  if (!qword_10026B7B8)
  {
    type metadata accessor for DebugSocketProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B7B8);
  }

  return result;
}

uint64_t sub_1000C0E80()
{
  type metadata accessor for NWParameters();
  v0 = static NWParameters.tcp.getter();
  if (qword_100268628 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for NWProtocolFramer.Options();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();

  v4 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  sub_1000C2034(0, *v5);
  sub_100113190(0, 0);
  v4(&v7, 0);

  return v0;
}

uint64_t sub_1000C0F9C()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = type metadata accessor for NWEndpoint.Port();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  v9 = type metadata accessor for NWEndpoint.Host();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100002DEC();
  swift_defaultActor_initialize();
  type metadata accessor for NWConnection();
  NWEndpoint.Host.init(stringLiteral:)();
  NWEndpoint.Port.init(integerLiteral:)();
  sub_1000C0E80();
  v11 = NWConnection.__allocating_init(host:port:using:)();

  NWConnection.stateUpdateHandler.setter();
  sub_100017A08();
  (*(v2 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v6, v1);
  NWConnection.start(queue:)();

  *(v0 + 112) = v11;
  return v0;
}

uint64_t sub_1000C11B4(uint64_t a1)
{
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result == enum case for NWConnection.State.failed(_:))
  {
    NWConnection.cancel()();
  }

  else if (result == enum case for NWConnection.State.ready(_:))
  {
    return result;
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000C12E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for NWConnection.SendCompletion();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C13D8, v2, 0);
}

uint64_t sub_1000C13D8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = *(v3 + 112);
  *v1 = sub_1000C208C;
  v1[1] = v3;
  (*(v2 + 104))(v1, enum case for NWConnection.SendCompletion.contentProcessed(_:), v4);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  (*(v2 + 8))(v1, v4);
  sub_1000C220C(&qword_10026B878, v8, type metadata accessor for DebugSocketService);
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1000C15DC;
  v11 = v0[12];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6);
}

uint64_t sub_1000C15DC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1000C1958;
  }

  else
  {
    v6 = sub_1000C1734;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C1734()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[8] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v0 + 8];

  v6 = v0[8];
  if (v5)
  {
    v7 = v6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    if (swift_dynamicCast())
    {
      v8 = v0[9];
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_1000253FC(v1, v2);
    v13 = v0[15];

    v14 = v0[1];

    return v14(v8);
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v1, v2);
    v10 = v0[15];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000C1958()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C19E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(&v18 + 1) = type metadata accessor for DebugSocketService();
  *&v17 = a2;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v17);
  LogInterpolation.init(stringLiteral:)();
  sub_1000C2148(a1, v7);
  v13 = type metadata accessor for NWError();
  if (sub_100009F34(v7, 1, v13) == 1)
  {
    sub_100009F5C(v7, &qword_10026B888, &qword_1001E8FD8);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v13;
    v14 = sub_100017E64(&v17);
    (*(*(v13 - 8) + 32))(v14, v7, v13);
  }

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v17, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);
}

uint64_t sub_1000C1CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  NWConnection.receiveMessage(completion:)();
}

uint64_t sub_1000C1DEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v16 - v10;
  if (a2 >> 60 == 15)
  {
    sub_1000C2148(a5, v11);
    v12 = type metadata accessor for NWError();
    if (sub_100009F34(v11, 1, v12) == 1)
    {
      sub_100009F5C(v11, &qword_10026B888, &qword_1001E8FD8);
      sub_1000C21B8();
      v13 = swift_allocError();
    }

    else
    {
      sub_1000C220C(&qword_10026B898, 255, &type metadata accessor for NWError);
      v13 = swift_allocError();
      (*(*(v12 - 8) + 32))(v15, v11, v12);
    }

    v16[0] = v13;
    sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v16[0] = a1;
    v16[1] = a2;
    sub_10003A5E0(a1, a2);
    sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000C1FD0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C2034(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C209C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0) - 8) + 80);

  return sub_1000C1DEC(a1, a2, a3, a4, a5);
}

uint64_t sub_1000C2148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C21B8()
{
  result = qword_10026B890;
  if (!qword_10026B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B890);
  }

  return result;
}

uint64_t sub_1000C220C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugSocketService.DebugSocketError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000C2304()
{
  result = qword_10026B8A0;
  if (!qword_10026B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B8A0);
  }

  return result;
}

void sub_1000C2358(uint64_t a1, char a2)
{
  sub_1000272C4(a2);
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003B80();
  CFPreferencesSetAppValue(v4, v5, v3);

  applicationID = String._bridgeToObjectiveC()();

  CFPreferencesAppSynchronize(applicationID);
}

id sub_1000C2440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "dealloc");
}

CFPropertyListRef sub_1000C248C(char a1)
{
  result = sub_1000571D4(a1);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C24F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  sub_1000C2358(v2, 10);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000C254C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C25EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 112);
  if (v7)
  {
    if (a2)
    {
      v8 = *(v3 + 112);

      v10 = sub_1001C3DB8(v9, a2);

      v7 = *(v3 + 112);
      if (v10)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v11 = 0;
    *a1 = v7;
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  *(v3 + 112) = a3;

  *a1 = a3;

  v11 = 1;
LABEL_7:

  return v11;
}

uint64_t sub_1000C2694()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C270C()
{
  sub_1000C2694();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C2750(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1001C3DB8(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_1000C277C()
{
  type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  v0 = swift_allocObject();
  result = sub_1000C40C8();
  qword_100287798 = v0;
  return result;
}

uint64_t sub_1000C27B8(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return _swift_task_switch(sub_1000C2800, 0, 0);
}

uint64_t sub_1000C2800()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = [objc_opt_self() ams_sharedAccountStore];
  v4 = sub_1000C430C(v2, v3);
  v6 = v5;
  v0[21] = v4;
  v0[22] = v5;

  v0[27] = v6;
  v7 = sub_100049574(v6);
  v0[28] = v7;
  if (!v7)
  {

    if (qword_1002686F0 != -1)
    {
      sub_100006B94();
    }

    v15 = v0[25];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    *(sub_1000057D8() + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    sub_100023D2C(v19);
    v13 = AMSLogKey();
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_6:
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
    sub_100004BE0();

    sub_100002C00(v0 + 10);
    LogInterpolation.init(stringLiteral:)();
    v21 = static os_log_type_t.default.getter();
    sub_1000036B0(v21);

    v22 = sub_100007484();

    return v23(v22);
  }

  if ([objc_opt_self() isBuddyRunning])
  {

    if (qword_1002686F0 != -1)
    {
      sub_100006B94();
    }

    v8 = v0[25];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    *(sub_1000057D8() + 16) = xmmword_1001E5F70;
    v12 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    sub_100023D2C(v12);
    v13 = AMSLogKey();
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v20 = *(v0[25] + 16);
  v0[29] = v20;

  return _swift_task_switch(sub_1000C2B78, v20, 0);
}

uint64_t sub_1000C2B78()
{
  sub_100004768();
  v1 = *(v0 + 232);
  *(v0 + 289) = sub_1000C25EC((v0 + 80), 0, *(v0 + 216)) & 1;

  return _swift_task_switch(sub_1000C2BFC, 0, 0);
}

uint64_t sub_1000C2BFC()
{
  v2 = *(v0 + 80);
  if (*(v0 + 289) != 1)
  {
    v7 = *(v0 + 216);

    if (qword_1002686F0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 80);

  if (qword_100268830 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  *(v0 + 240) = qword_100287928;
  sub_100012BCC("engagementScheduler");
  *(v0 + 248) = sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  if (v2 < 1)
  {
    __break(1u);
LABEL_18:
    sub_100006B94();
LABEL_8:
    v8 = *(v0 + 200);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(v0 + 104) = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    *(v0 + 80) = v8;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 80));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 104) = &type metadata for DeviceAccountPrivacyAcknowledgementHandler.State;
    *(v0 + 80) = v2;
    static LogInterpolation.sensitive(_:)();
    sub_100002C5C(v0 + 80);
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16);

    sub_100007484();
    sub_10000481C();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v0 + 216);
  *(v0 + 256) = 0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v6 = *(v0 + 248);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  *(v0 + 264) = v5;
  v19 = v5;
  v20 = sub_100005104();
  v21 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v1 bag:v20];

  v22 = [v21 performPrivacyAcknowledgement];
  *(v0 + 272) = v22;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1000C2FD0;
  v23 = swift_continuation_init();
  v24 = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
  sub_10000BEC8(v24);
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000C383C;
  *(v0 + 104) = &unk_1002489B8;
  *(v0 + 112) = v23;
  [v22 resultWithCompletion:v0 + 80];
  sub_10000481C();

  return _swift_continuation_await(v25);
}

uint64_t sub_1000C2FD0()
{
  sub_100004768();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_1000C34B4;
  }

  else
  {
    v3 = sub_1000C30DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C30DC()
{
  v31 = *(v0 + 288);

  if (qword_1002686F0 != -1)
  {
    sub_100006B94();
  }

  v1 = *(v0 + 200);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v8 = (v7 + v6);
  *(v0 + 104) = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  *(v0 + 80) = v1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 264);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 104) = &type metadata for Bool;
  *(v0 + 80) = v31;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 80);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  v13 = sub_10000AB78();
  if (v20)
  {
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);

    sub_10000B7F4();
    sub_10000481C();

    return _swift_task_switch(v16, v17, v18);
  }

  else
  {
    v21 = sub_100007F48(v13);
    if (v20)
    {
      v23 = *(v22 + 8 * v21 + 32);
    }

    else
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    sub_10000A360(v23);
    v24 = sub_100005104();
    v25 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v8 bag:v24];

    v26 = [v25 performPrivacyAcknowledgement];
    *(v0 + 272) = v26;

    *(v0 + 16) = v0;
    sub_100008348();
    v27 = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
    sub_10000BEC8(v27);
    *(v0 + 88) = 1107296256;
    sub_1000079B4(&unk_1002489B8);
    [v26 resultWithCompletion:v0 + 80];
    sub_10000481C();

    return _swift_continuation_await(v28);
  }
}

uint64_t sub_1000C33E8()
{
  sub_100004768();
  v1 = *(v0 + 232);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  return _swift_task_switch(sub_1000C3454, 0, 0);
}

uint64_t sub_1000C3454()
{
  sub_100004768();
  v1 = *(v0 + 240);
  sub_100012BCC("engagementScheduler");
  v2 = sub_100007484();

  return v3(v2);
}

uint64_t sub_1000C34B4()
{
  v33 = v0 + 10;
  v1 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  if (qword_1002686F0 != -1)
  {
    sub_100006B94();
  }

  v3 = v0[25];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F60;
  v10 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  sub_100023D2C(v10);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = v0[35];
  v32 = v0[33];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v33);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v14 = v0[18];
  v15 = v0[19];
  v0[13] = v15;
  v16 = sub_100017E64(v33);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v33);
  v17 = static os_log_type_t.error.getter();
  sub_1000036B0(v17);

  v18 = sub_10000AB78();
  if (v24)
  {
    v19 = v0[29];
    v20 = v0[27];

    v21 = sub_10000B7F4();

    return _swift_task_switch(v21, v22, v23);
  }

  else
  {
    v25 = sub_100007F48(v18);
    if (v24)
    {
      v27 = *(v26 + 8 * v25 + 32);
    }

    else
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    sub_10000A360(v27);
    v28 = sub_100005104();
    v29 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v13 bag:v28];

    v30 = [v29 performPrivacyAcknowledgement];
    v0[34] = v30;

    v0[2] = v0;
    sub_100008348();
    v0[17] = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    sub_1000079B4(&unk_1002489B8);
    [v30 resultWithCompletion:?];

    return _swift_continuation_await(v9);
  }
}

uint64_t sub_1000C383C(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100003CA8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1000F115C(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1000E33AC(v9, a2);
  }
}

uint64_t sub_1000C38C0(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a1;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v30, v9, &v32);
  sub_10000E1E8(v30);
  if (!v33)
  {
    sub_100002C5C(&v32);
LABEL_6:

    sub_1000EF558();
    v11 = *(*a2 + 16);
    result = sub_1000EF644(v11);
    v13 = *a2;
    *(v13 + 16) = v11 + 1;
    *(v13 + 8 * v11 + 32) = v9;
    return result;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v27 = a5;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = *(type metadata accessor for LogInterpolation() - 8);
  v15 = *(v14 + 80);
  v28 = 3 * *(v14 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v16 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v17 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v31 = v17;
  v30[0] = v9;

  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v30);
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18);

  v19 = a4[3];
  v20 = a4[4];
  sub_100003CA8(a4, v19);
  v21 = sub_1000C3E44(v9, v19, v20);
  if (v5)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v22 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v31 = v29;
    v23 = sub_100017E64(v30);
    (*(*(v29 - 8) + 16))(v23);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v30);
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24);
  }

  else if (v21)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000040E4(*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v25 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v31 = v17;
    v30[0] = v9;

    static LogInterpolation.sensitive(_:)();
    sub_100002C5C(v30);
    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26);
  }
}

uint64_t sub_1000C3E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v9, a1, &v10);
  sub_10000E1E8(v9);
  if (!v11)
  {
    sub_100002C5C(&v10);
    goto LABEL_5;
  }

  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1000C43E8();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    return v3;
  }

  v3 = sub_1000C4118(0x746E756F636361, a2, a3);

  return v3;
}

uint64_t sub_1000C3F80()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C3FDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C402C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000C4080(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000C4098(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000C40C8()
{
  sub_10007B9A4(&qword_10026B9F8, &qword_1001E91E0);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1000C4118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100052D94(a1, &v17);
  if (!v18)
  {
    sub_100002C5C(&v17);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1000C43E8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return v3;
  }

  sub_100052D94(a1, &v17);
  if (v18)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v17);
    v8 = 0;
    v9 = 0;
  }

  sub_100052D94(a1, &v17);
  if (v18)
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v17);
    v12 = 0;
    v13 = 0;
  }

  v3 = (*(a3 + 24))(v15, v8, v9, v12, v13, a2, a3);

  return v3;
}

void *sub_1000C430C(uint64_t a1, void *a2)
{
  v5[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v5[4] = &off_100246688;
  v5[0] = a2;
  v3 = a2;
  sub_10009A4F0();
  sub_100002C00(v5);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_1000C43E8()
{
  result = qword_10026BA08;
  if (!qword_10026BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BA08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C451C()
{
  result = qword_10026BA10;
  if (!qword_10026BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BA10);
  }

  return result;
}

uint64_t sub_1000C4570(uint64_t a1)
{
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;

  v8 = 0;
  v9 = &unk_10026BA28;
  v34 = v7;
  v35 = v3;
  if (v6)
  {
    while (1)
    {
      v10 = v8;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v33 + 48) + v12);
      sub_1000262E4(*(v33 + 56) + 40 * v12, &v39);
      LOBYTE(v42) = v13;
      sub_10003B104(&v39, &v42 + 8);
LABEL_10:
      v47[1] = v43;
      v47[2] = v44;
      v47[0] = v42;
      if (!v44)
      {
        break;
      }

      v14 = LOBYTE(v47[0]);
      sub_10003B104((v47 + 8), v46);
      v15 = 0xE300000000000000;
      v16 = 7368801;
      switch(v14)
      {
        case 1:
          v15 = 0xE700000000000000;
          v16 = 0x79726574746162;
          break;
        case 2:
          v15 = 0xE700000000000000;
          v16 = 0x64657461657263;
          break;
        case 3:
          v15 = 0xE900000000000073;
          v16 = 0x73616C4361746164;
          break;
        case 4:
          v15 = 0xE400000000000000;
          v16 = 1702125924;
          break;
        case 5:
          v16 = 0x6441734965746164;
          v15 = 0xEE00657669747061;
          break;
        case 6:
          v15 = 0xE500000000000000;
          v16 = 0x79616C6564;
          break;
        case 7:
          v15 = 0xE600000000000000;
          v16 = 0x73746E657665;
          break;
        case 8:
          v15 = 0xEA00000000007265;
          v16 = 0x696669746E656469;
          break;
        case 9:
          v15 = 0xE500000000000000;
          v16 = 0x6563617267;
          break;
        case 10:
          v15 = 0xE400000000000000;
          v16 = 1701869940;
          break;
        case 11:
          v16 = 0xD000000000000010;
          v15 = 0x80000001001F2E10;
          break;
        case 12:
          v16 = 0x746972777265766FLL;
          v15 = 0xE900000000000065;
          break;
        default:
          break;
      }

      sub_1000262E4(v46, v40);
      *&v39 = v16;
      *(&v39 + 1) = v15;
      v45 = v41;
      v43 = v40[0];
      v44 = v40[1];
      v42 = v39;
      sub_10000A384(&v42, &v39);
      sub_10000A384(&v42, v36);
      sub_10003B104(&v37, v38);
      v17 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100023D48();
      sub_100003058();
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_38;
      }

      sub_100005800();
      sub_10007B9A4(&qword_10026BA30, &qword_1001E92C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21))
      {
        sub_100023D48();
        sub_10000BEE8();
        if (!v23)
        {
          goto LABEL_40;
        }

        v9 = v22;
      }

      if (&qword_1001E92C0)
      {

        v24 = (*(v2 + 56) + 40 * v9);
        sub_100002C00(v24);
        sub_10003B104(v38, v24);
        sub_100007494();
        sub_10000A064(v25, v26, &qword_1001E92C0);
        sub_100002C00(v46);
      }

      else
      {
        sub_100005140();
        *(v27 + 16 * v9) = v17;
        sub_10003B104(v38, *(v2 + 56) + 40 * v9);
        sub_100007494();
        sub_10000A064(v28, v29, &qword_1001E92C0);
        sub_100002C00(v46);
        sub_1000079CC();
        if (v31)
        {
          goto LABEL_39;
        }

        *(v2 + 16) = v30;
      }

      sub_100002C00(v40);
      v7 = v34;
      v3 = v35;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v2;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v6 = 0;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C49F8(uint64_t a1)
{
  sub_1000AE324();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  sub_100006BB4();
  v7 = v6 >> 6;
  v36 = a1;

  v8 = 0;
  v35 = a1 + 64;
  while (v1)
  {
LABEL_7:
    sub_10000B810();
    v11 = (*(v36 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_100011BAC(*(v36 + 56) + 32 * v10, v40);
    *&v42 = v13;
    *(&v42 + 1) = v12;
    sub_100002C4C(v40, &v43);

LABEL_8:
    v45 = v42;
    v46[0] = v43;
    v46[1] = v44;
    v14 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      return v3;
    }

    v15 = v45;
    sub_100002C4C(v46, v41);

    v16._countAndFlagsBits = v15;
    v16._object = v14;
    v17 = _findStringSwitchCase(cases:string:)(&off_100244748, v16);

    if (v17 >= 9)
    {
      sub_100002C00(v41);
    }

    else
    {
      LOBYTE(v40[0]) = v17;
      sub_100011BAC(v41, v40 + 8);
      v42 = v40[0];
      v43 = v40[1];
      sub_10000837C();
      sub_10004ED94(v18, v19, &qword_10026BA38, &unk_1001E92D0);
      sub_10004ED94(&v42, v38, &qword_10026BA38, &unk_1001E92D0);
      v20 = LOBYTE(v40[0]);
      sub_100002C4C(&v39, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000AACB8(v20);
      sub_100003058();
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_23;
      }

      v27 = v22;
      v28 = v23;
      sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26))
      {
        v29 = sub_1000AACB8(v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_25;
        }

        v27 = v29;
      }

      if (v28)
      {
        v31 = (v3[7] + 32 * v27);
        sub_100002C00(v31);
        sub_100002C4C(v37, v31);
        sub_10000A064(&v42, &qword_10026BA38, &unk_1001E92D0);
        sub_100002C00(v41);
      }

      else
      {
        v3[(v27 >> 6) + 8] |= 1 << v27;
        *(v3[6] + v27) = v20;
        sub_100002C4C(v37, (v3[7] + 32 * v27));
        sub_10000A064(&v42, &qword_10026BA38, &unk_1001E92D0);
        sub_100002C00(v41);

        sub_1000079CC();
        if (v33)
        {
          goto LABEL_24;
        }

        v3[2] = v32;
      }

      sub_100002C00(v40 + 1);
      v5 = v35;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v1 = 0;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      goto LABEL_8;
    }

    v1 = *(v5 + 8 * v9);
    ++v8;
    if (v1)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C4D58(uint64_t a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  sub_100006BB4();
  v7 = v6 >> 6;
  v38 = a1;

  v8 = 0;
  v9 = &unk_100271F40;
  v39 = v7;
  v40 = v5;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v1 = 0;
      *&v49 = 0;
      v47 = 0u;
      v48 = 0u;
      goto LABEL_8;
    }

    v1 = *(v5 + 8 * v10);
    ++v8;
    if (v1)
    {
      v8 = v10;
LABEL_7:
      while (1)
      {
        sub_10000B810();
        v12 = *(*(v38 + 48) + v11);
        sub_100011BAC(*(v38 + 56) + 32 * v11, &v45);
        LOBYTE(v47) = v12;
        sub_100002C4C(&v45, (&v47 + 8));
LABEL_8:
        v51[0] = v47;
        v51[1] = v48;
        v52 = v49;
        if (!v49)
        {
          break;
        }

        v13 = LOBYTE(v51[0]);
        sub_100002C4C((v51 + 8), v50);
        v14 = 0xE900000000000073;
        v15 = 0x79654B6863746162;
        switch(v13)
        {
          case 1:
            v14 = 0xE800000000000000;
            v15 = 0x79654B6568636163;
            break;
          case 2:
            v14 = 0xE700000000000000;
            v15 = 0x64657461657263;
            break;
          case 3:
            v14 = 0xE700000000000000;
            v15 = 0x73657269707865;
            break;
          case 4:
            v14 = 0xE800000000000000;
            v15 = 0x617461646174656DLL;
            break;
          case 5:
            v14 = 0xE400000000000000;
            v15 = 1752457584;
            break;
          case 6:
            v14 = 0xE500000000000000;
            v15 = 0x6574617473;
            break;
          case 7:
            v15 = 0x6E6564496B736174;
            v14 = 0xEE00726569666974;
            break;
          case 8:
            v14 = 0xE700000000000000;
            v15 = 0x6E6F6973726576;
            break;
          default:
            break;
        }

        *&v45 = v15;
        *(&v45 + 1) = v14;
        sub_100011BAC(v50, v46);
        v47 = v45;
        v48 = v46[0];
        v49 = v46[1];
        sub_10000A384(&v47, &v45);
        sub_10000A384(&v47, v42);
        sub_100002C4C(&v43, v44);
        v16 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        sub_100023D48();
        sub_100003058();
        if (__OFADD__(v17, v18))
        {
          goto LABEL_32;
        }

        sub_100005800();
        v19 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        if (sub_100006348(v19, v20, v21, v22, v23, v24, v25, v26, v38, v39, v40, v3))
        {
          sub_100023D48();
          sub_10000BEE8();
          if (!v28)
          {
            goto LABEL_34;
          }

          v9 = v27;
        }

        if (&unk_1001EA290)
        {

          v3 = *v41;
          v29 = (*(*v41 + 56) + 32 * v9);
          sub_100002C00(v29);
          sub_100002C4C(v44, v29);
          sub_100007494();
          sub_10000A064(v30, v31, &unk_1001EA290);
          sub_100002C00(v50);
        }

        else
        {
          v3 = *v41;
          sub_100005140();
          *(v32 + 16 * v9) = v16;
          sub_100002C4C(v44, (*(*v41 + 56) + 32 * v9));
          sub_100007494();
          sub_10000A064(v33, v34, &unk_1001EA290);
          sub_100002C00(v50);
          sub_1000079CC();
          if (v36)
          {
            goto LABEL_33;
          }

          *(*v41 + 16) = v35;
        }

        sub_100002C00(v46);
        v7 = v39;
        v5 = v40;
        if (!v1)
        {
          goto LABEL_3;
        }
      }

      return v3;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C5120(uint64_t a1)
{
  sub_1000AF20C();
  v5 = Dictionary.init(dictionaryLiteral:)();
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  sub_100006BB4();
  v9 = v8 >> 6;
  v35 = a1;

  v10 = 0;
  v33 = v9;
  v34 = a1 + 64;
  if (v1)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v12 = (v11 << 9) | (8 * __clz(__rbit64(v1)));
      v13 = *(*(v35 + 48) + v12);
      v14 = *(*(v35 + 56) + v12);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      v18 = v14;
      v36 = v13;
      v19 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100012A94();
      sub_100003058();
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      sub_100005800();
      sub_10007B9A4(&qword_100269868, &qword_1001E6308);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
      {
        sub_100012A94();
        sub_10000BEE8();
        if (!v25)
        {
          goto LABEL_21;
        }

        v2 = v24;
      }

      v1 &= v1 - 1;
      if (v3)
      {

        v26 = *(v5 + 56);
        v27 = *(v26 + 8 * v2);
        *(v26 + 8 * v2) = v19;
      }

      else
      {
        sub_100005140();
        v29 = (v28 + 16 * v2);
        *v29 = v15;
        v29[1] = v17;
        *(*(v5 + 56) + 8 * v2) = v19;

        sub_1000079CC();
        if (v31)
        {
          goto LABEL_20;
        }

        *(v5 + 16) = v30;
      }

      v10 = v11;
      v9 = v33;
      v7 = v34;
      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return v5;
      }

      v1 = *(v7 + 8 * v11);
      ++v10;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C5360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  if (a4)
  {
    if (qword_100268830 != -1)
    {
      sub_100006940();
    }

    sub_100011C54(a5, a6);
    v18 = sub_100003CA8(a7, a7[3]);
    v19 = v18[1];
    v20 = v18[2];

    sub_1001CF380();

    v21 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v17, 1, 1, v21);
    sub_1000262E4(a7, v24);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_10003B104(v24, (v22 + 4));
    v22[9] = a8;
    v22[10] = a5;
    v22[11] = a6;

    sub_1000E349C();
  }

  return result;
}

uint64_t sub_1000C54F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  return _swift_task_switch(sub_1000C5518, 0, 0);
}

uint64_t sub_1000C5518()
{
  v1 = *(v0 + 112);
  v2 = sub_100003CA8(*(v0 + 104), *(*(v0 + 104) + 24));
  *(v0 + 88) = type metadata accessor for DynamicActivityTaskScheduler();
  *(v0 + 96) = &off_100248A70;
  *(v0 + 64) = v1;
  v4 = *v2;
  v3 = v2[1];
  *(v0 + 41) = *(v2 + 25);
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1000C55F8;

  return sub_10015DEDC();
}

uint64_t sub_1000C55F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_1000C57AC;
  }

  else
  {
    sub_100002C00((v2 + 64));
    v5 = sub_1000C5724;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C5724()
{
  if (qword_100268830 != -1)
  {
    sub_100006940();
  }

  sub_1001AE448(v0[15], v0[16]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C57AC()
{
  sub_100002C00(v0 + 8);
  if (qword_100268830 != -1)
  {
    sub_100006940();
  }

  sub_1001AE448(v0[15], v0[16]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C5860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000B1388;

  return sub_1000C54F4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1000C5934()
{
  v2 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v8);
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  v12 = sub_100003F40();
  v13 = sub_100002CC4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v19 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v27 - v20;
  sub_100047A74(v1);
  if (sub_100009F34(v1, 1, v12) == 1)
  {
    return sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  v23 = *(v15 + 32);
  v23(v21, v1, v12);
  v24 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v24);
  (*(v15 + 16))(v19, v21, v12);
  v25 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v0;
  v23(&v26[v25], v19, v12);
  sub_1000E349C();

  return (*(v15 + 8))(v21, v12);
}

uint64_t sub_1000C5B98()
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v6 = sub_100003F40();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  sub_100047C24(v1);
  if (sub_100009F34(v1, 1, v6) == 1)
  {
    return sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  v16 = *(v9 + 32);
  v39 = v9 + 32;
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v16;
  v16(v14, v1, v6);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v17);
  v41 = v14;
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v22 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  v42 = v0;
  sub_10000719C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v23 = v41;
  v46 = v6;
  sub_100017E64(&aBlock);
  v24 = *(v9 + 16);
  sub_10000874C();
  v24();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v25 = static os_log_type_t.info.getter();
  sub_1000036B0(v25);

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v26 = sub_1000078B4();
  v27 = v40;
  if (qword_100268648 != -1)
  {
    sub_10000BEF8();
  }

  v28 = [v26 arrayForKey:qword_1002877B0];

  v29 = [v28 valuePromise];
  sub_10000874C();
  v24();
  v30 = v23;
  v31 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 16) = v42;
  v38(v32 + v31, v27, v6);
  v47 = sub_1000CB7FC;
  v48 = v32;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10008E0EC;
  v46 = &unk_100248BF0;
  v34 = _Block_copy(&aBlock);

  [v29 addSuccessBlock:v34];
  _Block_release(v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v47 = sub_1000CB884;
  v48 = v35;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1000266E0;
  v46 = &unk_100248C40;
  v36 = _Block_copy(&aBlock);

  [v29 addErrorBlock:v36];
  _Block_release(v36);

  return (*(v9 + 8))(v30, v6);
}

NSString sub_1000C60B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877A0 = result;
  return result;
}

NSString sub_1000C60F0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877A8 = result;
  return result;
}

NSString sub_1000C6128()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877B0 = result;
  return result;
}

NSString sub_1000C6168()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877B8 = result;
  return result;
}

NSString sub_1000C61A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877C0 = result;
  return result;
}

NSString sub_1000C61D8()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877C8 = result;
  return result;
}

void sub_1000C6210()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  qword_10026BAD8 = v1;
}

CFPropertyListRef sub_1000C6284()
{
  type metadata accessor for Defaults();
  result = sub_1000571D4(13);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C6320, 0, 0);
}

uint64_t sub_1000C6320()
{
  sub_100004768();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_1000078B4();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000C63E8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1000C995C(v1, v3, v4);
}

uint64_t sub_1000C63E8()
{
  sub_100004768();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_100002D8C();

  return v3();
}

uint64_t sub_1000C64EC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  type metadata accessor for AMSBagKey(0);
  sub_1000CB7A4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v26[0] = 0;
  v5 = [v3 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v26];

  v6 = v26[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    Data.write(to:options:)();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v21 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v22 = type metadata accessor for URL();
    v27 = v22;
    v23 = sub_100017E64(v26);
    (*(*(v22 - 8) + 16))(v23, a2, v22);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v26, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v24 = static os_log_type_t.info.getter();
    sub_1000036B0(v24);

    return sub_1000253FC(v7, v9);
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v27 = v25;
    v15 = sub_100017E64(v26);
    (*(*(v25 - 8) + 16))(v15);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v26, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16);
  }
}

id sub_1000C69C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = sub_100002CC4(v4);
  v58 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v15 = *(v14 + 80);
  v16 = (v15 + 32) & ~v15;
  v65 = 3 * *(v13 + 72);
  v66 = v15;
  v68 = v11;
  v17 = swift_allocObject();
  v63 = xmmword_1001E5F60;
  *(v17 + 16) = xmmword_1001E5F60;
  v67 = v16;
  v18 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v19 = type metadata accessor for URL();
  v71 = v19;
  sub_100017E64(v70);
  sub_1000074A0();
  v21 = *(v20 + 16);
  v60 = v20 + 16;
  v61 = v21;
  v21();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v70, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v22 = qword_100287810;
  v23 = static os_log_type_t.info.getter();
  v59 = v22;
  sub_1000036B0(v23);

  v24 = Data.init(contentsOf:options:)();
  v69 = a1;
  v62 = v19;
  v55 = v4;
  v56 = v2;
  v25 = v24;
  v27 = v26;
  v57 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  sub_100002BC0(0, &unk_10026FEF0, NSKeyedUnarchiver_ptr);
  sub_10007B9A4(&qword_10026BB78, &qword_1001EF740);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001E6580;
  *(v28 + 32) = sub_100002BC0(0, &qword_10026BB80, NSArray_ptr);
  *(v28 + 40) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  *(v28 + 48) = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  *(v28 + 56) = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
  sub_10000719C();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v54[0] = v25;
  v54[1] = v27;

  if (v71)
  {
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v34 = swift_dynamicCast();
    v35 = v55;
    if (v34)
    {
      v36.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_10;
    }
  }

  else
  {
    sub_100009FB0(v70, &qword_10026D350, &qword_1001E6050);
    v35 = v55;
  }

  v36.super.isa = 0;
LABEL_10:
  v37 = v57;
  [v57 setData:v36.super.isa];

  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v39 = v10;
  v40 = v37;
  (*(v58 + 8))(v39, v35);
  [v37 setExpirationDate:isa];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v41 = sub_1000060F4();
  v42 = [v41 profile];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  sub_10004A67C(v43, v45, v37, &selRef_setProfile_);
  v46 = sub_1000060F4();
  v47 = [v46 profileVersion];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  sub_10004A67C(v48, v50, v40, &selRef_setProfileVersion_);
  v70[0] = 0;
  v51 = [v40 buildWithError:v70];
  v52 = v70[0];
  if (v51)
  {

    sub_1000293BC();
  }

  else
  {
    v53 = v52;
    sub_100011610();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000293BC();
    *(swift_allocObject() + 16) = v63;
    v29 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000719C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v30 = v62;
    v71 = v62;
    v31 = sub_100017E64(v70);
    (v61)(v31, v69, v30);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v70, &qword_10026D350, &qword_1001E6050);
    v32 = static os_log_type_t.info.getter();
    sub_1000036B0(v32);

    return 0;
  }

  return v51;
}

uint64_t sub_1000C7118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v103 = a2;
  v87 = type metadata accessor for JetpackOutputWriter();
  v3 = *(*(v87 - 8) + 64);
  v4 = __chkstk_darwin(v87);
  v83 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v92 = (&v80 - v6);
  v7 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v80 - v11;
  v97 = type metadata accessor for URL();
  v12 = *(v97 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v97);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v80 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v86 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v90 = &v80 - v21;
  __chkstk_darwin(v20);
  v89 = &v80 - v22;
  v96 = type metadata accessor for NSFastEnumerationIterator();
  v95 = *(v96 - 8);
  v23 = *(v95 + 64);
  __chkstk_darwin(v96);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSArray.makeIterator()();
  v93 = 0;
  v85 = (v12 + 32);
  v94 = (v12 + 8);
  v84 = (v12 + 16);
  v99 = "Invalid identifier";
  v26 = &unk_10026FEA0;
  v27 = &unk_1001E7540;
  v100 = "Failed to lookup sources";
  v102 = xmmword_1001E5F60;
  v98 = xmmword_1001E5F70;
  v101 = v25;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v108)
    {
      return (*(v95 + 8))(v25, v96);
    }

    sub_100002C4C(&v107, &v106);
    sub_100011BAC(&v106, v105);
    v28 = sub_10007B9A4(v26, v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v41 = *(type metadata accessor for LogInterpolation() - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      *(swift_allocObject() + 16) = v102;
      v44 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DynamicUICache();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      sub_100011BAC(&v106, v105);
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v105, &qword_10026D350, &qword_1001E6050);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v45 = static os_log_type_t.error.getter();
      sub_1000036B0(v45);

      goto LABEL_20;
    }

    v29 = v104;
    if (*(v104 + 16) && (v30 = sub_100012A94(), (v31 & 1) != 0) && (sub_100011BAC(*(v29 + 56) + 32 * v30, v105), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v29 + 16))
      {
        v32 = sub_100012A94();
        if (v33)
        {
          sub_100011BAC(*(v29 + 56) + 32 * v32, v105);
          if (swift_dynamicCast())
          {
            v34 = v26;
            v35 = v91;
            URL.init(string:)();

            v36 = v97;
            if (sub_100009F34(v35, 1, v97) != 1)
            {

              v56 = v89;
              (*v85)(v89, v35, v36);
              v57 = v86;
              v58 = v88;
              URL.appendingPathComponent(_:)();

              URL.pathExtension.getter();
              v59 = v90;
              URL.appendingPathExtension(_:)();

              v60 = *v94;
              (*v94)(v57, v36);
              sub_1000C7EB8(v56, v59);
              v61 = v87;
              v62 = *v84;
              v63 = v92;
              (*v84)(v92 + *(v87 + 20), v58, v36);
              v62(v63 + *(v61 + 24), v59, v36);
              v63[2] = 0u;
              v63[3] = 0u;
              *v63 = 0u;
              v63[1] = 0u;
              *(v63 + *(v61 + 28)) = 1;
              v64 = v93;
              sub_1000FDA8C();
              if (v64)
              {
              }

              v93 = 0;
              v26 = v34;
              sub_1000CB88C(v92);
              v77 = v97;
              v60(v90, v97);
              v60(v89, v77);
              v27 = &unk_1001E7540;
              goto LABEL_20;
            }

            sub_100009FB0(v35, &unk_10026FEE0, &unk_1001E67C0);
            v26 = v34;
            v27 = &unk_1001E7540;
          }
        }
      }

      if (!*(v29 + 16) || (v37 = sub_100012A94(), (v38 & 1) == 0))
      {

        goto LABEL_25;
      }

      sub_100011BAC(*(v29 + 56) + 32 * v37, v105);

      if (swift_dynamicCast())
      {
        v39 = v82;
        URL.init(string:)();

        v40 = v97;
        if (sub_100009F34(v39, 1, v97) == 1)
        {

          sub_100009FB0(v39, &unk_10026FEE0, &unk_1001E67C0);
          goto LABEL_26;
        }

        v65 = v27;
        v66 = v26;
        v67 = v80;
        (*v85)(v80, v39, v40);
        v68 = v86;
        v69 = v88;
        URL.appendingPathComponent(_:)();

        URL.pathExtension.getter();
        v70 = v40;
        v71 = v81;
        URL.appendingPathExtension(_:)();

        v72 = *v94;
        (*v94)(v68, v70);
        sub_1000C7EB8(v67, v71);
        v73 = v87;
        v74 = *v84;
        v75 = v83;
        (*v84)(v83 + *(v87 + 20), v69, v70);
        v74(v75 + *(v73 + 24), v71, v70);
        v75[2] = 0u;
        v75[3] = 0u;
        *v75 = 0u;
        v75[1] = 0u;
        *(v75 + *(v73 + 28)) = 0;
        v76 = v93;
        sub_1000FDA8C();
        if (v76)
        {
        }

        v93 = 0;
        v26 = v66;
        sub_1000CB88C(v83);
        v78 = v97;
        v72(v81, v97);
        v72(v80, v78);
        v27 = v65;
        v25 = v101;
LABEL_20:
        sub_100002C00(&v106);
      }

      else
      {
LABEL_25:

LABEL_26:
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v51 = *(type metadata accessor for LogInterpolation() - 8);
        v52 = *(v51 + 72);
        v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        *(swift_allocObject() + 16) = v98;
        v54 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for DynamicUICache();
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v55 = static os_log_type_t.error.getter();
        sub_1000036B0(v55);

        sub_100002C00(&v106);
      }
    }

    else
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v46 = *(type metadata accessor for LogInterpolation() - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      *(swift_allocObject() + 16) = v102;
      v49 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DynamicUICache();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v105[3] = v28;
      v105[0] = v29;
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v105, &qword_10026D350, &qword_1001E6050);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v50 = static os_log_type_t.error.getter();
      sub_1000036B0(v50);

      sub_100002C00(&v106);
      v25 = v101;
    }
  }
}

uint64_t sub_1000C7EB8(char *a1, uint64_t a2)
{
  v55 = a2;
  v59 = a1;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v54[6] = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v57 = v8;
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLRequest();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  __chkstk_darwin(v10);
  v63 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = *(type metadata accessor for LogInterpolation() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v54[4] = v13;
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v54[3] = v16;
  v17 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v64;
  v54[2] = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v54[5] = v15;
  v19 = v59;
  v68 = v5;
  v20 = sub_100017E64(&aBlock);
  v60 = v6;
  v21 = *(v6 + 16);
  v21(v20, v19, v5);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v22 = qword_100287810;
  v23 = static os_log_type_t.default.getter();
  v54[1] = v22;
  sub_1000036B0(v23);

  v58 = v5;
  v56 = v21;
  v21(v9, v19, v5);
  v24 = v63;
  v59 = v9;
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v25 = [objc_opt_self() defaultManager];
  v26 = v55;
  URL.path.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v25 fileExistsAtPath:v27];

  v29 = sub_1000C6284();
  v31 = v24;
  v32 = v18;
  v33 = v26;
  if (v30)
  {
    v34 = v30;
    if (v28)
    {
      v54[0] = v29;
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v35 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();
      v33 = v26;

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._countAndFlagsBits = 0xD000000000000013;
      v36._object = 0x80000001001F6700;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
      v68 = &type metadata for String;
      v37 = v54[0];
      aBlock = v54[0];
      v66 = v34;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
      LogInterpolation.init(stringInterpolation:)();
      v39 = static os_log_type_t.debug.getter();
      sub_1000036B0(v39);
      v31 = v63;
      v32 = v64;

      v40._object = 0x80000001001F6720;
      v41._countAndFlagsBits = v37;
      v41._object = v34;
      v40._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(v41, v40);
    }
  }

  v42 = v28;
  v43 = v33;
  if (qword_100268668 != -1)
  {
    swift_once();
  }

  v44 = qword_10026BAD8;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v46 = v58;
  v47 = v59;
  v56(v59, v43, v58);
  v48 = v60;
  v49 = (*(v60 + 80) + 25) & ~*(v60 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v32;
  *(v50 + 24) = v42;
  (*(v48 + 32))(v50 + v49, v47, v46);
  v69 = sub_1000CB8E8;
  v70 = v50;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_1000C9650;
  v68 = &unk_100248C90;
  v51 = _Block_copy(&aBlock);

  v52 = [v44 downloadTaskWithRequest:isa completionHandler:v51];
  _Block_release(v51);

  [v52 resume];
  return (*(v61 + 8))(v31, v62);
}

uint64_t sub_1000C85A0()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v8[3] = v7;
  v4 = sub_100017E64(v8);
  (*(*(v7 - 8) + 16))(v4);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v8, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5);
}

void sub_1000C87A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v114 = a6;
  v115 = a4;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  v14 = v103 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v103 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v29 = v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = *(type metadata accessor for LogInterpolation() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v33 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v34 = v116;
    v35 = v117;
    v121 = v117;
    v36 = sub_100017E64(v120);
    (*(*(v35 - 1) + 16))(v36, v34, v35);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v37 = static os_log_type_t.error.getter();
    sub_1000036B0(v37);

    return;
  }

  v110 = v16;
  v111 = v14;
  v38 = a2;
  v112 = v29;
  v113 = v27;
  v39 = v26;
  sub_10001EC70(a1, v23);
  if (sub_100009F34(v23, 1, v39) != 1)
  {
    v40 = *(v113 + 32);
    v109 = v39;
    v40(v112, v23, v39);
    if (!v38 || (objc_opt_self(), (v41 = swift_dynamicCastObjCClass()) == 0))
    {
      (*(v113 + 8))(v112, v109);
      goto LABEL_14;
    }

    v42 = v41;
    sub_100002BC0(0, &unk_100270B80, NSDateFormatter_ptr);
    v106 = v38;
    v43 = sub_1000BFBD8();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v110 + 8))(v19, v15);
    v105 = v43;
    v45 = [v43 stringForObjectValue:isa];

    type metadata accessor for Defaults();
    sub_1000C2358(v45, 13);

    v46 = [v42 statusCode];
    v47 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v48 = *(type metadata accessor for LogInterpolation() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v107 = *(v48 + 80);
    v110 = v47;
    v51 = swift_allocObject();
    v104 = xmmword_1001E5F70;
    *(v51 + 16) = xmmword_1001E5F70;
    v108 = v50;
    v52 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();
    v54 = v49;

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD000000000000029;
    v55._object = 0x80000001001F6760;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v121 = &type metadata for Int;
    v120[0] = v46;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v57 = qword_100287810;
    v58 = static os_log_type_t.debug.getter();
    sub_1000036B0(v58);

    if (v46 == 304)
    {
      *(swift_allocObject() + 16) = v104;
      v59 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v60 = static os_log_type_t.info.getter();
      sub_1000036B0(v60);

      v61 = &v123;
LABEL_26:

      (*(v113 + 8))(v112, v109);
      return;
    }

    v111 = v57;
    v103[1] = v53;
    if (a5)
    {
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v72 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v73 = v109;
      v121 = v109;
      v74 = sub_100017E64(v120);
      (*(v113 + 16))(v74, v114, v73);
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
      v75 = static os_log_type_t.info.getter();
      sub_1000036B0(v75);

      v76 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v77 = String._bridgeToObjectiveC()();

      v120[0] = 0;
      v78 = [v76 removeItemAtPath:v77 error:v120];

      v79 = v120[0];
      if (!v78)
      {
LABEL_25:
        v97 = v79;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        *(swift_allocObject() + 16) = xmmword_1001E5F60;
        v98 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        swift_getErrorValue();
        v99 = v118;
        v100 = v119;
        v121 = v119;
        v101 = sub_100017E64(v120);
        (*(*(v100 - 1) + 16))(v101, v99, v100);
        static LogInterpolation.safe(_:)();
        sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
        v102 = static os_log_type_t.error.getter();
        sub_1000036B0(v102);

        v61 = &v122;
        goto LABEL_26;
      }

      v80 = v120[0];
    }

    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v81 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    *&v104 = v54;
    LogInterpolation.init(stringLiteral:)();
    v82 = v109;
    v121 = v109;
    v83 = sub_100017E64(v120);
    v84 = v113;
    (*(v113 + 16))(v83, v114, v82);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
    v85 = static os_log_type_t.info.getter();
    sub_1000036B0(v85);

    v86 = [objc_opt_self() defaultManager];
    v87 = v112;
    URL._bridgeToObjectiveC()(v88);
    v90 = v89;
    URL._bridgeToObjectiveC()(v91);
    v93 = v92;
    v120[0] = 0;
    v94 = [v86 moveItemAtURL:v90 toURL:v92 error:v120];

    v79 = v120[0];
    if (v94)
    {
      v95 = *(v84 + 8);
      v96 = v120[0];
      v95(v87, v82);

      return;
    }

    goto LABEL_25;
  }

  sub_100009FB0(v23, &unk_10026FEE0, &unk_1001E67C0);
LABEL_14:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v62 = *(type metadata accessor for LogInterpolation() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v65 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  v66._object = 0x80000001001F6740;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v66);
  if (v38)
  {
    v67 = sub_100002BC0(0, &qword_10026BBA0, NSURLResponse_ptr);
    v68 = v38;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    v120[1] = 0;
    v120[2] = 0;
  }

  v120[0] = v68;
  v121 = v67;
  v69 = v38;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v120, &qword_10026D350, &qword_1001E6050);
  v70._countAndFlagsBits = 41;
  v70._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v71 = static os_log_type_t.error.getter();
  sub_1000036B0(v71);
}

uint64_t sub_1000C9650(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  sub_10000A7C0(v11, v15, 1, v14);

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_100009FB0(v11, &unk_10026FEE0, &unk_1001E67C0);
}

uint64_t sub_1000C9780()
{
  sub_100003D28();
  v3 = v2;
  v4 = type metadata accessor for URL();
  sub_100003D10(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000C9870;

  return sub_1000C6300(v3, v7, v8, v9, v0 + v6);
}

uint64_t sub_1000C9870()
{
  sub_100004768();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000C995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  return _swift_task_switch(sub_1000C9984, 0, 0);
}

uint64_t sub_1000C9984()
{
  v1 = v0;
  v2 = (v0 + 400);
  v3 = *(v1 + 680);
  v4 = *(v1 + 672);
  *(v1 + 688) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  *(v1 + 696) = *(v6 + 72);
  *(v1 + 920) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + 704) = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v9 = type metadata accessor for URL();
  *(v1 + 424) = v9;
  sub_100017E64(v2);
  sub_1000047A4(v9);
  (*(v10 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v2, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  *(v1 + 712) = qword_100287810;
  v11 = static os_log_type_t.info.getter();
  sub_1000036B0(v11);

  if (qword_100268638 != -1)
  {
    swift_once();
  }

  v12 = *(v1 + 664);
  v13 = qword_1002877A0;
  *(v1 + 720) = qword_1002877A0;
  v14 = [v12 stringForKey:v13];
  v15 = [v14 valuePromise];
  *(v1 + 728) = v15;

  sub_10001CBB4();
  *(v1 + 80) = v16;
  *(v1 + 120) = v1 + 608;
  *(v1 + 88) = sub_1000C9CE0;
  v17 = sub_1000181A4();
  v18 = sub_10007B9A4(&qword_10026BB88, &qword_1001E9398);
  *(v1 + 736) = v18;
  *(v1 + 456) = v18;
  *(v1 + 400) = _NSConcreteStackBlock;
  sub_10000B1E0(COERCE_DOUBLE(1107296256));
  sub_10000AB8C();
  *(v1 + 424) = v19;
  *(v1 + 432) = v17;
  [v15 resultWithCompletion:v2];

  return _swift_continuation_await(v1 + 80);
}

uint64_t sub_1000C9CE0()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 744) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C9DE0()
{
  sub_100003D28();
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[76];
  swift_isUniquelyReferenced_nonNull_native();
  sub_100011A0C();

  v0[94] = v13;
  if (qword_100268640 != -1)
  {
    sub_1000048E0();
  }

  v4 = v0[83];
  v5 = qword_1002877A8;
  v0[95] = qword_1002877A8;
  v6 = [v4 dictionaryForKey:v5];
  v7 = [v6 valuePromise];
  v0[96] = v7;

  sub_100015BB0();
  v0[26] = v8;
  v0[31] = v0 + 76;
  v0[27] = sub_1000CA1A0;
  v9 = sub_1000181A4();
  v10 = sub_10007B9A4(&qword_10026BB90, &unk_1001EE250);
  v0[97] = v10;
  v0[57] = v10;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  sub_100019BCC();
  v0[53] = v11;
  v0[54] = v9;
  [v7 resultWithCompletion:v0 + 50];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_1000CA1A0()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 240);
  *(v1 + 784) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CA2A0()
{
  sub_100003D28();
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  sub_10000A6EC();
  sub_100011A0C();

  v0[99] = v11;
  if (qword_100268648 != -1)
  {
    sub_10000BEF8();
  }

  v4 = v0[83];
  v5 = qword_1002877B0;
  v0[100] = qword_1002877B0;
  v6 = [v4 arrayForKey:v5];
  v0[101] = [v6 valuePromise];

  sub_100015BB0();
  v0[42] = v7;
  v0[47] = v0 + 76;
  v0[43] = sub_1000CA658;
  v8 = sub_1000181A4();
  v0[57] = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_100048FD8;
  v0[53] = &unk_100248B28;
  v0[54] = v8;
  sub_100022238(v9, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 42);
}

uint64_t sub_1000CA658()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 368);
  *(v1 + 816) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CA758()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  sub_10000A6EC();
  sub_10000A998();

  v0[103] = v12;
  if (qword_100268660 != -1)
  {
    sub_10000C35C();
  }

  v4 = v0[97];
  v5 = v0[83];
  v6 = qword_1002877C8;
  v0[104] = qword_1002877C8;
  v7 = [v5 dictionaryForKey:v6];
  v0[105] = [v7 valuePromise];

  sub_100015BB0();
  v0[2] = v8;
  v0[7] = v0 + 76;
  v0[3] = sub_1000CAAD8;
  sub_1000181A4();
  v0[57] = v4;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  sub_100019BCC();
  v0[53] = v10;
  v0[54] = v9;
  sub_100022238(v9, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CAAD8()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 848) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CABD8()
{
  sub_100003D28();
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  sub_10000A6EC();
  sub_100011A0C();

  v0[107] = v11;
  if (qword_100268650 != -1)
  {
    sub_1000067B8();
  }

  v4 = v0[83];
  v5 = qword_1002877B8;
  v0[108] = qword_1002877B8;
  v6 = [v4 BOOLForKey:v5];
  v0[109] = [v6 valuePromise];

  sub_100015BB0();
  v0[34] = v7;
  v0[39] = v0 + 76;
  v0[35] = sub_1000CAF8C;
  v8 = sub_1000181A4();
  v0[57] = sub_10007B9A4(&qword_10026BB98, &qword_1001E93A0);
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_1000E42D8;
  v0[53] = &unk_100248B78;
  v0[54] = v8;
  sub_100022238(v9, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 34);
}

uint64_t sub_1000CAF8C()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 304);
  *(v1 + 880) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CB08C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  sub_10000A6EC();
  sub_10000A998();

  v0[111] = v11;
  if (qword_100268658 != -1)
  {
    sub_100005C4C();
  }

  v4 = v0[92];
  v5 = v0[83];
  v6 = qword_1002877C0;
  v0[112] = qword_1002877C0;
  v7 = [v5 stringForKey:v6];
  v0[113] = [v7 valuePromise];

  sub_100015BB0();
  v0[18] = v8;
  v0[23] = v0 + 76;
  v0[19] = sub_1000CB41C;
  sub_1000181A4();
  v0[57] = v4;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_100048FD8;
  v0[53] = &unk_100248BA0;
  v0[54] = v9;
  sub_100022238(v9, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_1000CB41C()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 176);
  *(v1 + 912) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CB51C()
{
  sub_100003D28();
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  sub_10000A6EC();
  sub_10000A998();

  if (*(v7 + 16))
  {
    v4 = v0[85];
    sub_1000C64EC(v7, v0[84]);
  }

  sub_100002D8C();

  return v5();
}

uint64_t sub_1000CB5BC()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v14 = *(v0 + 704);
  v15 = *(v0 + 712);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  swift_willThrow();

  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000719C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v8 = *(v0 + 584);
  *(v0 + 424) = *(v0 + 592);
  sub_100017E64((v0 + 400));
  sub_1000074A0();
  (*(v9 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v0 + 400, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);

  if (*(*(v0 + 888) + 16))
  {
    v11 = *(v0 + 680);
    sub_1000C64EC(*(v0 + 888), *(v0 + 672));
  }

  sub_100002D8C();

  return v12();
}

unint64_t sub_1000CB7A4()
{
  result = qword_100268B58;
  if (!qword_100268B58)
  {
    type metadata accessor for AMSBagKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268B58);
  }

  return result;
}

uint64_t sub_1000CB7FC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  sub_100003D10(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1000C7118(a1, v5, v6);
}

uint64_t sub_1000CB86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CB88C(uint64_t a1)
{
  v2 = type metadata accessor for JetpackOutputWriter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CB8E8()
{
  v1 = type metadata accessor for URL();
  sub_100003D10(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_10000874C();

  sub_1000C87A0(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000CB9A8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000CBA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_10001ECE0();

      if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = sub_10003A3C0(v14, v13, a3);

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000CBBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50[1] = a4;
  v56 = type metadata accessor for Calendar.Identifier();
  v7 = sub_100002CC4(v56);
  v55 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Calendar();
  v15 = sub_100002CC4(v14);
  v53 = v16;
  v54 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v21 = v20 - v19;
  v22 = sub_10007B9A4(&qword_10026B530, &unk_1001EFCD0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v50 - v24;
  v26 = type metadata accessor for Locale();
  v27 = sub_100002CC4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  v34 = v33 - v32;
  v51 = sub_1000CBA78(a1, a2, a3);
  v52 = v35;
  if (v35)
  {
    v50[0] = a2;
    v36 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v34, v26);
    [v36 setLocale:isa];

    TimeZone.init(secondsFromGMT:)();
    v38 = type metadata accessor for TimeZone();
    v39 = 0;
    if (sub_100009F34(v25, 1, v38) != 1)
    {
      v39 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(*(v38 - 8) + 8))(v25, v38);
    }

    [v36 setTimeZone:v39];

    sub_1000BFD18(0xD00000000000001BLL, 0x80000001001F6830, v36);
    v40 = v55;
    v41 = v56;
    (*(v55 + 104))(v13, enum case for Calendar.Identifier.gregorian(_:), v56);
    Calendar.init(identifier:)();
    (*(v40 + 8))(v13, v41);
    v42 = Calendar._bridgeToObjectiveC()().super.isa;
    (*(v53 + 8))(v21, v54);
    [v36 setCalendar:v42];

    v44 = v51;
    v43 = v52;
    v45 = String._bridgeToObjectiveC()();
    v46 = [v36 dateFromString:v45];

    v47 = v50[0];
    if (v46)
    {

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1000CC06C();
      swift_allocError();
      *v49 = a1;
      *(v49 + 8) = v47;
      *(v49 + 16) = v44;
      *(v49 + 24) = v43;
      *(v49 + 32) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000CC06C();
    swift_allocError();
    *v48 = a1;
    *(v48 + 8) = a2;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0;
    swift_willThrow();
  }
}

unint64_t sub_1000CC06C()
{
  result = qword_10026BBA8;
  if (!qword_10026BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBA8);
  }

  return result;
}

uint64_t sub_1000CC0CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CC10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_1000CC170(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = a2 + 64;
    v4 = 1 << *(a2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v25 = result;
    while (v6)
    {
LABEL_10:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (result[6] + 16 * v10);
      v12 = result[7] + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v28 = *(v12 + 16);
      v29 = *v11;
      v27 = *(v12 + 24);
      v30 = v11[1];
      if (*v12)
      {
        v15 = v13[2] + 1;
        do
        {
          if (!--v15)
          {

            goto LABEL_25;
          }

          v16 = v13[4] == 0x676F6C61746163 && v13[5] == 0xE700000000000000;
        }

        while (!v16 && (sub_10000A704() & 1) == 0);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = _swiftEmptyArrayStorage;
        }

        else
        {
          v23 = _swiftEmptyArrayStorage[2];
          sub_100003030();
          sub_1000D5158();
        }

        if (v17[2] >= v17[3] >> 1)
        {
          sub_1000D5158();
        }

        sub_100017D4C(v17);
        *(v18 + 32) = 1;
        *(v18 + 40) = v29;
        *(v18 + 48) = v30;
        sub_10001CD3C(v18, v25, v26, v27, v28);
      }

      else
      {

LABEL_25:
      }

      v6 &= v6 - 1;
      if (v14)
      {
        v19 = v14[2] + 1;
        do
        {
          if (!--v19)
          {

            goto LABEL_41;
          }

          v20 = v14[4] == 0x676F6C61746163 && v14[5] == 0xE700000000000000;
        }

        while (!v20 && (sub_10000A704() & 1) == 0);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = _swiftEmptyArrayStorage;
        }

        else
        {
          v24 = _swiftEmptyArrayStorage[2];
          sub_100003030();
          sub_1000D5158();
        }

        if (v21[2] >= v21[3] >> 1)
        {
          sub_1000D5158();
        }

        sub_100017D4C(v21);
        *(v22 + 32) = 0;
        *(v22 + 40) = v29;
        *(v22 + 48) = v30;
        sub_10001CD3C(v22, v25, v26, v27, v28);
        result = v25;
      }

      else
      {
LABEL_41:

        result = v25;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return _swiftEmptyArrayStorage;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000CC430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CEE1C(a4, v11);
  if (*(&v11[0] + 1))
  {
    v6 = v12;
    sub_1000CEF5C(v11);
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  v7 = *(a5 + 16);
  if (v7)
  {
    v8 = sub_100012A94();
    if (v9)
    {
      LODWORD(v7) = *(*(a5 + 56) + 32 * v8 + 24);
      return v6 & v7 & 1;
    }

LABEL_8:
    LODWORD(v7) = 0;
  }

  return v6 & v7 & 1;
}

void *sub_1000CC4CC()
{
  v0 = type metadata accessor for BagValueType();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1000056E8();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = (&v28 - v10);
  v12 = 0;
  sub_100004B44();
  v30 = v13;
  v31 = enum case for BagValueType.dictionary(_:);
  v14 = (v3 + 104);
  v29 = enum case for BagValueType.string(_:);
  v15 = _swiftEmptyArrayStorage;
  do
  {
    if (!*(&off_1002444F8 + v12 + 32))
    {
      v16 = 0x70612D616964656DLL;
      v17 = 0xEE00636E79732D69;
      goto LABEL_6;
    }

    if (*(&off_1002444F8 + v12 + 32) == 1)
    {
      v16 = 0xD00000000000001ALL;
      v17 = v30;
LABEL_6:
      *v11 = v16;
      v11[1] = v17;
      (*v14)(v11, v31, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = v15[2];
        sub_100003030();
        sub_1000D507C();
        v15 = v22;
      }

      v18 = v15[2];
      v19 = v18 + 1;
      if (v18 >= v15[3] >> 1)
      {
        sub_10001CBC0();
        v15 = v23;
      }

      v20 = v11;
      goto LABEL_16;
    }

    *v8 = 0x437972746E756F63;
    v8[1] = 0xEB0000000065646FLL;
    (*v14)(v8, v29, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = v15[2];
      sub_100003030();
      sub_1000D507C();
      v15 = v25;
    }

    v18 = v15[2];
    v19 = v18 + 1;
    if (v18 >= v15[3] >> 1)
    {
      sub_10001CBC0();
      v15 = v26;
    }

    v20 = v8;
LABEL_16:
    ++v12;
    v15[2] = v19;
    (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v20, v0);
  }

  while (v12 != 3);
  return v15;
}

void *sub_1000CC754()
{
  v1 = type metadata accessor for BagValueType();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000056E8();
  v73 = (v7 - v8);
  sub_100003F08();
  __chkstk_darwin(v9);
  sub_10000714C();
  v75 = v10;
  sub_100003F08();
  __chkstk_darwin(v11);
  sub_10000714C();
  v72 = v12;
  sub_100003F08();
  __chkstk_darwin(v13);
  sub_10000714C();
  v71 = v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  sub_10000714C();
  v70 = v16;
  sub_100003F08();
  __chkstk_darwin(v17);
  v19 = (&v61 - v18);
  v20 = 0;
  v69 = enum case for BagValueType.double(_:);
  v21 = (v4 + 104);
  sub_100004B44();
  v68 = v22;
  v67 = enum case for BagValueType.integer(_:);
  sub_100004B44();
  v66 = v23;
  v65 = enum case for BagValueType.array(_:);
  v64 = enum case for BagValueType.BOOL(_:);
  v74 = enum case for BagValueType.string(_:);
  sub_100004B44();
  v63 = v24;
  v62 = enum case for BagValueType.dictionary(_:);
  v25 = _swiftEmptyArrayStorage;
  v61 = "shold_seconds";
  do
  {
    v26 = &off_100244B18 + v20++;
    v27 = v26[32];
    v28 = 0xD00000000000001DLL;
    v29 = 0xE400000000000000;
    v30 = 1953722216;
    v31 = "backoff-jitter-range-in-seconds";
    switch(v27)
    {
      case 1:
        v30 = 1752457584;
        goto LABEL_10;
      case 2:
        v29 = 0xE700000000000000;
        v30 = 0x6E6F6973726576;
        goto LABEL_10;
      case 3:
        v35 = v71;
        v36 = v66;
        *v71 = 0xD00000000000001BLL;
        v35[1] = v36;
        (*v21)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v52;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v53;
        }

        break;
      case 4:
        v32 = v72;
        v33 = v68;
        *v72 = 0xD00000000000001FLL;
        v32[1] = v33;
        (*v21)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v49;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v50;
        }

        break;
      case 5:
        goto LABEL_21;
      case 6:
        v38 = sub_100004C00(v70);
        (*v21)(v38, v64, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v55;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v56;
        }

        break;
      case 7:
        v28 = 0xD000000000000018;
        v31 = v61;
LABEL_21:
        v37 = v75;
        *v75 = v28;
        v37[1] = v31 | 0x8000000000000000;
        (*v21)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v46;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v47;
        }

        break;
      case 8:
        v39 = v73;
        *v73 = 0xD000000000000010;
        v39[1] = v63;
        (*v21)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v58;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v59;
        }

        break;
      default:
LABEL_10:
        *v19 = v30;
        v19[1] = v29;
        (*v21)(v19, v74, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = v25[2];
          sub_100003030();
          sub_1000D507C();
          v25 = v43;
        }

        sub_1000079D8();
        if (v34)
        {
          sub_10000B83C();
          v25 = v44;
        }

        break;
    }

    sub_10000C37C();
    (*(v4 + 32))(v40 + v41 * v0);
  }

  while (v20 != 9);
  return v25;
}

unint64_t sub_1000CCC68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244B48, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CCCBC(char a1)
{
  result = 1953722216;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      v3 = 11;
      goto LABEL_8;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      v3 = 13;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x64656C62616E65;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000CCDC4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1001C4018(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v7 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (((*(a1 + 73) ^ *(a2 + 73)) & 1) != 0 || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v8 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!v8)
    {
      return 0;
    }

    sub_1001C4B20();
    v10 = v9;

    return (v10 & 1) != 0;
  }

  return !v8;
}

uint64_t sub_1000CCEF8(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026BC58, &qword_1001E9730);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000CF618();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v28) = 0;
  sub_100008390();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v28) = 1;
    sub_100008390();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    LOBYTE(v28) = 2;
    sub_100008390();
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v3[6];
    HIBYTE(v27) = 3;
    sub_10007B9A4(&qword_10026BC50, &unk_1001E9720);
    sub_100005830();
    sub_1000CF66C(v20);
    sub_1000083A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v3[7];
    LOBYTE(v28) = 4;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[8];
    v23 = *(v3 + 72);
    LOBYTE(v28) = 5;
    sub_100008390();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 73);
    LOBYTE(v28) = 6;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[10];
    LOBYTE(v28) = 7;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v3[11];
    HIBYTE(v27) = 8;
    sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
    sub_1000CF6C0(&qword_10026A7B8);
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1000CD1B4(const void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = v2[4];
  v9 = v2[5];
  String.hash(into:)();
  sub_10007A83C(a1, v2[6]);
  Hasher._combine(_:)(v2[7]);
  if (*(v2 + 72) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = v2[8];
    Hasher._combine(_:)(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    Hasher._combine(_:)(v11);
  }

  Hasher._combine(_:)(*(v2 + 73) & 1);
  v12 = *(v2 + 10);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = v2[11];
  if (v13)
  {
    Hasher._combine(_:)(1u);

    sub_10007A508(a1, v13);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000CD2A8()
{
  Hasher.init(_seed:)();
  sub_1000CD1B4(v1);
  return Hasher._finalize()();
}

void *sub_1000CD2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10007B9A4(&qword_10026BC40, &qword_1001E9718);
  sub_100002CC4(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000CF618();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  LOBYTE(v33[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  sub_100005180(1);
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v13;
  sub_100005180(2);
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  sub_10007B9A4(&qword_10026BC50, &unk_1001E9720);
  LOBYTE(__src[0]) = 3;
  sub_1000074B0();
  sub_1000CF66C(v15);
  sub_1000071A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v33[0];
  sub_100005180(4);
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100005180(5);
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v16 & 1;
  sub_100005180(6);
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100005180(7);
  KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v17;
  sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
  v38 = 8;
  sub_1000CF6C0(&qword_10026A798);
  sub_1000071A8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 &= 1u;
  v18 = sub_10000BF18();
  v19(v18);
  __src[0] = v10;
  __src[1] = v12;
  __src[2] = v29;
  __src[3] = v31;
  __src[4] = v28;
  __src[5] = v30;
  __src[6] = v27;
  __src[7] = v26;
  __src[8] = v25;
  v20 = v40;
  LOBYTE(__src[9]) = v40;
  BYTE1(__src[9]) = v24;
  __src[10] = v23;
  __src[11] = v39;
  v21 = v39;
  sub_10007BA94(__src, v33);
  sub_100002C00(a1);
  v33[0] = v10;
  v33[1] = v12;
  v33[2] = v29;
  v33[3] = v31;
  v33[4] = v28;
  v33[5] = v30;
  v33[6] = v27;
  v33[7] = v26;
  v33[8] = v25;
  v34 = v20;
  v35 = v24;
  v36 = v23;
  v37 = v21;
  sub_10007BAF0(v33);
  return memcpy(a2, __src, 0x60uLL);
}

unint64_t sub_1000CD820@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CCC68(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000CD850@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000CCCBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000CD898@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CCCB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CD8E0(uint64_t a1)
{
  v2 = sub_1000CF618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CD91C(uint64_t a1)
{
  v2 = sub_1000CF618();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000CD958@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000CD2E8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

Swift::Int sub_1000CD9C4()
{
  Hasher.init(_seed:)();
  sub_1000CD1B4(v1);
  return Hasher._finalize()();
}

void *sub_1000CDA04()
{
  v1 = type metadata accessor for BagValueType();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000056E8();
  v40 = (v7 - v8);
  sub_100003F08();
  v10 = __chkstk_darwin(v9);
  v12 = (&v36 - v11);
  __chkstk_darwin(v10);
  v14 = (&v36 - v13);
  v15 = 0;
  v39 = enum case for BagValueType.array(_:);
  v16 = (v4 + 104);
  sub_100004B44();
  v38 = v17;
  v18 = _swiftEmptyArrayStorage;
  v36 = enum case for BagValueType.BOOL(_:);
  v37 = enum case for BagValueType.integer(_:);
  do
  {
    v19 = *(&off_100244C40 + v15++ + 32);
    v20 = 0xE400000000000000;
    v21 = 1936748641;
    switch(v19)
    {
      case 1:
        v20 = 0xE700000000000000;
        v21 = 0x7373656E746966;
        goto LABEL_4;
      case 2:
        *v12 = 0xD000000000000016;
        v12[1] = v38;
        (*v16)(v12, v37, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = v18[2];
          sub_100003030();
          sub_1000D507C();
          v18 = v30;
        }

        sub_100009E20();
        if (v22)
        {
          sub_10000B83C();
          v18 = v31;
        }

        break;
      case 3:
        v23 = sub_100004C00(v40);
        (*v16)(v23, v36, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = v18[2];
          sub_100003030();
          sub_1000D507C();
          v18 = v33;
        }

        sub_100009E20();
        if (v22)
        {
          sub_10000B83C();
          v18 = v34;
        }

        break;
      default:
LABEL_4:
        *v14 = v21;
        v14[1] = v20;
        (*v16)(v14, v39, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = v18[2];
          sub_100003030();
          sub_1000D507C();
          v18 = v27;
        }

        sub_100009E20();
        if (v22)
        {
          sub_10000B83C();
          v18 = v28;
        }

        break;
    }

    sub_10000C37C();
    (*(v4 + 32))(v24 + v25 * v0);
  }

  while (v15 != 4);
  return v18;
}

unint64_t sub_1000CDCE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244C68, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CDD34(char a1)
{
  result = 1936748641;
  switch(a1)
  {
    case 1:
      result = 0x7373656E746966;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x64656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CDDB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1)
  {
    if (!a5 || (sub_1001C3F8C(a1, a5) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (a5)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    v17 = 0;
    if (a6)
    {
      return v17 & 1;
    }

    goto LABEL_13;
  }

  if (!a6)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  v14 = sub_100006378();
  v16 = sub_1001C3F8C(v14, v15);
  v17 = 0;
  if ((v16 & 1) == 0)
  {
    return v17 & 1;
  }

LABEL_13:
  if (a3 == a7)
  {
    v17 = a4 ^ a8 ^ 1;
  }

  return v17 & 1;
}

void sub_1000CDE54()
{
  sub_100007E34();
  v15[3] = v1;
  v16 = v2;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026BCC8, &qword_1001E9BA0);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = v15 - v11;
  v13 = v4[4];
  sub_100003CA8(v4, v4[3]);
  sub_1000CFC68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_100005830();
  sub_1000CFCBC(v14);
  sub_10000A3AC();
  sub_100003DDC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    sub_1000060B8();
    sub_10000A3AC();
    sub_100003DDC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003DDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003DDC();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v12, v5);
  sub_100005B78();
}

void sub_1000CE030(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4, char a5)
{
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  sub_10007A7D8(a1, a2);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  sub_10007A7D8(a1, a3);
LABEL_6:
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5 & 1);
}

Swift::Int sub_1000CE0C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_10000A604();
  v5 = Hasher.init(_seed:)();
  v13 = sub_10003AE98(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  sub_1000CE030(v13, v14, v15, v16, a4);
  return Hasher._finalize()();
}

void sub_1000CE120()
{
  sub_100007E34();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_10026BCB8, &unk_1001E9B90);
  sub_100002CC4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100006264();
  v8 = v1[4];
  sub_100003CA8(v1, v1[3]);
  sub_1000CFC68();
  sub_10000AF00();
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_1000074B0();
  sub_1000CFCBC(v9);
  sub_10000AED0();
  sub_1000060B8();
  sub_10000AED0();
  sub_100007F6C(2);
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_100007F6C(3);
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = *(v4 + 8);
  v11 = sub_100006378();
  v12(v11);
  sub_100002C00(v1);
  sub_100005B78();
}

unint64_t sub_1000CE35C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CDCE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000CE38C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000CDD34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CE3C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CDCE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CE408(uint64_t a1)
{
  v2 = sub_1000CFC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CE444(uint64_t a1)
{
  v2 = sub_1000CFC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000CE480(uint64_t a1@<X8>)
{
  sub_1000CE120();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void sub_1000CE4B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1000CDE54();
}

Swift::Int sub_1000CE4FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  sub_1000CE030(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

unint64_t sub_1000CE580(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244D10, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CE5CC(char a1)
{
  if (!a1)
  {
    return 0x70612D616964656DLL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x437972746E756F63;
}

uint64_t sub_1000CE63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_1001C4C1C();
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  v16 = sub_100006378();
  sub_1001C4D24(v16, v17);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000CE744()
{
  sub_100007E34();
  v3 = v2;
  v4 = sub_10007B9A4(&qword_10026BC10, &qword_1001E9710);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100006264();
  v10 = v3[4];
  sub_100003CA8(v3, v3[3]);
  sub_1000CF12C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_10026BBD0, &qword_1001E96F8);
  sub_1000CF3CC();
  sub_10000A3AC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    sub_1000060B8();
    sub_10007B9A4(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF538();
    sub_10000A3AC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005B78();
}

uint64_t sub_1000CE8FC(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    sub_10007A074(a1, a2);
    if (a3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      sub_100079E5C(a1, a3);
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:

  return String.hash(into:)();
}

Swift::Int sub_1000CE9A0()
{
  sub_10000A604();
  v0 = Hasher.init(_seed:)();
  v8 = sub_10003AE98(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  sub_1000CE8FC(v8, v9, v10);
  return Hasher._finalize()();
}

void sub_1000CE9F8()
{
  sub_100007E34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026BBC0, &qword_1001E96F0);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  sub_100006264();
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000CF12C();
  sub_10000AF00();
  if (!v0)
  {
    sub_10007B9A4(&qword_10026BBD0, &qword_1001E96F8);
    sub_1000CF180();
    sub_100012BEC();
    sub_10007B9A4(&qword_10026BBF8, &qword_1001E9708);
    sub_1000060B8();
    sub_1000CF2EC();
    sub_100012BEC();
    sub_100007F6C(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = *(v5 + 8);
    v11 = sub_100006378();
    v12(v11);
  }

  sub_100002C00(v2);
  sub_100005B78();
}

unint64_t sub_1000CEC18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE580(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CEC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CE5CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CEC7C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE580(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CECC4(uint64_t a1)
{
  v2 = sub_1000CF12C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CED00(uint64_t a1)
{
  v2 = sub_1000CF12C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000CED3C(void *a1@<X8>)
{
  sub_1000CE9F8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1000CED6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000CE744();
}

Swift::Int sub_1000CED8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1000CE9A0();
}

uint64_t sub_1000CED98(const void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1000CE8FC(a1, *v1, v1[1]);
}

Swift::Int sub_1000CEDA4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_1000CE8FC(v6, v1, v2);
  return Hasher._finalize()();
}

void sub_1000CEE1C(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    if (*(a1 + 16) && (v10 = sub_100012A94(), (v11 & 1) != 0) && (v12 = *(*(a1 + 56) + 8 * v10), , , *(v12 + 16)) && (v13 = sub_100012A94(), (v14 & 1) != 0))
    {
      memcpy(__dst, (*(v12 + 56) + 96 * v13), sizeof(__dst));
      sub_10007BA94(__dst, &v15);

      v9 = __dst[0];
      v4 = __dst[1];
      v5 = __dst[2];
      v6 = __dst[3];
      v7 = __dst[4];
      v8 = __dst[5];
    }

    else
    {

      *&v4 = sub_100005F54();
      v9 = 0uLL;
    }
  }

  else
  {
    *&v4 = sub_100005F54();
  }

  *a2 = v9;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
}

uint64_t sub_1000CEF5C(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100269AE8, &qword_1001E94D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CEFD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CF018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CF080()
{
  result = qword_10026BBB0;
  if (!qword_10026BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBB0);
  }

  return result;
}

unint64_t sub_1000CF0D8()
{
  result = qword_10026BBB8;
  if (!qword_10026BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBB8);
  }

  return result;
}

unint64_t sub_1000CF12C()
{
  result = qword_10026BBC8;
  if (!qword_10026BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBC8);
  }

  return result;
}

unint64_t sub_1000CF180()
{
  result = qword_10026BBD8;
  if (!qword_10026BBD8)
  {
    sub_10007BC70(&qword_10026BBD0, &qword_1001E96F8);
    sub_1000CF20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBD8);
  }

  return result;
}

unint64_t sub_1000CF20C()
{
  result = qword_10026BBE0;
  if (!qword_10026BBE0)
  {
    sub_10007BC70(&qword_10026BBE8, &qword_1001E9700);
    sub_1000CF298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBE0);
  }

  return result;
}

unint64_t sub_1000CF298()
{
  result = qword_10026BBF0;
  if (!qword_10026BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBF0);
  }

  return result;
}

unint64_t sub_1000CF2EC()
{
  result = qword_10026BC00;
  if (!qword_10026BC00)
  {
    sub_10007BC70(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC00);
  }

  return result;
}

unint64_t sub_1000CF378()
{
  result = qword_10026BC08;
  if (!qword_10026BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC08);
  }

  return result;
}

unint64_t sub_1000CF3CC()
{
  result = qword_10026BC18;
  if (!qword_10026BC18)
  {
    sub_10007BC70(&qword_10026BBD0, &qword_1001E96F8);
    sub_1000CF458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC18);
  }

  return result;
}

unint64_t sub_1000CF458()
{
  result = qword_10026BC20;
  if (!qword_10026BC20)
  {
    sub_10007BC70(&qword_10026BBE8, &qword_1001E9700);
    sub_1000CF4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC20);
  }

  return result;
}

unint64_t sub_1000CF4E4()
{
  result = qword_10026BC28;
  if (!qword_10026BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC28);
  }

  return result;
}

unint64_t sub_1000CF538()
{
  result = qword_10026BC30;
  if (!qword_10026BC30)
  {
    sub_10007BC70(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC30);
  }

  return result;
}

unint64_t sub_1000CF5C4()
{
  result = qword_10026BC38;
  if (!qword_10026BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC38);
  }

  return result;
}

unint64_t sub_1000CF618()
{
  result = qword_10026BC48;
  if (!qword_10026BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC48);
  }

  return result;
}

unint64_t sub_1000CF66C(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    sub_10007BC70(&qword_10026BC50, &unk_1001E9720);
    result = sub_10002400C();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000CF6C0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    sub_10007BC70(&qword_10026A790, &qword_1001ED5B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1000CF724(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000CF7FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1000CF8D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000CF8E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CF93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000CF9A4()
{
  result = qword_10026BC60;
  if (!qword_10026BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC60);
  }

  return result;
}

unint64_t sub_1000CFA2C()
{
  result = qword_10026BC78;
  if (!qword_10026BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC78);
  }

  return result;
}

unint64_t sub_1000CFAB4()
{
  result = qword_10026BC90;
  if (!qword_10026BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC90);
  }

  return result;
}

unint64_t sub_1000CFB0C()
{
  result = qword_10026BC98;
  if (!qword_10026BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC98);
  }

  return result;
}

unint64_t sub_1000CFB64()
{
  result = qword_10026BCA0;
  if (!qword_10026BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCA0);
  }

  return result;
}

unint64_t sub_1000CFBBC()
{
  result = qword_10026BCA8;
  if (!qword_10026BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCA8);
  }

  return result;
}

unint64_t sub_1000CFC14()
{
  result = qword_10026BCB0;
  if (!qword_10026BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCB0);
  }

  return result;
}

unint64_t sub_1000CFC68()
{
  result = qword_10026BCC0;
  if (!qword_10026BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCC0);
  }

  return result;
}

unint64_t sub_1000CFCBC(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = sub_10002400C();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1000CFD10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000CFE18(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000CFE6C()
{
  result = qword_10026BCE0;
  if (!qword_10026BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCE0);
  }

  return result;
}

unint64_t sub_1000CFEC4()
{
  result = qword_10026BCE8;
  if (!qword_10026BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCE8);
  }

  return result;
}

unint64_t sub_1000CFF1C()
{
  result = qword_10026BCF0;
  if (!qword_10026BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCF0);
  }

  return result;
}

uint64_t sub_1000CFF74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CFFB4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000D00A8()
{
  sub_10001ECE0();
  v0 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (v0[2] == 2)
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[6];
    v4 = v0[7];

    static String._fromSubstring(_:)();

    if (v0[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v6 = v0[8];
      v7 = v0[9];
      v8 = v0[10];
      v9 = v0[11];

      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v14._countAndFlagsBits = v10;
      v14._object = v12;
      LODWORD(result) = sub_1000E16C4(v14);
      if (result == 3)
      {
        return 2;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    sub_100090C64();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D0210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001F6850 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D02DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_1000D0314(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = 0x7373656E746966;
  if (a1)
  {
    sub_100006BF8();
    if (v11)
    {
      v13 = 1936748641;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE700000000000000;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    v13 = 0x7373656E746966;
  }

  if (a4)
  {
    sub_100006BF8();
    if (v15)
    {
      v10 = 1936748641;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v13 == v10 && v14 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000D0474(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v7 = sub_10007B9A4(&qword_10026BD18, &qword_1001E9E50);
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000D0AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = a2;
  v19 = 0;
  sub_1000D0B78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1000D05F4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100006BF8();
  }

  else
  {
    sub_100002CE8();
  }

  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000D0690(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    sub_100006BF8();
  }

  else
  {
    sub_100002CE8();
  }

  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D073C(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026BD00, &qword_1001E9E48);
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13[-v9];
  v11 = a1[3];
  sub_100003CA8(a1, v11);
  sub_1000D0AD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v13[14] = 0;
    sub_1000D0B24();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v13[15];
    v13[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_100002C00(a1);
  return v11;
}

uint64_t sub_1000D08FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D0210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0924(uint64_t a1)
{
  v2 = sub_1000D0AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0960(uint64_t a1)
{
  v2 = sub_1000D0AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D099C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D073C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1000D09EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_1000D0690(*v0);
}

uint64_t sub_1000D09F8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return sub_1000D05F4(a1, *v1);
}

Swift::Int sub_1000D0A04()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000D0AD0()
{
  result = qword_10026BD08;
  if (!qword_10026BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD08);
  }

  return result;
}

unint64_t sub_1000D0B24()
{
  result = qword_10026BD10;
  if (!qword_10026BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD10);
  }

  return result;
}

unint64_t sub_1000D0B78()
{
  result = qword_10026BD20;
  if (!qword_10026BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000D0CAC()
{
  result = qword_10026BD28;
  if (!qword_10026BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD28);
  }

  return result;
}

unint64_t sub_1000D0D04()
{
  result = qword_10026BD30;
  if (!qword_10026BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD30);
  }

  return result;
}

unint64_t sub_1000D0D5C()
{
  result = qword_10026BD38;
  if (!qword_10026BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD38);
  }

  return result;
}

uint64_t sub_1000D0DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v38 = a5;
  v9 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v41 = &v35[-v11];
  v40 = type metadata accessor for URLComponents();
  v12 = sub_100002CC4(v40);
  v39 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for URL();
  v19 = sub_100002CC4(v18);
  v37 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v35[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = *a1;
  sub_1000CEE1C(a2, &v42);
  if (*(&v42 + 1))
  {
    v44 = v42;
    memcpy(v45, v43, sizeof(v45));
    v25 = v46;
    sub_1000D1280(&v44, a1, a3, a4, v17);
    result = sub_10000A064(&v42, &qword_100269AE8, &qword_1001E94D0);
    if (v25)
    {
      return result;
    }

    v27 = v41;
    URLComponents.url.getter();
    (*(v39 + 8))(v17, v40);
    if (sub_100009F34(v27, 1, v18) != 1)
    {
      v30 = *(v37 + 32);
      v30(v24, v27, v18);
      v31 = v38;
      v30(v38, v24, v18);
      v33 = a1[1];
      v32 = a1[2];
      v34 = &v31[*(type metadata accessor for MediaCatalogSyncRequest() + 20)];
      *v34 = v36;
      *(v34 + 1) = v33;
      *(v34 + 2) = v32;
    }

    sub_10000A064(v27, &unk_10026FEE0, &unk_1001E67C0);
    sub_100090C64();
    swift_allocError();
    v29 = 5;
  }

  else
  {
    sub_100090C64();
    swift_allocError();
    v29 = 6;
  }

  *v28 = v29;
  return swift_willThrow();
}

double sub_1000D1110@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D3150();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
  }

  return result;
}

BOOL sub_1000D11C4()
{
  v1 = type metadata accessor for JSONDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D30FC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    if (v7)
    {
      v5 = *(v7 + 16);

      return v5 != 0;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1000D1280@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_10007B9A4(&qword_10026BD40, &unk_1001E9F70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  if (a2[4])
  {
    v14 = a2[3];
    URLComponents.init(string:)();
    v15 = type metadata accessor for URLComponents();
    if (sub_100009F34(v13, 1, v15) == 1)
    {
      sub_10000A064(v13, &qword_10026BD40, &unk_1001E9F70);
      sub_100090C64();
      swift_allocError();
      *v16 = 3;
      return swift_willThrow();
    }

    (*(*(v15 - 8) + 32))(a5, v13, v15);
    v28 = *a1;
    v27 = *(a1 + 8);

    URLComponents.host.setter();
    sub_1000030A8();
    v23 = URLComponents.queryItems.getter();
    v24 = a1;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v18 = a2[6];
    v34 = a2[5];
    v30 = v18;
    URLComponents.init()();
    v20 = *a1;
    v19 = *(a1 + 8);

    URLComponents.host.setter();
    sub_1000030A8();
    v21 = *(a1 + 32);
    v33 = *(a1 + 16);
    strcpy(v32, "{version}");
    HIWORD(v32[2]) = 0;
    v32[3] = -385875968;
    v31 = v21;
    sub_10001ECE0();
    *&v33 = sub_100005198();
    *(&v33 + 1) = v22;
    strcpy(v32, "{storefront}");
    BYTE1(v32[3]) = 0;
    HIWORD(v32[3]) = -5120;
    *&v31 = a3;
    *(&v31 + 1) = a4;
    sub_100005198();

    URLComponents.path.setter();
    v23 = URLComponents.queryItems.getter();
    v24 = a1;
    v25 = v34;
    v26 = v30;
  }

  sub_1000D1544(v24, v25, v26, v23);

  return URLComponents.queryItems.setter();
}

uint64_t sub_1000D1544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v54 = sub_100002CC4(v8);
  v55 = v9;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(a1 + 88);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v46 = a2;
    v47 = a3;
    v48 = v14;
    v49 = a4;
    v60 = _swiftEmptyArrayStorage;
    sub_10009B720();
    v19 = v60;
    v22 = sub_10018BEAC(v17);
    v23 = 0;
    v14 = (v17 + 64);
    v52 = (v17 + 64);
    v53 = v55 + 32;
    v50 = v17 + 72;
    v51 = v18;
    if ((v22 & 0x8000000000000000) == 0)
    {
      while (v22 < 1 << *(v17 + 32))
      {
        v24 = v22 >> 6;
        if ((*&v14[8 * (v22 >> 6)] & (1 << v22)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v17 + 36) != v20)
        {
          goto LABEL_34;
        }

        v56 = v21;
        v57 = v23;
        v58 = v20;
        v25 = (*(v17 + 48) + 16 * v22);
        v26 = *v25;
        a4 = v25[1];
        v27 = (*(v17 + 56) + 16 * v22);
        v28 = v17;
        v29 = *v27;
        v30 = v27[1];

        URLQueryItem.init(name:value:)();

        v60 = v19;
        v31 = v19[2];
        v14 = (v31 + 1);
        if (v31 >= v19[3] >> 1)
        {
          sub_10009B720();
          v19 = v60;
        }

        v19[2] = v14;
        (*(v55 + 32))(v19 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v31, v16, v54);
        v32 = 1 << *(v28 + 32);
        if (v22 >= v32)
        {
          goto LABEL_35;
        }

        v14 = v52;
        v33 = *&v52[8 * v24];
        if ((v33 & (1 << v22)) == 0)
        {
          goto LABEL_36;
        }

        v17 = v28;
        if (*(v28 + 36) != v58)
        {
          goto LABEL_37;
        }

        v34 = v33 & (-2 << (v22 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v22 & 0x7FFFFFFFFFFFFFC0;
          v35 = v51;
        }

        else
        {
          a4 = v24 << 6;
          v36 = v24 + 1;
          v35 = v51;
          v37 = (v50 + 8 * v24);
          while (v36 < (v32 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            a4 += 64;
            ++v36;
            if (v39)
            {
              sub_100083998(v22, v58, v56 & 1);
              v32 = __clz(__rbit64(v38)) + a4;
              goto LABEL_19;
            }
          }

          sub_100083998(v22, v58, v56 & 1);
        }

LABEL_19:
        v23 = v57 + 1;
        if (v57 + 1 == v35)
        {
          v14 = v48;
          a4 = v49;
          a3 = v47;
          goto LABEL_24;
        }

        v21 = 0;
        v20 = *(v17 + 36);
        v22 = v32;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_24:
  v60 = v19;
  if (a3)
  {
    URLQueryItem.init(name:value:)();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_26:
      v41 = v19[2];
      if (v41 >= v19[3] >> 1)
      {
        sub_1000D4ECC();
        v19 = v45;
      }

      v19[2] = v41 + 1;
      (*(v55 + 32))(v19 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41, v14, v54);
      v60 = v19;
      goto LABEL_29;
    }

LABEL_38:
    v43 = v19[2];
    sub_1000D4ECC();
    v19 = v44;
    goto LABEL_26;
  }

LABEL_29:
  if (a4)
  {

    sub_10010F44C(v42);
    v19 = v60;
  }

  v59 = v19;

  sub_1000D1A40(&v59);

  return v59;
}

uint64_t sub_1000D19A8()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == URLQueryItem.name.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000D1A40(uint64_t *a1)
{
  v2 = *(type metadata accessor for URLQueryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000F03F4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1000D1AE8(v7);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000D1AE8(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for URLQueryItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URLQueryItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000D1F38(v8, v9, a1, v4);
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
    return sub_1000D1C18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000D1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  result = __chkstk_darwin(v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = URLQueryItem.name.getter();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == URLQueryItem.name.getter() && v32 == v33)
        {
          break;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D1F38(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - v15;
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v161 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = _swiftEmptyArrayStorage;
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1000D19A8();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = URLQueryItem.name.getter();
        v52 = v51;
        if (v50 == URLQueryItem.name.getter() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_1000D4E00();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_1000D4E00();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_1000D2AF4(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_1000F02C8(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1000F02B4(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_1000D2AF4(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1000F02C8(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = URLQueryItem.name.getter();
    v77 = v8;
    v79 = v78;
    if (v76 == URLQueryItem.name.getter() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}