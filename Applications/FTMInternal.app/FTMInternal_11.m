uint64_t sub_1001A7150(int64_t a1)
{
  if (a1 <= 0x11391)
  {
    v3 = &byte_100319230;
    v4 = 64;
    do
    {
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      if (v8 <= a1 && v9 >= a1)
      {
        v11 = *(v3 - 3);
        v12 = *v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001F5418(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_1001F5418((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        v7 = &_swiftEmptyArrayStorage[4 * v6];
        v7[4] = v11;
        v7[5] = v8;
        v7[6] = v9;
        *(v7 + 56) = v12;
      }

      v3 += 32;
      --v4;
    }

    while (v4);
    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      sub_1001F53F8(0, v13, 0);
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage[2];
      v16 = 4;
      do
      {
        v17 = _swiftEmptyArrayStorage[v16];
        v26 = v14;
        v18 = v14[3];
        if (v15 >= v18 >> 1)
        {
          sub_1001F53F8((v18 > 1), v15 + 1, 1);
          v14 = v26;
        }

        v14[2] = v15 + 1;
        v14[v15 + 4] = v17;
        v16 += 4;
        ++v15;
        --v13;
      }

      while (v13);
      v19 = v14;

      v20 = v19;
      v21 = *(v19 + 2);
      if (v21)
      {
LABEL_20:
        if (v21 != 1)
        {
          v22 = v20;
          v23 = sub_1001A649C(v20, 0, 0);
          if (*(v23 + 2))
          {
            v22 = v23;
          }

          v20 = v22;
          v1 = *(v22 + 2);
          if (!v1)
          {
            goto LABEL_30;
          }

          if (v1 != 1)
          {
LABEL_29:
            v1 = *(v20 + 4);
LABEL_30:

            return v1;
          }
        }

        v24 = *(v20 + 4);
LABEL_28:

        sub_1001A551C(&qword_100377110, &qword_1002F22D0);
        v20 = swift_allocObject();
        *(v20 + 1) = xmmword_1002EED40;
        *(v20 + 4) = v24;
        goto LABEL_29;
      }
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
      v21 = _swiftEmptyArrayStorage[2];
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v24 = -1;
    goto LABEL_28;
  }

  return -1;
}

double sub_1001A73BC(uint64_t a1, uint64_t a2)
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002EED50;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x80000001002BA750;
  *(v3 + 88) = &type metadata for Int;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = a1;
  print(_:separator:terminator:)();

  v4 = &byte_100319A50;
  v5 = 37;
  do
  {
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    if (v9 <= a1 && v10 >= a1)
    {
      v12 = *(v4 - 3);
      v13 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001F5418(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1001F5418((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[4 * v7];
      v8[4] = v12;
      v8[5] = v9;
      v8[6] = v10;
      *(v8 + 56) = v13;
    }

    v4 += 32;
    --v5;
  }

  while (v5);
  v14 = _swiftEmptyArrayStorage[2];
  if (!v14)
  {

    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_24:
    v26 = -1;
    goto LABEL_25;
  }

  sub_1001F53F8(0, v14, 0);
  v15 = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  v17 = 4;
  do
  {
    v18 = _swiftEmptyArrayStorage[v17];
    v29 = v15;
    v19 = v15[3];
    if (v16 >= v19 >> 1)
    {
      sub_1001F53F8((v19 > 1), v16 + 1, 1);
      v15 = v29;
    }

    v15[2] = v16 + 1;
    v15[v16 + 4] = v18;
    v17 += 4;
    ++v16;
    --v14;
  }

  while (v14);
  v20 = v15;

  v21 = v20;
  v22 = *(v20 + 2);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v22 == 1)
  {
    goto LABEL_22;
  }

  v23 = v21;
  v24 = sub_1001A649C(v21, a2, 1);
  if (*(v24 + 2))
  {
    v23 = v24;
  }

  v21 = v23;
  if (*(v23 + 2) == 1)
  {
LABEL_22:
    v26 = *(v21 + 4);
LABEL_25:

    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v27 = swift_allocObject();
    *&result = 1;
    *(v27 + 16) = xmmword_1002EED40;
    *(v27 + 32) = v26;
  }

  return result;
}

unint64_t sub_1001A7684()
{
  result = qword_100377100;
  if (!qword_100377100)
  {
    sub_1001A55C8(&qword_1003751B0, &unk_1002EED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377100);
  }

  return result;
}

unint64_t sub_1001A76E8()
{
  result = qword_100378C50;
  if (!qword_100378C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378C50);
  }

  return result;
}

uint64_t sub_1001A773C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1001A779C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001A77B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001A77F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTMNeighbourCellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMNeighbourCellType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A79C0()
{
  result = qword_1003751B8;
  if (!qword_1003751B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FRType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FRType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A7B68()
{
  result = qword_1003751C0;
  if (!qword_1003751C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751C0);
  }

  return result;
}

uint64_t sub_1001A7BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_100375258, &qword_1002EF050);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v49 = sub_1001A551C(&qword_100375250, &qword_1002EF048);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v10 = &v41 - v9;
  v48 = sub_1001A551C(&qword_100375288, &qword_1002EF060);
  v11 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v13 = &v41 - v12;
  if (*(a1 + 72))
  {
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v14 = sub_1001A551C(&qword_100375290, &qword_1002EF098);
    sub_1001A810C(a1, &v7[*(v14 + 44)]);
    v46 = LocalizedStringKey.init(stringLiteral:)();
    v45 = v15;
    v43 = v16;
    v44 = v17;
    v52 = *(a1 + 32);
    sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
    State.projectedValue.getter();
    v41 = v50[0];
    v42 = v51;
    v47 = a2;
    sub_1001A551C(&qword_100375260, &qword_1002EF058);
    sub_1001AD0C8(&qword_100375268, &qword_100375258, &qword_1002EF050);
    sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
    View.alert<A, B>(_:isPresented:actions:message:)();

    sub_1001AC99C(v7, &qword_100375258, &qword_1002EF050);
    v18 = swift_allocObject();
    v19 = *(a1 + 48);
    v18[3] = *(a1 + 32);
    v18[4] = v19;
    *(v18 + 74) = *(a1 + 58);
    v20 = *(a1 + 16);
    v18[1] = *a1;
    v18[2] = v20;
    v21 = &v10[*(v49 + 36)];
    *v21 = sub_1001AC53C;
    v21[1] = v18;
    v21[2] = 0;
    v21[3] = 0;
    sub_1001AC934(v10, v13, &qword_100375250, &qword_1002EF048);
    swift_storeEnumTagMultiPayload();
    sub_1001AC560(a1, v50);
    sub_1001A551C(&qword_100375200, &qword_1002EF020);
    sub_1001AC178();
    sub_1001AC374();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v10, &qword_100375250, &qword_1002EF048);
  }

  else
  {
    v50[0] = 0xD00000000000003CLL;
    v50[1] = 0x80000001002BA820;
    sub_1001A56A0();
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    KeyPath = swift_getKeyPath();
    v31 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(v50[0]) = v27 & 1;
    LOBYTE(v52) = 0;
    static Color.gray.getter();
    v40 = Color.gradient.getter();

    *v13 = v23;
    *(v13 + 1) = v25;
    v13[16] = v27 & 1;
    *(v13 + 3) = v29;
    *(v13 + 4) = KeyPath;
    v13[40] = 1;
    v13[48] = v31;
    *(v13 + 7) = v33;
    *(v13 + 8) = v35;
    *(v13 + 9) = v37;
    *(v13 + 10) = v39;
    v13[88] = 0;
    *(v13 + 12) = v40;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100375200, &qword_1002EF020);
    sub_1001AC178();
    sub_1001AC374();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1001A810C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = sub_1001A551C(&qword_1003752A0, &qword_1002EF0A8);
  v45 = *(v40 - 8);
  v3 = v45[8];
  v4 = __chkstk_darwin(v40);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v37 - v6;
  KeyPath = type metadata accessor for SURLSessionRunningView();
  v7 = *(*(KeyPath - 8) + 64);
  __chkstk_darwin(KeyPath);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001A551C(&qword_1003752A8, &qword_1002EF0B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v37 - v14;
  v38 = LocalizedStringKey.init(stringLiteral:)();
  v51 = *(a1 + 16);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v15 = *(a1 + 8);
  sub_100283B2C(v9);
  sub_1001AC598(&qword_1003752B0, type metadata accessor for SURLSessionRunningView);
  v16 = v42;
  NavigationLink<>.init(_:destination:isActive:)();
  v47 = a1;
  sub_1001A551C(&qword_1003752B8, &qword_1002EF0B8);
  sub_1001AD0C8(&qword_1003752C0, &qword_1003752B8, &qword_1002EF0B8);
  Form.init(content:)();
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v18;
  *(v17 + 74) = *(a1 + 58);
  v19 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v19;
  sub_1001AC560(a1, v55);
  v20 = sub_100283F74();
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = (v20 & 1) == 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v43;
  sub_1001AC934(v16, v43, &qword_1003752A8, &qword_1002EF0B0);
  v22 = v44;
  v23 = v45[2];
  v24 = v40;
  v23(v44, v46, v40);
  v25 = v21;
  v26 = v41;
  sub_1001AC934(v25, v41, &qword_1003752A8, &qword_1002EF0B0);
  v27 = sub_1001A551C(&qword_1003752C8, &qword_1002EF0F0);
  v23((v26 + *(v27 + 48)), v22, v24);
  v28 = *(v27 + 64);
  *&v51 = 0x7472617453;
  *(&v51 + 1) = 0xE500000000000000;
  *&v52 = sub_1001AC640;
  *(&v52 + 1) = v17;
  v30 = v38;
  v29 = KeyPath;
  *&v54[8] = v48;
  v31 = v26 + v28;
  *&v53 = KeyPath;
  *(&v53 + 1) = sub_1001AC6B0;
  *v54 = v38;
  *&v54[24] = v49;
  *&v54[40] = v50;
  sub_1001AC934(&v51, v55, &qword_1003752D0, &qword_1002EF0F8);
  v32 = v45[1];
  v32(v46, v24);
  sub_1001AC99C(v42, &qword_1003752A8, &qword_1002EF0B0);
  v33 = *&v54[32];
  *(v31 + 64) = *&v54[16];
  *(v31 + 80) = v33;
  *(v31 + 96) = *&v54[48];
  v34 = v52;
  *v31 = v51;
  *(v31 + 16) = v34;
  v35 = *v54;
  *(v31 + 32) = v53;
  *(v31 + 48) = v35;
  v55[0] = 0x7472617453;
  v55[1] = 0xE500000000000000;
  v55[2] = sub_1001AC640;
  v55[3] = v17;
  v55[4] = v29;
  v55[5] = sub_1001AC6B0;
  v55[6] = v30;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  sub_1001AC99C(v55, &qword_1003752D0, &qword_1002EF0F8);
  v32(v44, v24);
  return sub_1001AC99C(v43, &qword_1003752A8, &qword_1002EF0B0);
}

uint64_t sub_1001A869C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v41 = sub_1001A551C(&qword_1003752E8, &qword_1002EF158);
  v50 = *(v41 - 8);
  v3 = v50[8];
  v4 = __chkstk_darwin(v41);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v35 - v6;
  v39 = sub_1001A551C(&qword_1003752F0, &unk_1002EF160);
  v49 = *(v39 - 8);
  v7 = v49[8];
  v8 = __chkstk_darwin(v39);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v35 - v10;
  v11 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v46 = sub_1001A551C(&qword_100375300, &qword_1002EF170);
  v44 = *(v46 - 8);
  v13 = v44[8];
  v14 = __chkstk_darwin(v46);
  v45 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v53 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375308, &qword_1002EF178);
  sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790);
  sub_1001AD0C8(&qword_100375318, &qword_100375308, &qword_1002EF178);
  v38 = v17;
  Section<>.init(header:content:)();
  v52 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375320, &qword_1002EF180);
  sub_1001AD0C8(&qword_100375328, &qword_100375320, &qword_1002EF180);
  v18 = v43;
  Section<>.init(header:content:)();
  v51 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_1001A551C(&qword_100375330, &qword_1002EF188);
  sub_1001AD0C8(&qword_100375338, &qword_100375330, &qword_1002EF188);
  v19 = v48;
  Section<>.init(header:content:)();
  v35 = v44[2];
  v20 = v45;
  v21 = v46;
  v35(v45, v17, v46);
  v37 = v49[2];
  v22 = v47;
  v23 = v39;
  v37(v47, v18, v39);
  v36 = v50[2];
  v24 = v40;
  v25 = v19;
  v26 = v41;
  v36(v40, v25, v41);
  v27 = v42;
  v35(v42, v20, v21);
  v28 = sub_1001A551C(&qword_100375340, &qword_1002EF190);
  v37(&v27[*(v28 + 48)], v22, v23);
  v36(&v27[*(v28 + 64)], v24, v26);
  v29 = v50[1];
  v29(v48, v26);
  v30 = v49[1];
  v31 = v23;
  v30(v43, v23);
  v32 = v44[1];
  v33 = v46;
  v32(v38, v46);
  v29(v24, v26);
  v30(v47, v31);
  return (v32)(v45, v33);
}

uint64_t sub_1001A8D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11 = *a1;
  type metadata accessor for SURLSessionViewModel();
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel);
  v4 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v33[4] = v46;
  v33[5] = v47;
  v34 = v48;
  v33[0] = v42;
  v33[1] = v43;
  v33[2] = v44;
  v33[3] = v45;
  swift_getKeyPath();
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(v33, &qword_100375358, &qword_1002EF1C8);
  v5 = v24;
  v14 = v25;
  v12 = v22;
  v13 = v27;
  v6 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v39 = v46;
  v40 = v47;
  v41 = v48;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  swift_getKeyPath();
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v23 = v35;
  v26 = v36;
  v28 = v37;
  v29 = v38;
  Binding.subscript.getter();

  sub_1001AC99C(&v35, &qword_100375358, &qword_1002EF1C8);
  v7 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v46 = v30;
  v47 = v31;
  v48 = v32;
  v42 = v23;
  v43 = v26;
  v44 = v28;
  v45 = v29;
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_1001AC99C(&v42, &qword_100375358, &qword_1002EF1C8);
  LOBYTE(v3) = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v3 & 1) == 0;
  *a2 = v12;
  *(a2 + 8) = v5;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = sub_1001AD140;
  *(a2 + 96) = v9;
}

uint64_t sub_1001A9134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_1001A551C(&qword_100375348, &qword_1002EF198);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v62 = &v60 - v5;
  v6 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v61 = &v60 - v8;
  v9 = sub_1001A551C(&qword_100375378, &qword_1002EF268);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v60 - v13;
  v14 = sub_1001A551C(&qword_100375380, &qword_1002EF270);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v69 = &v60 - v16;
  v17 = sub_1001A551C(&qword_100375388, &qword_1002EF278);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v77 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v60 - v23;
  __chkstk_darwin(v22);
  v78 = &v60 - v25;
  v76 = a1;
  v26 = *a1;
  v65 = a1[1];
  v66 = v26;
  v27 = type metadata accessor for SURLSessionViewModel();
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel);
  v28 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v114 = v107;
  v115 = v108;
  v116 = v109;
  v110 = v103;
  v111 = v104;
  v112 = v105;
  v113 = v106;
  swift_getKeyPath();
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v96 = v110;
  v97 = v111;
  v98 = v112;
  v99 = v113;
  sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(&v110, &qword_100375358, &qword_1002EF1C8);
  v94 = v80;
  v95 = v81;
  LocalizedStringKey.init(stringLiteral:)();
  *&v87 = Text.init(_:tableName:bundle:comment:)();
  *(&v87 + 1) = v29;
  LOBYTE(v88) = v30 & 1;
  *(&v88 + 1) = v31;
  sub_1001A551C(&qword_100375390, &qword_1002EF2A0);
  sub_1001AC7AC();
  sub_1001AC800();
  v32 = v69;
  Picker.init(selection:label:content:)();
  LOBYTE(v26) = *(v76 + 72);
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  v35 = (v26 & 1) == 0;
  *(v34 + 16) = v35;
  (*(v70 + 32))(v24, v32, v71);
  v36 = &v24[*(v18 + 44)];
  *v36 = KeyPath;
  v36[1] = sub_1001AD140;
  v36[2] = v34;
  sub_1001AC8C4(v24, v78);
  v60 = v27;
  v37 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v107 = v100;
  v108 = v101;
  v109 = v102;
  v103 = v96;
  v104 = v97;
  v105 = v98;
  v106 = v99;
  swift_getKeyPath();
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v87 = v103;
  v88 = v104;
  v89 = v105;
  v90 = v106;
  Binding.subscript.getter();

  sub_1001AC99C(&v103, &qword_100375358, &qword_1002EF1C8);
  v70 = *(&v80 + 1);
  v71 = v80;
  v69 = v81;
  v68 = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v35;
  if (*(v76 + 73))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v76 = v38;
    v39 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v100 = v91;
    v101 = v92;
    v102 = v93;
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v99 = v90;
    swift_getKeyPath();
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v80 = v96;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    Binding.subscript.getter();

    sub_1001AC99C(&v96, &qword_100375358, &qword_1002EF1C8);
    v40 = v62;
    Toggle<>.init(_:isOn:)();
    v41 = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = v35;
    v43 = v61;
    (*(v63 + 32))(v61, v40, v64);
    v44 = v73;
    v45 = (v43 + *(v73 + 36));
    *v45 = v41;
    v45[1] = sub_1001AD140;
    v45[2] = v42;
    v46 = v79;
    sub_1001AC73C(v43, v79);
    (*(v72 + 56))(v46, 0, 1, v44);
  }

  else
  {
    (*(v72 + 56))(v79, 1, 1, v73);
  }

  v47 = v77;
  sub_1001AC934(v78, v77, &qword_100375388, &qword_1002EF278);
  v48 = v74;
  sub_1001AC934(v79, v74, &qword_100375378, &qword_1002EF268);
  v49 = v75;
  sub_1001AC934(v47, v75, &qword_100375388, &qword_1002EF278);
  v50 = sub_1001A551C(&qword_1003753A8, &qword_1002EF2C8);
  v51 = v49 + *(v50 + 48);
  *&v87 = 0x63696666617254;
  *(&v87 + 1) = 0xE700000000000000;
  v53 = v70;
  v52 = v71;
  *&v88 = &off_100319F00;
  *(&v88 + 1) = v71;
  v54 = v68;
  v55 = v69;
  *&v89 = v70;
  *(&v89 + 1) = v69;
  *&v90 = v68;
  *(&v90 + 1) = sub_1001AD140;
  v56 = v67;
  *&v91 = v67;
  *(v51 + 64) = v67;
  v57 = v88;
  *v51 = v87;
  *(v51 + 16) = v57;
  v58 = v90;
  *(v51 + 32) = v89;
  *(v51 + 48) = v58;
  sub_1001AC934(v48, v49 + *(v50 + 64), &qword_100375378, &qword_1002EF268);
  sub_1001AC934(&v87, &v96, &qword_1003753B0, &qword_1002EF2D0);
  sub_1001AC99C(v79, &qword_100375378, &qword_1002EF268);
  sub_1001AC99C(v78, &qword_100375388, &qword_1002EF278);
  sub_1001AC99C(v48, &qword_100375378, &qword_1002EF268);
  *&v96 = 0x63696666617254;
  *(&v96 + 1) = 0xE700000000000000;
  *&v97 = &off_100319F00;
  *(&v97 + 1) = v52;
  *&v98 = v53;
  *(&v98 + 1) = v55;
  *&v99 = v54;
  *(&v99 + 1) = sub_1001AD140;
  *&v100 = v56;
  sub_1001AC99C(&v96, &qword_1003753B0, &qword_1002EF2D0);
  return sub_1001AC99C(v77, &qword_100375388, &qword_1002EF278);
}

uint64_t sub_1001A9B48()
{
  sub_1001A551C(&qword_1003753B8, &qword_1002EF2F8);
  sub_1001A551C(&qword_1003753C0, &qword_1002EF300);
  sub_1001AD0C8(&qword_1003753C8, &qword_1003753B8, &qword_1002EF2F8);
  sub_1001AC7AC();
  swift_getOpaqueTypeConformance2();
  sub_1001AC9FC();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001A9C78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10023E8AC(*a1);
  sub_1001A56A0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_1001A9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v108 = sub_1001A551C(&qword_100375348, &qword_1002EF198);
  v115 = *(v108 - 8);
  v3 = *(v115 + 64);
  v4 = __chkstk_darwin(v108);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v112 = &v87 - v6;
  v103 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  v7 = *(*(v103 - 8) + 64);
  v8 = __chkstk_darwin(v103);
  v113 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v114 = &v87 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v87 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = &v87 - v19;
  v21 = LocalizedStringKey.init(stringLiteral:)();
  v110 = v22;
  v111 = v21;
  v109 = v23;
  v24 = *(a1 + 8);
  v102 = *a1;
  v25 = type metadata accessor for SURLSessionViewModel();
  v26 = sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel);
  v98 = v25;
  v27 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  v99 = v26;
  ObservedObject.Wrapper.subscript.getter();

  v176 = v152;
  v177 = v153;
  v178 = v154;
  v172 = v148;
  v173 = v149;
  v174 = v150;
  v175 = v151;
  swift_getKeyPath();
  v145 = v176;
  v146 = v177;
  LOWORD(v147) = v178;
  v141 = v172;
  v142 = v173;
  v143 = v174;
  v144 = v175;
  v94 = sub_1001A551C(&qword_100375358, &qword_1002EF1C8);
  Binding.subscript.getter();

  sub_1001AC99C(&v172, &qword_100375358, &qword_1002EF1C8);
  v28 = v112;
  Toggle<>.init(_:isOn:)();
  LOBYTE(a1) = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = (a1 & 1) == 0;
  *(v30 + 16) = v31;
  v32 = *(v115 + 32);
  v115 += 32;
  v88 = v32;
  v32(v18, v28, v108);
  v33 = &v18[*(v103 + 36)];
  *v33 = KeyPath;
  v33[1] = sub_1001AD140;
  v33[2] = v30;
  v110 = v20;
  sub_1001AC73C(v18, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v24;
  static Published.subscript.getter();

  v168[2] = v150;
  v169 = v151;
  v170 = v152;
  v171 = v153;
  v168[0] = v148;
  v168[1] = v149;
  sub_1001AC6D0(v168);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v169 == 1)
  {
    v47 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v152 = v145;
    v153 = v146;
    LOWORD(v154) = v147;
    v148 = v141;
    v149 = v142;
    v150 = v143;
    v151 = v144;
    swift_getKeyPath();
    v138 = v152;
    v139 = v153;
    LOWORD(v140) = v154;
    v134 = v148;
    v135 = v149;
    v136 = v150;
    v137 = v151;
    Binding.subscript.getter();

    sub_1001AC99C(&v148, &qword_100375358, &qword_1002EF1C8);
    v49 = *(&v127 + 1);
    v48 = v127;
    v50 = v128;
    v51 = BYTE8(v128);
    swift_getKeyPath();
    v161 = __PAIR128__(v49, v48);
    *&v162 = v50;
    BYTE8(v162) = v51;
    sub_1001A551C(&qword_100375370, &qword_1002EF240);
    Binding.subscript.getter();

    v35 = *(&v155 + 1);
    v34 = v155;
    v36 = v156;
    v46 = BYTE8(v156);

    v120 = 0x4059000000000000;
    State.init(wrappedValue:)();
    v42 = *(&v124 + 1);
    v41 = v124;
    v38 = 0x80000001002BA900;
    v43 = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v31;
    v44 = sub_1001AD140;
    v40 = 0xE200000000000000;
    v39 = 19541;
    v37 = 0xD00000000000001DLL;
  }

  v92 = v37;
  v93 = v39;
  v95 = v40;
  v96 = v44;
  v97 = v45;
  v100 = v43;
  v104 = v38;
  v105 = v42;
  v106 = v41;
  v107 = v46;
  v109 = v36;
  v111 = v35;
  v112 = v34;
  LocalizedStringKey.init(stringLiteral:)();
  v52 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v165 = v152;
  v166 = v153;
  v167 = v154;
  v161 = v148;
  v162 = v149;
  v163 = v150;
  v164 = v151;
  swift_getKeyPath();
  v145 = v165;
  v146 = v166;
  LOWORD(v147) = v167;
  v141 = v161;
  v142 = v162;
  v143 = v163;
  v144 = v164;
  Binding.subscript.getter();

  sub_1001AC99C(&v161, &qword_100375358, &qword_1002EF1C8);
  v53 = v90;
  Toggle<>.init(_:isOn:)();
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v31;
  v56 = v89;
  v88(v89, v53, v108);
  v57 = (v56 + *(v103 + 36));
  *v57 = v54;
  v57[1] = sub_1001AD140;
  v57[2] = v55;
  sub_1001AC73C(v56, v116);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v157 = v150;
  v158 = v151;
  v159 = v152;
  v160 = v153;
  v155 = v148;
  v156 = v149;
  sub_1001AC6D0(&v155);
  if (BYTE1(v158) == 1)
  {
    v58 = ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v152 = v145;
    v153 = v146;
    LOWORD(v154) = v147;
    v148 = v141;
    v149 = v142;
    v150 = v143;
    v151 = v144;
    swift_getKeyPath();
    v138 = v152;
    v139 = v153;
    LOWORD(v140) = v154;
    v134 = v148;
    v135 = v149;
    v136 = v150;
    v137 = v151;
    Binding.subscript.getter();

    sub_1001AC99C(&v148, &qword_100375358, &qword_1002EF1C8);
    v60 = *(&v127 + 1);
    v59 = v127;
    v61 = v128;
    v62 = BYTE8(v128);
    swift_getKeyPath();
    v124 = __PAIR128__(v60, v59);
    v125 = v61;
    v126 = v62;
    sub_1001A551C(&qword_100375370, &qword_1002EF240);
    Binding.subscript.getter();

    v115 = v120;
    v108 = v121;
    v101 = v122;
    v99 = v123;

    v117 = 0x4059000000000000;
    State.init(wrappedValue:)();
    v98 = v118;
    v94 = v119;
    v63 = 0x80000001002BA8E0;
    v89 = swift_getKeyPath();
    v90 = swift_allocObject();
    v90[16] = v31;
    v64 = 0xD00000000000001FLL;
    v102 = 0xE200000000000000;
    v103 = sub_1001AD140;
    v65 = 19524;
  }

  else
  {
    v115 = 0;
    v108 = 0;
    v101 = 0;
    v102 = 0;
    v64 = 0;
    v63 = 0;
    v65 = 0;
    v98 = 0;
    v99 = 0;
    v94 = 0;
    v89 = 0;
    v90 = 0;
    v103 = 0;
  }

  v87 = v63;
  v66 = v114;
  sub_1001AC934(v110, v114, &qword_100375350, &qword_1002EF1A0);
  v67 = v113;
  sub_1001AC934(v116, v113, &qword_100375350, &qword_1002EF1A0);
  v68 = v66;
  v69 = v91;
  sub_1001AC934(v68, v91, &qword_100375350, &qword_1002EF1A0);
  v70 = sub_1001A551C(&qword_100375360, &qword_1002EF1F0);
  v71 = v69 + v70[12];
  *&v127 = v112;
  *(&v127 + 1) = v111;
  *&v128 = v109;
  *(&v128 + 1) = v107;
  *&v129 = v92;
  *(&v129 + 1) = v104;
  *&v130 = v93;
  *(&v130 + 1) = v95;
  *&v131 = v106;
  *(&v131 + 1) = v105;
  *&v132 = v100;
  *(&v132 + 1) = v96;
  v133 = v97;
  *(v71 + 96) = v97;
  v72 = v128;
  *v71 = v127;
  *(v71 + 16) = v72;
  v73 = v130;
  v74 = v131;
  *(v71 + 32) = v129;
  *(v71 + 48) = v73;
  v75 = v132;
  *(v71 + 64) = v74;
  *(v71 + 80) = v75;
  sub_1001AC934(v67, v69 + v70[16], &qword_100375350, &qword_1002EF1A0);
  v76 = v69 + v70[20];
  *&v134 = v115;
  *(&v134 + 1) = v108;
  v77 = v101;
  v78 = v99;
  *&v135 = v101;
  *(&v135 + 1) = v99;
  *&v136 = v64;
  *(&v136 + 1) = v63;
  v88 = v65;
  *&v137 = v65;
  *(&v137 + 1) = v102;
  v79 = v98;
  v80 = v94;
  *&v138 = v98;
  *(&v138 + 1) = v94;
  v82 = v89;
  v81 = v90;
  *&v139 = v89;
  *(&v139 + 1) = v103;
  v140 = v90;
  *(v76 + 96) = v90;
  v83 = v135;
  *v76 = v134;
  *(v76 + 16) = v83;
  v84 = v137;
  *(v76 + 32) = v136;
  *(v76 + 48) = v84;
  v85 = v139;
  *(v76 + 64) = v138;
  *(v76 + 80) = v85;
  sub_1001AC934(&v127, &v148, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC934(&v134, &v148, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC99C(v116, &qword_100375350, &qword_1002EF1A0);
  sub_1001AC99C(v110, &qword_100375350, &qword_1002EF1A0);
  *&v141 = v115;
  *(&v141 + 1) = v108;
  *&v142 = v77;
  *(&v142 + 1) = v78;
  *&v143 = v64;
  *(&v143 + 1) = v87;
  *&v144 = v88;
  *(&v144 + 1) = v102;
  *&v145 = v79;
  *(&v145 + 1) = v80;
  *&v146 = v82;
  *(&v146 + 1) = v103;
  v147 = v81;
  sub_1001AC99C(&v141, &qword_100375368, &qword_1002EF1F8);
  sub_1001AC99C(v113, &qword_100375350, &qword_1002EF1A0);
  *&v148 = v112;
  *(&v148 + 1) = v111;
  *&v149 = v109;
  *(&v149 + 1) = v107;
  *&v150 = v92;
  *(&v150 + 1) = v104;
  *&v151 = v93;
  *(&v151 + 1) = v95;
  *&v152 = v106;
  *(&v152 + 1) = v105;
  *&v153 = v100;
  *(&v153 + 1) = v96;
  v154 = v97;
  sub_1001AC99C(&v148, &qword_100375368, &qword_1002EF1F8);
  return sub_1001AC99C(v114, &qword_100375350, &qword_1002EF1A0);
}

uint64_t sub_1001AAA50(uint64_t a1)
{
  sub_1001AAAB0();
  v3 = *(a1 + 16);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  return State.wrappedValue.setter();
}

void sub_1001AAAB0()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v16 = v14;
  v15[0] = v9;
  v15[1] = v10;
  sub_1001AC6D0(v15);
  if ((v16 & 0x100) != 0)
  {
    v2 = 24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = v6;
    v13 = v7;
    v14 = v8;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    sub_1001AC6D0(&v9);
    v2 = BYTE10(v10);
  }

  sub_100284444(v2);
}

uint64_t sub_1001AACB8()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Button<>.init(_:action:)();
}

uint64_t sub_1001AAD14@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001AADB0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_1003751D8, &qword_1002EF008);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v22 = sub_1001A551C(&qword_1003751E0, &qword_1002EF010);
  v23 = *(v22 - 8);
  v12 = *(v23 + 64);
  __chkstk_darwin(v22);
  v14 = &v21 - v13;
  v15 = v1[3];
  v30[2] = v1[2];
  v31[0] = v15;
  *(v31 + 10) = *(v1 + 58);
  v16 = v1[1];
  v30[0] = *v1;
  v30[1] = v16;
  v27 = v30;
  sub_1001A551C(&qword_1003751E8, &qword_1002EF018);
  sub_1001AC0EC();
  NavigationView.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v17 = sub_1001AD0C8(&qword_100375278, &qword_1003751D8, &qword_1002EF008);
  View.navigationTitle(_:)();

  (*(v8 + 8))(v11, v7);
  StackNavigationViewStyle.init()();
  v28 = v7;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1001AC598(&qword_100375280, &type metadata accessor for StackNavigationViewStyle);
  v18 = v22;
  v19 = v24;
  View.navigationViewStyle<A>(_:)();
  (*(v25 + 8))(v6, v19);
  return (*(v23 + 8))(v14, v18);
}

uint64_t sub_1001AB148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = sub_1001A551C(&qword_1003753E0, &unk_1002EF5C0);
  v49 = *(v50 - 8);
  v3 = *(v49 + 64);
  v4 = __chkstk_darwin(v50);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v47 - v6;
  v7 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_1001A551C(&qword_1003753F0, &qword_1002EF5D0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v47 - v16);
  v65 = *(a1 + 32);
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  v20 = type metadata accessor for SSFImage();
  v21 = *(v20 + 20);
  sub_1001ACE9C(&v65, &v56);

  static SymbolRenderingMode.multicolor.getter();
  *v17 = v65;
  v22 = (v17 + *(v20 + 24));
  *v22 = v19;
  v22[1] = v18;
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = static Font.system(size:weight:design:)();
  sub_1001AC99C(v10, &qword_1003753E8, &unk_1002EFAB0);
  KeyPath = swift_getKeyPath();
  v26 = (v17 + *(v12 + 44));
  v48 = v17;
  *v26 = KeyPath;
  v26[1] = v24;
  v55 = *(a1 + 64);
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  State.projectedValue.getter();
  v27 = v56;
  v28 = v57;
  v29 = v58;
  v30 = swift_allocObject();
  v31 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v31;
  v30[5] = *(a1 + 64);
  v32 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v32;
  v62 = v27;
  v63 = v28;
  v64 = v29;
  v61 = xmmword_1002EEF40;
  v60 = 0x4039000000000000;
  sub_1001ACF60(a1, &v56);
  LocalizedStringKey.init(stringLiteral:)();
  v56 = Text.init(_:tableName:bundle:comment:)();
  v57 = v33;
  LOBYTE(v58) = v34 & 1;
  v59 = v35;
  sub_1001AB6DC(a1, &v55);
  sub_1001ACF98();
  v36 = v52;
  Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)();
  v37 = v17;
  v38 = v51;
  sub_1001AC934(v37, v51, &qword_1003753F0, &qword_1002EF5D0);
  v39 = v49;
  v40 = *(v49 + 16);
  v41 = v53;
  v42 = v50;
  v40(v53, v36, v50);
  v43 = v54;
  sub_1001AC934(v38, v54, &qword_1003753F0, &qword_1002EF5D0);
  v44 = sub_1001A551C(&qword_100375408, &qword_1002EF610);
  v40((v43 + *(v44 + 48)), v41, v42);
  v45 = *(v39 + 8);
  v45(v36, v42);
  sub_1001AC99C(v48, &qword_1003753F0, &qword_1002EF5D0);
  v45(v41, v42);
  return sub_1001AC99C(v38, &qword_1003753F0, &qword_1002EF5D0);
}

uint64_t sub_1001AB674@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001AB6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  v14 = *(a1 + 64);
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  result = State.wrappedValue.getter();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v8);

    v9._countAndFlagsBits = 4345120;
    v9._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
    LocalizedStringKey.init(stringInterpolation:)();
    result = Text.init(_:tableName:bundle:comment:)();
    *a2 = result;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001AB868(uint64_t a1, _OWORD *a2)
{
  v4 = a2[4];
  sub_1001A551C(&qword_1003753F8, &qword_1002EF608);
  State.wrappedValue.getter();
  *v5 = *a2;
  *&v5[9] = *(a2 + 9);
  sub_1001A551C(&qword_100375410, &qword_1002EF618);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001AB8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_1001A551C(&qword_1003753D8, &qword_1002EF5B8);
  return sub_1001AB148(v7, a1 + *(v5 + 44));
}

uint64_t sub_1001AB968()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  LocalizedStringKey.init(stringLiteral:)();
  sub_1001A551C(&unk_100379B50, &qword_1002EF620);
  Binding.projectedValue.getter();
  return Toggle<>.init(_:isOn:)();
}

uint64_t sub_1001ABA28@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_1001A5174(v2, v4, v6 & 1);

  sub_1001A5174(v9, v11, v13);

  sub_1001ACFEC(v9, v11, v13);

  sub_1001ACFEC(v2, v4, v6 & 1);
}

__n128 sub_1001ABB98@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_1001ABA28(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_1001ABC1C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1001A551C(&qword_100375418, &qword_1002EF628);
  Binding.wrappedValue.getter();
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_1001A56A0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v15;
  sub_1001A5174(v2, v4, v12);

  sub_1001A5174(v9, v11, v14);

  sub_1001ACFEC(v9, v11, v14);

  sub_1001ACFEC(v2, v4, v17);
}

__n128 sub_1001ABE10@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = static VerticalAlignment.center.getter();
  sub_1001ABC1C(v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a1 + 33) = *&v8[16];
  result = *&v8[32];
  *(a1 + 49) = *&v8[32];
  *(a1 + 65) = *&v8[48];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v8[63];
  *(a1 + 17) = *v8;
  return result;
}

__n128 sub_1001ABEB8@<Q0>(unsigned __int8 a1@<W1>, unsigned __int8 a2@<W2>, __n128 *a3@<X8>)
{
  type metadata accessor for SURLSessionViewModel();
  sub_1001AC598(&qword_1003751C8, type metadata accessor for SURLSessionViewModel);
  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  State.init(wrappedValue:)();
  result = v10;
  a3->n128_u64[0] = v6;
  a3->n128_u64[1] = v8;
  a3[1].n128_u8[0] = v10.n128_u8[0];
  a3[1].n128_u64[1] = v10.n128_u64[1];
  a3[2].n128_u8[0] = v10.n128_u8[0];
  a3[2].n128_u64[1] = v10.n128_u64[1];
  a3[3] = v10;
  a3[4].n128_u64[0] = v11;
  a3[4].n128_u8[8] = a1;
  a3[4].n128_u8[9] = a2;
  return result;
}

__n128 sub_1001ABFF8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001AC01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_1001AC064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AC0EC()
{
  result = qword_1003751F0;
  if (!qword_1003751F0)
  {
    sub_1001A55C8(&qword_1003751E8, &qword_1002EF018);
    sub_1001AC178();
    sub_1001AC374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751F0);
  }

  return result;
}

unint64_t sub_1001AC178()
{
  result = qword_1003751F8;
  if (!qword_1003751F8)
  {
    sub_1001A55C8(&qword_100375200, &qword_1002EF020);
    sub_1001AC230();
    sub_1001AD0C8(&qword_100375238, &qword_100375240, &qword_1002EF040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003751F8);
  }

  return result;
}

unint64_t sub_1001AC230()
{
  result = qword_100375208;
  if (!qword_100375208)
  {
    sub_1001A55C8(&qword_100375210, &qword_1002EF028);
    sub_1001AC2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375208);
  }

  return result;
}

unint64_t sub_1001AC2BC()
{
  result = qword_100375218;
  if (!qword_100375218)
  {
    sub_1001A55C8(&qword_100375220, &qword_1002EF030);
    sub_1001AD0C8(&qword_100375228, &qword_100375230, &qword_1002EF038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375218);
  }

  return result;
}

unint64_t sub_1001AC374()
{
  result = qword_100375248;
  if (!qword_100375248)
  {
    sub_1001A55C8(&qword_100375250, &qword_1002EF048);
    sub_1001A55C8(&qword_100375258, &qword_1002EF050);
    sub_1001A55C8(&qword_100375260, &qword_1002EF058);
    sub_1001AD0C8(&qword_100375268, &qword_100375258, &qword_1002EF050);
    sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375248);
  }

  return result;
}

uint64_t sub_1001AC4E4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AC598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AC5E8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_1001AC648@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001AC73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375350, &qword_1002EF1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AC7AC()
{
  result = qword_100375398;
  if (!qword_100375398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375398);
  }

  return result;
}

unint64_t sub_1001AC800()
{
  result = qword_1003753A0;
  if (!qword_1003753A0)
  {
    sub_1001A55C8(&qword_100375390, &qword_1002EF2A0);
    sub_1001AC7AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003753A0);
  }

  return result;
}

uint64_t sub_1001AC8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375388, &qword_1002EF278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001A551C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001AC99C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001A551C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1001AC9FC()
{
  result = qword_1003753D0;
  if (!qword_1003753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003753D0);
  }

  return result;
}

__n128 sub_1001ACA50(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001ACA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001ACAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001ACB18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001ACB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001ACB74(uint64_t result, int a2, int a3)
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

__n128 sub_1001ACBC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001ACBD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1001ACC20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001ACC70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001ACCB8(uint64_t result, int a2, int a3)
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

uint64_t sub_1001ACD08()
{
  sub_1001A55C8(&qword_1003751E0, &qword_1002EF010);
  type metadata accessor for StackNavigationViewStyle();
  sub_1001A55C8(&qword_1003751D8, &qword_1002EF008);
  sub_1001AD0C8(&qword_100375278, &qword_1003751D8, &qword_1002EF008);
  swift_getOpaqueTypeConformance2();
  sub_1001AC598(&qword_100375280, &type metadata accessor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001ACF00()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_1001ACF98()
{
  result = qword_100375400;
  if (!qword_100375400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375400);
  }

  return result;
}

uint64_t sub_1001ACFEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001AD0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001AD144()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setBackgroundColor:v3];
  v4 = [v0 layer];
  [v4 setCornerRadius:10.0];

  v5 = [v0 layer];
  [v5 setMasksToBounds:1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal10ExportView_label];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v0[OBJC_IVAR____TtC11FTMInternal10ExportView_labelText];
  v8 = *&v0[OBJC_IVAR____TtC11FTMInternal10ExportView_labelText + 8];

  v9 = String._bridgeToObjectiveC()();

  [v6 setText:v9];

  v10 = String._bridgeToObjectiveC()();
  v11 = [v2 colorNamed:v10];

  [v6 setTextColor:v11];
  v12 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightBold];
  [v6 setFont:v12];

  [v0 addSubview:v6];
  v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapExportButton:"];
  [v0 addGestureRecognizer:v13];
  v14 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002EF640;
  v16 = [v6 centerYAnchor];
  v17 = [v0 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v6 centerXAnchor];
  v20 = [v0 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];
}

id sub_1001AD638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001AD6F0()
{
  result = qword_1003774A0;
  if (!qword_1003774A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003774A0);
  }

  return result;
}

void sub_1001AD73C()
{
  v8 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v8 impactOccurred];
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal10ExportView_timeFrame);
    v4 = sub_10026C7A0();
    sub_100205F2C();

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    if (*(qword_100382500 + 160))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *(v2 + OBJC_IVAR____TtC11FTMInternal20ExportViewController_persistanceStore);
      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      swift_unknownObjectRetain();
      sub_10025C024();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1001AD99C;
      *(v7 + 24) = v6;

      sub_1002676B0(v3, sub_1001AD9DC, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001AD964()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD9A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ADA20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1001ADAFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FTMCellMonitorBookmarkedSheetView()
{
  result = qword_1003754F0;
  if (!qword_1003754F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001ADBF8()
{
  sub_1001ADC7C();
  if (v0 <= 0x3F)
  {
    sub_1001ADD10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001ADC7C()
{
  if (!qword_100375500)
  {
    type metadata accessor for FTMAllMetricsModel();
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100375500);
    }
  }
}

void sub_1001ADD10()
{
  if (!qword_100375510)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100375510);
    }
  }
}

uint64_t sub_1001ADD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001AC934(*a1, a2, &qword_100375550, &qword_1002EF718);
  v4 = sub_1001A551C(&qword_1003755A8, &qword_1002EF758);
  v5 = v4[12];
  v6 = a1[1];
  v7 = type metadata accessor for Divider();
  v8 = *(*(v7 - 8) + 16);
  v8(a2 + v5, v6, v7);
  v9 = v4[16];
  v10 = a1[2];
  v11 = v10[192];
  v12 = *(v10 + 11);
  v13 = *(v10 + 9);
  v93[10] = *(v10 + 10);
  v93[11] = v12;
  v94 = v11;
  v93[9] = v13;
  v14 = *(v10 + 8);
  v15 = *(v10 + 5);
  v16 = *(v10 + 6);
  v93[7] = *(v10 + 7);
  v93[8] = v14;
  v93[5] = v15;
  v93[6] = v16;
  v18 = *(v10 + 1);
  v17 = *(v10 + 2);
  v19 = *(v10 + 3);
  v93[4] = *(v10 + 4);
  v93[0] = *v10;
  v93[1] = v18;
  v93[2] = v17;
  v93[3] = v19;
  memmove((a2 + v9), v10, 0xC1uLL);
  v20 = v4[20];
  v21 = a1[3];
  v22 = v21[192];
  v23 = *(v21 + 11);
  v24 = *(v21 + 9);
  v95[10] = *(v21 + 10);
  v95[11] = v23;
  v96 = v22;
  v95[9] = v24;
  v25 = *(v21 + 8);
  v26 = *(v21 + 5);
  v27 = *(v21 + 6);
  v95[7] = *(v21 + 7);
  v95[8] = v25;
  v95[5] = v26;
  v95[6] = v27;
  v95[0] = *v21;
  v28 = *(v21 + 4);
  v30 = *(v21 + 1);
  v29 = *(v21 + 2);
  v95[3] = *(v21 + 3);
  v95[4] = v28;
  v95[1] = v30;
  v95[2] = v29;
  memmove((a2 + v20), v21, 0xC1uLL);
  v8(a2 + v4[24], a1[4], v7);
  v31 = v4[28];
  v32 = a1[5];
  v33 = v32[192];
  v34 = *(v32 + 11);
  v35 = *(v32 + 9);
  v97[10] = *(v32 + 10);
  v97[11] = v34;
  v98 = v33;
  v97[9] = v35;
  v37 = *(v32 + 5);
  v36 = *(v32 + 6);
  v38 = *(v32 + 8);
  v97[7] = *(v32 + 7);
  v97[8] = v38;
  v97[0] = *v32;
  v39 = *(v32 + 4);
  v41 = *(v32 + 1);
  v40 = *(v32 + 2);
  v97[3] = *(v32 + 3);
  v97[4] = v39;
  v97[1] = v41;
  v97[2] = v40;
  v97[5] = v37;
  v97[6] = v36;
  memmove((a2 + v31), v32, 0xC1uLL);
  v42 = v4[32];
  v43 = a1[6];
  v44 = v43[192];
  v45 = *(v43 + 11);
  v46 = *(v43 + 9);
  v99[10] = *(v43 + 10);
  v99[11] = v45;
  v100 = v44;
  v99[9] = v46;
  v48 = *(v43 + 5);
  v47 = *(v43 + 6);
  v49 = *(v43 + 7);
  v99[8] = *(v43 + 8);
  v99[0] = *v43;
  v50 = *(v43 + 4);
  v52 = *(v43 + 1);
  v51 = *(v43 + 2);
  v99[3] = *(v43 + 3);
  v99[4] = v50;
  v99[1] = v52;
  v99[2] = v51;
  v99[6] = v47;
  v99[7] = v49;
  v99[5] = v48;
  memmove((a2 + v42), v43, 0xC1uLL);
  v53 = v4[36];
  v54 = a1[7];
  v55 = v54[192];
  v56 = *(v54 + 11);
  v57 = *(v54 + 9);
  v101[10] = *(v54 + 10);
  v101[11] = v56;
  v102 = v55;
  v101[9] = v57;
  v101[0] = *v54;
  v58 = *(v54 + 4);
  v60 = *(v54 + 1);
  v59 = *(v54 + 2);
  v101[3] = *(v54 + 3);
  v101[4] = v58;
  v101[1] = v60;
  v101[2] = v59;
  v61 = *(v54 + 8);
  v63 = *(v54 + 5);
  v62 = *(v54 + 6);
  v101[7] = *(v54 + 7);
  v101[8] = v61;
  v101[5] = v63;
  v101[6] = v62;
  memmove((a2 + v53), v54, 0xC1uLL);
  v64 = v4[40];
  v65 = a1[8];
  v66 = v65[192];
  v67 = *(v65 + 11);
  v68 = *(v65 + 9);
  v103[10] = *(v65 + 10);
  v103[11] = v67;
  v104 = v66;
  v103[0] = *v65;
  v69 = *(v65 + 3);
  v70 = *(v65 + 4);
  v71 = *(v65 + 2);
  v103[1] = *(v65 + 1);
  v103[4] = v70;
  v103[3] = v69;
  v103[2] = v71;
  v72 = *(v65 + 7);
  v73 = *(v65 + 8);
  v74 = *(v65 + 6);
  v103[5] = *(v65 + 5);
  v103[8] = v73;
  v103[7] = v72;
  v103[6] = v74;
  v103[9] = v68;
  memmove((a2 + v64), v65, 0xC1uLL);
  v75 = a2 + v4[44];
  v76 = a1[9];
  v77 = a1[10];
  v78 = *v76;
  v79 = *(v76 + 8);
  v80 = *(v76 + 16);
  v81 = *(v76 + 24);
  *v75 = *v76;
  *(v75 + 8) = v79;
  *(v75 + 16) = v80;
  *(v75 + 24) = v81;
  v82 = a2 + v4[48];
  v83 = *v77;
  LOBYTE(v77) = *(v77 + 8);
  *v82 = v83;
  *(v82 + 8) = v77;
  v84 = v4[52];
  v85 = a1[11];
  v86 = *v85;
  v87 = v85[1];
  v88 = v85[2];
  v105[3] = v85[3];
  v105[2] = v88;
  v105[1] = v87;
  v105[0] = v86;
  LOBYTE(v83) = *(v85 + 112);
  v89 = v85[6];
  v90 = v85[4];
  v105[5] = v85[5];
  v105[6] = v89;
  v105[4] = v90;
  v106 = v83;
  memmove((a2 + v84), v85, 0x71uLL);
  sub_1001AC934(v93, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v95, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v97, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v99, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v101, v92, &qword_100375570, &qword_1002EF738);
  sub_1001AC934(v103, v92, &qword_100375570, &qword_1002EF738);
  sub_1001A5174(v78, v79, v80);

  return sub_1001AC934(v105, v92, &qword_100375578, &qword_1002EF740);
}

uint64_t sub_1001AE1BC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v74 = v2;
  v71 = sub_1001A551C(&qword_100375540, &qword_1002EF708);
  v3 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v67[-v4];
  v72 = sub_1001A551C(&qword_100375548, &qword_1002EF710);
  v5 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v84 = &v67[-v6];
  v86 = type metadata accessor for Divider();
  v83 = *(v86 - 8);
  v7 = v83[8];
  v8 = __chkstk_darwin(v86);
  v70 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v82 = &v67[-v11];
  v12 = __chkstk_darwin(v10);
  v85 = &v67[-v13];
  __chkstk_darwin(v12);
  v15 = &v67[-v14];
  v16 = sub_1001A551C(&qword_100375550, &qword_1002EF718);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v81 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v67[-v20];
  v22 = *v1;
  if (*v1)
  {
    v23 = *v1;

    *v21 = static VerticalAlignment.center.getter();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v24 = sub_1001A551C(&qword_100375558, &qword_1002EF720);
    sub_1001AFB14(v1, &v21[*(v24 + 44)]);
    v25 = static Edge.Set.top.getter();
    v78 = v1;
    v26 = v25;
    EdgeInsets.init(_all:)();
    v27 = &v21[*(v16 + 36)];
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    Divider.init()();
    v32 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B0220(v22, v285);
    v188 = v285[8];
    v189[0] = v285[9];
    *(v189 + 9) = *(&v285[9] + 9);
    v184 = v285[4];
    v185 = v285[5];
    v187 = v285[7];
    v186 = v285[6];
    v180 = v285[0];
    v181 = v285[1];
    v183 = v285[3];
    v182 = v285[2];
    v190[8] = v285[8];
    v191[0] = v285[9];
    *(v191 + 9) = *(&v285[9] + 9);
    v190[4] = v285[4];
    v190[5] = v285[5];
    v190[7] = v285[7];
    v190[6] = v285[6];
    v190[0] = v285[0];
    v190[1] = v285[1];
    v190[3] = v285[3];
    v190[2] = v285[2];
    v80 = v15;
    sub_1001AC934(&v180, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v190, &qword_100375560, &qword_1002EF728);
    *(&v285[7] + 7) = v187;
    *(&v285[8] + 7) = v188;
    *(&v285[9] + 7) = v189[0];
    v285[10] = *(v189 + 9);
    *(&v285[3] + 7) = v183;
    *(&v285[4] + 7) = v184;
    *(&v285[5] + 7) = v185;
    *(&v285[6] + 7) = v186;
    *(v285 + 7) = v180;
    *(&v285[1] + 7) = v181;
    *(&v285[2] + 7) = v182;
    *&v193[113] = v285[7];
    *&v193[129] = v285[8];
    *&v193[145] = v285[9];
    *&v193[161] = *(v189 + 9);
    *&v193[49] = v285[3];
    *&v193[65] = v285[4];
    *&v193[81] = v285[5];
    *&v193[97] = v285[6];
    *&v193[1] = v285[0];
    *&v193[17] = v285[1];
    v192 = v32;
    v193[0] = v281[0];
    *&v193[33] = v285[2];
    v79 = v21;
    v34 = *(v22 + 48);
    v33 = *(v22 + 56);

    v35 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B05E0(v285);
    v202 = v285[8];
    v203[0] = v285[9];
    *(v203 + 9) = *(&v285[9] + 9);
    v198 = v285[4];
    v199 = v285[5];
    v201 = v285[7];
    v200 = v285[6];
    v194 = v285[0];
    v195 = v285[1];
    v197 = v285[3];
    v196 = v285[2];
    v204[8] = v285[8];
    v205[0] = v285[9];
    *(v205 + 9) = *(&v285[9] + 9);
    v204[4] = v285[4];
    v204[5] = v285[5];
    v204[7] = v285[7];
    v204[6] = v285[6];
    v204[0] = v285[0];
    v204[1] = v285[1];
    v204[3] = v285[3];
    v204[2] = v285[2];
    sub_1001AC934(&v194, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v204, &qword_100375560, &qword_1002EF728);

    *(&v285[4] + 7) = v198;
    *(&v285[3] + 7) = v197;
    *(&v285[7] + 7) = v201;
    *(&v285[8] + 7) = v202;
    *(&v285[9] + 7) = v203[0];
    v285[10] = *(v203 + 9);
    *(&v285[5] + 7) = v199;
    *(&v285[6] + 7) = v200;
    *(v285 + 7) = v194;
    *(&v285[1] + 7) = v195;
    *(&v285[2] + 7) = v196;
    *&v207[113] = v285[7];
    *&v207[129] = v285[8];
    *&v207[145] = v285[9];
    *&v207[161] = *(v203 + 9);
    *&v207[49] = v285[3];
    *&v207[65] = v285[4];
    *&v207[81] = v285[5];
    *&v207[97] = v285[6];
    *&v207[1] = v285[0];
    *&v207[17] = v285[1];
    v206 = v35;
    v207[0] = v281[0];
    *&v207[33] = v285[2];
    Divider.init()();
    v36 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B09A0(v22, v285);
    v216 = v285[8];
    v217[0] = v285[9];
    *(v217 + 9) = *(&v285[9] + 9);
    v212 = v285[4];
    v213 = v285[5];
    v215 = v285[7];
    v214 = v285[6];
    v208 = v285[0];
    v209 = v285[1];
    v211 = v285[3];
    v210 = v285[2];
    v218[8] = v285[8];
    v219[0] = v285[9];
    *(v219 + 9) = *(&v285[9] + 9);
    v218[4] = v285[4];
    v218[5] = v285[5];
    v218[7] = v285[7];
    v218[6] = v285[6];
    v218[0] = v285[0];
    v218[1] = v285[1];
    v218[3] = v285[3];
    v218[2] = v285[2];
    sub_1001AC934(&v208, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v218, &qword_100375560, &qword_1002EF728);
    *(&v285[7] + 7) = v215;
    *(&v285[8] + 7) = v216;
    *(&v285[9] + 7) = v217[0];
    v285[10] = *(v217 + 9);
    *(&v285[3] + 7) = v211;
    *(&v285[4] + 7) = v212;
    *(&v285[5] + 7) = v213;
    *(&v285[6] + 7) = v214;
    *(v285 + 7) = v208;
    *(&v285[1] + 7) = v209;
    *(&v285[2] + 7) = v210;
    *&v221[113] = v285[7];
    *&v221[129] = v285[8];
    *&v221[145] = v285[9];
    *&v221[161] = *(v217 + 9);
    *&v221[49] = v285[3];
    *&v221[65] = v285[4];
    *&v221[81] = v285[5];
    *&v221[97] = v285[6];
    *&v221[1] = v285[0];
    *&v221[17] = v285[1];
    v220 = v36;
    v221[0] = v281[0];
    *&v221[33] = v285[2];
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v37 = qword_100382508;

    v38 = v37;
    v39 = sub_10021A754(v22);

    v40 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B0D5C(v39, v285);
    v230 = v285[8];
    v231[0] = v285[9];
    *(v231 + 9) = *(&v285[9] + 9);
    v226 = v285[4];
    v227 = v285[5];
    v229 = v285[7];
    v228 = v285[6];
    v222 = v285[0];
    v223 = v285[1];
    v225 = v285[3];
    v224 = v285[2];
    v232[8] = v285[8];
    v233[0] = v285[9];
    *(v233 + 9) = *(&v285[9] + 9);
    v232[4] = v285[4];
    v232[5] = v285[5];
    v232[7] = v285[7];
    v232[6] = v285[6];
    v232[0] = v285[0];
    v232[1] = v285[1];
    v232[3] = v285[3];
    v232[2] = v285[2];
    v69 = v22;
    sub_1001AC934(&v222, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v232, &qword_100375560, &qword_1002EF728);
    *(&v285[7] + 7) = v229;
    *(&v285[8] + 7) = v230;
    *(&v285[9] + 7) = v231[0];
    v285[10] = *(v231 + 9);
    *(&v285[3] + 7) = v225;
    *(&v285[4] + 7) = v226;
    *(&v285[5] + 7) = v227;
    *(&v285[6] + 7) = v228;
    *(v285 + 7) = v222;
    *(&v285[1] + 7) = v223;
    *(&v285[2] + 7) = v224;
    *&v235[113] = v285[7];
    *&v235[129] = v285[8];
    *&v235[145] = v285[9];
    *&v235[161] = *(v231 + 9);
    *&v235[49] = v285[3];
    *&v235[65] = v285[4];
    *&v235[81] = v285[5];
    *&v235[97] = v285[6];
    *&v235[1] = v285[0];
    *&v235[17] = v285[1];
    v234 = v40;
    v235[0] = v281[0];
    *&v235[33] = v285[2];
    v41 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B13E0(v39, v285);
    v244 = v285[8];
    v245[0] = v285[9];
    *(v245 + 9) = *(&v285[9] + 9);
    v240 = v285[4];
    v241 = v285[5];
    v243 = v285[7];
    v242 = v285[6];
    v236 = v285[0];
    v237 = v285[1];
    v239 = v285[3];
    v238 = v285[2];
    v246[8] = v285[8];
    v247[0] = v285[9];
    *(v247 + 9) = *(&v285[9] + 9);
    v246[4] = v285[4];
    v246[5] = v285[5];
    v246[7] = v285[7];
    v246[6] = v285[6];
    v246[0] = v285[0];
    v246[1] = v285[1];
    v246[3] = v285[3];
    v246[2] = v285[2];
    sub_1001AC934(&v236, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v246, &qword_100375560, &qword_1002EF728);
    *(&v285[7] + 7) = v243;
    *(&v285[8] + 7) = v244;
    *(&v285[9] + 7) = v245[0];
    v285[10] = *(v245 + 9);
    *(&v285[3] + 7) = v239;
    *(&v285[4] + 7) = v240;
    *(&v285[5] + 7) = v241;
    *(&v285[6] + 7) = v242;
    *(v285 + 7) = v236;
    *(&v285[1] + 7) = v237;
    *(&v285[2] + 7) = v238;
    *&v249[113] = v285[7];
    *&v249[129] = v285[8];
    *&v249[145] = v285[9];
    *&v249[161] = *(v245 + 9);
    *&v249[49] = v285[3];
    *&v249[65] = v285[4];
    *&v249[81] = v285[5];
    *&v249[97] = v285[6];
    *&v249[1] = v285[0];
    *&v249[17] = v285[1];
    v248 = v41;
    v249[0] = v281[0];
    *&v249[33] = v285[2];
    v42 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B1A64(v39, v285);
    v258 = v285[8];
    v259[0] = v285[9];
    *(v259 + 9) = *(&v285[9] + 9);
    v254 = v285[4];
    v255 = v285[5];
    v257 = v285[7];
    v256 = v285[6];
    v250 = v285[0];
    v251 = v285[1];
    v253 = v285[3];
    v252 = v285[2];
    v260[8] = v285[8];
    v261[0] = v285[9];
    *(v261 + 9) = *(&v285[9] + 9);
    v260[4] = v285[4];
    v260[5] = v285[5];
    v260[7] = v285[7];
    v260[6] = v285[6];
    v260[0] = v285[0];
    v260[1] = v285[1];
    v260[3] = v285[3];
    v260[2] = v285[2];
    sub_1001AC934(&v250, v283, &qword_100375560, &qword_1002EF728);
    sub_1001AC99C(v260, &qword_100375560, &qword_1002EF728);

    *(&v285[4] + 7) = v254;
    *(&v285[3] + 7) = v253;
    *(&v285[7] + 7) = v257;
    *(&v285[8] + 7) = v258;
    *(&v285[9] + 7) = v259[0];
    v285[10] = *(v259 + 9);
    *(&v285[5] + 7) = v255;
    *(&v285[6] + 7) = v256;
    *(v285 + 7) = v250;
    *(&v285[1] + 7) = v251;
    *(&v285[2] + 7) = v252;
    *&v263[113] = v285[7];
    *&v263[129] = v285[8];
    *&v263[145] = v285[9];
    *&v263[161] = *(v259 + 9);
    *&v263[49] = v285[3];
    *&v263[65] = v285[4];
    *&v263[81] = v285[5];
    *&v263[97] = v285[6];
    *&v263[1] = v285[0];
    *&v263[17] = v285[1];
    v262 = v42;
    v263[0] = v281[0];
    *&v263[33] = v285[2];
    LocalizedStringKey.init(stringLiteral:)();
    v43 = Text.init(_:tableName:bundle:comment:)();
    v45 = v44;
    v47 = v46;
    static Color.black.getter();
    v48 = Text.foregroundColor(_:)();
    v75 = v49;
    v76 = v48;
    v68 = v50;
    v77 = v51;

    sub_1001ACFEC(v43, v45, v47 & 1);

    v52 = static VerticalAlignment.center.getter();
    LOBYTE(v281[0]) = 1;
    sub_1001B2248(v78, v285);
    v266 = v285[2];
    v267 = v285[3];
    v268[0] = v285[4];
    *(v268 + 9) = *(&v285[4] + 9);
    v264 = v285[0];
    v265 = v285[1];
    *(v270 + 9) = *(&v285[4] + 9);
    v269[2] = v285[2];
    v269[3] = v285[3];
    v270[0] = v285[4];
    v269[0] = v285[0];
    v269[1] = v285[1];
    sub_1001AC934(&v264, v283, &qword_100375568, &qword_1002EF730);
    sub_1001AC99C(v269, &qword_100375568, &qword_1002EF730);
    *(&v285[1] + 7) = v265;
    *(v285 + 7) = v264;
    v285[5] = *(v268 + 9);
    *(&v285[4] + 7) = v268[0];
    *(&v285[3] + 7) = v267;
    *(&v285[2] + 7) = v266;
    *&v272[33] = v285[2];
    *&v272[49] = v285[3];
    *&v272[65] = v285[4];
    *&v272[81] = v285[5];
    *&v272[1] = v285[0];
    v271 = v52;
    v272[0] = v281[0];
    *&v272[17] = v285[1];
    v53 = v81;
    sub_1001AC934(v79, v81, &qword_100375550, &qword_1002EF718);
    v179[0] = v53;
    v54 = v83[2];
    v55 = v82;
    v56 = v86;
    v54();
    v176 = *&v193[144];
    v177 = *&v193[160];
    v178 = v193[176];
    v172 = *&v193[80];
    v173 = *&v193[96];
    v175 = *&v193[128];
    v174 = *&v193[112];
    v168 = *&v193[16];
    v169 = *&v193[32];
    v171 = *&v193[64];
    v170 = *&v193[48];
    v167 = *v193;
    v166 = v192;
    v179[1] = v55;
    v179[2] = &v166;
    v163 = *&v207[144];
    v164 = *&v207[160];
    v165 = v207[176];
    v159 = *&v207[80];
    v160 = *&v207[96];
    v162 = *&v207[128];
    v161 = *&v207[112];
    v155 = *&v207[16];
    v156 = *&v207[32];
    v158 = *&v207[64];
    v157 = *&v207[48];
    v154 = *v207;
    v153 = v206;
    v179[3] = &v153;
    v57 = v70;
    (v54)(v70, v85, v56);
    v150 = *&v221[144];
    v151 = *&v221[160];
    v152 = v221[176];
    v146 = *&v221[80];
    v147 = *&v221[96];
    v149 = *&v221[128];
    v148 = *&v221[112];
    v142 = *&v221[16];
    v143 = *&v221[32];
    v145 = *&v221[64];
    v144 = *&v221[48];
    v140 = v220;
    v141 = *v221;
    v179[4] = v57;
    v179[5] = &v140;
    v137 = *&v235[144];
    v138 = *&v235[160];
    v139 = v235[176];
    v133 = *&v235[80];
    v134 = *&v235[96];
    v135 = *&v235[112];
    v136 = *&v235[128];
    v129 = *&v235[16];
    v130 = *&v235[32];
    v131 = *&v235[48];
    v132 = *&v235[64];
    v127 = v234;
    v128 = *v235;
    v124 = *&v249[144];
    v125 = *&v249[160];
    v126 = v249[176];
    v120 = *&v249[80];
    v121 = *&v249[96];
    v122 = *&v249[112];
    v123 = *&v249[128];
    v116 = *&v249[16];
    v117 = *&v249[32];
    v118 = *&v249[48];
    v119 = *&v249[64];
    v114 = v248;
    v115 = *v249;
    v179[6] = &v127;
    v179[7] = &v114;
    v111 = *&v263[144];
    v112 = *&v263[160];
    v113 = v263[176];
    v107 = *&v263[80];
    v108 = *&v263[96];
    v109 = *&v263[112];
    v110 = *&v263[128];
    v103 = *&v263[16];
    v104 = *&v263[32];
    v105 = *&v263[48];
    v106 = *&v263[64];
    v101 = v262;
    v102 = *v263;
    v59 = v75;
    v58 = v76;
    v97 = v76;
    v98 = v75;
    v60 = v68 & 1;
    v99 = v68 & 1;
    LODWORD(v78) = v68 & 1;
    v100 = v77;
    v179[8] = &v101;
    v179[9] = &v97;
    v95 = 0;
    v96 = 1;
    v91 = *&v272[48];
    v92 = *&v272[64];
    v93 = *&v272[80];
    v94 = v272[96];
    v87 = v271;
    v88 = *v272;
    v89 = *&v272[16];
    v90 = *&v272[32];
    v179[10] = &v95;
    v179[11] = &v87;
    sub_1001ADD84(v179, v84);
    v273[4] = v91;
    v273[5] = v92;
    v273[6] = v93;
    v274 = v94;
    v273[0] = v87;
    v273[1] = v88;
    v273[2] = v89;
    v273[3] = v90;
    sub_1001AC934(&v192, v285, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v206, v285, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v220, v285, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v234, v285, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v248, v285, &qword_100375570, &qword_1002EF738);
    sub_1001AC934(&v262, v285, &qword_100375570, &qword_1002EF738);
    sub_1001A5174(v58, v59, v60);

    sub_1001AC934(&v271, v285, &qword_100375578, &qword_1002EF740);
    sub_1001AC99C(v273, &qword_100375578, &qword_1002EF740);
    sub_1001ACFEC(v97, v98, v99);

    v275[10] = v111;
    v275[11] = v112;
    v276 = v113;
    v275[6] = v107;
    v275[7] = v108;
    v275[9] = v110;
    v275[8] = v109;
    v275[2] = v103;
    v275[3] = v104;
    v275[5] = v106;
    v275[4] = v105;
    v275[1] = v102;
    v275[0] = v101;
    sub_1001AC99C(v275, &qword_100375570, &qword_1002EF738);
    v277[10] = v124;
    v277[11] = v125;
    v278 = v126;
    v277[6] = v120;
    v277[7] = v121;
    v277[9] = v123;
    v277[8] = v122;
    v277[2] = v116;
    v277[3] = v117;
    v277[5] = v119;
    v277[4] = v118;
    v277[1] = v115;
    v277[0] = v114;
    sub_1001AC99C(v277, &qword_100375570, &qword_1002EF738);
    v279[10] = v137;
    v279[11] = v138;
    v280 = v139;
    v279[6] = v133;
    v279[7] = v134;
    v279[9] = v136;
    v279[8] = v135;
    v279[2] = v129;
    v279[3] = v130;
    v279[5] = v132;
    v279[4] = v131;
    v279[1] = v128;
    v279[0] = v127;
    sub_1001AC99C(v279, &qword_100375570, &qword_1002EF738);
    v281[10] = v150;
    v281[11] = v151;
    v282 = v152;
    v281[6] = v146;
    v281[7] = v147;
    v281[9] = v149;
    v281[8] = v148;
    v281[2] = v142;
    v281[3] = v143;
    v281[5] = v145;
    v281[4] = v144;
    v281[1] = v141;
    v281[0] = v140;
    sub_1001AC99C(v281, &qword_100375570, &qword_1002EF738);
    v61 = v83[1];
    v62 = v86;
    v61(v57, v86);
    v283[10] = v163;
    v283[11] = v164;
    v284 = v165;
    v283[6] = v159;
    v283[7] = v160;
    v283[9] = v162;
    v283[8] = v161;
    v283[2] = v155;
    v283[3] = v156;
    v283[5] = v158;
    v283[4] = v157;
    v283[1] = v154;
    v283[0] = v153;
    sub_1001AC99C(v283, &qword_100375570, &qword_1002EF738);
    v285[10] = v176;
    v285[11] = v177;
    v286 = v178;
    v285[6] = v172;
    v285[7] = v173;
    v285[9] = v175;
    v285[8] = v174;
    v285[2] = v168;
    v285[3] = v169;
    v285[5] = v171;
    v285[4] = v170;
    v285[1] = v167;
    v285[0] = v166;
    sub_1001AC99C(v285, &qword_100375570, &qword_1002EF738);
    v61(v82, v62);
    sub_1001AC99C(v81, &qword_100375550, &qword_1002EF718);
    v63 = v84;
    sub_1001AC934(v84, v73, &qword_100375548, &qword_1002EF710);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100375580, &qword_1002EF748);
    sub_1001AD0C8(&qword_100375588, &qword_100375548, &qword_1002EF710);
    sub_1001B4FD4();
    _ConditionalContent<>.init(storage:)();

    sub_1001AC99C(&v271, &qword_100375578, &qword_1002EF740);
    sub_1001ACFEC(v76, v75, v78);

    sub_1001AC99C(&v262, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v248, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v234, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v220, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v206, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(&v192, &qword_100375570, &qword_1002EF738);
    sub_1001AC99C(v63, &qword_100375548, &qword_1002EF710);
    v64 = v86;
    v61(v85, v86);
    v61(v80, v64);
    return sub_1001AC99C(v79, &qword_100375550, &qword_1002EF718);
  }

  else
  {
    v66 = v1[1];
    type metadata accessor for FTMAllMetricsModel();
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AFB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v3 = type metadata accessor for FTMCellMonitorBookmarkedSheetView();
  v48 = *(v3 - 8);
  v47 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_1003755C8, &unk_1002EF780);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v42 - v9;
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Color.black.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;

  sub_1001ACFEC(v10, v12, v14 & 1);

  static Font.headline.getter();
  v43 = Text.font(_:)();
  v42 = v20;
  v44 = v21;
  v45 = v22;

  sub_1001ACFEC(v15, v17, v19 & 1);

  v23 = LocalizedStringKey.init(stringLiteral:)();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  v29 = v46;
  sub_1001B50A8(v49, v46);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  sub_1001B5228(v29, v31 + v30);
  v54 = v23;
  v55 = v25;
  v56 = v15 & 1;
  v57 = v28;
  v58 = 0xD000000000000011;
  v59 = 0x80000001002BAAA0;
  sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790);
  v32 = v53;
  Button.init(action:label:)();

  v34 = v50;
  v33 = v51;
  v35 = *(v51 + 16);
  v36 = v52;
  v35(v50, v32, v52);
  *a2 = 0;
  *(a2 + 8) = 1;
  v37 = v43;
  v38 = v42;
  *(a2 + 16) = v43;
  *(a2 + 24) = v38;
  LOBYTE(v32) = v44 & 1;
  *(a2 + 32) = v44 & 1;
  *(a2 + 40) = v45;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v39 = sub_1001A551C(&qword_1003755D8, &qword_1002EF798);
  v35((a2 + *(v39 + 80)), v34, v36);
  sub_1001A5174(v37, v38, v32);
  v40 = *(v33 + 8);

  v40(v53, v36);
  v40(v34, v36);
  sub_1001ACFEC(v37, v38, v32);
}

uint64_t sub_1001AFF98(uint64_t a1)
{
  v20 = type metadata accessor for EnvironmentValues();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v19 - v8);
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FTMCellMonitorBookmarkedSheetView();
  sub_1001AC934(a1 + *(v15 + 20), v9, &qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  DismissAction.callAsFunction()();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1001B0220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Color.blue.getter();
  v9 = Text.foregroundColor(_:)();
  v45 = v10;
  v46 = v9;
  v12 = v11;
  v47 = v13;

  sub_1001ACFEC(v4, v6, v8 & 1);

  v44 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v6) = v12 & 1;
  LOBYTE(v61) = v12 & 1;
  LOBYTE(v76[0]) = 0;
  v22 = *(a1 + 40);
  *&v61 = *(a1 + 32);
  sub_1001A56A0();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  static Color.gray.getter();
  v42 = Text.foregroundColor(_:)();
  v43 = v28;
  v30 = v29;
  v32 = v31;

  sub_1001ACFEC(v23, v25, v27 & 1);

  LOBYTE(v25) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  DWORD1(v55) = *&v51[3];
  *(&v55 + 1) = *v51;
  DWORD1(v58) = *&v50[3];
  *(&v58 + 1) = *v50;
  DWORD1(v59) = *&v49[3];
  *(&v59 + 1) = *v49;
  LOBYTE(v76[0]) = 0;
  *&v53 = v46;
  *(&v53 + 1) = v45;
  LOBYTE(v54) = v6;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v44;
  *(&v55 + 1) = v15;
  *v56 = v17;
  *&v56[8] = v19;
  *&v56[16] = v21;
  v56[24] = 0;
  *(v64 + 9) = *&v56[9];
  v63 = v55;
  v64[0] = *v56;
  v61 = v53;
  v62 = v54;
  *&v57 = v42;
  *(&v57 + 1) = v30;
  LOBYTE(v58) = v32 & 1;
  *(&v58 + 1) = v43;
  LOBYTE(v59) = v25;
  *(&v59 + 1) = v33;
  *v60 = v34;
  *&v60[8] = v35;
  *&v60[16] = v36;
  v60[24] = 0;
  *&v48[7] = v57;
  *&v48[64] = *&v60[9];
  *&v48[55] = *v60;
  *&v48[39] = v59;
  *&v48[23] = v58;
  v37 = v53;
  v38 = v54;
  v39 = v64[1];
  *(a2 + 48) = *v56;
  *(a2 + 64) = v39;
  v40 = v63;
  *(a2 + 16) = v38;
  *(a2 + 32) = v40;
  *a2 = v37;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v48;
  *(a2 + 153) = *&v48[64];
  *(a2 + 137) = *&v48[48];
  *(a2 + 121) = *&v48[32];
  *(a2 + 105) = *&v48[16];
  v65[0] = v42;
  v65[1] = v30;
  v66 = v32 & 1;
  *&v67[3] = *&v50[3];
  *v67 = *v50;
  v68 = v43;
  v69 = v25;
  *&v70[3] = *&v49[3];
  *v70 = *v49;
  v71 = v33;
  v72 = v34;
  v73 = v35;
  v74 = v36;
  v75 = 0;
  sub_1001AC934(&v53, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v57, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v65, &qword_1003755C0, &qword_1002F1E70);
  v76[0] = v46;
  v76[1] = v45;
  v77 = v6;
  *v78 = *v52;
  *&v78[3] = *&v52[3];
  v79 = v47;
  v80 = v44;
  *v81 = *v51;
  *&v81[3] = *&v51[3];
  v82 = v15;
  v83 = v17;
  v84 = v19;
  v85 = v21;
  v86 = 0;
  return sub_1001AC99C(v76, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B05E0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.blue.getter();
  v7 = Text.foregroundColor(_:)();
  v45 = v8;
  v46 = v7;
  v10 = v9;
  v47 = v11;

  sub_1001ACFEC(v2, v4, v6 & 1);

  v44 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10 & 1;
  sub_1001A56A0();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Color.gray.getter();
  v26 = Text.foregroundColor(_:)();
  v41 = v27;
  v42 = v26;
  v29 = v28;
  v43 = v30;

  sub_1001ACFEC(v21, v23, v25 & 1);

  v31 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  DWORD1(v55) = *&v51[3];
  *(&v55 + 1) = *v51;
  DWORD1(v58) = *&v50[3];
  *(&v58 + 1) = *v50;
  DWORD1(v59) = *&v49[3];
  *(&v59 + 1) = *v49;
  LOBYTE(v76[0]) = 0;
  *&v53 = v46;
  *(&v53 + 1) = v45;
  LOBYTE(v54) = v20;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v44;
  *(&v55 + 1) = v13;
  *v56 = v15;
  *&v56[8] = v17;
  *&v56[16] = v19;
  v56[24] = 0;
  *(v64 + 9) = *&v56[9];
  v63 = v55;
  v64[0] = *v56;
  v61 = v53;
  v62 = v54;
  *&v57 = v42;
  *(&v57 + 1) = v41;
  LOBYTE(v58) = v29 & 1;
  *(&v58 + 1) = v43;
  LOBYTE(v59) = v31;
  *(&v59 + 1) = v32;
  *v60 = v33;
  *&v60[8] = v34;
  *&v60[16] = v35;
  v60[24] = 0;
  *&v48[7] = v57;
  *&v48[64] = *&v60[9];
  *&v48[55] = *v60;
  *&v48[39] = v59;
  *&v48[23] = v58;
  v36 = v53;
  v37 = v54;
  v38 = v64[1];
  *(a1 + 48) = *v56;
  *(a1 + 64) = v38;
  v39 = v63;
  *(a1 + 16) = v37;
  *(a1 + 32) = v39;
  *a1 = v36;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = *v48;
  *(a1 + 153) = *&v48[64];
  *(a1 + 137) = *&v48[48];
  *(a1 + 121) = *&v48[32];
  *(a1 + 105) = *&v48[16];
  v65[0] = v42;
  v65[1] = v41;
  v66 = v29 & 1;
  *&v67[3] = *&v50[3];
  *v67 = *v50;
  v68 = v43;
  v69 = v31;
  *&v70[3] = *&v49[3];
  *v70 = *v49;
  v71 = v32;
  v72 = v33;
  v73 = v34;
  v74 = v35;
  v75 = 0;
  sub_1001AC934(&v53, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v57, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v65, &qword_1003755C0, &qword_1002F1E70);
  v76[0] = v46;
  v76[1] = v45;
  v77 = v20;
  *v78 = *v52;
  *&v78[3] = *&v52[3];
  v79 = v47;
  v80 = v44;
  *v81 = *v51;
  *&v81[3] = *&v51[3];
  v82 = v13;
  v83 = v15;
  v84 = v17;
  v85 = v19;
  v86 = 0;
  return sub_1001AC99C(v76, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Color.blue.getter();
  v9 = Text.foregroundColor(_:)();
  v45 = v10;
  v46 = v9;
  v12 = v11;
  v47 = v13;

  sub_1001ACFEC(v4, v6, v8 & 1);

  v44 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v6) = v12 & 1;
  LOBYTE(v61) = v12 & 1;
  LOBYTE(v76[0]) = 0;
  v22 = *(a1 + 104);
  *&v61 = *(a1 + 96);
  sub_1001A56A0();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  static Color.gray.getter();
  v42 = Text.foregroundColor(_:)();
  v43 = v28;
  v30 = v29;
  v32 = v31;

  sub_1001ACFEC(v23, v25, v27 & 1);

  LOBYTE(v25) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *(&v54 + 1) = *v52;
  DWORD1(v54) = *&v52[3];
  DWORD1(v55) = *&v51[3];
  *(&v55 + 1) = *v51;
  DWORD1(v58) = *&v50[3];
  *(&v58 + 1) = *v50;
  DWORD1(v59) = *&v49[3];
  *(&v59 + 1) = *v49;
  LOBYTE(v76[0]) = 0;
  *&v53 = v46;
  *(&v53 + 1) = v45;
  LOBYTE(v54) = v6;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v44;
  *(&v55 + 1) = v15;
  *v56 = v17;
  *&v56[8] = v19;
  *&v56[16] = v21;
  v56[24] = 0;
  *(v64 + 9) = *&v56[9];
  v63 = v55;
  v64[0] = *v56;
  v61 = v53;
  v62 = v54;
  *&v57 = v42;
  *(&v57 + 1) = v30;
  LOBYTE(v58) = v32 & 1;
  *(&v58 + 1) = v43;
  LOBYTE(v59) = v25;
  *(&v59 + 1) = v33;
  *v60 = v34;
  *&v60[8] = v35;
  *&v60[16] = v36;
  v60[24] = 0;
  *&v48[7] = v57;
  *&v48[64] = *&v60[9];
  *&v48[55] = *v60;
  *&v48[39] = v59;
  *&v48[23] = v58;
  v37 = v53;
  v38 = v54;
  v39 = v64[1];
  *(a2 + 48) = *v56;
  *(a2 + 64) = v39;
  v40 = v63;
  *(a2 + 16) = v38;
  *(a2 + 32) = v40;
  *a2 = v37;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v48;
  *(a2 + 153) = *&v48[64];
  *(a2 + 137) = *&v48[48];
  *(a2 + 121) = *&v48[32];
  *(a2 + 105) = *&v48[16];
  v65[0] = v42;
  v65[1] = v30;
  v66 = v32 & 1;
  *&v67[3] = *&v50[3];
  *v67 = *v50;
  v68 = v43;
  v69 = v25;
  *&v70[3] = *&v49[3];
  *v70 = *v49;
  v71 = v33;
  v72 = v34;
  v73 = v35;
  v74 = v36;
  v75 = 0;
  sub_1001AC934(&v53, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v57, v76, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v65, &qword_1003755C0, &qword_1002F1E70);
  v76[0] = v46;
  v76[1] = v45;
  v77 = v6;
  *v78 = *v52;
  *&v78[3] = *&v52[3];
  v79 = v47;
  v80 = v44;
  *v81 = *v51;
  *&v81[3] = *&v51[3];
  v82 = v15;
  v83 = v17;
  v84 = v19;
  v85 = v21;
  v86 = 0;
  return sub_1001AC99C(v76, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B0D5C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v63 = v9;
  v64 = v8;
  v11 = v10;
  v66 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v62 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v68 = v11 & 1;
  LOBYTE(v82) = v11 & 1;
  LOBYTE(v97[0]) = 0;
  if (a1 >> 62)
  {
LABEL_35:
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_36:
    v23 = &_swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_3:
  v22 = 0;
  v70 = a1 & 0xC000000000000001;
  v23 = &_swiftEmptyArrayStorage;
  v69 = a1;
  do
  {
    v67 = v23;
    v24 = v22;
    while (1)
    {
      if (v70)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v26;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v24 >= *(v71 + 16))
        {
          goto LABEL_34;
        }

        v25 = *(a1 + 8 * v24 + 32);

        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v28 = *(v25 + 128);
      v27 = *(v25 + 136);
      v97[0] = 0;
      __chkstk_darwin(v26);
      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          *&v82 = v28;
          *(&v82 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;

          if (v28 >= 0x21u || ((0x100003E01uLL >> v28) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
LABEL_18:
              LOBYTE(v86[0]) = *v30 == 0;
              goto LABEL_20;
            }
          }

          goto LABEL_19;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v29 >= 0x21 || ((0x100003E01uLL >> v29) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          LOBYTE(v86[0]) = 0;
          goto LABEL_20;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_20:

      if (v86[0])
      {
        break;
      }

      ++v24;
      a1 = v69;
      if (v22 == v21)
      {
        v23 = v67;
        goto LABEL_37;
      }
    }

    v31 = v97[0];
    v32 = v67;
    a1 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1002249D0(0, *(v67 + 2) + 1, 1, v67);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = sub_1002249D0((v33 > 1), v34 + 1, 1, v32);
    }

    v23 = v35;
    *(v35 + 2) = v34 + 1;
    *&v35[8 * v34 + 32] = v31;
  }

  while (v22 != v21);
LABEL_37:
  v36 = *(v23 + 2);
  if (v36)
  {
    v37 = *(v23 + 4);
    v38 = v36 - 1;
    if (v38)
    {
      v39 = (v23 + 40);
      do
      {
        v40 = *v39++;
        v41 = v40;
        if (v40 < v37)
        {
          v37 = v41;
        }

        --v38;
      }

      while (v38);
    }
  }

  Double.description.getter();
  sub_1001A56A0();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Color.gray.getter();
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  v51 = v50;
  v72 = v52;

  sub_1001ACFEC(v42, v44, v46 & 1);

  LOBYTE(v42) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v111 = v51 & 1;
  v108 = 0;
  *&v74 = v64;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = v113[0];
  DWORD1(v75) = *(v113 + 3);
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v62;
  DWORD1(v76) = *&v112[3];
  *(&v76 + 1) = *v112;
  *(&v76 + 1) = v14;
  *&v77[0] = v16;
  *(&v77[0] + 1) = v18;
  *&v77[1] = v20;
  BYTE8(v77[1]) = 0;
  *(v85 + 9) = *(v77 + 9);
  v84 = v76;
  v85[0] = v77[0];
  v82 = v74;
  v83 = v75;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  LOBYTE(v79) = v51 & 1;
  DWORD1(v79) = *&v110[3];
  *(&v79 + 1) = *v110;
  *(&v79 + 1) = v72;
  LOBYTE(v80) = v42;
  DWORD1(v80) = *&v109[3];
  *(&v80 + 1) = *v109;
  *(&v80 + 1) = v53;
  *&v81[0] = v54;
  *(&v81[0] + 1) = v55;
  *&v81[1] = v56;
  BYTE8(v81[1]) = 0;
  *&v73[7] = v78;
  *&v73[64] = *(v81 + 9);
  *&v73[55] = v81[0];
  *&v73[39] = v80;
  *&v73[23] = v79;
  v57 = v74;
  v58 = v75;
  v59 = v85[1];
  *(a2 + 48) = v77[0];
  *(a2 + 64) = v59;
  v60 = v84;
  *(a2 + 16) = v58;
  *(a2 + 32) = v60;
  *a2 = v57;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v73;
  *(a2 + 153) = *&v73[64];
  *(a2 + 137) = *&v73[48];
  *(a2 + 121) = *&v73[32];
  *(a2 + 105) = *&v73[16];
  v86[0] = v47;
  v86[1] = v49;
  v87 = v51 & 1;
  *&v88[3] = *&v110[3];
  *v88 = *v110;
  v89 = v72;
  v90 = v42;
  *&v91[3] = *&v109[3];
  *v91 = *v109;
  v92 = v53;
  v93 = v54;
  v94 = v55;
  v95 = v56;
  v96 = 0;
  sub_1001AC934(&v74, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v78, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v86, &qword_1003755C0, &qword_1002F1E70);
  v97[0] = v64;
  v97[1] = v63;
  v98 = v68;
  *v99 = v113[0];
  *&v99[3] = *(v113 + 3);
  v100 = v66;
  v101 = v62;
  *v102 = *v112;
  *&v102[3] = *&v112[3];
  v103 = v14;
  v104 = v16;
  v105 = v18;
  v106 = v20;
  v107 = 0;
  return sub_1001AC99C(v97, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B13E0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v63 = v9;
  v64 = v8;
  v11 = v10;
  v66 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  v62 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v68 = v11 & 1;
  LOBYTE(v82) = v11 & 1;
  LOBYTE(v97[0]) = 0;
  if (a1 >> 62)
  {
LABEL_35:
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_36:
    v23 = &_swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_3:
  v22 = 0;
  v70 = a1 & 0xC000000000000001;
  v23 = &_swiftEmptyArrayStorage;
  v69 = a1;
  do
  {
    v67 = v23;
    v24 = v22;
    while (1)
    {
      if (v70)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v26;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v24 >= *(v71 + 16))
        {
          goto LABEL_34;
        }

        v25 = *(a1 + 8 * v24 + 32);

        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v28 = *(v25 + 128);
      v27 = *(v25 + 136);
      v97[0] = 0;
      __chkstk_darwin(v26);
      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          *&v82 = v28;
          *(&v82 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;

          if (v28 >= 0x21u || ((0x100003E01uLL >> v28) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
LABEL_18:
              LOBYTE(v86[0]) = *v30 == 0;
              goto LABEL_20;
            }
          }

          goto LABEL_19;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v29 >= 0x21 || ((0x100003E01uLL >> v29) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          LOBYTE(v86[0]) = 0;
          goto LABEL_20;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_20:

      if (v86[0])
      {
        break;
      }

      ++v24;
      a1 = v69;
      if (v22 == v21)
      {
        v23 = v67;
        goto LABEL_37;
      }
    }

    v31 = v97[0];
    v32 = v67;
    a1 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1002249D0(0, *(v67 + 2) + 1, 1, v67);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = sub_1002249D0((v33 > 1), v34 + 1, 1, v32);
    }

    v23 = v35;
    *(v35 + 2) = v34 + 1;
    *&v35[8 * v34 + 32] = v31;
  }

  while (v22 != v21);
LABEL_37:
  v36 = *(v23 + 2);
  if (v36)
  {
    v37 = *(v23 + 4);
    v38 = v36 - 1;
    if (v38)
    {
      v39 = (v23 + 40);
      do
      {
        v40 = *v39++;
        v41 = v40;
        if (v37 < v40)
        {
          v37 = v41;
        }

        --v38;
      }

      while (v38);
    }
  }

  Double.description.getter();
  sub_1001A56A0();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Color.gray.getter();
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  v51 = v50;
  v72 = v52;

  sub_1001ACFEC(v42, v44, v46 & 1);

  LOBYTE(v42) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v111 = v51 & 1;
  v108 = 0;
  *&v74 = v64;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = v113[0];
  DWORD1(v75) = *(v113 + 3);
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v62;
  DWORD1(v76) = *&v112[3];
  *(&v76 + 1) = *v112;
  *(&v76 + 1) = v14;
  *&v77[0] = v16;
  *(&v77[0] + 1) = v18;
  *&v77[1] = v20;
  BYTE8(v77[1]) = 0;
  *(v85 + 9) = *(v77 + 9);
  v84 = v76;
  v85[0] = v77[0];
  v82 = v74;
  v83 = v75;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  LOBYTE(v79) = v51 & 1;
  DWORD1(v79) = *&v110[3];
  *(&v79 + 1) = *v110;
  *(&v79 + 1) = v72;
  LOBYTE(v80) = v42;
  DWORD1(v80) = *&v109[3];
  *(&v80 + 1) = *v109;
  *(&v80 + 1) = v53;
  *&v81[0] = v54;
  *(&v81[0] + 1) = v55;
  *&v81[1] = v56;
  BYTE8(v81[1]) = 0;
  *&v73[7] = v78;
  *&v73[64] = *(v81 + 9);
  *&v73[55] = v81[0];
  *&v73[39] = v80;
  *&v73[23] = v79;
  v57 = v74;
  v58 = v75;
  v59 = v85[1];
  *(a2 + 48) = v77[0];
  *(a2 + 64) = v59;
  v60 = v84;
  *(a2 + 16) = v58;
  *(a2 + 32) = v60;
  *a2 = v57;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v73;
  *(a2 + 153) = *&v73[64];
  *(a2 + 137) = *&v73[48];
  *(a2 + 121) = *&v73[32];
  *(a2 + 105) = *&v73[16];
  v86[0] = v47;
  v86[1] = v49;
  v87 = v51 & 1;
  *&v88[3] = *&v110[3];
  *v88 = *v110;
  v89 = v72;
  v90 = v42;
  *&v91[3] = *&v109[3];
  *v91 = *v109;
  v92 = v53;
  v93 = v54;
  v94 = v55;
  v95 = v56;
  v96 = 0;
  sub_1001AC934(&v74, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v78, v97, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v86, &qword_1003755C0, &qword_1002F1E70);
  v97[0] = v64;
  v97[1] = v63;
  v98 = v68;
  *v99 = v113[0];
  *&v99[3] = *(v113 + 3);
  v100 = v66;
  v101 = v62;
  *v102 = *v112;
  *&v102[3] = *&v112[3];
  v103 = v14;
  v104 = v16;
  v105 = v18;
  v106 = v20;
  v107 = 0;
  return sub_1001AC99C(v97, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B1A64@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundColor(_:)();
  v76 = v9;
  v11 = v10;
  v13 = v12;

  sub_1001ACFEC(v3, v5, v7 & 1);

  LOBYTE(v5) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11 & 1;
  v23 = a1;
  v74 = v22;
  LOBYTE(v95) = v22;
  LOBYTE(v110[0]) = 0;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002EED40;
  v79 = v13;
  v77 = v8;
  v75 = v5;
  if (a1 >> 62)
  {
LABEL_41:
    v84 = v23 & 0xFFFFFFFFFFFFFF8;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    if (v41 >= 1)
    {
      v42 = v41;
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v73 = v42;
      if (!v25)
      {
        v80 = &_swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      goto LABEL_4;
    }

LABEL_47:
    v46 = 0.0;
    goto LABEL_55;
  }

  v84 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v73 = v25;
LABEL_4:
  v26 = 0;
  v82 = v23 & 0xC000000000000001;
  v80 = &_swiftEmptyArrayStorage;
  v81 = v25;
  v72 = v24;
  do
  {
    v24 = v26;
    while (1)
    {
      if (v82)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v28;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v24 >= *(v84 + 16))
        {
          goto LABEL_40;
        }

        v27 = *(v23 + 8 * v24 + 32);

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v29 = v23;
      v30 = *(v27 + 128);
      v31 = *(v27 + 136);
      v110[0] = 0;
      __chkstk_darwin(v28);
      if ((v31 & 0x1000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if ((v31 & 0x2000000000000000) == 0)
      {
        if ((v30 & 0x1000000000000000) != 0)
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          v34 = (v32 >= 0x21 || ((0x100003E01uLL >> v32) & 1) == 0) && (v33 = _swift_stdlib_strtod_clocale()) != 0 && *v33 == 0;
          v23 = v29;
          LOBYTE(v99[0]) = v34;
        }

        else
        {
LABEL_29:

          _StringGuts._slowWithCString<A>(_:)();
        }

        v37 = v81;
        goto LABEL_26;
      }

      *&v95 = v30;
      *(&v95 + 1) = v31 & 0xFFFFFFFFFFFFFFLL;

      if (v30 < 0x21u && ((0x100003E01uLL >> v30) & 1) != 0)
      {
        v35 = 0;
      }

      else
      {
        v36 = _swift_stdlib_strtod_clocale();
        v35 = v36 && *v36 == 0;
      }

      v37 = v81;
      LOBYTE(v99[0]) = v35;

LABEL_26:
      if (v99[0])
      {
        break;
      }

      ++v24;
      if (v26 == v37)
      {
        v24 = v72;
        goto LABEL_44;
      }
    }

    v38 = v110[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_1002249D0(0, *(v80 + 2) + 1, 1, v80);
    }

    v24 = v72;
    v40 = *(v80 + 2);
    v39 = *(v80 + 3);
    if (v40 >= v39 >> 1)
    {
      v80 = sub_1002249D0((v39 > 1), v40 + 1, 1, v80);
    }

    *(v80 + 2) = v40 + 1;
    *&v80[8 * v40 + 32] = v38;
  }

  while (v26 != v37);
LABEL_44:
  v43 = *(v80 + 2);
  if (v43)
  {
    if (v43 <= 3)
    {
      v44 = 0;
      v45 = 0.0;
      goto LABEL_52;
    }

    v44 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    v47 = v80 + 48;
    v45 = 0.0;
    v48 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v49 = *v47;
      v45 = v45 + *(v47 - 2) + *(v47 - 1) + *v47 + *(v47 + 1);
      v47 += 32;
      v48 -= 4;
    }

    while (v48);
    if (v43 != v44)
    {
LABEL_52:
      v50 = v43 - v44;
      v51 = &v80[8 * v44 + 32];
      do
      {
        v52 = *v51++;
        v45 = v45 + v52;
        --v50;
      }

      while (v50);
    }
  }

  else
  {
    v45 = 0.0;
  }

  v46 = v45 / v73;
LABEL_55:
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v46;
  String.init(format:_:)();
  sub_1001A56A0();
  v53 = Text.init<A>(_:)();
  v55 = v54;
  v57 = v56;
  static Color.gray.getter();
  v58 = Text.foregroundColor(_:)();
  v83 = v59;
  v85 = v60;
  v62 = v61;

  sub_1001ACFEC(v53, v55, v57 & 1);

  LOBYTE(v53) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v124 = v62 & 1;
  v121 = 0;
  *&v87 = v77;
  *(&v87 + 1) = v76;
  LOBYTE(v88) = v74;
  *(&v88 + 1) = v126[0];
  DWORD1(v88) = *(v126 + 3);
  *(&v88 + 1) = v79;
  LOBYTE(v89) = v75;
  DWORD1(v89) = *&v125[3];
  *(&v89 + 1) = *v125;
  *(&v89 + 1) = v15;
  *&v90[0] = v17;
  *(&v90[0] + 1) = v19;
  *&v90[1] = v21;
  BYTE8(v90[1]) = 0;
  *(v98 + 9) = *(v90 + 9);
  v97 = v89;
  v98[0] = v90[0];
  v95 = v87;
  v96 = v88;
  *&v91 = v58;
  *(&v91 + 1) = v83;
  LOBYTE(v92) = v62 & 1;
  DWORD1(v92) = *&v123[3];
  *(&v92 + 1) = *v123;
  *(&v92 + 1) = v85;
  LOBYTE(v93) = v53;
  DWORD1(v93) = *&v122[3];
  *(&v93 + 1) = *v122;
  *(&v93 + 1) = v63;
  *&v94[0] = v64;
  *(&v94[0] + 1) = v65;
  *&v94[1] = v66;
  BYTE8(v94[1]) = 0;
  *&v86[7] = v91;
  *&v86[64] = *(v94 + 9);
  *&v86[55] = v94[0];
  *&v86[39] = v93;
  *&v86[23] = v92;
  v67 = v87;
  v68 = v88;
  v69 = v98[1];
  *(a2 + 48) = v90[0];
  *(a2 + 64) = v69;
  v70 = v97;
  *(a2 + 16) = v68;
  *(a2 + 32) = v70;
  *a2 = v67;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 89) = *v86;
  *(a2 + 153) = *&v86[64];
  *(a2 + 137) = *&v86[48];
  *(a2 + 121) = *&v86[32];
  *(a2 + 105) = *&v86[16];
  v99[0] = v58;
  v99[1] = v83;
  v100 = v62 & 1;
  *&v101[3] = *&v123[3];
  *v101 = *v123;
  v102 = v85;
  v103 = v53;
  *&v104[3] = *&v122[3];
  *v104 = *v122;
  v105 = v63;
  v106 = v64;
  v107 = v65;
  v108 = v66;
  v109 = 0;
  sub_1001AC934(&v87, v110, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC934(&v91, v110, &qword_1003755C0, &qword_1002F1E70);
  sub_1001AC99C(v99, &qword_1003755C0, &qword_1002F1E70);
  v110[0] = v77;
  v110[1] = v76;
  v111 = v74;
  *v112 = v126[0];
  *&v112[3] = *(v126 + 3);
  v113 = v79;
  v114 = v75;
  *v115 = *v125;
  *&v115[3] = *&v125[3];
  v116 = v15;
  v117 = v17;
  v118 = v19;
  v119 = v21;
  v120 = 0;
  return sub_1001AC99C(v110, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_1001B2248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FTMAllMetricsModel();
  sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
  v4 = EnvironmentObject.init()();
  v15 = v5;
  v19 = 0uLL;
  *&v20 = 0;
  sub_1001A551C(&qword_1003755B0, &qword_1002EF760);
  State.init(wrappedValue:)();
  v6 = *a1;
  if (*a1)
  {
    v7 = v23;
    v8 = v24;

    v9 = static ObservableObject.environmentStore.getter();
    v18 = 1;
    *&v19 = v4;
    *(&v19 + 1) = v15;
    v20 = v23;
    v21 = v24;
    *&v22 = v9;
    *(&v22 + 1) = v6;
    *&v17[7] = v19;
    *&v17[23] = v23;
    *&v17[39] = v24;
    *&v17[55] = v22;
    v16[64] = 1;
    *a2 = 0;
    *(a2 + 8) = 1;
    v10 = *&v17[16];
    *(a2 + 9) = *v17;
    v11 = *&v17[32];
    v12 = *&v17[48];
    *(a2 + 72) = *&v17[63];
    *(a2 + 80) = 0;
    *(a2 + 57) = v12;
    *(a2 + 41) = v11;
    *(a2 + 25) = v10;
    *(a2 + 88) = 1;
    *&v23 = v4;
    *(&v23 + 1) = v15;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v27 = v6;
    sub_1001AC934(&v19, v16, &qword_1003755B8, &qword_1002EF768);
    return sub_1001AC99C(&v23, &qword_1003755B8, &qword_1002EF768);
  }

  else
  {
    v14 = a1[1];
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B240C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1001A551C(&qword_1003755F0, &qword_1002EF840);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v71 = &v70 - v5;
  v6 = sub_1001A551C(&qword_1003755F8, &qword_1002EF848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v70 - v9;
  v11 = sub_1001A551C(&qword_100375600, &qword_1002EF850);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v73 = &v70 - v14;
  if (qword_100375020 != -1)
  {
    goto LABEL_88;
  }

LABEL_2:
  v15 = qword_100382508;
  v16 = *v1;
  if (!*v1)
  {
    goto LABEL_91;
  }

  v17 = qword_100382508;

  v19 = sub_10021A754(v18);

  v81 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v16;
  v78 = v10;
  v70 = v7;
  v79 = v1;
  v72 = v6;
  v74 = v12;
  v75 = v11;
  v76 = a1;
  v82 = v19;
  v21 = v19 & 0xC000000000000001;
  if (!v20)
  {
    v11 = 0;
    v23 = _swiftEmptyArrayStorage;
    v31 = _swiftEmptyArrayStorage[2];
    if (v31)
    {
      goto LABEL_36;
    }

LABEL_79:
    v32 = 0.0;

    if (v20)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

  v22 = 0;
  v11 = 0;
  v23 = _swiftEmptyArrayStorage;
LABEL_7:
  v80 = v23;
  v12 = v22;
  do
  {
    if (v21)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v24;
      v22 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v12 >= *(v81 + 16))
      {
        goto LABEL_85;
      }

      v6 = *(v82 + 8 * v12 + 32);

      v22 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
        goto LABEL_2;
      }
    }

    a1 = &v70;
    v1 = *(v6 + 128);
    v7 = *(v6 + 136);
    *&v91 = 0;
    __chkstk_darwin(v24);
    v10 = (&v70 - 4);
    *(&v70 - 2) = &v91;
    if ((v7 & 0x1000000000000000) == 0)
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        v83 = v1;
        v84 = v7 & 0xFFFFFFFFFFFFFFLL;
        v10 = v1;

        if (v1 >= 0x21u || ((0x100003E01uLL >> v1) & 1) == 0)
        {
          v25 = _swift_stdlib_strtod_clocale();
          if (v25)
          {
LABEL_21:
            LOBYTE(v87) = *v25 == 0;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v1 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v10 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v10 >= 0x21 || ((0x100003E01uLL >> v10) & 1) == 0)
        {
          v25 = _swift_stdlib_strtod_clocale();
          if (v25)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        LOBYTE(v87) = 0;
        goto LABEL_23;
      }
    }

    _StringGuts._slowWithCString<A>(_:)();
LABEL_23:

    if (LOBYTE(v87))
    {
      v26 = v91;
      v27 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1002249D0(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      v30 = v27;
      v1 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v30 = sub_1002249D0((v28 > 1), v29 + 1, 1, v30);
      }

      v23 = v30;
      *(v30 + 2) = v1;
      *&v30[8 * v29 + 32] = v26;
      if (v22 == v20)
      {
        goto LABEL_35;
      }

      goto LABEL_7;
    }

    ++v12;
  }

  while (v22 != v20);
  v23 = v80;
LABEL_35:
  v31 = *(v23 + 2);
  if (!v31)
  {
    goto LABEL_79;
  }

LABEL_36:
  v32 = v23[4];
  v33 = v31 - 1;
  if (v33)
  {
    v34 = v23 + 5;
    do
    {
      v35 = *v34++;
      v36 = v35;
      if (v35 < v32)
      {
        v32 = v36;
      }

      --v33;
    }

    while (v33);
  }

  if (!v20)
  {
LABEL_80:
    v38 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage[2];
    if (v46)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

LABEL_42:
  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
  do
  {
    v80 = v38;
    v12 = v37;
    while (1)
    {
      if (v21)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v39;
        v37 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v12 >= *(v81 + 16))
        {
          goto LABEL_87;
        }

        v6 = *(v82 + 8 * v12 + 32);

        v37 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_86;
        }
      }

      a1 = &v70;
      v1 = *(v6 + 128);
      v7 = *(v6 + 136);
      *&v91 = 0;
      __chkstk_darwin(v39);
      v10 = (&v70 - 4);
      *(&v70 - 2) = &v91;
      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          v83 = v1;
          v84 = v7 & 0xFFFFFFFFFFFFFFLL;
          v10 = v1;

          if (v1 >= 0x21u || ((0x100003E01uLL >> v1) & 1) == 0)
          {
            v40 = _swift_stdlib_strtod_clocale();
            if (v40)
            {
LABEL_57:
              LOBYTE(v87) = *v40 == 0;
              goto LABEL_59;
            }
          }

          goto LABEL_58;
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v1 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v10 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v10 >= 0x21 || ((0x100003E01uLL >> v10) & 1) == 0)
          {
            v40 = _swift_stdlib_strtod_clocale();
            if (v40)
            {
              goto LABEL_57;
            }
          }

LABEL_58:
          LOBYTE(v87) = 0;
          goto LABEL_59;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_59:

      if (LOBYTE(v87))
      {
        break;
      }

      ++v12;
      if (v37 == v20)
      {
        v38 = v80;
        goto LABEL_71;
      }
    }

    v41 = v91;
    v42 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1002249D0(0, *(v42 + 2) + 1, 1, v42);
    }

    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    v45 = v42;
    v1 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_1002249D0((v43 > 1), v44 + 1, 1, v45);
    }

    v38 = v45;
    *(v45 + 2) = v1;
    *&v45[8 * v44 + 32] = v41;
  }

  while (v37 != v20);
LABEL_71:
  v46 = *(v38 + 2);
  if (!v46)
  {
LABEL_81:
    v47 = 0.0;
    v50 = v78;
    v49 = v79;
    v51 = v82;
    goto LABEL_82;
  }

LABEL_72:
  v47 = v38[4];
  v48 = v46 - 1;
  v50 = v78;
  v49 = v79;
  v51 = v82;
  if (v48)
  {
    v52 = v38 + 5;
    do
    {
      v53 = *v52++;
      v54 = v53;
      if (v47 < v53)
      {
        v47 = v54;
      }

      --v48;
    }

    while (v48);
  }

LABEL_82:

  v89 = v51;
  v91 = *(v49 + 16);
  v55 = *(v49 + 40);
  v92 = *(v49 + 32);
  v90 = v55;
  v56 = swift_allocObject();
  v57 = *(v49 + 16);
  *(v56 + 16) = *v49;
  *(v56 + 32) = v57;
  *(v56 + 48) = *(v49 + 32);
  *(v56 + 64) = v32;
  *(v56 + 72) = v47;

  sub_1001AC934(&v91, &v83, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v90, &v83, &qword_100375608, &qword_1002EF858);
  v15 = sub_1001A551C(&qword_100375610, &qword_1002EF860);
  sub_1001A551C(&qword_100375618, &qword_1002EF868);
  v1 = sub_1001AD0C8(&qword_100375620, &qword_100375610, &qword_1002EF860);
  sub_1001B54CC();
  sub_1001B5EC8(&qword_100375690, type metadata accessor for FTMAllMetricsModel);
  Chart.init<A, B>(_:content:)();
  if (v32 <= v47)
  {
    v87 = v32;
    v88 = v47;
    v58 = type metadata accessor for ScaleType();
    v59 = v71;
    (*(*(v58 - 8) + 56))(v71, 1, 1, v58);
    v82 = sub_1001A551C(&qword_100375698, &qword_1002EF8B0);
    v60 = sub_1001AD0C8(&qword_1003756A0, &qword_1003755F8, &qword_1002EF848);
    v61 = sub_1001B58E0();
    v62 = v73;
    v63 = v72;
    View.chartYScale<A>(domain:type:)();
    sub_1001AC99C(v59, &qword_1003755F0, &qword_1002EF840);
    (*(v70 + 8))(v50, v63);
    v64 = swift_allocObject();
    v65 = *(v49 + 16);
    v64[1] = *v49;
    v64[2] = v65;
    v64[3] = *(v49 + 32);

    sub_1001AC934(&v91, &v83, &qword_1003755B0, &qword_1002EF760);
    sub_1001AC934(&v90, &v83, &qword_100375608, &qword_1002EF858);
    static Alignment.center.getter();
    sub_1001A551C(&qword_1003756B0, &qword_1002EF8B8);
    v83 = v63;
    v84 = v82;
    v85 = v60;
    v86 = v61;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_1003756B8, &qword_1003756B0, &qword_1002EF8B8);
    v66 = v75;
    View.chartOverlay<A>(alignment:content:)();

    return (*(v74 + 8))(v62, v66);
  }

  __break(1u);
LABEL_91:
  v68 = *(v1 + 8);
  type metadata accessor for FTMAllMetricsModel();
  sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
  v69 = v15;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B2FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v150 = a3;
  v149 = sub_1001A551C(&qword_100375730, &qword_1002EF8F8);
  v9 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v148 = &v109 - v10;
  v11 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v109 - v13;
  v125 = type metadata accessor for Date();
  v124 = *(v125 - 8);
  v15 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1001A551C(&qword_100375740, &qword_1002EF908);
  v136 = *(v137 - 8);
  v17 = *(v136 + 64);
  v18 = __chkstk_darwin(v137);
  v133 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v126 = &v109 - v20;
  v132 = type metadata accessor for LineMark();
  v130 = *(v132 - 8);
  v21 = *(v130 + 64);
  __chkstk_darwin(v132);
  v128 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1001A551C(&qword_100375670, &qword_1002EF8A0);
  v131 = *(v139 - 8);
  v23 = *(v131 + 64);
  __chkstk_darwin(v139);
  v129 = &v109 - v24;
  v141 = sub_1001A551C(&qword_100375668, &qword_1002EF898);
  v138 = *(v141 - 8);
  v25 = *(v138 + 64);
  __chkstk_darwin(v141);
  v135 = &v109 - v26;
  v143 = sub_1001A551C(&qword_100375658, &qword_1002EF888);
  v142 = *(v143 - 8);
  v27 = *(v142 + 64);
  __chkstk_darwin(v143);
  v140 = &v109 - v28;
  v147 = sub_1001A551C(&qword_100375748, &qword_1002EF910);
  v146 = *(v147 - 8);
  v29 = *(v146 + 64);
  v30 = __chkstk_darwin(v147);
  v145 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v144 = &v109 - v32;
  v118 = type metadata accessor for AnnotationPosition();
  v117 = *(v118 - 8);
  v33 = *(v117 + 64);
  __chkstk_darwin(v118);
  v116 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1001A551C(&qword_100375750, &qword_1002EF918);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v122 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = type metadata accessor for RuleMark();
  v112 = *(v39 - 8);
  v40 = v112[8];
  __chkstk_darwin(v39);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1001A551C(&qword_100375650, &qword_1002EF880);
  v114 = *(v115 - 8);
  v43 = *(v114 + 64);
  __chkstk_darwin(v115);
  v111 = &v109 - v44;
  v120 = sub_1001A551C(&qword_100375758, &unk_1002EF920);
  v119 = *(v120 - 8);
  v45 = *(v119 + 64);
  __chkstk_darwin(v120);
  v113 = &v109 - v46;
  v121 = sub_1001A551C(&qword_100375648, &qword_1002EF878);
  v47 = *(v121 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v121);
  v50 = &v109 - v49;
  v51 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v127 = &v109 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v152 = &v109 - v55;
  v56 = *a1;
  v57 = *(a2 + 16);
  v58 = *(a2 + 32);
  v134 = a2;
  v158 = v57;
  v159 = v58;
  sub_1001A551C(&qword_100375728, &qword_1002EF8F0);
  State.wrappedValue.getter();
  v151 = v56;
  if (v156)
  {
    v59 = v157;
    if (a4 + -10.0 >= v157 || v157 >= a5 + 10.0)
    {

      v67 = 1;
      v68 = v124;
      v66 = v120;
      v65 = v119;
    }

    else
    {
      v109 = v155;
      LocalizedStringKey.init(stringLiteral:)();
      v110 = v14;
      *&v158 = v59;
      static PlottableValue.value(_:_:)();

      RuleMark.init<A>(xStart:xEnd:y:)();
      *&v158 = static Color.gray.getter();
      v60 = v111;
      ChartContent.foregroundStyle<A>(_:)();

      v61 = (v112[1])(v42, v39);
      v112 = &v109;
      __chkstk_darwin(v61);
      v62 = v116;
      static AnnotationPosition.automatic.getter();
      static Alignment.center.getter();
      *&v158 = v39;
      *(&v158 + 1) = &type metadata for Color;
      *&v159 = &protocol witness table for RuleMark;
      *(&v159 + 1) = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v63 = v113;
      v14 = v110;
      v56 = v151;
      v64 = v115;
      ChartContent.annotation<A>(position:alignment:spacing:content:)();

      (*(v117 + 8))(v62, v118);
      (*(v114 + 8))(v60, v64);
      v65 = v119;
      v66 = v120;
      (*(v119 + 32))(v50, v63, v120);
      v67 = 0;
      v68 = v124;
    }

    (*(v65 + 56))(v50, v67, 1, v66);
    v70 = v152;
    sub_1001B603C(v50, v152, &qword_100375648, &qword_1002EF878);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v70 = v152;
    v68 = v124;
  }

  (*(v47 + 56))(v70, v69, 1, v121);
  LocalizedStringKey.init(stringLiteral:)();
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v71 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v56 + v71, v14, &qword_100375738, &qword_1002EF900);
  v72 = *(v68 + 48);
  v73 = v125;
  if (v72(v14, 1, v125) == 1)
  {
    v74 = v14;
    v75 = v123;
    Date.init()();
    v76 = v75;
    if (v72(v74, 1, v73) != 1)
    {
      sub_1001AC99C(v74, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    v76 = v123;
    (*(v68 + 32))(v123, v14, v73);
  }

  sub_1001B5EC8(&unk_100375760, &type metadata accessor for Date);
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  (*(v68 + 8))(v76, v73);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v78 = *(v151 + 128);
  v79 = *(v151 + 136);
  *&v158 = 0;

  LOBYTE(v78) = sub_10022464C(v78, v79);

  v80 = *&v158;
  if ((v78 & 1) == 0)
  {
    v80 = 0.0;
  }

  *&v158 = v80;
  static PlottableValue.value(_:_:)();

  v81 = v128;
  LineMark.init<A, B>(x:y:)();
  LocalizedStringKey.init(stringLiteral:)();
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  v82 = *v134;
  if (*v134)
  {
    v83 = *(v82 + 48);
    v84 = *(v82 + 56);

    v85._countAndFlagsBits = v83;
    v85._object = v84;
    String.append(_:)(v85);

    v86 = v133;
    static PlottableValue.value(_:_:)();

    v87 = v129;
    v88 = v132;
    ChartContent.foregroundStyle<A>(by:)();
    (*(v136 + 8))(v86, v137);
    (*(v130 + 8))(v81, v88);
    *&v158 = v88;
    *(&v158 + 1) = &type metadata for String;
    *&v159 = &protocol witness table for LineMark;
    *(&v159 + 1) = &protocol witness table for String;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v90 = v135;
    v91 = v139;
    ChartContent.interpolationMethod(_:)();
    (*(v131 + 8))(v87, v91);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v153 = v91;
    v154 = OpaqueTypeConformance2;
    v92 = swift_getOpaqueTypeConformance2();
    v93 = v140;
    v94 = v141;
    ChartContent.lineStyle(_:)();
    sub_1001B5F10(&v158);
    (*(v138 + 8))(v90, v94);
    sub_1001A551C(&qword_100375660, &qword_1002EF890);
    v153 = v94;
    v154 = v92;
    swift_getOpaqueTypeConformance2();
    sub_1001B5828();
    v95 = v144;
    v96 = v143;
    ChartContent.symbol<A>(symbol:)();
    (*(v142 + 8))(v93, v96);
    v97 = v127;
    sub_1001B5F64(v152, v127);
    v98 = v146;
    v99 = *(v146 + 16);
    v100 = v145;
    v101 = v147;
    v99(v145, v95, v147);
    sub_1001B568C();
    v102 = v148;
    sub_1001B5F64(v97, v148);
    v103 = v149;
    v104 = *(v149 + 48);
    v99((v102 + v104), v100, v101);
    v105 = v150;
    sub_1001B603C(v102, v150, &qword_100375638, &qword_1002EF870);
    (*(v98 + 32))(v105 + *(v103 + 48), v102 + v104, v101);
    v106 = *(v98 + 8);
    v106(v95, v101);
    sub_1001B5FD4(v152);
    v106(v100, v101);
    return sub_1001B5FD4(v97);
  }

  else
  {
    v108 = v134[1];
    type metadata accessor for FTMAllMetricsModel();
    sub_1001B5EC8(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_1001B4494@<Q0>(uint64_t a1@<X8>)
{
  v2 = static Color.yellow.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v4[6] = v5;
  *&v4[22] = v6;
  *&v4[38] = v7;
  *(a1 + 10) = *v4;
  *a1 = v2;
  *(a1 + 8) = 256;
  *(a1 + 26) = *&v4[16];
  result = *&v4[32];
  *(a1 + 42) = *&v4[32];
  *(a1 + 56) = *(&v7 + 1);
  return result;
}

uint64_t sub_1001B4524@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = a2[1];
  v20 = *a2;
  v18 = v9;
  v10 = *(a2 + 5);
  v19 = *(a2 + 4);
  v17 = v10;
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  *a3 = sub_1001B5A1C;
  a3[1] = v12;
  sub_1001AC934(&v20, v16, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v18, v16, &qword_1003755B0, &qword_1002EF760);
  return sub_1001AC934(&v17, v16, &qword_100375608, &qword_1002EF858);
}

uint64_t sub_1001B46E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v51 = a2;
  v48 = a1;
  v61 = a4;
  v50 = type metadata accessor for ChartProxy();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v50);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalCoordinateSpace();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v53 = type metadata accessor for DragGesture();
  v54 = *(v53 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v53);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001A551C(&qword_1003756C8, &qword_1002EF8C8);
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v52 = &v44 - v17;
  v18 = sub_1001A551C(&qword_1003756D0, &qword_1002EF8D0);
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v55 = &v44 - v21;
  v58 = static Color.clear.getter();
  v63 = v58;
  v64 = 256;
  v65 = 0;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v22 = v6;
  (*(v7 + 16))(v9, v48, v6);
  v23 = v4;
  v45 = v4;
  v24 = v47;
  v25 = v50;
  (*(v4 + 16))(v47, v51, v50);
  v26 = v49;
  v27 = *(v49 + 16);
  v69[0] = *v49;
  v67 = v27;
  v28 = *(v49 + 40);
  v68 = *(v49 + 32);
  v66 = v28;
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v8 + *(v23 + 80) + v29) & ~*(v23 + 80);
  v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v7 + 32))(v32 + v29, v9, v22);
  (*(v45 + 32))(v32 + v30, v24, v25);
  v33 = (v32 + v31);
  v34 = v26[1];
  *v33 = *v26;
  v33[1] = v34;
  v33[2] = v26[2];
  sub_1001AC934(v69, v62, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v67, v62, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v66, v62, &qword_100375608, &qword_1002EF858);
  sub_1001B5EC8(&qword_1003756D8, &type metadata accessor for DragGesture);
  sub_1001B5EC8(&qword_1003756E0, &type metadata accessor for DragGesture.Value);
  v35 = v52;
  v36 = v53;
  v37 = v46;
  Gesture<>.onChanged(_:)();

  (*(v54 + 8))(v37, v36);
  v38 = swift_allocObject();
  v39 = v26[1];
  v38[1] = *v26;
  v38[2] = v39;
  v38[3] = v26[2];
  sub_1001AC934(v69, v62, &qword_1003756C0, &qword_1002EF8C0);
  sub_1001AC934(&v67, v62, &qword_1003755B0, &qword_1002EF760);
  sub_1001AC934(&v66, v62, &qword_100375608, &qword_1002EF858);
  sub_1001AD0C8(&qword_1003756E8, &qword_1003756C8, &qword_1002EF8C8);
  v41 = v55;
  v40 = v56;
  Gesture.onEnded(_:)();

  (*(v57 + 8))(v35, v40);
  static GestureMask.all.getter();
  sub_1001A551C(&qword_1003756F0, &qword_1002EF8D8);
  sub_1001B5DE4();
  sub_1001AD0C8(&qword_100375720, &qword_1003756D0, &qword_1002EF8D0);
  v42 = v59;
  View.gesture<A>(_:including:)();
  (*(v60 + 8))(v41, v42);
}

uint64_t sub_1001B4E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ChartProxy.plotAreaFrame.getter();
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();

  DragGesture.Value.location.getter();
  DragGesture.Value.location.getter();
  ChartProxy.value<A, B>(at:as:)();
  v6 = *(a4 + 16);
  v7 = *(a4 + 32);
  sub_1001A551C(&qword_100375728, &qword_1002EF8F0);
  return State.wrappedValue.setter();
}

uint64_t sub_1001B4F40()
{

  return Label<>.init(_:systemImage:)();
}

unint64_t sub_1001B4FD4()
{
  result = qword_100375590;
  if (!qword_100375590)
  {
    sub_1001A55C8(&qword_100375580, &qword_1002EF748);
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375590);
  }

  return result;
}

uint64_t sub_1001B50A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorBookmarkedSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B510C()
{
  v1 = (type metadata accessor for FTMCellMonitorBookmarkedSheetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001B5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorBookmarkedSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B528C()
{
  v1 = *(type metadata accessor for FTMCellMonitorBookmarkedSheetView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1001AFF98(v2);
}

uint64_t sub_1001B52EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_1001B4F40();
}

__n128 sub_1001B5300(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1001B5314(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001B5370(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1001B53E4()
{
  result = qword_1003755E0;
  if (!qword_1003755E0)
  {
    sub_1001A55C8(&qword_1003755E8, qword_1002EF7E8);
    sub_1001AD0C8(&qword_100375588, &qword_100375548, &qword_1002EF710);
    sub_1001B4FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003755E0);
  }

  return result;
}

unint64_t sub_1001B54CC()
{
  result = qword_100375628;
  if (!qword_100375628)
  {
    sub_1001A55C8(&qword_100375618, &qword_1002EF868);
    sub_1001B568C();
    sub_1001A55C8(&qword_100375658, &qword_1002EF888);
    sub_1001A55C8(&qword_100375660, &qword_1002EF890);
    sub_1001A55C8(&qword_100375668, &qword_1002EF898);
    sub_1001A55C8(&qword_100375670, &qword_1002EF8A0);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001B5828();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375628);
  }

  return result;
}

unint64_t sub_1001B568C()
{
  result = qword_100375630;
  if (!qword_100375630)
  {
    sub_1001A55C8(&qword_100375638, &qword_1002EF870);
    sub_1001B5710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375630);
  }

  return result;
}

unint64_t sub_1001B5710()
{
  result = qword_100375640;
  if (!qword_100375640)
  {
    sub_1001A55C8(&qword_100375648, &qword_1002EF878);
    sub_1001A55C8(&qword_100375650, &qword_1002EF880);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375640);
  }

  return result;
}

unint64_t sub_1001B5828()
{
  result = qword_100375678;
  if (!qword_100375678)
  {
    sub_1001A55C8(&qword_100375660, &qword_1002EF890);
    sub_1001AD0C8(&qword_100375680, &qword_100375688, &qword_1002EF8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375678);
  }

  return result;
}

unint64_t sub_1001B58E0()
{
  result = qword_1003756A8;
  if (!qword_1003756A8)
  {
    sub_1001A55C8(&qword_100375698, &qword_1002EF8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003756A8);
  }

  return result;
}

uint64_t sub_1001B596C()
{
  v1 = type metadata accessor for ChartProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 24);

  v8 = *(v0 + v5 + 40);

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

uint64_t sub_1001B5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChartProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1001B46E4(a1, v2 + v6, v7, a2);
}

uint64_t sub_1001B5AC8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  v13 = *(v0 + v11 + 24);

  v14 = *(v0 + v11 + 40);

  return _swift_deallocObject(v0, v11 + 48, v10 | 7);
}

uint64_t sub_1001B5C38(uint64_t a1)
{
  v3 = *(type metadata accessor for GeometryProxy() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ChartProxy() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1001B4E3C(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_1001B5D38(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[5];

  v5 = v1[7];

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001B5D8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_1001A551C(&qword_100375728, &qword_1002EF8F0);
  return State.wrappedValue.setter();
}

unint64_t sub_1001B5DE4()
{
  result = qword_1003756F8;
  if (!qword_1003756F8)
  {
    sub_1001A55C8(&qword_1003756F0, &qword_1002EF8D8);
    sub_1001AD0C8(&qword_100375700, &qword_100375708, &qword_1002EF8E0);
    sub_1001AD0C8(&qword_100375710, &qword_100375718, &qword_1002EF8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003756F8);
  }

  return result;
}

uint64_t sub_1001B5EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B5F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B5FD4(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375638, &qword_1002EF870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B603C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001A551C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001B60B0()
{
  sub_1001A55C8(&qword_100375600, &qword_1002EF850);
  sub_1001A55C8(&qword_1003756B0, &qword_1002EF8B8);
  sub_1001A55C8(&qword_1003755F8, &qword_1002EF848);
  sub_1001A55C8(&qword_100375698, &qword_1002EF8B0);
  sub_1001AD0C8(&qword_1003756A0, &qword_1003755F8, &qword_1002EF848);
  sub_1001B58E0();
  swift_getOpaqueTypeConformance2();
  sub_1001AD0C8(&qword_1003756B8, &qword_1003756B0, &qword_1002EF8B8);
  return swift_getOpaqueTypeConformance2();
}

void sub_1001B63B8()
{
  v1 = OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView;
  [*&v0[OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView] setUserInteractionEnabled:0];
  v2 = *&v0[v1];
  type metadata accessor for TickerCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [*&v0[v1] setDataSource:v0];
  [*&v0[v1] setDelegate:v0];
  [*&v0[v1] setSeparatorStyle:0];
  v6 = *&v0[v1];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [v0 contentView];
  [v10 addSubview:*&v0[v1]];

  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v0 contentView];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002EF930;
  v13 = *&v0[v1];
  v14 = [v0 contentView];
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 constraintWithItem:v16 attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:0.0];

  *(v12 + 32) = v17;
  v18 = *&v0[v1];
  v19 = [v0 contentView];
  v20 = v18;
  v21 = [v15 constraintWithItem:v20 attribute:6 relatedBy:0 toItem:v19 attribute:6 multiplier:1.0 constant:0.0];

  *(v12 + 40) = v21;
  v22 = *&v0[v1];
  v23 = [v0 contentView];
  v24 = v22;
  v25 = [v15 constraintWithItem:v24 attribute:3 relatedBy:0 toItem:v23 attribute:3 multiplier:1.0 constant:0.0];

  *(v12 + 48) = v25;
  v26 = *&v0[v1];
  v27 = [v0 contentView];
  v28 = v26;
  v29 = [v15 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:v27 attribute:4 multiplier:1.0 constant:0.0];

  *(v12 + 56) = v29;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 addConstraints:isa];
}

id sub_1001B67B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TickerColumnCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001B6854(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for TickerCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v1 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters);
      if (result < *(v10 + 16))
      {
        v11 = v10 + 16 * result;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
        v14 = (v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_digit);
        v15 = *(v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_digit + 8);
        *v14 = v12;
        v14[1] = v13;

        v16 = OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel;
        v17 = *(v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel);

        v18 = String._bridgeToObjectiveC()();

        [v17 setText:v18];

        if (*(v2 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) == 1)
        {
          v19 = 35.0;
        }

        else
        {
          v19 = 40.0;
        }

        *(v8 + OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize) = v19;
        v20 = *(v8 + v16);
        v21 = [objc_opt_self() systemFontOfSize:v19 weight:UIFontWeightRegular];
        [v20 setFont:v21];

        return v8;
      }
    }

    __break(1u);
    return result;
  }

  v22 = objc_allocWithZone(UITableViewCell);

  return [v22 init];
}

unint64_t sub_1001B6BCC()
{
  result = qword_1003757B8;
  if (!qword_1003757B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003757B8);
  }

  return result;
}

uint64_t sub_1001B6C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001B6D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FTMBandDataView()
{
  result = qword_1003758F0;
  if (!qword_1003758F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6E20()
{
  sub_1001B6EDC(319, &qword_100375900, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001B6EDC(319, &unk_100375908, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B6EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FTMBandInfoDataModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1001B6F58@<X0>(uint64_t a1@<X8>)
{
  v353 = a1;
  v2 = sub_1001A551C(&qword_100375938, &qword_1002EFA48);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v330 = &v305 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v339 = &v305 - v6;
  v335 = sub_1001A551C(&qword_100375940, &qword_1002EFA50);
  v7 = *(*(v335 - 8) + 64);
  __chkstk_darwin(v335);
  v317 = &v305 - v8;
  v9 = sub_1001A551C(&qword_100375948, &qword_1002EFA58);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v329 = &v305 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v352 = &v305 - v14;
  v15 = __chkstk_darwin(v13);
  v351 = &v305 - v16;
  v17 = __chkstk_darwin(v15);
  v359 = &v305 - v18;
  v19 = __chkstk_darwin(v17);
  v360 = &v305 - v20;
  v21 = __chkstk_darwin(v19);
  v357 = &v305 - v22;
  __chkstk_darwin(v21);
  v347 = &v305 - v23;
  v332 = sub_1001A551C(&qword_100375950, &qword_1002EFA60);
  v24 = *(*(v332 - 8) + 64);
  __chkstk_darwin(v332);
  v334 = &v305 - v25;
  v333 = sub_1001A551C(&qword_100375958, &qword_1002EFA68);
  v26 = *(*(v333 - 8) + 64);
  __chkstk_darwin(v333);
  v312 = &v305 - v27;
  v28 = sub_1001A551C(&qword_100375960, &qword_1002EFA70);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v311 = &v305 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v340 = &v305 - v32;
  v33 = sub_1001A551C(&qword_100375968, &qword_1002EFA78);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v350 = &v305 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v361 = &v305 - v37;
  v354 = sub_1001A551C(&qword_100375970, &qword_1002EFA80);
  v38 = *(*(v354 - 8) + 64);
  __chkstk_darwin(v354);
  v355 = &v305 - v39;
  v374 = sub_1001A551C(&qword_100375978, &qword_1002EFA88);
  v40 = *(*(v374 - 8) + 64);
  __chkstk_darwin(v374);
  v375 = &v305 - v41;
  v376 = sub_1001A551C(&qword_100375980, &qword_1002EFA90);
  v367 = *(v376 - 8);
  v42 = *(v367 + 64);
  v43 = __chkstk_darwin(v376);
  v319 = &v305 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v320 = &v305 - v46;
  v47 = __chkstk_darwin(v45);
  v321 = &v305 - v48;
  v49 = __chkstk_darwin(v47);
  v316 = &v305 - v50;
  v51 = __chkstk_darwin(v49);
  v315 = &v305 - v52;
  v53 = __chkstk_darwin(v51);
  v336 = &v305 - v54;
  v55 = __chkstk_darwin(v53);
  v346 = &v305 - v56;
  v57 = __chkstk_darwin(v55);
  v348 = &v305 - v58;
  v59 = __chkstk_darwin(v57);
  v345 = &v305 - v60;
  v61 = __chkstk_darwin(v59);
  v343 = &v305 - v62;
  v63 = __chkstk_darwin(v61);
  v328 = &v305 - v64;
  v65 = __chkstk_darwin(v63);
  v307 = &v305 - v66;
  v67 = __chkstk_darwin(v65);
  v308 = &v305 - v68;
  v69 = __chkstk_darwin(v67);
  v342 = &v305 - v70;
  __chkstk_darwin(v69);
  v318 = &v305 - v71;
  v314 = sub_1001A551C(&qword_100375988, &qword_1002EFA98);
  v313 = *(v314 - 8);
  v72 = *(v313 + 64);
  v73 = __chkstk_darwin(v314);
  v310 = &v305 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v73);
  v356 = &v305 - v76;
  v77 = __chkstk_darwin(v75);
  v331 = &v305 - v78;
  v79 = __chkstk_darwin(v77);
  v309 = &v305 - v80;
  v81 = __chkstk_darwin(v79);
  v341 = &v305 - v82;
  __chkstk_darwin(v81);
  v362 = &v305 - v83;
  v84 = sub_1001A551C(&qword_100375990, &qword_1002EFAA0);
  v372 = *(v84 - 8);
  v373 = v84;
  v85 = *(v372 + 64);
  __chkstk_darwin(v84);
  v87 = &v305 - v86;
  v364 = sub_1001A551C(&qword_100375998, &qword_1002EFAA8);
  v88 = *(*(v364 - 1) + 64);
  __chkstk_darwin(v364);
  v368 = &v305 - v89;
  v90 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  v91 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90 - 8);
  v326 = &v305 - v92;
  v325 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  v324 = *(v325 - 8);
  v93 = *(v324 + 64);
  __chkstk_darwin(v325);
  v95 = &v305 - v94;
  v337 = sub_1001A551C(&qword_1003759A0, &qword_1002EFAC0);
  v96 = *(*(v337 - 8) + 64);
  __chkstk_darwin(v337);
  v323 = &v305 - v97;
  v338 = sub_1001A551C(&qword_1003759A8, &qword_1002EFAC8);
  v327 = *(v338 - 8);
  v98 = *(v327 + 64);
  __chkstk_darwin(v338);
  v322 = &v305 - v99;
  v100 = sub_1001A551C(&qword_1003759B0, &qword_1002EFAD0);
  v101 = *(*(v100 - 8) + 64);
  v102 = __chkstk_darwin(v100 - 8);
  v349 = &v305 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v102);
  v363 = &v305 - v104;
  v105 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  v106 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105 - 8);
  v108 = &v305 - v107;
  v109 = type metadata accessor for FTMBandInfoDataModel(0);
  v110 = *(v109 - 8);
  v111 = *(v110 + 64);
  v112 = __chkstk_darwin(v109);
  v369 = &v305 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __chkstk_darwin(v112);
  v379 = &v305 - v115;
  v116 = __chkstk_darwin(v114);
  v370 = &v305 - v117;
  v118 = __chkstk_darwin(v116);
  v380 = &v305 - v119;
  v120 = __chkstk_darwin(v118);
  v371 = &v305 - v121;
  v122 = __chkstk_darwin(v120);
  v381 = (&v305 - v123);
  v124 = __chkstk_darwin(v122);
  v358 = &v305 - v125;
  v126 = __chkstk_darwin(v124);
  v128 = &v305 - v127;
  __chkstk_darwin(v126);
  v130 = (&v305 - v129);
  if (qword_100375018 != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    v377 = qword_100382500;
    v131 = *(v1 + *(type metadata accessor for FTMBandDataView() + 20));
    v344 = sub_10020C300(v131);
    sub_1001BB448(v1, v108);
    v378 = v110;
    if ((*(v110 + 48))(v108, 1, v109) == 1)
    {
      sub_1001AC99C(v108, &qword_100375890, &unk_1002EF9D0);
      v132 = 1;
      v133 = v353;
LABEL_176:
      v304 = sub_1001A551C(&qword_1003759B8, &qword_1002EFAD8);
      return (*(*(v304 - 8) + 56))(v133, v132, 1, v304);
    }

    sub_1001BB4B8(v108, v130);
    v134 = *(v130 + 9);
    v365 = v130;
    v366 = v87;
    if (v134 <= 1)
    {
      v135 = 0xE100000000000000;
      v136 = v134 ? 83 : 80;
    }

    else if (v134 == 2)
    {
      v135 = 0xE200000000000000;
      v136 = 21328;
    }

    else
    {
      if (v134 != 3)
      {
        goto LABEL_16;
      }

      v135 = 0xE200000000000000;
      v136 = 21331;
    }

    v137 = sub_10023F91C(v136, v135);
    v139 = v138;

    v130 = v365;
    v87 = v366;
    if (!v139)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (v137 == 80 && v139 == 0xE100000000000000)
    {

      goto LABEL_18;
    }

LABEL_17:
    _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_18:
    v140 = *(v130 + 5);
    if (v140)
    {
      v306 = *(v130 + 4);
      v386 = v306;
      v387 = v140;
      v384 = 1684955458;
      v385 = 0xE400000000000000;
      v382 = 0;
      v383 = 0xE000000000000000;
      sub_1001A56A0();

      v386 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v387 = v141;
      Label<>.init<A>(_:systemImage:)();
      sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790);
      sub_1001BB658();
      v142 = v323;
      v143 = v325;
      View.labelStyle<A>(_:)();
      (*(v324 + 8))(v95, v143);
      static Font.Weight.regular.getter();
      v144 = enum case for Font.Design.default(_:);
      v145 = type metadata accessor for Font.Design();
      v146 = *(v145 - 8);
      v147 = v326;
      (*(v146 + 104))(v326, v144, v145);
      (*(v146 + 56))(v147, 0, 1, v145);
      v148 = static Font.system(size:weight:design:)();
      sub_1001AC99C(v147, &qword_1003753E8, &unk_1002EFAB0);
      KeyPath = swift_getKeyPath();
      v150 = v337;
      v151 = (v142 + *(v337 + 36));
      *v151 = KeyPath;
      v151[1] = v148;
      v152 = swift_allocObject();
      *(v152 + 16) = v306;
      *(v152 + 24) = v140;
      v153 = sub_1001BB51C();
      v154 = v322;
      View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();
      v130 = v365;

      sub_1001AC99C(v142, &qword_1003759A0, &qword_1002EFAC0);
      v155 = v327;
      v156 = v338;
      (*(v327 + 16))(v368, v154, v338);
      swift_storeEnumTagMultiPayload();
      v386 = v150;
      v387 = v153;
      swift_getOpaqueTypeConformance2();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v95 = v373;
      _ConditionalContent<>.init(storage:)();
      result = (*(v155 + 8))(v154, v156);
    }

    else
    {

      sub_1001BAE28(0, 0xE000000000000000, v87);
      v160 = v372;
      v95 = v373;
      (*(v372 + 16))(v368, v87, v373);
      swift_storeEnumTagMultiPayload();
      v161 = sub_1001BB51C();
      v386 = v337;
      v387 = v161;
      swift_getOpaqueTypeConformance2();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      result = (*(v160 + 8))(v87, v95);
    }

    v162 = v348;
    v108 = v378;
    if ((v130[7] & 1) == 0)
    {
      break;
    }

    v163 = v366;
    sub_1001BAE28(0, 0xE000000000000000, v366);
    v164 = v372;
    v368 = *(v372 + 16);
    (v368)(v355, v163, v95);
    swift_storeEnumTagMultiPayload();
    sub_1001BB6AC();
    v386 = &type metadata for Text;
    v387 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    v364 = *(v164 + 8);
    v364(v163, v95);
LABEL_30:
    if (v344 & 0x100) != 0 || (v344)
    {
      if (v130[19])
      {
        sub_1001BAE28(0, 0xE000000000000000, v163);
      }

      else
      {
        v386 = *(v130 + 18);
        v177 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v177, v178, v163);
      }

      (v368)(v375, v163, v95);
      swift_storeEnumTagMultiPayload();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v364(v163, v95);
      if ((v344 & 0x100) != 0)
      {
        if (v130[21])
        {
          sub_1001BAE28(0, 0xE000000000000000, v163);
        }

        else
        {
          v386 = *(v130 + 20);
          v197 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v197, v198, v163);
        }

        (v368)(v375, v163, v95);
        swift_storeEnumTagMultiPayload();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        v364(v163, v95);
        v199 = v347;
        sub_1001B603C(v162, v347, &qword_100375980, &qword_1002EFA90);
        v180 = v199;
        v179 = 0;
      }

      else
      {
        v179 = 1;
        v180 = v347;
      }

      (*(v367 + 56))(v180, v179, 1, v376);
      if (v130[31])
      {
        sub_1001BAE28(0, 0xE000000000000000, v163);
      }

      else
      {
        v386 = *(v130 + 30);
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v200, v201, v163);
      }

      (v368)(v375, v163, v95);
      swift_storeEnumTagMultiPayload();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v364(v163, v95);
      if (v130[33])
      {
        sub_1001BAE28(0, 0xE000000000000000, v163);
      }

      else
      {
        v386 = *(v130 + 32);
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v202, v203, v163);
      }

      (v368)(v375, v163, v95);
      swift_storeEnumTagMultiPayload();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v204 = v336;
      _ConditionalContent<>.init(storage:)();
      v130 = v377;
      v364(v163, v95);
      v205 = v343;
      sub_1001AC934(v345, v343, &qword_100375980, &qword_1002EFA90);
      v206 = v357;
      sub_1001AC934(v347, v357, &qword_100375948, &qword_1002EFA58);
      v207 = v315;
      sub_1001AC934(v346, v315, &qword_100375980, &qword_1002EFA90);
      v208 = v316;
      sub_1001AC934(v204, v316, &qword_100375980, &qword_1002EFA90);
      v209 = v317;
      sub_1001AC934(v205, v317, &qword_100375980, &qword_1002EFA90);
      v210 = sub_1001A551C(&qword_100375A08, &qword_1002EFB00);
      sub_1001AC934(v206, v209 + v210[12], &qword_100375948, &qword_1002EFA58);
      sub_1001AC934(v207, v209 + v210[16], &qword_100375980, &qword_1002EFA90);
      sub_1001AC934(v208, v209 + v210[20], &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v208, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v207, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v206, &qword_100375948, &qword_1002EFA58);
      sub_1001AC99C(v205, &qword_100375980, &qword_1002EFA90);
      v109 = &qword_100375940;
      v110 = v334;
      sub_1001AC934(v209, v334, &qword_100375940, &qword_1002EFA50);
      swift_storeEnumTagMultiPayload();
      v87 = &protocol conformance descriptor for TupleView<A>;
      sub_1001AD0C8(&qword_1003759F0, &qword_100375958, &qword_1002EFA68);
      sub_1001AD0C8(&qword_1003759F8, &qword_100375940, &qword_1002EFA50);
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v209, &qword_100375940, &qword_1002EFA50);
      sub_1001AC99C(v336, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v346, &qword_100375980, &qword_1002EFA90);
      sub_1001AC99C(v347, &qword_100375948, &qword_1002EFA58);
      v211 = &v377;
    }

    else
    {
      if (v130[17])
      {
        sub_1001BAE28(0, 0xE000000000000000, v163);
      }

      else
      {
        v386 = *(v130 + 16);
        v181 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_1001BAE28(v181, v182, v163);
      }

      (v368)(v375, v163, v95);
      swift_storeEnumTagMultiPayload();
      v386 = &type metadata for Text;
      v387 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      v110 = v364;
      result = (v364)(v163, v95);
      v185 = *(v130 + 184);
      v348 = (v164 + 8);
      if (v185)
      {
        sub_1001BAE28(0, 0xE000000000000000, v163);
        (v368)(v355, v163, v95);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        (v110)(v163, v95);
        v130 = v377;
        v87 = *(v131 + 16);
        if (v87)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v191 = v130[22];
        *v183.i64 = v191;
        *v184.i64 = *v183.i64 - trunc(*v183.i64);
        v192.f64[0] = NAN;
        v192.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v192), v184, v183).i64 == 0.0)
        {
          v193 = v364;
          if ((~*&v191 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_193;
          }

          v130 = v377;
          if (v191 <= -9.22337204e18)
          {
            goto LABEL_194;
          }

          if (v191 >= 9.22337204e18)
          {
            goto LABEL_195;
          }

          v386 = v191;
          v194 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v194, v195, v163);

          (v368)(v375, v163, v95);
          swift_storeEnumTagMultiPayload();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v196 = v308;
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v212 = swift_allocObject();
          *(v212 + 16) = xmmword_1002EED40;
          *(v212 + 56) = &type metadata for Double;
          *(v212 + 64) = &protocol witness table for Double;
          *(v212 + 32) = v191;
          v213 = String.init(format:_:)();
          sub_1001BAE28(v213, v214, v163);

          (v368)(v375, v163, v95);
          swift_storeEnumTagMultiPayload();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v196 = v308;
          _ConditionalContent<>.init(storage:)();
          v130 = v377;
          v193 = v364;
        }

        v193(v163, v95);
        v110 = v355;
        sub_1001AC934(v196, v355, &qword_100375980, &qword_1002EFA90);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v196, &qword_100375980, &qword_1002EFA90);
        v108 = v378;
        v87 = *(v131 + 16);
        if (v87)
        {
LABEL_44:
          v109 = 0;
          v1 = _swiftEmptyArrayStorage;
          while (v109 < *(v131 + 16))
          {
            v186 = (v108[80] + 32) & ~v108[80];
            v110 = *(v108 + 9);
            sub_1001BB760(v131 + v186 + v110 * v109, v128);
            v187 = *v128;
            if (*(v128 + 8))
            {
              v187 = 0;
            }

            if (v187 < 0xFFFFFFFF80000000)
            {
              goto LABEL_187;
            }

            if (v187 > 0x7FFFFFFF)
            {
              goto LABEL_188;
            }

            if (v130[20] & 1) != 0 || *(v130 + 39) != v187 || (*(v128 + 200))
            {
              sub_1001BB7C4(v128);
            }

            else
            {
              sub_1001BB4B8(v128, v358);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v386 = v1;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001F5438(0, v1[2] + 1, 1);
                v1 = v386;
              }

              v190 = v1[2];
              v189 = v1[3];
              if (v190 >= v189 >> 1)
              {
                sub_1001F5438(v189 > 1, v190 + 1, 1);
                v1 = v386;
              }

              v1[2] = v190 + 1;
              sub_1001BB4B8(v358, v1 + v186 + v190 * v110);
              v95 = v373;
              v108 = v378;
            }

            if (v87 == ++v109)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_186;
        }
      }

      v1 = _swiftEmptyArrayStorage;
LABEL_77:
      v215 = v1[2];

      if (v215)
      {
        v218 = v365;
        v219 = v366;
        v220 = v328;
        if (v365[25])
        {
          sub_1001BAE28(0, 0xE000000000000000, v366);
          (v368)(v355, v219, v95);
          swift_storeEnumTagMultiPayload();
          sub_1001BB6AC();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v221 = v309;
          _ConditionalContent<>.init(storage:)();
          v364(v219, v95);
        }

        else
        {
          v224 = v365[24];
          *v216.i64 = v224;
          *v217.i64 = *v216.i64 - trunc(*v216.i64);
          v225.f64[0] = NAN;
          v225.f64[1] = NAN;
          if (*vbslq_s8(vnegq_f64(v225), v217, v216).i64 == 0.0)
          {
            v226 = v307;
            if ((~*&v224 & 0x7FF0000000000000) == 0)
            {
              goto LABEL_199;
            }

            if (v224 <= -9.22337204e18)
            {
              goto LABEL_200;
            }

            if (v224 >= 9.22337204e18)
            {
              goto LABEL_201;
            }

            v386 = v224;
            v227 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1001BAE28(v227, v228, v219);

            (v368)(v375, v219, v95);
            swift_storeEnumTagMultiPayload();
            v386 = &type metadata for Text;
            v387 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
          }

          else
          {
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v229 = swift_allocObject();
            *(v229 + 16) = xmmword_1002EED40;
            *(v229 + 56) = &type metadata for Double;
            *(v229 + 64) = &protocol witness table for Double;
            *(v229 + 32) = v224;
            v230 = String.init(format:_:)();
            sub_1001BAE28(v230, v231, v219);

            (v368)(v375, v219, v95);
            swift_storeEnumTagMultiPayload();
            v386 = &type metadata for Text;
            v387 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
            v226 = v307;
          }

          _ConditionalContent<>.init(storage:)();
          v364(v219, v95);
          sub_1001AC934(v226, v355, &qword_100375980, &qword_1002EFA90);
          swift_storeEnumTagMultiPayload();
          sub_1001BB6AC();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v221 = v309;
          _ConditionalContent<>.init(storage:)();
          sub_1001AC99C(v226, &qword_100375980, &qword_1002EFA90);
          v220 = v328;
        }

        v223 = v340;
        sub_1001B603C(v221, v340, &qword_100375988, &qword_1002EFA98);
        v222 = 0;
      }

      else
      {
        v222 = 1;
        v218 = v365;
        v219 = v366;
        v223 = v340;
        v220 = v328;
      }

      result = (*(v313 + 56))(v223, v222, 1, v314);
      if (*(v218 + 232))
      {
        sub_1001BAE28(0, 0xE000000000000000, v219);
        (v368)(v355, v219, v95);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v234 = v331;
        _ConditionalContent<>.init(storage:)();
        v364(v219, v95);
        v130 = v377;
        v235 = v234;
      }

      else
      {
        v236 = *(v218 + 224);
        *v232.i64 = v236;
        *v233.i64 = *v232.i64 - trunc(*v232.i64);
        v237.f64[0] = NAN;
        v237.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v237), v233, v232).i64 == 0.0)
        {
          if ((~*&v236 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_196;
          }

          v130 = v377;
          if (v236 <= -9.22337204e18)
          {
            goto LABEL_197;
          }

          if (v236 >= 9.22337204e18)
          {
            goto LABEL_198;
          }

          v386 = v236;
          v238 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v238, v239, v219);

          (v368)(v375, v219, v95);
          swift_storeEnumTagMultiPayload();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v240 = swift_allocObject();
          *(v240 + 16) = xmmword_1002EED40;
          *(v240 + 56) = &type metadata for Double;
          *(v240 + 64) = &protocol witness table for Double;
          *(v240 + 32) = v236;
          v241 = String.init(format:_:)();
          sub_1001BAE28(v241, v242, v219);

          (v368)(v375, v219, v95);
          swift_storeEnumTagMultiPayload();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          _ConditionalContent<>.init(storage:)();
          v130 = v377;
        }

        v364(v219, v95);
        sub_1001AC934(v220, v355, &qword_100375980, &qword_1002EFA90);
        swift_storeEnumTagMultiPayload();
        sub_1001BB6AC();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v243 = v331;
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v220, &qword_100375980, &qword_1002EFA90);
        v235 = v243;
      }

      v244 = v343;
      sub_1001AC934(v342, v343, &qword_100375980, &qword_1002EFA90);
      v245 = v356;
      sub_1001AC934(v341, v356, &qword_100375988, &qword_1002EFA98);
      v246 = v311;
      sub_1001AC934(v340, v311, &qword_100375960, &qword_1002EFA70);
      v247 = v310;
      sub_1001AC934(v235, v310, &qword_100375988, &qword_1002EFA98);
      v248 = v312;
      sub_1001AC934(v244, v312, &qword_100375980, &qword_1002EFA90);
      v249 = sub_1001A551C(&qword_1003759E8, &qword_1002EFAE8);
      sub_1001AC934(v245, v248 + v249[12], &qword_100375988, &qword_1002EFA98);
      sub_1001AC934(v246, v248 + v249[16], &qword_100375960, &qword_1002EFA70);
      sub_1001AC934(v247, v248 + v249[20], &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v247, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v246, &qword_100375960, &qword_1002EFA70);
      sub_1001AC99C(v245, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v343, &qword_100375980, &qword_1002EFA90);
      v87 = &qword_1002EFA68;
      v110 = v334;
      sub_1001AC934(v248, v334, &qword_100375958, &qword_1002EFA68);
      swift_storeEnumTagMultiPayload();
      v109 = &protocol conformance descriptor for TupleView<A>;
      sub_1001AD0C8(&qword_1003759F0, &qword_100375958, &qword_1002EFA68);
      sub_1001AD0C8(&qword_1003759F8, &qword_100375940, &qword_1002EFA50);
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v248, &qword_100375958, &qword_1002EFA68);
      sub_1001AC99C(v331, &qword_100375988, &qword_1002EFA98);
      sub_1001AC99C(v340, &qword_100375960, &qword_1002EFA70);
      sub_1001AC99C(v341, &qword_100375988, &qword_1002EFA98);
      v211 = &v374;
    }

    sub_1001AC99C(*(v211 - 32), &qword_100375980, &qword_1002EFA90);
    v128 = *(v131 + 16);
    v108 = v378;
    if (v128)
    {
      v87 = 0;
      v1 = _swiftEmptyArrayStorage;
      v95 = 0x7FFFFFFFLL;
      while (v87 < *(v131 + 16))
      {
        v250 = (v108[80] + 32) & ~v108[80];
        v109 = *(v108 + 9);
        v110 = v381;
        sub_1001BB760(v131 + v250 + v109 * v87, v381);
        v251 = *v110;
        if (*(v110 + 8))
        {
          v251 = 0;
        }

        if (v251 < 0xFFFFFFFF80000000)
        {
          goto LABEL_178;
        }

        if (v251 > 0x7FFFFFFF)
        {
          goto LABEL_179;
        }

        if (v130[20] & 1) != 0 || *(v130 + 39) != v251 || (*(v110 + 88))
        {
          sub_1001BB7C4(v110);
        }

        else
        {
          sub_1001BB4B8(v110, v371);
          v252 = swift_isUniquelyReferenced_nonNull_native();
          v386 = v1;
          if ((v252 & 1) == 0)
          {
            sub_1001F5438(0, v1[2] + 1, 1);
            v1 = v386;
          }

          v254 = v1[2];
          v253 = v1[3];
          if (v254 >= v253 >> 1)
          {
            sub_1001F5438(v253 > 1, v254 + 1, 1);
            v1 = v386;
          }

          v1[2] = v254 + 1;
          sub_1001BB4B8(v371, v1 + v250 + v254 * v109);
          v130 = v377;
          v108 = v378;
        }

        if (v128 == ++v87)
        {
          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
    }

    else
    {
      v1 = _swiftEmptyArrayStorage;
LABEL_117:
      v255 = v1[2];

      v256 = v373;
      if (v255)
      {
        v257 = v366;
        if (v365[11])
        {
          sub_1001BAE28(0, 0xE000000000000000, v366);
        }

        else
        {
          v386 = *(v365 + 10);
          v259 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_1001BAE28(v259, v260, v257);
        }

        (v368)(v375, v257, v256);
        swift_storeEnumTagMultiPayload();
        v386 = &type metadata for Text;
        v387 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v261 = v321;
        _ConditionalContent<>.init(storage:)();
        v110 = v360;
        v364(v257, v256);
        sub_1001B603C(v261, v110, &qword_100375980, &qword_1002EFA90);
        v258 = 0;
      }

      else
      {
        v258 = 1;
        v110 = v360;
      }

      v262 = *(v367 + 56);
      v367 += 56;
      v381 = v262;
      v262(v110, v258, 1, v376);
      v128 = *(v131 + 16);
      v108 = v378;
      if (!v128)
      {
        v1 = _swiftEmptyArrayStorage;
LABEL_141:
        v270 = v1[2];

        v271 = v373;
        v272 = v366;
        if (v270)
        {
          if (v365[13])
          {
            sub_1001BAE28(0, 0xE000000000000000, v366);
          }

          else
          {
            v386 = *(v365 + 12);
            v275 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1001BAE28(v275, v276, v272);
          }

          (v368)(v375, v272, v271);
          swift_storeEnumTagMultiPayload();
          v386 = &type metadata for Text;
          v387 = &protocol witness table for Text;
          swift_getOpaqueTypeConformance2();
          v277 = v320;
          _ConditionalContent<>.init(storage:)();
          v274 = v359;
          v364(v272, v271);
          sub_1001B603C(v277, v274, &qword_100375980, &qword_1002EFA90);
          v273 = 0;
        }

        else
        {
          v273 = 1;
          v274 = v359;
        }

        v381(v274, v273, 1, v376);
        v110 = *(v131 + 16);
        v108 = v378;
        if (!v110)
        {
          v1 = _swiftEmptyArrayStorage;
LABEL_165:
          v285 = v1[2];

          v287 = v372;
          v286 = v373;
          v288 = v366;
          if (v285)
          {
            v289 = v351;
            if (v365[15])
            {
              sub_1001BAE28(0, 0xE000000000000000, v366);
            }

            else
            {
              v386 = *(v365 + 14);
              v291 = dispatch thunk of CustomStringConvertible.description.getter();
              sub_1001BAE28(v291, v292, v288);
            }

            (v368)(v375, v288, v286);
            swift_storeEnumTagMultiPayload();
            v386 = &type metadata for Text;
            v387 = &protocol witness table for Text;
            swift_getOpaqueTypeConformance2();
            v293 = v319;
            _ConditionalContent<>.init(storage:)();
            v364(v288, v286);
            sub_1001B603C(v293, v289, &qword_100375980, &qword_1002EFA90);
            v290 = 0;
          }

          else
          {
            v290 = 1;
            v289 = v351;
          }

          v294 = 1;
          v381(v289, v290, 1, v376);
          if ((*(v130 + 4) != 1684099177 || *(v130 + 5) != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_1001BAE28(0, 0xE000000000000000, v339);
            v294 = 0;
          }

          v295 = v339;
          (*(v287 + 56))(v339, v294, 1, v286);
          v296 = v349;
          sub_1001AC934(v363, v349, &qword_1003759B0, &qword_1002EFAD0);
          v297 = v356;
          sub_1001AC934(v362, v356, &qword_100375988, &qword_1002EFA98);
          v298 = v350;
          sub_1001AC934(v361, v350, &qword_100375968, &qword_1002EFA78);
          sub_1001AC934(v360, v357, &qword_100375948, &qword_1002EFA58);
          v299 = v352;
          sub_1001AC934(v359, v352, &qword_100375948, &qword_1002EFA58);
          v300 = v329;
          sub_1001AC934(v289, v329, &qword_100375948, &qword_1002EFA58);
          v301 = v330;
          sub_1001AC934(v295, v330, &qword_100375938, &qword_1002EFA48);
          v133 = v353;
          sub_1001AC934(v296, v353, &qword_1003759B0, &qword_1002EFAD0);
          v302 = sub_1001A551C(&qword_100375A00, &unk_1002EFAF0);
          sub_1001AC934(v297, v133 + v302[12], &qword_100375988, &qword_1002EFA98);
          sub_1001AC934(v298, v133 + v302[16], &qword_100375968, &qword_1002EFA78);
          v303 = v357;
          sub_1001AC934(v357, v133 + v302[20], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v299, v133 + v302[24], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v300, v133 + v302[28], &qword_100375948, &qword_1002EFA58);
          sub_1001AC934(v301, v133 + v302[32], &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v295, &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v351, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v359, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v360, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v361, &qword_100375968, &qword_1002EFA78);
          sub_1001AC99C(v362, &qword_100375988, &qword_1002EFA98);
          sub_1001AC99C(v363, &qword_1003759B0, &qword_1002EFAD0);
          sub_1001BB7C4(v365);
          sub_1001AC99C(v301, &qword_100375938, &qword_1002EFA48);
          sub_1001AC99C(v300, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v352, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v303, &qword_100375948, &qword_1002EFA58);
          sub_1001AC99C(v350, &qword_100375968, &qword_1002EFA78);
          sub_1001AC99C(v356, &qword_100375988, &qword_1002EFA98);
          sub_1001AC99C(v349, &qword_1003759B0, &qword_1002EFAD0);
          v132 = 0;
          goto LABEL_176;
        }

        v128 = 0;
        v1 = _swiftEmptyArrayStorage;
        v95 = 0x7FFFFFFFLL;
        while (v128 < *(v131 + 16))
        {
          v278 = (v108[80] + 32) & ~v108[80];
          v109 = *(v108 + 9);
          v87 = v131;
          v279 = v131 + v278 + v109 * v128;
          v280 = v379;
          sub_1001BB760(v279, v379);
          v281 = *v280;
          if (*(v280 + 8))
          {
            v281 = 0;
          }

          if (v281 < 0xFFFFFFFF80000000)
          {
            goto LABEL_184;
          }

          if (v281 > 0x7FFFFFFF)
          {
            goto LABEL_185;
          }

          if (v130[20] & 1) != 0 || *(v130 + 39) != v281 || (*(v280 + 120))
          {
            sub_1001BB7C4(v280);
            v131 = v87;
          }

          else
          {
            sub_1001BB4B8(v280, v369);
            v282 = swift_isUniquelyReferenced_nonNull_native();
            v386 = v1;
            if ((v282 & 1) == 0)
            {
              sub_1001F5438(0, v1[2] + 1, 1);
              v1 = v386;
            }

            v131 = v87;
            v284 = v1[2];
            v283 = v1[3];
            if (v284 >= v283 >> 1)
            {
              sub_1001F5438(v283 > 1, v284 + 1, 1);
              v1 = v386;
            }

            v1[2] = v284 + 1;
            sub_1001BB4B8(v369, v1 + v278 + v284 * v109);
            v130 = v377;
            v108 = v378;
          }

          if (v110 == ++v128)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_183;
      }

      v87 = 0;
      v1 = _swiftEmptyArrayStorage;
      v95 = 0x7FFFFFFFLL;
      while (v87 < *(v131 + 16))
      {
        v109 = (v108[80] + 32) & ~v108[80];
        v263 = *(v108 + 9);
        v110 = v131;
        v264 = v131 + v109 + v263 * v87;
        v265 = v380;
        sub_1001BB760(v264, v380);
        v266 = *v265;
        if (*(v265 + 8))
        {
          v266 = 0;
        }

        if (v266 < 0xFFFFFFFF80000000)
        {
          goto LABEL_181;
        }

        if (v266 > 0x7FFFFFFF)
        {
          goto LABEL_182;
        }

        if (v130[20] & 1) != 0 || *(v130 + 39) != v266 || (*(v265 + 104))
        {
          sub_1001BB7C4(v265);
          v131 = v110;
        }

        else
        {
          sub_1001BB4B8(v265, v370);
          v267 = swift_isUniquelyReferenced_nonNull_native();
          v386 = v1;
          if ((v267 & 1) == 0)
          {
            sub_1001F5438(0, v1[2] + 1, 1);
            v1 = v386;
          }

          v131 = v110;
          v269 = v1[2];
          v268 = v1[3];
          if (v269 >= v268 >> 1)
          {
            sub_1001F5438(v268 > 1, v269 + 1, 1);
            v1 = v386;
          }

          v1[2] = v269 + 1;
          sub_1001BB4B8(v370, v1 + v109 + v269 * v263);
          v130 = v377;
          v108 = v378;
        }

        if (v128 == ++v87)
        {
          goto LABEL_141;
        }
      }
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    swift_once();
  }

  v165 = v130[6];
  *v158.i64 = v165;
  *v159.i64 = *v158.i64 - trunc(*v158.i64);
  v166.f64[0] = NAN;
  v166.f64[1] = NAN;
  v167 = v366;
  if (*vbslq_s8(vnegq_f64(v166), v159, v158).i64 != 0.0)
  {
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_1002EED40;
    *(v172 + 56) = &type metadata for Double;
    *(v172 + 64) = &protocol witness table for Double;
    *(v172 + 32) = v165;
    v173 = String.init(format:_:)();
    sub_1001BAE28(v173, v174, v167);

    v175 = v372;
    v368 = *(v372 + 16);
    (v368)(v375, v167, v95);
    swift_storeEnumTagMultiPayload();
    v386 = &type metadata for Text;
    v387 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v168 = v318;
    v169 = v175;
LABEL_29:
    _ConditionalContent<>.init(storage:)();
    v364 = *(v169 + 8);
    v364(v167, v95);
    sub_1001AC934(v168, v355, &qword_100375980, &qword_1002EFA90);
    swift_storeEnumTagMultiPayload();
    sub_1001BB6AC();
    v386 = &type metadata for Text;
    v387 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v163 = v366;
    v176 = v372;
    _ConditionalContent<>.init(storage:)();
    v164 = v176;
    sub_1001AC99C(v168, &qword_100375980, &qword_1002EFA90);
    v130 = v365;
    v108 = v378;
    v162 = v348;
    goto LABEL_30;
  }

  v168 = v318;
  if ((~*&v165 & 0x7FF0000000000000) != 0)
  {
    v169 = v372;
    if (v165 <= -9.22337204e18)
    {
      goto LABEL_191;
    }

    if (v165 >= 9.22337204e18)
    {
      goto LABEL_192;
    }

    v386 = v165;
    v170 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1001BAE28(v170, v171, v167);

    v368 = *(v169 + 16);
    (v368)(v375, v167, v95);
    swift_storeEnumTagMultiPayload();
    v386 = &type metadata for Text;
    v387 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    goto LABEL_29;
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return result;
}

void sub_1001BAD0C(uint64_t a1, uint64_t a2)
{
  if (qword_100375020 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a1 = v8;
    a2 = v9;
  }

  v2 = qword_100382508;
  v10 = a1;
  v11 = a2;
  v3 = sub_1001A56A0();
  v4 = v2;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  sub_10021AA10(v5, v6);

  v7 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:{1, &type metadata for String, v3, v3, v3, 0, 0xE000000000000000, 1684955458, 0xE400000000000000, v10, v11}];
  [v7 impactOccurred];
}

uint64_t sub_1001BAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v5 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v28 = a1;
  v29 = a2;
  sub_1001A56A0();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.Weight.regular.getter();
  v14 = enum case for Font.Design.default(_:);
  v15 = type metadata accessor for Font.Design();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  static Font.system(size:weight:design:)();
  sub_1001AC99C(v8, &qword_1003753E8, &unk_1002EFAB0);
  v17 = Text.font(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  v22 = v21;

  sub_1001ACFEC(v9, v11, v13 & 1);

  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  *(v23 + 24) = a2;
  v28 = v17;
  v29 = v19;
  LOBYTE(v16) = v16 & 1;
  v30 = v16;
  v31 = v22;

  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001ACFEC(v17, v19, v16);
}

void sub_1001BB098(uint64_t a1, uint64_t a2)
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v4 = qword_100382508;
  sub_10021AA10(a1, a2);

  v5 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v5 impactOccurred];
}

uint64_t sub_1001BB160@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Icon();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = __chkstk_darwin(v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for LabelStyleConfiguration.Title();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(sub_1001A551C(&qword_100375A30, &qword_1002EFBA0) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

uint64_t sub_1001BB3F0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v2 = sub_1001A551C(&qword_100375A28, &qword_1002EFB98);
  return sub_1001BB160((a1 + *(v2 + 44)));
}

uint64_t sub_1001BB448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375890, &unk_1002EF9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BB4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BB51C()
{
  result = qword_1003759C0;
  if (!qword_1003759C0)
  {
    sub_1001A55C8(&qword_1003759A0, &qword_1002EFAC0);
    sub_1001A55C8(&qword_1003752F8, &qword_1002EF790);
    sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790);
    sub_1001BB658();
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_1003759D0, &qword_1003759D8, &qword_1002EFAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759C0);
  }

  return result;
}

unint64_t sub_1001BB658()
{
  result = qword_1003759C8;
  if (!qword_1003759C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759C8);
  }

  return result;
}

unint64_t sub_1001BB6AC()
{
  result = qword_1003759E0;
  if (!qword_1003759E0)
  {
    sub_1001A55C8(&qword_100375980, &qword_1002EFA90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003759E0);
  }

  return result;
}

uint64_t sub_1001BB760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BB7C4(uint64_t a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BB828()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001BB884()
{
  result = qword_100375A10;
  if (!qword_100375A10)
  {
    sub_1001A55C8(&qword_100375A18, &qword_1002EFB58);
    sub_1001AD0C8(&qword_100375A20, &qword_1003759B8, &qword_1002EFAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375A10);
  }

  return result;
}

uint64_t sub_1001BB9C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v374 = a2;
  v3 = type metadata accessor for FTMBandInfoDataModel(0);
  v386 = *(v3 - 8);
  v4 = *(v386 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v398 = &v365 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v393 = &v365 - v8;
  v9 = __chkstk_darwin(v7);
  v399 = &v365 - v10;
  v11 = __chkstk_darwin(v9);
  v395 = &v365 - v12;
  v13 = __chkstk_darwin(v11);
  v400 = &v365 - v14;
  v15 = __chkstk_darwin(v13);
  v396 = &v365 - v16;
  v17 = __chkstk_darwin(v15);
  v389 = &v365 - v18;
  __chkstk_darwin(v17);
  v20 = &v365 - v19;
  v21 = sub_1001A551C(&qword_1003753E8, &unk_1002EFAB0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v365 - v23;
  if (qword_100375018 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v407 = qword_100382500;
    v387 = a1;
    LODWORD(v388) = sub_10020C300(a1);
    *&v448 = 1684955458;
    *(&v448 + 1) = 0xE400000000000000;
    v406 = sub_1001A56A0();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    static Color.blue.getter();
    v390 = Text.foregroundColor(_:)();
    v385 = v30;
    v32 = v31;
    v383 = v33;

    sub_1001ACFEC(v25, v27, v29 & 1);

    static Font.Weight.semibold.getter();
    v34 = enum case for Font.Design.default(_:);
    LODWORD(v405) = enum case for Font.Design.default(_:);
    v35 = type metadata accessor for Font.Design();
    v36 = *(v35 - 8);
    v37 = *(v36 + 104);
    v402 = v36 + 104;
    v404 = v37;
    v37(v24, v34, v35);
    v403 = *(v36 + 56);
    v403(v24, 0, 1, v35);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v24, &qword_1003753E8, &unk_1002EFAB0);
    v38 = v390;
    v39 = v385;
    v384 = Text.font(_:)();
    v391 = v40;
    v392 = v41;
    v380 = v42;

    sub_1001ACFEC(v38, v39, v32 & 1);

    *&v448 = 22338;
    *(&v448 + 1) = 0xE200000000000000;
    v43 = Text.init<A>(_:)();
    v45 = v44;
    v47 = v46;
    static Color.blue.getter();
    v385 = Text.foregroundColor(_:)();
    v381 = v48;
    LODWORD(v378) = v49;
    v379 = v50;

    sub_1001ACFEC(v43, v45, v47 & 1);

    static Font.Weight.semibold.getter();
    v404(v24, v405, v35);
    v397 = v35;
    v401 = v36 + 56;
    v403(v24, 0, 1, v35);
    static Font.system(size:weight:design:)();
    v394 = v24;
    sub_1001AC99C(v24, &qword_1003753E8, &unk_1002EFAB0);
    LOBYTE(v39) = v378;
    v51 = v385;
    v52 = v381;
    v382 = Text.font(_:)();
    v383 = v53;
    v390 = v54;
    v373 = v55;

    sub_1001ACFEC(v51, v52, v39 & 1);

    if (v388 & 0x100) != 0 || (v388)
    {
      *&v448 = 4407628;
      *(&v448 + 1) = 0xE300000000000000;
      v94 = Text.init<A>(_:)();
      v96 = v95;
      v98 = v97;
      static Color.blue.getter();
      v385 = Text.foregroundColor(_:)();
      v100 = v99;
      v102 = v101;
      v381 = v103;

      sub_1001ACFEC(v94, v96, v98 & 1);

      static Font.Weight.semibold.getter();
      v104 = v394;
      v105 = v397;
      v404(v394, v405, v397);
      v403(v104, 0, 1, v105);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v104, &qword_1003753E8, &unk_1002EFAB0);
      v106 = v385;
      v372 = Text.font(_:)();
      v389 = v107;
      v371 = v108;
      *&v375 = v109;

      sub_1001ACFEC(v106, v100, v102 & 1);

      if ((v388 & 0x100) != 0)
      {
        *&v448 = 5129043;
        *(&v448 + 1) = 0xE300000000000000;
        v110 = Text.init<A>(_:)();
        v112 = v111;
        v114 = v113;
        static Color.blue.getter();
        v385 = Text.foregroundColor(_:)();
        v381 = v115;
        LODWORD(v378) = v116;
        v379 = v117;

        sub_1001ACFEC(v110, v112, v114 & 1);

        static Font.Weight.semibold.getter();
        v404(v104, v405, v105);
        v403(v104, 0, 1, v105);
        static Font.system(size:weight:design:)();
        sub_1001AC99C(v104, &qword_1003753E8, &unk_1002EFAB0);
        v118 = v378;
        v119 = v385;
        v120 = v381;
        v121 = Text.font(_:)();
        v123 = v122;
        LODWORD(v377) = v124;
        v126 = v125;

        sub_1001ACFEC(v119, v120, v118 & 1);

        v381 = v121;
        v379 = v123;
        v385 = v377 & 1;
        sub_1001A5174(v121, v123, v385);
        v378 = v126;
      }

      else
      {
        v381 = 0;
        v378 = 0;
        v379 = 0;
        v385 = 0;
      }

      *&v448 = 1346589522;
      *(&v448 + 1) = 0xE400000000000000;
      v127 = Text.init<A>(_:)();
      v129 = v128;
      v131 = v130;
      static Color.blue.getter();
      v132 = Text.foregroundColor(_:)();
      v370 = v133;
      v135 = v134;

      sub_1001ACFEC(v127, v129, v131 & 1);

      static Font.Weight.semibold.getter();
      v136 = v397;
      v404(v104, v405, v397);
      v403(v104, 0, 1, v136);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v104, &qword_1003753E8, &unk_1002EFAB0);
      v137 = v370;
      v138 = Text.font(_:)();
      v376 = v139;
      v377 = v138;
      *(&v375 + 1) = v140;
      LODWORD(v366) = v141;

      sub_1001ACFEC(v132, v137, v135 & 1);

      *&v448 = 810435397;
      *(&v448 + 1) = 0xE400000000000000;
      v142 = Text.init<A>(_:)();
      v144 = v143;
      LOBYTE(v137) = v145;
      static Color.blue.getter();
      v369 = Text.foregroundColor(_:)();
      v147 = v146;
      LOBYTE(v129) = v148;

      sub_1001ACFEC(v142, v144, v137 & 1);

      static Font.Weight.semibold.getter();
      v149 = v397;
      v404(v104, v405, v397);
      v403(v104, 0, 1, v149);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v104, &qword_1003753E8, &unk_1002EFAB0);
      v150 = v369;
      v151 = Text.font(_:)();
      v153 = v152;
      LOBYTE(v149) = v154;
      v156 = v155;
      v370 = v155;

      sub_1001ACFEC(v150, v147, v129 & 1);

      LODWORD(v147) = v371 & 1;
      v430 = v147;
      v371 = v366 & 1;
      v429 = v366 & 1;
      v428 = v147;
      v427 = v366 & 1;
      v157 = v149 & 1;
      v426 = v149 & 1;
      *&v431 = v372;
      *(&v431 + 1) = v389;
      LOBYTE(v432) = v147;
      v158 = *(&v375 + 1);
      *(&v432 + 1) = v375;
      *&v433 = v381;
      *(&v433 + 1) = v379;
      *&v434 = v385;
      v159 = v377;
      *(&v434 + 1) = v378;
      *&v435 = v377;
      *(&v435 + 1) = *(&v375 + 1);
      LOBYTE(v436) = v366 & 1;
      *(&v436 + 1) = v376;
      *&v437 = v151;
      *(&v437 + 1) = v153;
      LOBYTE(v438) = v426;
      *(&v438 + 1) = v156;
      v410 = v433;
      v411 = v434;
      v408 = v431;
      v409 = v432;
      v414 = v437;
      v415 = v438;
      v412 = v435;
      v413 = v436;
      v160 = v372;
      LODWORD(v369) = v147;
      sub_1001A5174(v372, v389, v147);

      v161 = v158;
      LOBYTE(v158) = v371;
      sub_1001A5174(v159, v161, v371);

      v367 = v153;
      v368 = v151;
      sub_1001A5174(v151, v153, v157);

      sub_1001A5174(v160, v389, v147);

      v162 = v381;
      v163 = v379;
      sub_1001BE028(v381, v379, v385, v378);
      v164 = v377;
      v165 = *(&v375 + 1);
      sub_1001A5174(v377, *(&v375 + 1), v158);

      LODWORD(v366) = v157;
      sub_1001A5174(v151, v153, v157);

      sub_1001ACFEC(v151, v153, v157);

      sub_1001ACFEC(v164, v165, v429);

      v166 = v378;
      sub_1001BE06C(v162, v163, v385, v378);
      v167 = v372;
      sub_1001ACFEC(v372, v389, v430);

      v443 = v412;
      v444 = v413;
      v445 = v414;
      v446 = v415;
      v439 = v408;
      v440 = v409;
      v441 = v410;
      v442 = v411;
      sub_1001BE0B8(&v439);
      v454 = v445;
      v455 = v446;
      v456 = v447;
      v450 = v441;
      v451 = v442;
      v452 = v443;
      v453 = v444;
      v448 = v439;
      v449 = v440;
      sub_1001AC934(&v431, &v417, &qword_100375A78, &qword_1002EFC60);
      sub_1001A551C(&qword_100375A50, &qword_1002EFC48);
      sub_1001A551C(&qword_100375A58, &qword_1002EFC50);
      sub_1001BE0F4(&qword_100375A60, &qword_100375A50, &qword_1002EFC48);
      sub_1001BE0F4(&qword_100375A68, &qword_100375A58, &qword_1002EFC50);
      _ConditionalContent<>.init(storage:)();
      sub_1001BE06C(v381, v379, v385, v166);
      sub_1001AC99C(&v431, &qword_100375A78, &qword_1002EFC60);
      sub_1001ACFEC(v368, v367, v366);

      sub_1001ACFEC(v377, *(&v375 + 1), v371);

      sub_1001ACFEC(v167, v389, v369);
    }

    else
    {
      *&v448 = 4801360;
      *(&v448 + 1) = 0xE300000000000000;
      v56 = Text.init<A>(_:)();
      v58 = v57;
      v60 = v59;
      static Color.blue.getter();
      v381 = Text.foregroundColor(_:)();
      v376 = v62;
      v377 = v61;
      v64 = v63;

      sub_1001ACFEC(v56, v58, v60 & 1);

      static Font.Weight.semibold.getter();
      v65 = v394;
      v66 = v397;
      v404(v394, v405, v397);
      v403(v65, 0, 1, v66);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v65, &qword_1003753E8, &unk_1002EFAB0);
      v67 = v381;
      v68 = v377;
      v69 = Text.font(_:)();
      v378 = v70;
      v379 = v69;
      v371 = v71;
      v385 = v72;

      sub_1001ACFEC(v67, v68, v64 & 1);

      *&v448 = 1347572562;
      *(&v448 + 1) = 0xE400000000000000;
      v73 = Text.init<A>(_:)();
      v75 = v74;
      v77 = v76;
      static Color.blue.getter();
      v78 = Text.foregroundColor(_:)();
      *&v375 = v79;
      *(&v375 + 1) = v78;
      v81 = v80;
      v372 = v82;

      sub_1001ACFEC(v73, v75, v77 & 1);

      static Font.Weight.semibold.getter();
      v404(v65, v405, v66);
      v403(v65, 0, 1, v66);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v65, &qword_1003753E8, &unk_1002EFAB0);
      v83 = v375;
      v381 = Text.font(_:)();
      v376 = v84;
      v377 = v85;
      LODWORD(v369) = v86;

      sub_1001ACFEC(*(&v83 + 1), v83, v81 & 1);

      v87 = v387[2];
      if (v87)
      {
        v88 = *(v386 + 72);
        *(&v375 + 1) = (*(v386 + 80) + 32) & ~*(v386 + 80);
        v89 = v387 + *(&v375 + 1);
        a1 = _swiftEmptyArrayStorage;
        v24 = v407;
        while (1)
        {
          sub_1001BB760(v89, v20);
          v90 = *v20;
          if (v20[8])
          {
            v90 = 0;
          }

          if (v90 < 0xFFFFFFFF80000000)
          {
            goto LABEL_101;
          }

          if (v90 > 0x7FFFFFFF)
          {
            goto LABEL_102;
          }

          if (v24[160] & 1) != 0 || *(v24 + 39) != v90 || (v20[200])
          {
            sub_1001BB7C4(v20);
          }

          else
          {
            sub_1001BB4B8(v20, v389);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v448 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001F5438(0, a1[2] + 1, 1);
              a1 = v448;
            }

            v93 = a1[2];
            v92 = a1[3];
            if (v93 >= v92 >> 1)
            {
              sub_1001F5438(v92 > 1, v93 + 1, 1);
              a1 = v448;
            }

            a1[2] = v93 + 1;
            sub_1001BB4B8(v389, a1 + *(&v375 + 1) + v93 * v88);
          }

          v89 += v88;
          if (!--v87)
          {
            goto LABEL_25;
          }
        }
      }

      a1 = _swiftEmptyArrayStorage;
LABEL_25:
      v168 = a1[2];

      if (v168)
      {
        *&v448 = 1364349778;
        *(&v448 + 1) = 0xE400000000000000;
        v169 = Text.init<A>(_:)();
        v171 = v170;
        v173 = v172;
        static Color.blue.getter();
        v174 = Text.foregroundColor(_:)();
        v176 = v175;
        LODWORD(v375) = v177;
        v389 = v178;

        sub_1001ACFEC(v169, v171, v173 & 1);

        static Font.Weight.semibold.getter();
        v179 = v394;
        v180 = v397;
        v404(v394, v405, v397);
        v403(v179, 0, 1, v180);
        static Font.system(size:weight:design:)();
        sub_1001AC99C(v179, &qword_1003753E8, &unk_1002EFAB0);
        v181 = Text.font(_:)();
        v183 = v182;
        DWORD2(v375) = v184;
        v186 = v185;

        v187 = v176;
        v188 = v180;
        sub_1001ACFEC(v174, v187, v375 & 1);

        v372 = v181;
        v389 = v183;
        *&v375 = BYTE8(v375) & 1;
        sub_1001A5174(v181, v183, v375);
        *(&v375 + 1) = v186;
      }

      else
      {
        v372 = 0;
        v389 = 0;
        v375 = 0uLL;
        v179 = v394;
        v188 = v397;
      }

      *&v448 = 5394003;
      *(&v448 + 1) = 0xE300000000000000;
      v189 = Text.init<A>(_:)();
      v191 = v190;
      v193 = v192;
      static Color.blue.getter();
      v194 = Text.foregroundColor(_:)();
      v365 = v195;
      v366 = v194;
      v197 = v196;
      v199 = v198;

      sub_1001ACFEC(v189, v191, v193 & 1);

      static Font.Weight.semibold.getter();
      v404(v179, v405, v188);
      v403(v179, 0, 1, v188);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v179, &qword_1003753E8, &unk_1002EFAB0);
      v200 = v366;
      v201 = v197;
      v202 = Text.font(_:)();
      v204 = v203;
      v370 = v203;
      LOBYTE(v191) = v205;
      v207 = v206;

      sub_1001ACFEC(v200, v201, v199 & 1);

      v208 = v371 & 1;
      v430 = v208;
      v371 = v369 & 1;
      v429 = v369 & 1;
      v428 = v208;
      v427 = v369 & 1;
      LODWORD(v369) = v191 & 1;
      v426 = v191 & 1;
      v209 = v378;
      v210 = v379;
      *&v431 = v379;
      *(&v431 + 1) = v378;
      LOBYTE(v432) = v208;
      *(&v432 + 1) = v385;
      v211 = v381;
      *&v433 = v381;
      v212 = v376;
      *(&v433 + 1) = v376;
      LOBYTE(v434) = v427;
      *(&v434 + 1) = v377;
      *&v435 = v372;
      *(&v435 + 1) = v389;
      v436 = v375;
      v367 = v202;
      v368 = v207;
      *&v437 = v202;
      *(&v437 + 1) = v204;
      LOBYTE(v438) = v426;
      *(&v438 + 1) = v207;
      v410 = v433;
      v411 = v434;
      v408 = v431;
      v409 = v432;
      v414 = v437;
      v415 = v438;
      v412 = v435;
      v413 = v375;
      LOBYTE(v204) = v208;
      LODWORD(v366) = v208;
      sub_1001A5174(v379, v378, v208);

      v213 = v371;
      sub_1001A5174(v211, v212, v371);

      v214 = v370;
      v215 = v369;
      sub_1001A5174(v202, v370, v369);

      sub_1001A5174(v210, v209, v204);

      sub_1001A5174(v381, v212, v213);

      v216 = v372;
      v217 = v389;
      LOBYTE(v210) = v375;
      v218 = *(&v375 + 1);
      sub_1001BE028(v372, v389, v375, *(&v375 + 1));
      v219 = v367;
      sub_1001A5174(v367, v214, v215);

      sub_1001ACFEC(v219, v214, v215);

      sub_1001BE06C(v216, v217, v210, v218);
      sub_1001ACFEC(v381, v376, v429);

      sub_1001ACFEC(v379, v378, v430);

      v443 = v412;
      v444 = v413;
      v445 = v414;
      v446 = v415;
      v439 = v408;
      v440 = v409;
      v441 = v410;
      v442 = v411;
      sub_1001BE0B0(&v439);
      v454 = v445;
      v455 = v446;
      v456 = v447;
      v450 = v441;
      v451 = v442;
      v452 = v443;
      v453 = v444;
      v448 = v439;
      v449 = v440;
      sub_1001AC934(&v431, &v417, &qword_100375A48, &qword_1002EFC40);
      sub_1001A551C(&qword_100375A50, &qword_1002EFC48);
      sub_1001A551C(&qword_100375A58, &qword_1002EFC50);
      sub_1001BE0F4(&qword_100375A60, &qword_100375A50, &qword_1002EFC48);
      sub_1001BE0F4(&qword_100375A68, &qword_100375A58, &qword_1002EFC50);
      _ConditionalContent<>.init(storage:)();
      sub_1001BE06C(v216, v389, v375, *(&v375 + 1));
      sub_1001AC99C(&v431, &qword_100375A48, &qword_1002EFC40);
      sub_1001ACFEC(v367, v370, v369);

      sub_1001ACFEC(v381, v376, v371);

      sub_1001ACFEC(v379, v378, v366);
    }

    v454 = v423;
    v455 = v424;
    v456 = v425;
    v450 = v419;
    v451 = v420;
    v452 = v421;
    v453 = v422;
    v448 = v417;
    v449 = v418;
    v20 = v387[2];
    v24 = v407;
    v220 = v396;
    if (v20)
    {
      v221 = *(v386 + 72);
      v389 = (*(v386 + 80) + 32) & ~*(v386 + 80);
      v222 = v387 + v389;
      a1 = _swiftEmptyArrayStorage;
      v223 = v20;
      while (1)
      {
        sub_1001BB760(v222, v220);
        v224 = *v220;
        if (*(v220 + 8))
        {
          v224 = 0;
        }

        if (v224 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v224 > 0x7FFFFFFF)
        {
          goto LABEL_96;
        }

        if (v24[160] & 1) != 0 || *(v24 + 39) != v224 || (*(v220 + 88))
        {
          sub_1001BB7C4(v220);
        }

        else
        {
          sub_1001BB4B8(v220, v400);
          v225 = swift_isUniquelyReferenced_nonNull_native();
          *&v439 = a1;
          if ((v225 & 1) == 0)
          {
            sub_1001F5438(0, a1[2] + 1, 1);
            a1 = v439;
          }

          v227 = a1[2];
          v226 = a1[3];
          if (v227 >= v226 >> 1)
          {
            sub_1001F5438(v226 > 1, v227 + 1, 1);
            a1 = v439;
          }

          a1[2] = v227 + 1;
          sub_1001BB4B8(v400, a1 + v389 + v227 * v221);
          v24 = v407;
          v220 = v396;
        }

        v222 += v221;
        if (!--v223)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_46:
    v228 = a1[2];

    if (v228)
    {
      *&v439 = 0x4E434652412D524ELL;
      *(&v439 + 1) = 0xE800000000000000;
      v229 = Text.init<A>(_:)();
      v231 = v230;
      v233 = v232;
      static Color.blue.getter();
      v234 = Text.foregroundColor(_:)();
      v236 = v235;
      v238 = v237;
      v400 = v239;

      sub_1001ACFEC(v229, v231, v233 & 1);

      static Font.Weight.semibold.getter();
      v240 = v394;
      v241 = v397;
      v404(v394, v405, v397);
      v403(v240, 0, 1, v241);
      static Font.system(size:weight:design:)();
      sub_1001AC99C(v240, &qword_1003753E8, &unk_1002EFAB0);
      LOBYTE(v240) = v238;
      v242 = Text.font(_:)();
      v244 = v243;
      LODWORD(v396) = v245;
      v247 = v246;

      v24 = v407;
      sub_1001ACFEC(v234, v236, v240 & 1);

      v400 = v242;
      v381 = v244;
      v389 = v396 & 1;
      sub_1001A5174(v242, v244, v389);
      v396 = v247;

      v248 = v395;
      if (v20)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v400 = 0;
      v381 = 0;
      v389 = 0;
      v396 = 0;
      v248 = v395;
      if (v20)
      {
LABEL_48:
        v249 = *(v386 + 72);
        v385 = (*(v386 + 80) + 32) & ~*(v386 + 80);
        v250 = v387 + v385;
        a1 = _swiftEmptyArrayStorage;
        v251 = v20;
        while (1)
        {
          sub_1001BB760(v250, v248);
          v252 = *v248;
          if (*(v248 + 8))
          {
            v252 = 0;
          }

          if (v252 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v252 > 0x7FFFFFFF)
          {
            goto LABEL_98;
          }

          if (v24[160] & 1) != 0 || *(v24 + 39) != v252 || (*(v248 + 104))
          {
            sub_1001BB7C4(v248);
          }

          else
          {
            sub_1001BB4B8(v248, v399);
            v253 = swift_isUniquelyReferenced_nonNull_native();
            *&v439 = a1;
            if ((v253 & 1) == 0)
            {
              sub_1001F5438(0, a1[2] + 1, 1);
              a1 = v439;
            }

            v255 = a1[2];
            v254 = a1[3];
            if (v255 >= v254 >> 1)
            {
              sub_1001F5438(v254 > 1, v255 + 1, 1);
              a1 = v439;
            }

            a1[2] = v255 + 1;
            sub_1001BB4B8(v399, a1 + v385 + v255 * v249);
            v24 = v407;
            v248 = v395;
          }

          v250 += v249;
          if (!--v251)
          {
            goto LABEL_65;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_65:
    v256 = a1[2];

    if (!v256)
    {
      v385 = 0;
      v379 = 0;
      v388 = 0;
      v399 = 0;
      v277 = v393;
      if (!v20)
      {
        break;
      }

      goto LABEL_69;
    }

    v257 = 0x4E434652412D45;
    if ((v388 & 0x100) != 0)
    {
      v257 = 0x4E434652412D55;
    }

    *&v439 = v257;
    *(&v439 + 1) = 0xE700000000000000;
    v258 = Text.init<A>(_:)();
    v260 = v259;
    v262 = v261;
    static Color.blue.getter();
    v263 = Text.foregroundColor(_:)();
    v265 = v264;
    v267 = v266;
    v399 = v268;

    sub_1001ACFEC(v258, v260, v262 & 1);

    static Font.Weight.semibold.getter();
    v269 = v394;
    v270 = v397;
    v404(v394, v405, v397);
    v403(v269, 0, 1, v270);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v269, &qword_1003753E8, &unk_1002EFAB0);
    LOBYTE(v269) = v267;
    v271 = Text.font(_:)();
    v273 = v272;
    LODWORD(v395) = v274;
    v276 = v275;

    v24 = v407;
    sub_1001ACFEC(v263, v265, v269 & 1);

    v385 = v271;
    v379 = v273;
    v388 = v395 & 1;
    sub_1001A5174(v271, v273, v388);
    v399 = v276;

    v277 = v393;
    if (!v20)
    {
      break;
    }

LABEL_69:
    v278 = (*(v386 + 80) + 32) & ~*(v386 + 80);
    v279 = *(v386 + 72);
    v280 = v387 + v278;
    a1 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001BB760(v280, v277);
      v281 = *v277;
      if (*(v277 + 8))
      {
        v281 = 0;
      }

      if (v281 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v281 > 0x7FFFFFFF)
      {
        goto LABEL_100;
      }

      if (v24[160] & 1) != 0 || *(v24 + 39) != v281 || (*(v277 + 120))
      {
        sub_1001BB7C4(v277);
      }

      else
      {
        sub_1001BB4B8(v277, v398);
        v282 = swift_isUniquelyReferenced_nonNull_native();
        *&v439 = a1;
        if ((v282 & 1) == 0)
        {
          sub_1001F5438(0, a1[2] + 1, 1);
          a1 = v439;
        }

        v284 = a1[2];
        v283 = a1[3];
        if (v284 >= v283 >> 1)
        {
          sub_1001F5438(v283 > 1, v284 + 1, 1);
          a1 = v439;
        }

        a1[2] = v284 + 1;
        sub_1001BB4B8(v398, a1 + v278 + v284 * v279);
        v24 = v407;
        v277 = v393;
      }

      v280 += v279;
      if (!--v20)
      {
        goto LABEL_86;
      }
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_86:
  v285 = a1[2];

  if (v285)
  {
    *&v439 = 0x4E43465241;
    *(&v439 + 1) = 0xE500000000000000;
    v286 = Text.init<A>(_:)();
    v288 = v287;
    v290 = v289;
    static Color.blue.getter();
    v291 = Text.foregroundColor(_:)();
    v293 = v292;
    v295 = v294;

    sub_1001ACFEC(v286, v288, v290 & 1);

    static Font.Weight.semibold.getter();
    v296 = v394;
    v297 = v397;
    v404(v394, v405, v397);
    v403(v296, 0, 1, v297);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v296, &qword_1003753E8, &unk_1002EFAB0);
    v298 = Text.font(_:)();
    v300 = v299;
    LOBYTE(v296) = v301;
    v303 = v302;

    v304 = v295 & 1;
    v24 = v407;
    sub_1001ACFEC(v291, v293, v304);

    v398 = v298;
    v393 = v300;
    v387 = (v296 & 1);
    sub_1001A5174(v298, v300, v296 & 1);
    v395 = v303;
  }

  else
  {
    v398 = 0;
    v393 = 0;
    v387 = 0;
    v395 = 0;
  }

  v305 = v380;
  if (*(v24 + 4) == 1684099177 && *(v24 + 5) == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v306 = 0;
    v307 = 0;
    v308 = 0;
    v309 = 0;
  }

  else
  {
    *&v439 = 0;
    *(&v439 + 1) = 0xE000000000000000;
    v310 = Text.init<A>(_:)();
    v311 = v394;
    v313 = v312;
    v315 = v314;
    static Color.blue.getter();
    v316 = Text.foregroundColor(_:)();
    v318 = v317;
    v320 = v319;
    v407 = v321;

    sub_1001ACFEC(v310, v313, v315 & 1);

    static Font.Weight.semibold.getter();
    v322 = v397;
    v404(v311, v405, v397);
    v403(v311, 0, 1, v322);
    static Font.system(size:weight:design:)();
    sub_1001AC99C(v311, &qword_1003753E8, &unk_1002EFAB0);
    v323 = Text.font(_:)();
    v325 = v324;
    LOBYTE(v322) = v326;
    v328 = v327;

    sub_1001ACFEC(v316, v318, v320 & 1);

    sub_1001A5174(v323, v325, v322 & 1);

    v308 = (v322 & 1);
    v305 = v380;
    v309 = v328;
    v307 = v325;
    v306 = v323;
  }

  v404 = v308;
  v405 = v309;
  v406 = v307;
  v407 = v306;
  v414 = v454;
  v415 = v455;
  v410 = v450;
  v411 = v451;
  v412 = v452;
  v413 = v453;
  v408 = v448;
  v409 = v449;
  v329 = v455;
  v423 = v454;
  v424 = v455;
  v330 = v450;
  v331 = v451;
  v419 = v450;
  v420 = v451;
  v332 = v452;
  v333 = v453;
  v421 = v452;
  v422 = v453;
  v335 = v448;
  v334 = v449;
  v417 = v448;
  v418 = v449;
  v336 = v374;
  *(v374 + 160) = v454;
  *(v336 + 176) = v329;
  *(v336 + 96) = v330;
  *(v336 + 112) = v331;
  *(v336 + 128) = v332;
  *(v336 + 144) = v333;
  v337 = v305 & 1;
  LOBYTE(v431) = v305 & 1;
  v416 = v456;
  v430 = v305 & 1;
  v338 = v373 & 1;
  v429 = v373 & 1;
  LODWORD(v403) = v373 & 1;
  v425 = v456;
  v339 = v383;
  v340 = v384;
  v341 = v391;
  *v336 = v384;
  *(v336 + 8) = v341;
  *(v336 + 16) = v305 & 1;
  v342 = v382;
  *(v336 + 24) = v392;
  *(v336 + 32) = v342;
  *(v336 + 40) = v390;
  *(v336 + 48) = v338;
  *(v336 + 56) = v339;
  *(v336 + 192) = v456;
  *(v336 + 64) = v335;
  *(v336 + 80) = v334;
  v343 = v381;
  *(v336 + 200) = v400;
  *(v336 + 208) = v343;
  v344 = v396;
  *(v336 + 216) = v389;
  *(v336 + 224) = v344;
  v345 = v385;
  v346 = v379;
  *(v336 + 232) = v385;
  *(v336 + 240) = v346;
  v347 = v388;
  *(v336 + 248) = v388;
  v348 = v347;
  v349 = v398;
  *(v336 + 256) = v399;
  *(v336 + 264) = v349;
  v350 = v393;
  v351 = v387;
  *(v336 + 272) = v393;
  *(v336 + 280) = v351;
  *(v336 + 288) = v395;
  *(v336 + 296) = v306;
  *(v336 + 304) = v307;
  *(v336 + 312) = v308;
  *(v336 + 320) = v309;
  sub_1001AC934(&v448, &v439, &qword_100375A70, &qword_1002EFC58);
  sub_1001A5174(v340, v391, v337);

  sub_1001A5174(v342, v390, v338);

  sub_1001AC934(&v417, &v439, &qword_100375A70, &qword_1002EFC58);
  v352 = v381;
  sub_1001BE028(v400, v381, v389, v396);
  v353 = v345;
  v354 = v345;
  LOBYTE(v345) = v348;
  v388 = v348;
  v355 = v348;
  v356 = v399;
  sub_1001BE028(v354, v346, v355, v399);
  v357 = v398;
  v358 = v350;
  v393 = v350;
  v359 = v350;
  LOBYTE(v350) = v387;
  v360 = v395;
  sub_1001BE028(v398, v359, v387, v395);
  sub_1001BE028(v407, v406, v404, v405);
  sub_1001BE06C(v357, v358, v350, v360);
  sub_1001BE06C(v353, v346, v345, v356);
  LOBYTE(v360) = v389;
  sub_1001BE06C(v400, v352, v389, v396);
  sub_1001AC99C(&v448, &qword_100375A70, &qword_1002EFC58);
  v362 = v406;
  v361 = v407;
  LOBYTE(v358) = v404;
  v363 = v405;
  sub_1001BE06C(v407, v406, v404, v405);
  sub_1001BE06C(v361, v362, v358, v363);
  sub_1001BE06C(v398, v393, v350, v395);
  sub_1001BE06C(v353, v346, v388, v399);
  sub_1001BE06C(v400, v352, v360, v396);
  v445 = v414;
  v446 = v415;
  v447 = v416;
  v441 = v410;
  v442 = v411;
  v443 = v412;
  v444 = v413;
  v439 = v408;
  v440 = v409;
  sub_1001AC99C(&v439, &qword_100375A70, &qword_1002EFC58);
  sub_1001ACFEC(v382, v390, v403);

  sub_1001ACFEC(v384, v391, v431);
}

uint64_t sub_1001BE028(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001A5174(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001BE06C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001ACFEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001BE0F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BE15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001BE230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FTMCellMonitorHardwareDetailModel()
{
  result = qword_100375AE8;
  if (!qword_100375AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BE338()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001BE3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001BE3CC()
{
  if (!qword_100375AF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100375AF8);
    }
  }
}

uint64_t sub_1001BE41C()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x70795465756C6176;
  }

  if (*v0)
  {
    v1 = 7955819;
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

uint64_t sub_1001BE484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BEEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BE4C4(uint64_t a1)
{
  v2 = sub_1001BEC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BE500(uint64_t a1)
{
  v2 = sub_1001BEC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BE53C(void *a1)
{
  v3 = v1;
  v5 = sub_1001A551C(&qword_100375B50, &qword_1002EFD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_1001BEC34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22[15] = 0;
  type metadata accessor for UUID();
  sub_1001BED48(&qword_100375B58);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}