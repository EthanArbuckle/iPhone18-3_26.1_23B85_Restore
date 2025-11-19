double sub_100019F88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 CGColor];
  v5 = CGColorGetColorSpace(v4);

  if (v5)
  {
    v6 = CGColorSpaceCopyName(v5);
    if (v6)
    {
      v7 = v6;
      v8 = sub_100019EAC();

      if (v8 != 2)
      {
        sub_100019C44(a1, v8 & 1, v11);

        goto LABEL_8;
      }
    }
  }

  if (qword_1000743E0 != -1)
  {
    swift_once();
  }

  sub_100019C44(a1, byte_10007B138, v11);
LABEL_8:
  v9 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v9;
  result = *&v12;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_10001A098(uint64_t *a1)
{
  v3 = sub_100004944(&qword_1000752C0, &qword_100050A50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  sub_100008948(a1, a1[3]);
  sub_10001AF88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000898C(a1);
  }

  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100019EAC();

  if (v10 == 2)
  {
    sub_10001AFDC();
    swift_allocError();
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    return sub_10000898C(a1);
  }

  (*(v4 + 8))(v7, v3);
  sub_10000898C(a1);
  return v10 & 1;
}

uint64_t sub_10001A258(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 103 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852399975 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6A644174736F6F62 && a2 == 0xEF746E656D747375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10001A484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004944(&qword_100075250, &qword_100050720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_100008948(a1, a1[3]);
  sub_10001A7C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000898C(a1);
  }

  v23 = 0;
  sub_10001A81C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v21;
  v23 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v21;
  v23 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v21;
  v23 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v21;
  v23 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v21;
  v23 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v21;
  v24 = v22;
  v23 = 6;
  sub_10001A870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v21;
  v18 = v24;
  result = sub_10000898C(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 49) = v17;
  return result;
}

unint64_t sub_10001A7C8()
{
  result = qword_100075258;
  if (!qword_100075258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075258);
  }

  return result;
}

unint64_t sub_10001A81C()
{
  result = qword_100075260;
  if (!qword_100075260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075260);
  }

  return result;
}

unint64_t sub_10001A870()
{
  result = qword_100075268;
  if (!qword_100075268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075268);
  }

  return result;
}

unint64_t sub_10001A8C4()
{
  result = qword_100075278;
  if (!qword_100075278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075278);
  }

  return result;
}

unint64_t sub_10001A918()
{
  result = qword_100075280;
  if (!qword_100075280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SomeColor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SomeColor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SomeColor.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SomeColor.Component(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SomeColor.ColorSpace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SomeColor.ColorSpace(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001AD6C()
{
  result = qword_100075288;
  if (!qword_100075288)
  {
    sub_100008B90(&qword_100075290, qword_1000507B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075288);
  }

  return result;
}

unint64_t sub_10001ADD4()
{
  result = qword_100075298;
  if (!qword_100075298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075298);
  }

  return result;
}

unint64_t sub_10001AE2C()
{
  result = qword_1000752A0;
  if (!qword_1000752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752A0);
  }

  return result;
}

unint64_t sub_10001AE84()
{
  result = qword_1000752A8;
  if (!qword_1000752A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752A8);
  }

  return result;
}

unint64_t sub_10001AEDC()
{
  result = qword_1000752B0;
  if (!qword_1000752B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752B0);
  }

  return result;
}

unint64_t sub_10001AF34()
{
  result = qword_1000752B8;
  if (!qword_1000752B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752B8);
  }

  return result;
}

unint64_t sub_10001AF88()
{
  result = qword_1000752C8;
  if (!qword_1000752C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752C8);
  }

  return result;
}

unint64_t sub_10001AFDC()
{
  result = qword_1000752D0;
  if (!qword_1000752D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752D0);
  }

  return result;
}

unint64_t sub_10001B030(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_10001B060(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_10001B0B4(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001B144()
{
  result = qword_1000752E0;
  if (!qword_1000752E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752E0);
  }

  return result;
}

unint64_t sub_10001B19C()
{
  result = qword_1000752E8;
  if (!qword_1000752E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752E8);
  }

  return result;
}

unint64_t sub_10001B1F4()
{
  result = qword_1000752F0;
  if (!qword_1000752F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752F0);
  }

  return result;
}

unint64_t sub_10001B24C()
{
  result = qword_1000752F8;
  if (!qword_1000752F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752F8);
  }

  return result;
}

uint64_t sub_10001B33C()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001B398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001B3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001B434@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for SystemCloseButton.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_10001B48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B57C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001B4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B57C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001B554()
{
  sub_10001B57C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001B57C()
{
  result = qword_1000753D0;
  if (!qword_1000753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000753D0);
  }

  return result;
}

id sub_10001B5D0()
{
  v0 = sub_100004944(&qword_1000753D8, &qword_100050D68);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v11 - v2;
  v4 = [objc_opt_self() buttonWithType:7];
  sub_100004944(&qword_1000753E0, &unk_100050D70);
  UIViewRepresentableContext.coordinator.getter();
  [v4 addTarget:v11[1] action:"primaryAction" forControlEvents:0x2000];

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    sub_10001B784();
    v7 = v4;
    static UIShape.circle.getter();
    v8 = type metadata accessor for UIShape();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = UIHoverStyle.init(shape:)();
    [v7 setHoverStyle:v9];
  }

  return v4;
}

unint64_t sub_10001B784()
{
  result = qword_1000753E8;
  if (!qword_1000753E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000753E8);
  }

  return result;
}

void sub_10001B7D0(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v11 & 0xFF00) == 0x200)
    {
      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, v8);
    }

    else
    {
      v11 &= 0x101u;
      v4 = *v1;
      if (v4 == 4)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      sub_1000197D4(3, 0, v10, COERCE_UNSIGNED_INT64(1.0));
      sub_1000197D4(v4, 0, v8, *&v5);
    }

    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v9;
  }

  else
  {
    v7 = *(v1 + 10);
    type metadata accessor for ColorPickerState();
    sub_10001CB98();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_10001B964(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    if ((v22 & 0xFF00) == 0x200)
    {

      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, &v15);
LABEL_13:
      v12 = v16;
      *a1 = v15;
      *(a1 + 16) = v12;
      *(a1 + 32) = v17;
      *(a1 + 48) = v18;
      return;
    }

    v22 &= 0x101u;
    v4 = *v1;
    if (*v1 <= 2u || v4 == 3)
    {

      v5 = 1.0;
    }

    else
    {
      if (v4 == 4)
      {
      }

      else
      {
        v6 = *(v1 + 7);
        v7 = v1[64];
        v8 = *(sub_10001CE7C(v6, v7) + 56);

        if (v8 != 1)
        {
          v9 = sub_10001CE7C(v6, v7);
          sub_1000088E4(v9 + 16, v19);

          v10 = v20;
          v11 = v21;
          sub_100008948(v19, v20);
          v15 = *(v1 + 8);
          *&v16 = *(v1 + 3);
          sub_100004944(&qword_100075498, &qword_100053730);
          Binding.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v5 = (*(v11 + 56))(v10, v11, v14, *&v15);
          sub_10000898C(v19);
          goto LABEL_12;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v5 = v19[0];
    }

LABEL_12:
    sub_1000197D4(3, 0, v19, COERCE_UNSIGNED_INT64(1.0));
    sub_1000197D4(v4, 0, &v15, v5);
    goto LABEL_13;
  }

  v13 = *(v1 + 10);
  type metadata accessor for ColorPickerState();
  sub_10001CB98();
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_10001BCB4()
{
  v1 = [objc_allocWithZone(UISlider) init];
  v3 = v1;
  v4 = *v0;
  if (v4 < 4)
  {
    [v1 setMinimumValue:0.0];
LABEL_7:
    LODWORD(v5) = 1.0;
    [v3 setMaximumValue:v5];
    goto LABEL_8;
  }

  if (v4 != 4)
  {
    LODWORD(v2) = -1.0;
    [v1 setMinimumValue:v2];
    goto LABEL_7;
  }

  [v1 setMinimumValue:0.0];
  if (*(v0 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    HIDWORD(v6) = HIDWORD(v12);
    *&v6 = v12;
    [v3 setMaximumValue:v6];
LABEL_8:
    v13 = *(v0 + 8);
    v14 = *(v0 + 3);
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    HIDWORD(v7) = HIDWORD(v11);
    *&v7 = v11;
    [v3 setValue:v7];
    [v3 _setSliderStyle:120];
    v8 = sub_10001BECC();
    [v3 _setSliderConfiguration:v8];

    sub_100004944(&qword_1000754A0, &qword_100050F50);
    UIViewRepresentableContext.coordinator.getter();
    [v3 addTarget:v13 action:"sliderValueChangedWithSlider:" forControlEvents:4096];

    return v3;
  }

  v10 = *(v0 + 10);
  type metadata accessor for ColorPickerState();
  sub_10001CB98();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10001BECC()
{
  if (*(v0 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v1 = v44;
    if ((v44 & 0xFF00) == 0x200)
    {
      v2 = [objc_opt_self() blackColor];
      sub_100019F88(v2, v32);
      v29 = v32[0];
      v30 = v32[1];
      v3 = v33;
      v4 = v34;
      v1 = v35;
    }

    else
    {
      v29 = v40;
      v30 = v41;
      v3 = v42;
      v4 = v43;
    }

    v41 = v30;
    v40 = v29;
    v42 = v3;
    v43 = v4;
    v44 = v1;
    v5 = *v0;
    if (v5 >= 4)
    {
      if (v5 != 4)
      {

        v13 = sub_10001CE7C(*(v0 + 7), v0[64]);
        sub_1000088E4(v13 + 16, v36);

        v14 = v37;
        v15 = v38;
        sub_100008948(v36, v37);
        sub_10001B964(v39);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        (*(v15 + 48))(&v40, v39, v14, v15);
        sub_10000898C(v36);
        sub_100004944(&qword_1000746F0, &qword_10004E888);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100050D80;
        v17 = objc_allocWithZone(_UISliderTick);
        LODWORD(v18) = 0.5;
        *(v16 + 32) = [v17 initWithPosition:0 title:0 image:v18];
        v19 = sub_10001CE7C(*(v0 + 7), v0[64]);
        sub_1000088E4(v19 + 16, v36);

        v20 = v37;
        v21 = v38;
        sub_100008948(v36, v37);
        v22 = (*(v21 + 24))(v20, v21);
        sub_100027D6C(v22);

        v23 = objc_allocWithZone(_UISliderFluidColorConfiguration);
        sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        sub_10000598C(0, &qword_1000754A8, NSNumber_ptr);
        v25 = Array._bridgeToObjectiveC()().super.isa;

        sub_10000598C(0, &qword_1000754B0, _UISliderTick_ptr);
        v26 = Array._bridgeToObjectiveC()().super.isa;

        v27 = [v23 initWithColors:isa locations:v25 ticks:v26 tickBehavior:0];

        sub_10000898C(v36);
        [v27 setNeutralPosition:0.5];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        [v27 setMaxGain:*v36];
        return v27;
      }

      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10004E490;
      sub_10001B7D0(v36);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000195E4(v39[0]);
      *(v6 + 32) = v9;
      sub_10001B964(v39);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000195E4(v31);
    }

    else
    {

      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10004E490;
      sub_10001B7D0(v36);
      sub_100018314();
      *(v6 + 32) = v7;
      sub_10001B964(v39);
      sub_100018314();
    }

    *(v6 + 40) = v8;

    v10 = objc_allocWithZone(_UISliderFluidColorConfiguration);
    sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v10 initWithColors:v11];

    [v27 setShowCheckerboard:v5 == 3];
    return v27;
  }

  v28 = *(v0 + 10);
  type metadata accessor for ColorPickerState();
  sub_10001CB98();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10001C4E4(void *a1)
{
  v9 = *(v1 + 8);
  v10 = *(v1 + 24);
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  if (([a1 isTracking] & 1) == 0)
  {
    v3 = v8;
    [a1 value];
    if (v4 != v3)
    {
      sub_100004944(&qword_1000754A0, &qword_100050F50);
      UIViewRepresentableContext.transaction.getter();
      v5 = Transaction.animation.getter();

      if (v5)
      {
      }

      *&v6 = v8;
      [a1 setValue:v5 != 0 animated:v6];
    }
  }

  v7 = sub_10001BECC();
  [a1 _setSliderConfiguration:v7];
}

uint64_t sub_10001C604()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return sub_10001BCB4();
}

void sub_10001C650(void *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 10);
  v2 = *v1;
  v3 = v1[1];
  sub_10001C4E4(a1);
}

uint64_t sub_10001C69C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  type metadata accessor for ColorPickerUISlider.Coordinator();
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = v6;
  return sub_10001CB60(v11, v10);
}

uint64_t sub_10001C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001DB10();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001DB10();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001C7F0()
{
  sub_10001DB10();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10001C818(uint64_t a1, id a2)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  LOBYTE(v11) = *(a1 + 64);
  LOBYTE(v8) = [a2 isTracking];
  sub_100004944(&qword_100074608, &qword_100053770);
  Binding.wrappedValue.setter();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 value];
  sub_100004944(&qword_100075498, &qword_100053730);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001C990()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[9];
  v6 = v0[11];

  return _swift_deallocClassInstance(v0, 104, 7);
}

__n128 sub_10001CA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001CA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001CAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001CB0C()
{
  result = qword_100075490;
  if (!qword_100075490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075490);
  }

  return result;
}

unint64_t sub_10001CB98()
{
  result = qword_100076250;
  if (!qword_100076250)
  {
    type metadata accessor for ColorPickerState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076250);
  }

  return result;
}

uint64_t sub_10001CBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_100074A18, &unk_100051000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v20 - v11);
  sub_100008A40(v2, &v20 - v11, &qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001D560(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&_mh_execute_header, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      sub_10000898C(v19);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001CE7C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10001D560(0xD000000000000018, 0x8000000100054170, &v15);
      _os_log_impl(&_mh_execute_header, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      sub_10000898C(v12);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

uint64_t sub_10001D044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_100074F28, &qword_10004FDA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v20 - v11);
  sub_100008A40(v2, &v20 - v11, &qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001D560(0x686353726F6C6F43, 0xEB00000000656D65, &v21);
      _os_log_impl(&_mh_execute_header, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      sub_10000898C(v19);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001D2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_1000754C8, &qword_100051010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v20 - v11);
  sub_100008A40(v2, &v20 - v11, &qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001D560(0x694474756F79614CLL, 0xEF6E6F6974636572, &v21);
      _os_log_impl(&_mh_execute_header, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      sub_10000898C(v19);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001D560(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001D62C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DC90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000898C(v11);
  return v7;
}

unint64_t sub_10001D62C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001D738(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001D738(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001D784(a1, a2);
  sub_10001D8B4(&off_10006A378);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001D784(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001D9A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001D9A0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001D8B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001DA14(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001D9A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004944(&qword_1000754B8, &unk_100050FF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001DA14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&qword_1000754B8, &unk_100050FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10001DB10()
{
  result = qword_1000754C0;
  if (!qword_1000754C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000754C0);
  }

  return result;
}

uint64_t sub_10001DB64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a1;
  v115 = a3;
  v109 = type metadata accessor for GeometryProxy();
  v107 = *(v109 - 8);
  v108 = *(v107 + 64);
  __chkstk_darwin(v109);
  v105 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for LocalCoordinateSpace();
  v5 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DragGesture();
  v113 = *(v111 - 8);
  v7 = *(v113 + 64);
  __chkstk_darwin(v111);
  v123 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100004944(&qword_100075598, &qword_1000515B0);
  v9 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v106 = &v96 - v10;
  v11 = type metadata accessor for RoundedRectangle();
  v12 = *(v11 - 8);
  v100 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v101 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ColorSwatchPickerView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = v15 - 8;
  v102 = v15 - 8;
  __chkstk_darwin(v15 - 8);
  v19 = sub_100004944(&qword_1000755A0, &qword_1000510A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v96 - v21;
  v23 = sub_100004944(&qword_1000755A8, &qword_1000510A8);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v97 = &v96 - v26;
  v27 = sub_100004944(&qword_1000755B0, &qword_1000510B0);
  v28 = *(v27 - 8);
  v99 = v27 - 8;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v98 = &v96 - v30;
  v124 = sub_100004944(&qword_1000755B8, &qword_1000510B8);
  v31 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v121 = &v96 - v32;
  v110 = sub_100004944(&qword_1000755C0, &qword_1000510C0);
  v112 = *(v110 - 8);
  v33 = *(v112 + 64);
  __chkstk_darwin(v110);
  v125 = &v96 - v34;
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v35 = *(sub_100004944(&qword_1000755C8, &unk_1000510C8) + 44);
  v36 = *(v18 + 36);
  v126 = a2;
  v37 = *(*(a2 + v36) + 16);
  *&v134 = 0;
  *(&v134 + 1) = v37;
  swift_getKeyPath();
  v116 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021038(a2, v116);
  v38 = *(v16 + 80);
  v120 = ((v38 + 16) & ~v38) + v17;
  v39 = (v38 + 16) & ~v38;
  v118 = v39;
  v119 = v38 | 7;
  v40 = swift_allocObject();
  v117 = type metadata accessor for ColorSwatchPickerView;
  sub_100021280(&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for ColorSwatchPickerView);
  sub_100004944(&qword_1000755D0, &qword_1000510F0);
  sub_100004944(&qword_1000755D8, &unk_1000510F8);
  sub_1000211A0();
  sub_100008D7C(&qword_1000755F0, &qword_1000755D8, &unk_1000510F8);
  ForEach<>.init(_:id:content:)();
  GeometryProxy.size.getter();
  fmod(v41, 6.0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v97;
  sub_1000084B0(v22, v97, &qword_1000755A0, &qword_1000510A0);
  v43 = (v42 + *(v24 + 44));
  v44 = v135;
  *v43 = v134;
  v43[1] = v44;
  v43[2] = v136;
  v45 = [objc_opt_self() currentDevice];
  v46 = [v45 userInterfaceIdiom];

  if (v46 == 6)
  {
    v47 = 16.0;
  }

  else
  {
    v47 = 8.0;
  }

  v48 = *(v100 + 28);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  v51 = v101;
  (*(*(v50 - 8) + 104))(v101 + v48, v49, v50);
  *v51 = v47;
  v51[1] = v47;
  v52 = v98;
  v53 = &v98[*(v99 + 44)];
  sub_100021280(v51, v53, &type metadata accessor for RoundedRectangle);
  *(v53 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
  v54 = v42;
  v55 = v52;
  sub_1000084B0(v54, v52, &qword_1000755A8, &qword_1000510A8);
  v56 = v126;
  v57 = v116;
  sub_100021038(v126, v116);
  v58 = v120;
  v59 = swift_allocObject();
  v60 = v118;
  v61 = v117;
  sub_100021280(v57, v59 + v118, v117);
  v62 = static Alignment.center.getter();
  v64 = v63;
  v65 = v55;
  v66 = v121;
  sub_1000084B0(v65, v121, &qword_1000755B0, &qword_1000510B0);
  v67 = (v66 + *(v124 + 36));
  *v67 = sub_1000212E8;
  v67[1] = v59;
  v67[2] = v62;
  v67[3] = v64;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v68 = v56;
  v69 = v57;
  sub_100021038(v68, v57);
  v70 = v107;
  v71 = v105;
  v72 = v109;
  (*(v107 + 16))(v105, v122, v109);
  v73 = v70;
  v74 = (v58 + *(v70 + 80)) & ~*(v70 + 80);
  v75 = swift_allocObject();
  sub_100021280(v69, v75 + v60, v61);
  (*(v73 + 32))(v75 + v74, v71, v72);
  sub_100022644(&qword_1000755F8, &type metadata accessor for DragGesture);
  sub_100022644(&qword_100075600, &type metadata accessor for DragGesture.Value);
  v76 = v106;
  v77 = v111;
  v78 = v123;
  Gesture<>.onChanged(_:)();

  (*(v113 + 8))(v78, v77);
  v79 = (v126 + *(v102 + 32));
  LODWORD(v123) = *v79;
  v80 = v79[2];
  v122 = v79[1];
  v113 = v80;
  v81 = v79[3];
  LOBYTE(v130) = v123;
  v131 = v122;
  v132 = v80;
  v133 = v81;
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v82 = v128;
  v83 = v129;
  v84 = v114;
  v85 = v76 + *(v114 + 44);
  *v85 = v127;
  *(v85 + 8) = v82;
  *(v85 + 16) = v83;
  v86 = (v76 + *(v84 + 48));
  *v86 = sub_10001F624;
  v86[1] = 0;
  static GestureMask.all.getter();
  v87 = sub_100021618();
  v88 = sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0);
  v89 = v124;
  v90 = v121;
  View.gesture<A>(_:including:)();
  sub_1000059D4(v76, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v90, &qword_1000755B8, &qword_1000510B8);
  LOBYTE(v130) = v123;
  v131 = v122;
  v132 = v113;
  v133 = v81;
  GestureState.wrappedValue.getter();
  v91 = v116;
  sub_100021038(v126, v116);
  v92 = swift_allocObject();
  sub_100021280(v91, v92 + v118, v117);
  v130 = v89;
  v131 = v84;
  v132 = v87;
  v133 = v88;
  swift_getOpaqueTypeConformance2();
  v93 = v110;
  v94 = v125;
  View.onChange<A>(of:initial:_:)();

  return (*(v112 + 8))(v94, v93);
}

uint64_t sub_10001E878@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorSwatchPickerView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = *a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = sub_100004944(&qword_100075650, &qword_100051248);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(v7 + 36));
    if (v10 < *(v12 + 16))
    {
      v13 = *(result + 44);
      v14 = *(*(v12 + 8 * v10 + 32) + 16);
      v17[0] = 0;
      v17[1] = v14;
      swift_getKeyPath();
      sub_100021038(a2, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v16 = swift_allocObject();
      sub_100021280(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ColorSwatchPickerView);
      *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      sub_100004944(&qword_1000755D0, &qword_1000510F0);
      sub_1000211A0();
      sub_100021F18();
      return ForEach<>.init(_:id:content:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EA68@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10001F71C();
  result = type metadata accessor for ColorSwatchPickerView();
  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *(v3 + *(result + 32));
    if (*(v9 + 16) <= a1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(v9 + 8 * a1 + 32);
    if (*(v10 + 16) > a2)
    {
LABEL_11:
      v12 = v10 + 56 * a2;
      v15 = *(v12 + 48);
      v13 = *(v12 + 64);
      LOWORD(v14) = *(v12 + 80);
      *a3 = *(v12 + 32);
      *(a3 + 16) = v15;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
      *(a3 + 56) = a1;
      *(a3 + 64) = a2;
      return result;
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v3 + *(result + 28));
  if (*(v11 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(v11 + 8 * a1 + 32);
  if (*(v10 + 16) > a2)
  {
    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001EB74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for ColorSwatchPickerView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_100021038(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_100021280(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ColorSwatchPickerView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = sub_100021BA0;
  a3[1] = v11;
}

__n128 sub_10001ECA0@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_10001EDA8(a1, v21);
  v17 = v21[2];
  v18 = v21[3];
  v19 = v21[4];
  v20 = v21[5];
  v15 = v21[0];
  v16 = v21[1];
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  *(a2 + 96) = v20;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  result = v10;
  *(a2 + 192) = v13;
  *(a2 + 208) = v14;
  *(a2 + 160) = v11;
  *(a2 + 176) = v12;
  *(a2 + 144) = v10;
  return result;
}

uint64_t sub_10001EDA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorSwatchPickerView();
  v6 = (v2 + *(v5 + 20));
  if (*v6)
  {
    v7 = v5;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v8 = 0.0;
    if ((LOWORD(v40.f64[0]) & 0xFF00) == 0x200)
    {
      goto LABEL_11;
    }

    v9 = v37;
    LOBYTE(v37.f64[0]) = 1;
    v45 = v9;
    v46 = v38;
    v47 = 0x3FF0000000000000;
    v48 = 0;
    v49 = 1;
    v50 = BYTE1(v40.f64[0]);
    sub_100018994(&v42);
    v10 = *(a1 + 16);
    if (!v10)
    {
LABEL_11:
      v18 = 0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
LABEL_12:
      v51.origin.x = v19;
      v51.origin.y = v20;
      v51.size.width = v21;
      v51.size.height = v22;
      CGRectGetWidth(v51);
      v52.origin.x = v19;
      v52.origin.y = v20;
      v52.size.width = v21;
      v52.size.height = v22;
      CGRectGetHeight(v52);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v23 = v37.f64[0];
      v24 = LOBYTE(v37.f64[1]);
      v25 = v38.f64[0];
      v26 = LOBYTE(v38.f64[1]);
      v27 = v39;
      v53.origin.x = v19;
      v53.origin.y = v20;
      v53.size.width = v21;
      v53.size.height = v22;
      MinX = CGRectGetMinX(v53);
      v54.origin.x = v19;
      v54.origin.y = v20;
      v54.size.width = v21;
      v54.size.height = v22;
      MinY = CGRectGetMinY(v54);
      LOBYTE(v36[0]) = v24;
      result = swift_allocObject();
      *(result + 16) = 0;
      *a2 = v18;
      *(a2 + 8) = v23;
      *(a2 + 16) = v24;
      *(a2 + 24) = v25;
      *(a2 + 32) = v26;
      *(a2 + 40) = v27;
      *(a2 + 56) = MinX;
      *(a2 + 64) = MinY;
      *(a2 + 72) = v8;
      *(a2 + 80) = sub_100021CEC;
      *(a2 + 88) = result;
      return result;
    }

    v11 = (a1 + 32);
    while (1)
    {
      v12 = v11[2];
      v13 = v11[4];
      v40 = v11[3];
      v41 = v13;
      v14 = *v11;
      v38 = v11[1];
      v39 = v12;
      v37 = v14;
      if (BYTE1(v40.f64[0]) == v44)
      {
        v15 = vsubq_f64(v37, v42);
        if (sqrt(vaddvq_f64(vmulq_f64(v15, v15)) + (v38.f64[0] - v43) * (v38.f64[0] - v43)) <= 0.001)
        {
          break;
        }
      }

      v11 += 5;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    v6 = *(v7 + 28);
    v16 = *(v6 + v2);
    v17 = *(v16 + 16);
    if (v17)
    {
      if (*&v41 == 0)
      {
        v18 = 1;
      }

      else
      {
        v31 = v17 - 1;
        if (v31 == *&v41.f64[0] && *&v41.f64[1] == 0)
        {
          v18 = 4;
        }

        else
        {
          v33 = *(*(v16 + 32) + 16) - 1;
          if (__PAIR128__(v33, 0) == *&v41)
          {
            v18 = 2;
          }

          else if (v33 == *&v41.f64[1] && v31 == *&v41.f64[0])
          {
            v18 = 8;
          }

          else
          {
            v18 = 0;
          }
        }
      }

      sub_100021C4C(&v37, v36);
      type metadata accessor for CGRect(0);
      GeometryProxy.subscript.getter();
      sub_100021C84(&v37);
      v19 = *v36;
      v20 = *&v36[1];
      v8 = 1.0;
      v21 = *&v36[2];
      v22 = *&v36[3];
      goto LABEL_12;
    }

    __break(1u);
  }

  v35 = v6[1];
  type metadata accessor for ColorPickerState();
  sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10001F154(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ColorSwatchPickerView() + 20));
  v3 = *v2;
  if (*v2)
  {
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    swift_retain_n();
    Binding.init(get:set:)();
    v16[2] = v19[2];
    v16[3] = v19[3];
    v17 = v20;
    v16[0] = v19[0];
    v16[1] = v19[1];
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    sub_1000059D4(v19, &qword_100076350, &qword_100051160);
    v6 = v22;
    v7 = v23;
    DragGesture.Value.location.getter();
    v9 = v8;
    v11 = v10;
    GeometryProxy.size.getter();
    sub_10001F404(v21, v9, v11, v12, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v16[0]) = 1;

    static Published.subscript.setter();

    if (v7)
    {
      sub_100018B1C(v18);
    }

    else
    {
      sub_100018994(v18);
    }

    sub_1000197D4(3, 0, v16, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  else
  {
    v15 = v2[1];
    type metadata accessor for ColorPickerState();
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F404@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = type metadata accessor for ColorSwatchPickerView();
  v15 = *(v5 + *(result + 28));
  v16 = *(v15 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_26;
  }

  v17 = a5 / v16;
  if (v17 != 0.0)
  {
    v6 = v15 + 32;
    v18 = *(*(v15 + 32) + 16);
    v19 = a4 / v18;
    if (v19 != 0.0)
    {
      v20 = floor(a3 / v17);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v20 <= -9.22337204e18)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v20 >= 9.22337204e18)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v21 = v16 - 1;
      if (v21 >= v20)
      {
        v21 = v20;
      }

      v22 = floor(a2 / v19);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_30;
      }

      if (v22 <= -9.22337204e18)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v22 >= 9.22337204e18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v23 = result;
      v8 = v21 & ~(v21 >> 63);
      v24 = v18 - 1;
      if (v24 >= v22)
      {
        v24 = v22;
      }

      v7 = v24 & ~(v24 >> 63);
      result = sub_10001F71C();
      if ((result & 1) == 0)
      {
        goto LABEL_21;
      }

      v25 = *(v5 + *(v23 + 32));
      if (v8 >= *(v25 + 16))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v26 = *(v25 + 8 * v8 + 32);
      if (v7 < *(v26 + 16))
      {
LABEL_23:
        v28 = v26 + 56 * v7;
        goto LABEL_24;
      }

      __break(1u);
    }
  }

  v27 = *(v5 + *(result + 32));
  if (!*(v27 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = *(v27 + 32);
  if (*(v28 + 16))
  {
LABEL_24:
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v31 = *(v28 + 80);
    *a1 = *(v28 + 32);
    *(a1 + 16) = v29;
    *(a1 + 32) = v30;
    *(a1 + 48) = v31;
    return result;
  }

  __break(1u);
LABEL_21:
  if (v8 >= *(v15 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = *(v6 + 8 * v8);
  if (v7 < *(v26 + 16))
  {
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10001F630(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = (a3 + *(type metadata accessor for ColorSwatchPickerView() + 20));
  if (*v4)
  {
    v5 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    v7 = v4[1];
    type metadata accessor for ColorPickerState();
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F71C()
{
  v1 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v21[-v12];
  __chkstk_darwin(v11);
  v15 = &v21[-v14];
  v16 = (v0 + *(type metadata accessor for ColorSwatchPickerView() + 20));
  if (*v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v21[15])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1000059D4(v4, &qword_100075648, &qword_1000511B0);
        sub_10001D044(v13);
        (*(v6 + 104))(v10, enum case for ColorScheme.dark(_:), v5);
        v17 = static ColorScheme.== infix(_:_:)();
      }

      else
      {
        (*(v6 + 32))(v15, v4, v5);
        (*(v6 + 104))(v13, enum case for ColorScheme.dark(_:), v5);
        v17 = static ColorScheme.== infix(_:_:)();
        v10 = v13;
        v13 = v15;
      }

      v18 = *(v6 + 8);
      v18(v10, v5);
      v18(v13, v5);
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  else
  {
    v20 = v16[1];
    type metadata accessor for ColorPickerState();
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10001FA9C@<D0>(uint64_t a1@<X8>)
{
  v19 = v1[1];
  v20 = *v1;
  v21 = v1[2];
  v22 = *(v1 + 24);
  sub_10001944C();
  static Anchor.Source<A>.bounds.getter();
  v3 = swift_allocObject();
  v4 = v1[3];
  *(v3 + 48) = v1[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 8);
  v5 = v1[1];
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  sub_100018314();
  v7 = v6;
  v8 = [v6 _accessibilityNameWithLuma];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C030();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  sub_100004944(&qword_100075670, &qword_100051370);
  sub_100022188();
  View.accessibility(label:)();

  sub_10000C084(v9, v11, v13 & 1);

  type metadata accessor for ColorPickerState();
  sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v17 = a1 + *(sub_100004944(&qword_100075690, &qword_100051380) + 36);
  *v17 = v14;
  *(v17 + 8) = v16;
  result = *&v20;
  *(v17 + 16) = v20;
  *(v17 + 32) = v19;
  *(v17 + 48) = v21;
  *(v17 + 64) = v22;
  return result;
}

uint64_t sub_10001FCD4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100004944(&qword_100075698, &qword_100051388);
  v6 = swift_allocObject();
  LOWORD(v11) = *(a2 + 24);
  v7 = *a2;
  v10 = a2[1];
  v8 = a2[2];
  *(v6 + 16) = xmmword_10004E4A0;
  *(v6 + 32) = v7;
  *(v6 + 48) = v10;
  *(v6 + 64) = v8;
  *(v6 + 80) = v11;
  *(v6 + 88) = a1;
  *(v6 + 96) = *(a2 + 56);
  *a3 = v6;
}

uint64_t sub_10001FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = type metadata accessor for AccessibilityTraits();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004944(&qword_1000756C0, &qword_100051428);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_100004944(&qword_1000756C8, &qword_100051430);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000224F4(a1, &v26);
    static Published.subscript.getter();
    sub_10002252C(a1);

    if ((v27 & 0xFF00) == 0x200)
    {
      v16 = sub_100004944(&qword_1000756D0, &qword_100051438);
      (*(*(v16 - 8) + 16))(v15, v22, v16);
      swift_storeEnumTagMultiPayload();
      sub_10002255C();
      sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v25 = v27 & 1;
      v27 &= 0x101u;
      sub_100018994(&v28);
      if (v31 == (*(a1 + 65) & 1) && (v18 = vsubq_f64(v28, *(a1 + 16)), sqrt(vaddvq_f64(vmulq_f64(v18, v18)) + (v29 - *(a1 + 32)) * (v29 - *(a1 + 32))) <= 0.001) && vabdd_f64(v30, *(a1 + 40)) <= 0.001)
      {
        static AccessibilityTraits.isSelected.getter();
      }

      else
      {
        v24 = _swiftEmptyArrayStorage;
        sub_100022644(&qword_1000756E8, &type metadata accessor for AccessibilityTraits);
        sub_100004944(&qword_1000756F0, &qword_100051440);
        sub_100008D7C(&qword_1000756F8, &qword_1000756F0, &qword_100051440);
        dispatch thunk of SetAlgebra.init<A>(_:)();
      }

      sub_100004944(&qword_1000756D0, &qword_100051438);
      sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438);
      View.accessibility(addTraits:)();
      (*(v21 + 8))(v7, v4);
      sub_10002268C(v11, v15);
      swift_storeEnumTagMultiPayload();
      sub_10002255C();
      _ConditionalContent<>.init(storage:)();
      return sub_1000059D4(v11, &qword_1000756C0, &qword_100051428);
    }
  }

  else
  {
    v19 = *(a1 + 8);
    type metadata accessor for ColorPickerState();
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v3;
  v7 = *(v2 + 64);
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  return sub_10001FD80(v6, a1, a2);
}

uint64_t sub_1000202F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10002EE50(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000203E8@<X0>(void *a1@<X8>)
{
  if (qword_1000743C0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10007B130;
}

void sub_1000204C4()
{
  v0 = sub_1000209E8(&off_10006A6C8);
  v1 = &off_10006C248;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_48;
  }

  do
  {
    v2 = v1[4];
    v1[4] = v0;

    v62 = v1 + 4;
    v3 = v1[2];

    if (v3 >= 2)
    {
      v5 = v1[5];
      v1[5] = v4;

      v6 = v1[2];

      if (v6 >= 3)
      {
        v8 = v1[6];
        v1[6] = v7;

        v9 = v1[2];

        if (v9 >= 4)
        {
          v11 = v1[7];
          v1[7] = v10;

          v12 = v1[2];

          if (v12 >= 5)
          {
            v14 = v1[8];
            v1[8] = v13;

            v15 = v1[2];

            if (v15 >= 6)
            {
              v17 = v1[9];
              v1[9] = v16;

              v18 = v1[2];

              if (v18 >= 7)
              {
                v20 = v1[10];
                v1[10] = v19;

                v21 = v1[2];

                if (v21 >= 8)
                {
                  v23 = v1[11];
                  v1[11] = v22;

                  v24 = v1[2];

                  if (v24 >= 9)
                  {
                    v26 = v1[12];
                    v1[12] = v25;

                    v27 = v1[2];

                    if (v27 >= 0xA)
                    {
                      v29 = v1[13];
                      v1[13] = v28;

                      v30 = v1[2];
                      if (!v30)
                      {
LABEL_43:

                        return;
                      }

                      v68 = &_swiftEmptyArrayStorage;
                      sub_10002F0B4(0, v30, 0);
                      v31 = 0;
                      v0 = v68;
                      v60 = v30;
                      v61 = v1;
                      while (v31 < v1[2])
                      {
                        v32 = v62[v31];
                        v33 = *(v32 + 16);
                        if (v33)
                        {
                          v63 = v0;
                          v64 = v31;
                          v67 = &_swiftEmptyArrayStorage;

                          v0 = &v67;
                          sub_10002F074(0, v33, 0);
                          v34 = v67;
                          v35 = objc_opt_self();
                          v36 = 0;
                          v37 = (v32 + 81);
                          while (v36 < *(v32 + 16))
                          {
                            v38 = *(v37 - 49);
                            v65 = v38;
                            v66 = *(v37 - 33);
                            v39 = *(v37 - 9);
                            v40 = *(v37 - 1);
                            if (*v37)
                            {
                              v41 = kCGColorSpaceDisplayP3;
                            }

                            else
                            {
                              v41 = kCGColorSpaceSRGB;
                            }

                            v42 = CGColorSpaceCreateWithName(v41);
                            if (!v42)
                            {
                              goto LABEL_51;
                            }

                            v43 = v42;
                            sub_100004944(&qword_100076300, &qword_100051020);
                            inited = swift_initStackObject();
                            *(inited + 16) = xmmword_100050620;
                            *(inited + 32) = v65;
                            *(inited + 48) = v66;
                            if ((v40 & 1) == 0)
                            {
                              if (*&v65 > *(&v65 + 1))
                              {
                                v45 = *&v65;
                              }

                              else
                              {
                                v45 = *(&v65 + 1);
                              }

                              if (v45 > *&v66)
                              {
                                v46 = v45;
                              }

                              else
                              {
                                v46 = *&v66;
                              }

                              v47 = v39 + 1.0;
                              if (v39 + 1.0 > 1.0)
                              {
                                v47 = 1.0;
                              }

                              if (v46 <= 0.0)
                              {
                                *(inited + 32) = v47;
                                *(inited + 40) = v47;
                              }

                              else
                              {
                                v48 = v47 / v46;
                                *(inited + 32) = *&v65 * v48;
                                *(inited + 40) = *(&v65 + 1) * v48;
                                v47 = *&v66 * v48;
                              }

                              *(inited + 48) = v47;
                            }

                            v49 = CGColorCreate(v43, (inited + 32));

                            if (!v49)
                            {
                              goto LABEL_50;
                            }

                            v0 = [objc_allocWithZone(UIColor) initWithCGColor:v49];

                            v50 = [v35 _convertColorPickerColor:v0 fromUserInterfaceStyle:1 to:2];
                            sub_100019C44(v50, 0, v69);
                            v67 = v34;
                            v52 = v34[2];
                            v51 = v34[3];
                            if (v52 >= v51 >> 1)
                            {
                              v0 = &v67;
                              sub_10002F074((v51 > 1), v52 + 1, 1);
                              v34 = v67;
                            }

                            ++v36;
                            v34[2] = v52 + 1;
                            v53 = &v34[7 * v52];
                            v54 = v69[0];
                            v55 = v69[1];
                            v56 = v69[2];
                            *(v53 + 40) = v70;
                            *(v53 + 3) = v55;
                            *(v53 + 4) = v56;
                            *(v53 + 2) = v54;
                            v37 += 56;
                            if (v33 == v36)
                            {

                              v30 = v60;
                              v1 = v61;
                              v0 = v63;
                              v31 = v64;
                              goto LABEL_40;
                            }
                          }

                          __break(1u);
                          break;
                        }

                        v34 = &_swiftEmptyArrayStorage;
LABEL_40:
                        v68 = v0;
                        v58 = v0[2];
                        v57 = v0[3];
                        if (v58 >= v57 >> 1)
                        {
                          v59 = v31;
                          sub_10002F0B4((v57 > 1), v58 + 1, 1);
                          v31 = v59;
                          v0 = v68;
                        }

                        ++v31;
                        v0[2] = (v58 + 1);
                        v0[v58 + 4] = v34;
                        if (v31 == v30)
                        {
                          goto LABEL_43;
                        }
                      }

                      __break(1u);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_48:
    v1 = sub_100019C1C(&off_10006C248);
  }

  while (v1[2]);
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1000209E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 56 * v2 - 24;
  for (i = 32; ; i += 56)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    v14 = *(v1 + i + 48);
    v12 = *(v1 + i + 16);
    v13 = *(v1 + i + 32);
    v11 = *(v1 + i);
    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v18 = *(v1 + v6 + 48);
    v16 = *(v1 + v6 + 16);
    v17 = *(v1 + v6 + 32);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100019C08(v1);
      v1 = result;
    }

    v8 = v1 + i;
    *(v8 + 48) = v18;
    *(v8 + 16) = v16;
    *(v8 + 32) = v17;
    *v8 = v15;
    v9 = v1 + v6;
    *(v9 + 48) = v14;
    *(v9 + 16) = v12;
    *(v9 + 32) = v13;
    *v9 = v11;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 56;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100020B18@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100021038(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100021280(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ColorSwatchPickerView);
  *a2 = sub_1000210A0;
  a2[1] = v7;
  return result;
}

uint64_t sub_100020C18(uint64_t *a1)
{
  v1 = *a1;
  result = Transaction.disablesAnimations.getter();
  if ((result & 1) == 0)
  {

    return Transaction.animation.setter();
  }

  return result;
}

uint64_t sub_100020C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004944(&qword_1000754D8, &qword_100051028);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100020D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004944(&qword_1000754D8, &qword_100051028);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ColorSwatchPickerView()
{
  result = qword_100075538;
  if (!qword_100075538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020E5C()
{
  sub_100020F10();
  if (v0 <= 0x3F)
  {
    sub_100005880();
    if (v1 <= 0x3F)
    {
      sub_100020F68();
      if (v2 <= 0x3F)
      {
        sub_100020FB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100020F10()
{
  if (!qword_100075548)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100075548);
    }
  }
}

void sub_100020F68()
{
  if (!qword_100075550)
  {
    v0 = type metadata accessor for GestureState();
    if (!v1)
    {
      atomic_store(v0, &qword_100075550);
    }
  }
}

void sub_100020FB8()
{
  if (!qword_100075558)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100075558);
    }
  }
}

uint64_t sub_100021038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSwatchPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000210A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001DBAC(a1, v6, a2);
}

uint64_t sub_100021120@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001E878(a1, v6, a2);
}

unint64_t sub_1000211A0()
{
  result = qword_1000755E0;
  if (!qword_1000755E0)
  {
    sub_100008B90(&qword_1000755D0, &qword_1000510F0);
    sub_10002122C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000755E0);
  }

  return result;
}

unint64_t sub_10002122C()
{
  result = qword_1000755E8;
  if (!qword_1000755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000755E8);
  }

  return result;
}

uint64_t sub_100021280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000212E8@<X0>(uint64_t *a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001EB74(a1, v6, a2);
}

uint64_t sub_100021368()
{
  v1 = type metadata accessor for ColorSwatchPickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v9 + v1[5]);

  v14 = v9 + v1[6];
  v15 = *(v14 + 1);

  v16 = *(v14 + 3);

  v17 = *(v9 + v1[7]);

  v18 = *(v9 + v1[8]);

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_100021544(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10001F154(a1, v1 + v4);
}

unint64_t sub_100021618()
{
  result = qword_100075610;
  if (!qword_100075610)
  {
    sub_100008B90(&qword_1000755B8, &qword_1000510B8);
    sub_1000216D0();
    sub_100008D7C(&qword_100075630, &qword_100075638, &qword_100051110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075610);
  }

  return result;
}

unint64_t sub_1000216D0()
{
  result = qword_100075618;
  if (!qword_100075618)
  {
    sub_100008B90(&qword_1000755B0, &qword_1000510B0);
    sub_100021788();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075618);
  }

  return result;
}

unint64_t sub_100021788()
{
  result = qword_100075620;
  if (!qword_100075620)
  {
    sub_100008B90(&qword_1000755A8, &qword_1000510A8);
    sub_100008D7C(&qword_100075628, &qword_1000755A0, &qword_1000510A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075620);
  }

  return result;
}

uint64_t sub_100021840()
{
  v1 = type metadata accessor for ColorSwatchPickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = v5 + v1[6];
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  v12 = *(v5 + v1[7]);

  v13 = *(v5 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021998(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001F630(a1, a2, v6);
}

uint64_t sub_100021A3C()
{
  v1 = type metadata accessor for ColorSwatchPickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[5]);

  v10 = v5 + v1[6];
  v11 = *(v10 + 1);

  v12 = *(v10 + 3);

  v13 = *(v5 + v1[7]);

  v14 = *(v5 + v1[8]);

  v15 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

double sub_100021BA0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_10001ECA0(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_100021CB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021CF4()
{
  v1 = type metadata accessor for ColorSwatchPickerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[5]);

  v10 = v5 + v1[6];
  v11 = *(v10 + 1);

  v12 = *(v10 + 3);

  v13 = *(v5 + v1[7]);

  v14 = *(v5 + v1[8]);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

__n128 sub_100021E50@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView() - 8);
  sub_10001EA68(*(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), *a1, v8);
  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_100021F18()
{
  result = qword_100075658;
  if (!qword_100075658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075658);
  }

  return result;
}

__n128 sub_100021F6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100021F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021FD0(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

__n128 sub_100022044(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100022068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000220AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100022188()
{
  result = qword_100075678;
  if (!qword_100075678)
  {
    sub_100008B90(&qword_100075670, &qword_100051370);
    sub_100008D7C(&qword_100075680, &qword_100075688, &qword_100051378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075678);
  }

  return result;
}

__n128 sub_100022240(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100022264(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

uint64_t sub_1000222C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10002233C()
{
  result = qword_1000756A0;
  if (!qword_1000756A0)
  {
    sub_100008B90(&qword_100075690, &qword_100051380);
    sub_1000223C8();
    sub_100022484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756A0);
  }

  return result;
}

unint64_t sub_1000223C8()
{
  result = qword_1000756A8;
  if (!qword_1000756A8)
  {
    sub_100008B90(&qword_1000756B0, &qword_1000513D0);
    sub_100022188();
    sub_100022644(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756A8);
  }

  return result;
}

unint64_t sub_100022484()
{
  result = qword_1000756B8;
  if (!qword_1000756B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756B8);
  }

  return result;
}

unint64_t sub_10002255C()
{
  result = qword_1000756D8;
  if (!qword_1000756D8)
  {
    sub_100008B90(&qword_1000756C0, &qword_100051428);
    sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438);
    sub_100022644(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756D8);
  }

  return result;
}

uint64_t sub_100022644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002268C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_1000756C0, &qword_100051428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100022700()
{
  result = qword_100075700;
  if (!qword_100075700)
  {
    sub_100008B90(&qword_100075708, &qword_100051448);
    sub_100022784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075700);
  }

  return result;
}

unint64_t sub_100022784()
{
  result = qword_100075710;
  if (!qword_100075710)
  {
    sub_100008B90(&qword_100075718, &qword_100051450);
    sub_10002255C();
    sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075710);
  }

  return result;
}

uint64_t sub_10002284C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v74 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_1000757A0, &qword_100051520);
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = sub_100004944(&qword_1000757A8, &qword_100051528);
  v15 = *(v14 - 8);
  v77 = v14;
  v78 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v73 = &v72 - v17;
  v84 = sub_100004944(&qword_1000757B0, &unk_100051530);
  v18 = *(*(v84 - 8) + 64);
  v19 = __chkstk_darwin(v84);
  v86 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v87 = &v72 - v21;
  v22 = swift_allocObject();
  v23 = *(v1 + 176);
  *(v22 + 176) = *(v1 + 160);
  *(v22 + 192) = v23;
  *(v22 + 208) = *(v1 + 192);
  *(v22 + 224) = *(v1 + 208);
  v24 = *(v1 + 112);
  *(v22 + 112) = *(v1 + 96);
  *(v22 + 128) = v24;
  v25 = *(v1 + 144);
  *(v22 + 144) = *(v1 + 128);
  *(v22 + 160) = v25;
  v26 = *(v1 + 48);
  *(v22 + 48) = *(v1 + 32);
  *(v22 + 64) = v26;
  v27 = *(v1 + 80);
  *(v22 + 80) = *(v1 + 64);
  *(v22 + 96) = v27;
  v28 = *(v1 + 16);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v28;
  v93 = sub_100024C14;
  v94 = v22;
  v29 = *(v1 + 200);
  v95 = *(v1 + 184);
  v96 = v29;
  sub_100024C1C(v1, &v88);
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.wrappedValue.getter();
  LOBYTE(v95) = v88;
  v30 = swift_allocObject();
  v31 = *(v1 + 176);
  *(v30 + 176) = *(v1 + 160);
  *(v30 + 192) = v31;
  *(v30 + 208) = *(v1 + 192);
  *(v30 + 224) = *(v1 + 208);
  v32 = *(v1 + 112);
  *(v30 + 112) = *(v1 + 96);
  *(v30 + 128) = v32;
  v33 = *(v1 + 144);
  *(v30 + 144) = *(v1 + 128);
  *(v30 + 160) = v33;
  v34 = *(v1 + 48);
  *(v30 + 48) = *(v1 + 32);
  *(v30 + 64) = v34;
  v35 = *(v1 + 80);
  *(v30 + 80) = *(v1 + 64);
  *(v30 + 96) = v35;
  v36 = *(v1 + 16);
  *(v30 + 16) = *v1;
  *(v30 + 32) = v36;
  sub_100024C1C(v1, &v88);
  v37 = sub_100004944(&qword_1000757B8, &unk_100051540);
  v38 = sub_100008D7C(&qword_1000757C0, &qword_1000757B8, &unk_100051540);
  View.onChange<A>(of:initial:_:)();

  v39 = v74;
  static AccessibilityChildBehavior.ignore.getter();
  *&v88 = v37;
  *(&v88 + 1) = &type metadata for Bool;
  *&v89 = v38;
  *(&v89 + 1) = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v73;
  v42 = v75;
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v39, v80);
  (*(v76 + 8))(v13, v42);
  v43 = v81;
  static AccessibilityTraits.allowsDirectInteraction.getter();
  *&v88 = v42;
  *(&v88 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v77;
  View.accessibility(addTraits:)();
  (*(v82 + 8))(v43, v83);
  (*(v78 + 8))(v41, v44);
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v47 = String._bridgeToObjectiveC()();
  v48 = String._bridgeToObjectiveC()();
  v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *&v88 = v50;
  *(&v88 + 1) = v52;
  sub_10000C030();
  v53 = Text.init<A>(_:)();
  v55 = v54;
  LOBYTE(v13) = v56;
  v57 = v86;
  ModifiedContent<>.accessibility(label:)();
  sub_10000C084(v53, v55, v13 & 1);

  sub_1000059D4(v57, &qword_1000757B0, &unk_100051530);
  v58 = *(v2 + 144);
  v90 = *(v2 + 128);
  v91 = v58;
  v92 = *(v2 + 160);
  v59 = *(v2 + 112);
  v88 = *(v2 + 96);
  v89 = v59;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  sub_100018314();
  v61 = v60;
  v62 = [v60 _accessibilityNameWithLuma];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  *&v88 = v63;
  *(&v88 + 1) = v65;
  v66 = Text.init<A>(_:)();
  v68 = v67;
  LOBYTE(v48) = v69;
  sub_100024CC4();
  v70 = v87;
  View.accessibility(value:)();
  sub_10000C084(v66, v68, v48 & 1);

  return sub_1000059D4(v70, &qword_1000757B0, &unk_100051530);
}

uint64_t sub_100023004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.topLeading.getter();
  a3[1] = v6;
  v7 = sub_100004944(&qword_1000757D0, &qword_100051598);
  return sub_100023064(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_100023064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v145 = a2;
  v139 = a3;
  v4 = sub_100004944(&qword_1000757D8, &qword_1000515A0);
  v135 = *(v4 - 8);
  v136 = v4;
  v5 = *(v135 + 64);
  __chkstk_darwin(v4);
  v128 = v116 - v6;
  v7 = sub_100004944(&qword_1000757E0, &qword_1000515A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v138 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v137 = v116 - v11;
  v143 = type metadata accessor for GeometryProxy();
  v12 = *(v143 - 8);
  v130 = *(v12 + 64);
  __chkstk_darwin(v143);
  v141 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for LocalCoordinateSpace();
  v14 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v16 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for DragGesture();
  v147 = *(v142 - 8);
  v17 = *(v147 + 64);
  __chkstk_darwin(v142);
  v19 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_100004944(&qword_100075598, &qword_1000515B0);
  v20 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v22 = v116 - v21;
  v23 = type metadata accessor for RoundedRectangle();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = (v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_100004944(&qword_1000757E8, &qword_1000515B8);
  v28 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v129 = v116 - v29;
  v30 = sub_100004944(&qword_1000757F0, &unk_1000515C0);
  v133 = *(v30 - 8);
  v134 = v30;
  v31 = *(v133 + 64);
  v32 = __chkstk_darwin(v30);
  v132 = v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v146 = v116 - v34;
  v120 = objc_opt_self();
  v35 = [v120 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 6)
  {
    v37 = 16.0;
  }

  else
  {
    v37 = 8.0;
  }

  v38 = *(v24 + 28);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v27 + v38, v39, v40);
  *v27 = v37;
  v27[1] = v37;
  v41 = v27;
  v42 = v129;
  sub_100024E50(v41, v129);
  *(v42 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
  static CoordinateSpaceProtocol<>.local.getter();
  v126 = v16;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v43 = v141;
  v44 = v143;
  v124 = *(v12 + 16);
  v116[1] = v12 + 16;
  v124(v141, v145, v143);
  v45 = (*(v12 + 80) + 232) & ~*(v12 + 80);
  v116[2] = *(v12 + 80);
  v123 = v45 + v130;
  v46 = swift_allocObject();
  v47 = *(a1 + 176);
  *(v46 + 176) = *(a1 + 160);
  *(v46 + 192) = v47;
  *(v46 + 208) = *(a1 + 192);
  *(v46 + 224) = *(a1 + 208);
  v48 = *(a1 + 112);
  *(v46 + 112) = *(a1 + 96);
  *(v46 + 128) = v48;
  v49 = *(a1 + 144);
  *(v46 + 144) = *(a1 + 128);
  *(v46 + 160) = v49;
  v50 = *(a1 + 48);
  *(v46 + 48) = *(a1 + 32);
  *(v46 + 64) = v50;
  v51 = *(a1 + 80);
  *(v46 + 80) = *(a1 + 64);
  *(v46 + 96) = v51;
  v52 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v52;
  v53 = *(v12 + 32);
  v125 = v45;
  v130 = v12 + 32;
  v122 = v53;
  v53(v46 + v45, v43, v44);
  sub_100024C1C(a1, &v171);
  v54 = sub_100024EB8(&qword_1000755F8, &type metadata accessor for DragGesture);
  v55 = sub_100024EB8(&qword_100075600, &type metadata accessor for DragGesture.Value);
  v56 = v142;
  v121 = v54;
  v119 = v55;
  Gesture<>.onChanged(_:)();

  v57 = *(v147 + 8);
  v127 = v19;
  v147 += 8;
  v117 = v57;
  v57(v19, v56);
  v58 = *(a1 + 200);
  v176 = *(a1 + 184);
  v177 = v58;
  v59 = *(a1 + 200);
  v171 = *(a1 + 184);
  v172 = v59;
  v118 = sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v60 = *(&v151 + 1);
  v61 = v152;
  v62 = v144;
  v63 = &v22[*(v144 + 44)];
  *v63 = v151;
  *(v63 + 1) = v60;
  *(v63 + 1) = v61;
  v64 = &v22[*(v62 + 48)];
  *v64 = sub_10001F624;
  *(v64 + 1) = 0;
  static GestureMask.all.getter();
  sub_100024F00();
  sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0);
  View.gesture<A>(_:including:)();
  v131 = v22;
  sub_1000059D4(v22, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v42, &qword_1000757E8, &qword_1000515B8);
  if (*(a1 + 168))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v171 && v171 == 1)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    GeometryProxy.size.getter();
    *&v68 = COERCE_DOUBLE(sub_100023E0C(v66, v67));
    if ((v70 & 1) == 0)
    {
      v72 = *&v68;
      v73 = v69;
      v74 = *(a1 + 144);
      v173 = *(a1 + 128);
      v174 = v74;
      v175 = *(a1 + 160);
      v75 = *(a1 + 112);
      v171 = *(a1 + 96);
      v172 = v75;
      sub_100004944(&qword_100076350, &qword_100051160);
      Binding.wrappedValue.getter();
      v76 = v120;
      v77 = [v120 currentDevice];
      [v77 userInterfaceIdiom];

      v78 = [v76 currentDevice];
      [v78 userInterfaceIdiom];

      v160 = v167;
      v161 = v168;
      v162 = v169;
      LOWORD(v163) = v170;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v79 = v145;
      GeometryProxy.size.getter();
      v82 = sub_100025084(v72, v73, v80, v81);
      v155 = v164;
      v156 = v165;
      v157 = v166;
      v151 = v160;
      v152 = v161;
      v153 = v162;
      v154 = v163;
      v158 = v82;
      v159 = v83;
      static CoordinateSpaceProtocol<>.local.getter();
      v84 = v127;
      DragGesture.init<A>(minimumDistance:coordinateSpace:)();
      v85 = v141;
      v86 = v79;
      v87 = v143;
      v124(v141, v86, v143);
      v88 = swift_allocObject();
      v89 = *(a1 + 176);
      *(v88 + 176) = *(a1 + 160);
      *(v88 + 192) = v89;
      *(v88 + 208) = *(a1 + 192);
      *(v88 + 224) = *(a1 + 208);
      v90 = *(a1 + 112);
      *(v88 + 112) = *(a1 + 96);
      *(v88 + 128) = v90;
      v91 = *(a1 + 144);
      *(v88 + 144) = *(a1 + 128);
      *(v88 + 160) = v91;
      v92 = *(a1 + 48);
      *(v88 + 48) = *(a1 + 32);
      *(v88 + 64) = v92;
      v93 = *(a1 + 80);
      *(v88 + 80) = *(a1 + 64);
      *(v88 + 96) = v93;
      v94 = *(a1 + 16);
      *(v88 + 16) = *a1;
      *(v88 + 32) = v94;
      v122(v88 + v125, v85, v87);
      sub_100024C1C(a1, &v171);
      v95 = v131;
      v96 = v142;
      Gesture<>.onChanged(_:)();

      v117(v84, v96);
      v171 = v176;
      v172 = v177;
      GestureState.projectedValue.getter();
      v97 = v149;
      v98 = v150;
      v99 = v144;
      v100 = v95 + *(v144 + 44);
      *v100 = v148;
      *(v100 + 8) = v97;
      *(v100 + 16) = v98;
      v101 = (v95 + *(v99 + 48));
      *v101 = sub_10001F624;
      v101[1] = 0;
      static GestureMask.all.getter();
      sub_100004944(&qword_100075810, &qword_100051620);
      sub_1000252F8();
      v102 = v128;
      View.gesture<A>(_:including:)();
      sub_1000059D4(v95, &qword_100075598, &qword_1000515B0);
      v104 = v135;
      v103 = v136;
      v71 = v137;
      (*(v135 + 32))(v137, v102, v136);
      (*(v104 + 56))(v71, 0, 1, v103);
      goto LABEL_12;
    }

LABEL_10:
    v71 = v137;
    (*(v135 + 56))(v137, 1, 1, v136);
LABEL_12:
    v106 = v132;
    v105 = v133;
    v107 = *(v133 + 16);
    v108 = v146;
    v109 = v134;
    v107(v132, v146, v134);
    v110 = v138;
    sub_100025014(v71, v138);
    v111 = v139;
    v107(v139, v106, v109);
    v112 = sub_100004944(&qword_100075808, &qword_100051618);
    sub_100025014(v110, &v111[*(v112 + 48)]);
    sub_1000059D4(v71, &qword_1000757E0, &qword_1000515A8);
    v113 = *(v105 + 8);
    v113(v108, v109);
    sub_1000059D4(v110, &qword_1000757E0, &qword_1000515A8);
    return (v113)(v106, v109);
  }

  v115 = *(a1 + 176);
  type metadata accessor for ColorPickerState();
  sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100023E0C(double a1, double a2)
{
  if (*(v2 + 21))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v51 << 8 == 512)
    {
      return 0;
    }

    v23 = *v2;
    v31 = v2[1];
    sub_100004944(&qword_100075838, &qword_100051678);
    State.wrappedValue.getter();
    if (LOBYTE(v61))
    {
      goto LABEL_8;
    }

    v24 = v2[2];
    v32 = v2[3];
    v39 = v2[4];
    v45 = v2[5];
    sub_100004944(&qword_100075840, &qword_100051680);
    State.wrappedValue.getter();
    if (v62 & 0xFF00) == 0x200 || (v40 = v2[8], v46 = v2[9], v52 = *(v2 + 80), v25 = v2[6], v33 = v2[7], sub_100004944(&qword_100076350, &qword_100051160), Binding.wrappedValue.getter(), ((HIBYTE(v62) ^ ((v62 & 0x100) >> 8))) || sqrt((v59 - v59) * (v59 - v59) + (v60 - v60) * (v60 - v60) + (v61 - v61) * (v61 - v61)) > 0.001)
    {
LABEL_8:
      v41 = v2[8];
      v47 = v2[9];
      v53 = *(v2 + 80);
      v26 = v2[6];
      v34 = v2[7];
      sub_100004944(&qword_100076350, &qword_100051160);
      Binding.wrappedValue.getter();
      v6 = sub_10003ADC0(&v59, a1);
      v8 = -(v7 / a2 + v7 / a2 + -1.0);
      v9 = [objc_opt_self() colorAtLocation:{fmax(fmin(v6 / a1 + v6 / a1 + -1.0, 1.0), -1.0), fmax(fmin(v8, 1.0), -1.0)}];
      sub_100019F88(v9, &v57);
      v42 = v2[8];
      v48 = v2[9];
      v54 = *(v2 + 80);
      v27 = v2[6];
      v35 = v2[7];
      Binding.wrappedValue.getter();
      v10 = vsubq_f64(*v21, v57);
      if (sqrt(vaddvq_f64(vmulq_f64(v10, v10)) + (*&v21[16] - v58) * (*&v21[16] - v58)) >= 0.55)
      {
        v28 = *v2;
        v36 = v2[1];
        State.wrappedValue.getter();
        v43 = v2[8];
        v49 = v2[9];
        v55 = *(v2 + 80);
        v29 = v2[6];
        v37 = v2[7];
        Binding.wrappedValue.getter();
        v11 = *&v21[8];
        if (qword_1000743D0 != -1)
        {
          swift_once();
          v11 = *&v21[8];
        }

        if (v22 == byte_100075751 && (v12 = vsubq_f64(v11, *(&xmmword_100075720 + 8)), v13 = vmulq_f64(v12, v12), sqrt(v13.f64[1] + v13.f64[0] + (*v21 - *&xmmword_100075720) * (*v21 - *&xmmword_100075720)) <= 0.001))
        {

          return 0;
        }

        else
        {
          v44 = v2[8];
          v50 = v2[9];
          v56 = *(v2 + 80);
          v30 = v2[6];
          v38 = v2[7];
          Binding.wrappedValue.getter();
          v14 = *&v21[8];
          if (qword_1000743D8 != -1)
          {
            swift_once();
            v14 = *&v21[8];
          }

          if (v22 != byte_100075789)
          {

            return 0;
          }

          v20 = v14;
          v15 = (*v21 - *&xmmword_100075758) * (*v21 - *&xmmword_100075758);
          v19 = *(&xmmword_100075758 + 8);

          v16 = vsubq_f64(v20, v19);
          v17 = vmulq_f64(v16, v16);
          if (sqrt(v17.f64[1] + v17.f64[0] + v15) > 0.001)
          {
            return 0;
          }

          return 0x7FEFFFFFFFFFFFFFLL;
        }
      }

      else
      {

        return *&v6;
      }
    }

    else
    {
      return *&v59;
    }
  }

  else
  {
    v18 = *(v2 + 22);
    type metadata accessor for ColorPickerState();
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100024368(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a3 + 168))
  {
    v3 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    v5 = *(a3 + 176);
    type metadata accessor for ColorPickerState();
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002443C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 21))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v52) = 1;

    static Published.subscript.setter();
    DragGesture.Value.location.getter();
    v3 = a2[1];
    v52 = *a2;
    v53 = v3;
    *&v43 = v4;
    *(&v43 + 1) = v5;
    LOBYTE(v44) = 0;
    sub_100004944(&qword_100075838, &qword_100051678);
    State.wrappedValue.setter();
    v6 = a2[7];
    v7 = a2[9];
    v54 = a2[8];
    v55 = v7;
    v8 = a2[7];
    v52 = a2[6];
    v53 = v8;
    v9 = a2[9];
    v45 = v54;
    v46 = v9;
    v56 = *(a2 + 80);
    v47 = *(a2 + 80);
    v43 = v52;
    v44 = v6;
    sub_100008A40(&v52, &v38, &qword_100076350, &qword_100051160);
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    v10 = *(&v38 + 1);
    v35 = *&v39;
    v36 = *&v38;
    v11 = *(&v39 + 1);
    v12 = BYTE1(v41);
    DragGesture.Value.location.getter();
    v14 = v13;
    v16 = v15;
    GeometryProxy.size.getter();
    v19 = [objc_opt_self() colorAtLocation:{fmax(fmin(v14 / v17 + v14 / v17 + -1.0, 1.0), -1.0), fmax(fmin(-(v16 / v18 + v16 / v18 + -1.0), 1.0), -1.0)}];
    sub_100019C44(v19, v12, v48);
    sub_1000197D4(3, 0, v49, v11);
    if (v12 == (v50 & 0x100) >> 8 && (v20.f64[0] = v36, v20.f64[1] = v35, v21 = vsubq_f64(vzip1q_s64(v49[0], v49[1]), v20), v22 = vmulq_f64(v21, v21), sqrt(v22.f64[0] + (*&v49[0].i64[1] - v10) * (*&v49[0].i64[1] - v10) + v22.f64[1]) <= 0.001))
    {
      v32 = &v52;
    }

    else
    {
      v23 = UIAccessibilityAnnouncementNotification;
      sub_100018314();
      v25 = v24;
      v26 = [v24 _accessibilityNameWithLuma];

      if (!v26)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = String._bridgeToObjectiveC()();
      }

      UIAccessibilityPostNotification(v23, v26);

      v27 = a2[3];
      v51[0] = a2[2];
      v51[1] = v27;
      v28 = a2[5];
      v30 = a2[2];
      v29 = a2[3];
      v51[2] = a2[4];
      v51[3] = v28;
      v43 = v30;
      v44 = v29;
      v31 = a2[5];
      v45 = a2[4];
      v46 = v31;
      sub_100008A40(v51, &v38, &qword_100075840, &qword_100051680);
      sub_100004944(&qword_100075840, &qword_100051680);
      State.wrappedValue.setter();
      v37[0] = v43;
      v37[1] = v44;
      v37[2] = v45;
      v37[3] = v46;
      sub_1000059D4(v37, &qword_100075840, &qword_100051680);
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v38 = v52;
      v39 = v53;
      Binding.wrappedValue.setter();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v43 = v38;
      v44 = v39;
      v32 = &v43;
    }

    return sub_1000059D4(v32, &qword_100076350, &qword_100051160);
  }

  else
  {
    v34 = *(a2 + 22);
    type metadata accessor for ColorPickerState();
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002487C@<X0>(uint64_t a1@<X8>)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_10002284C(a1);
}

double sub_1000248E8()
{
  v0 = [objc_opt_self() whiteColor];
  sub_100019F88(v0, v2);
  xmmword_100075720 = v2[0];
  *algn_100075730 = v2[1];
  result = *&v3;
  xmmword_100075740 = v3;
  unk_100075750 = v4;
  return result;
}

double sub_100024950()
{
  v0 = [objc_opt_self() blackColor];
  sub_100019F88(v0, v2);
  xmmword_100075758 = v2[0];
  unk_100075768 = v2[1];
  result = *&v3;
  xmmword_100075778 = v3;
  unk_100075788 = v4;
  return result;
}

__n128 sub_1000249B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100004944(&qword_100075790, &qword_100051460);
  State.init(wrappedValue:)();
  sub_100004944(&qword_100075798, &qword_100051468);
  State.init(wrappedValue:)();
  GestureState.init(wrappedValue:)();
  result = 0u;
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = *(&v12 + 1);
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  v9 = *(a1 + 48);
  *(a4 + 128) = *(a1 + 32);
  *(a4 + 144) = v9;
  *(a4 + 160) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(a4 + 96) = *a1;
  *(a4 + 112) = v10;
  *(a4 + 168) = a2;
  *(a4 + 176) = a3;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0u;
  return result;
}

__n128 sub_100024AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_100024B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024C54()
{
  v1 = v0[5];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[23];

  v6 = v0[26];

  v7 = v0[28];

  return _swift_deallocObject(v0, 232, 7);
}

unint64_t sub_100024CC4()
{
  result = qword_1000757C8;
  if (!qword_1000757C8)
  {
    sub_100008B90(&qword_1000757B0, &unk_100051530);
    sub_100008B90(&qword_1000757A0, &qword_100051520);
    sub_100008B90(&qword_1000757B8, &unk_100051540);
    sub_100008D7C(&qword_1000757C0, &qword_1000757B8, &unk_100051540);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100024EB8(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000757C8);
  }

  return result;
}

uint64_t sub_100024E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024EB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100024F00()
{
  result = qword_1000757F8;
  if (!qword_1000757F8)
  {
    sub_100008B90(&qword_1000757E8, &qword_1000515B8);
    sub_100024FB8();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000757F8);
  }

  return result;
}

unint64_t sub_100024FB8()
{
  result = qword_100075800;
  if (!qword_100075800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075800);
  }

  return result;
}

uint64_t sub_100025014(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_1000757E0, &qword_1000515A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100025084(double a1, double a2, double a3, double a4)
{
  v5 = fmin(a3, 0.0);
  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a1 < 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 22.0;
  }

  else
  {
    v10 = 16.5;
  }

  v11 = v6 - v10;
  v12 = [v7 currentDevice];
  [v12 userInterfaceIdiom];

  return v11;
}

uint64_t sub_100025190()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 232) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 5);

  v7 = *(v0 + 13);

  v8 = *(v0 + 14);

  v9 = *(v0 + 15);

  v10 = *(v0 + 23);

  v11 = *(v0 + 26);

  v12 = *(v0 + 28);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025284(uint64_t a1)
{
  v3 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_10002443C(a1, (v1 + 16));
}

unint64_t sub_1000252F8()
{
  result = qword_100075818;
  if (!qword_100075818)
  {
    sub_100008B90(&qword_100075810, &qword_100051620);
    sub_100025384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075818);
  }

  return result;
}

unint64_t sub_100025384()
{
  result = qword_100075820;
  if (!qword_100075820)
  {
    sub_100008B90(&qword_100075828, &qword_100051628);
    sub_100025410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075820);
  }

  return result;
}

unint64_t sub_100025410()
{
  result = qword_100075830;
  if (!qword_100075830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075830);
  }

  return result;
}

unint64_t sub_100025470()
{
  result = qword_100075848;
  if (!qword_100075848)
  {
    sub_100008B90(&qword_100075850, &qword_100051688);
    sub_100024CC4();
    sub_100024EB8(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075848);
  }

  return result;
}

double sub_100025560@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1000255EC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1000256EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000257D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100025970()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000259F0()
{
  result = CUIGetDeviceArtworkDisplayGamut();
  byte_10007B138 = result != 0;
  return result;
}

uint64_t sub_100025A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025A98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100025B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004944(&qword_100075FB8, &qword_100051910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = sub_100004944(&qword_100075FC0, &qword_100051918);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  v16 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor;
  swift_beginAccess();
  sub_100008A40(v2 + v16, v15, &qword_100075FC0, &qword_100051918);
  v17 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v15, v17);
  }

  sub_1000059D4(v15, &qword_100075FC0, &qword_100051918);
  swift_beginAccess();
  sub_100004944(&qword_100075FB0, &qword_100051758);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100004944(&qword_100075FC8, &qword_100051920);
  sub_100027934();
  Publisher.map<A>(_:)();

  (*(v5 + 8))(v8, v4);
  (*(v18 + 16))(v13, a1, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  sub_100027998(v13, v2 + v16);
  return swift_endAccess();
}

void sub_100025E44(__int128 *a1@<X0>, void *a2@<X8>)
{
  if ((a1[3] & 0xFF00) == 0x200)
  {
    v3 = 0;
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000195E4(v4);
  }

  *a2 = v3;
}

uint64_t sub_100025F10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v2[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2[0] != 1)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v2[0];
}

uint64_t sub_10002608C(uint64_t a1)
{
  v95 = a1;
  v2 = sub_100004944(&qword_100075F80, &qword_100051720);
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  __chkstk_darwin(v2);
  v92 = &v78 - v4;
  v91 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v5 = *(*(v91 - 8) + 64);
  v6 = __chkstk_darwin(v91);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v78 - v8;
  v9 = sub_100004944(&qword_100075F88, &qword_100051728);
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v86 = &v78 - v11;
  v85 = sub_100004944(&qword_100075F90, &unk_100051730);
  v84 = *(v85 - 8);
  v12 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v78 - v13;
  v81 = sub_100004944(&qword_100075F98, &qword_1000525C0);
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v78 - v15;
  v16 = sub_100004944(&qword_100075FA0, &qword_100051740);
  v17 = *(v16 - 8);
  v97 = v16;
  v98 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v96 = &v78 - v19;
  v20 = sub_100004944(&qword_100076550, &qword_100051748);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v78 - v23;
  v82 = sub_100004944(&qword_100075FA8, &qword_100051750);
  v25 = *(v82 - 1);
  v26 = *(v25 + 64);
  __chkstk_darwin(v82);
  v28 = &v78 - v27;
  v29 = sub_100004944(&qword_100075FB0, &qword_100051758);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v78 - v32;
  v34 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedColor;
  memset(v100, 0, sizeof(v100));
  v101 = 512;
  sub_100004944(&qword_100075798, &qword_100051468);
  Published.init(initialValue:)();
  (*(v30 + 32))(v1 + v34, v33, v29);
  v35 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__fallbackColor;
  v36 = [objc_opt_self() blackColor];
  sub_100019F88(v36, v100);
  Published.init(initialValue:)();
  (*(v25 + 32))(v1 + v35, v28, v82);
  v37 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__allowsNoColor;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38 = *(v21 + 32);
  v38(v1 + v37, v24, v20);
  v39 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__maxGain;
  *&v100[0] = 0x3FF0000000000000;
  v40 = v96;
  Published.init(initialValue:)();
  v41 = *(v98 + 32);
  v98 += 32;
  v82 = v41;
  v41(v1 + v39, v40, v97);
  v42 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useAdjustment;
  LOBYTE(v100[0]) = 1;
  Published.init(initialValue:)();
  v38(v1 + v42, v24, v20);
  v43 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__lockHue;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v43, v24, v20);
  v44 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isVolatile;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v44, v24, v20);
  v45 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedTab;
  LOBYTE(v100[0]) = 0;
  v46 = v79;
  Published.init(initialValue:)();
  (*(v80 + 32))(v1 + v45, v46, v81);
  v81 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__title;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v49 = String._bridgeToObjectiveC()();
  v50 = String._bridgeToObjectiveC()();
  v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *&v100[0] = v52;
  *(&v100[0] + 1) = v54;
  v55 = v83;
  Published.init(initialValue:)();
  (*(v84 + 32))(v1 + v81, v55, v85);
  v56 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsAlpha;
  LOBYTE(v100[0]) = 1;
  Published.init(initialValue:)();
  v38(v1 + v56, v24, v20);
  v57 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsEyedropper;
  LOBYTE(v100[0]) = 1;
  Published.init(initialValue:)();
  v38(v1 + v57, v24, v20);
  v58 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__suggestedColors;
  *&v100[0] = 0;
  sub_100004944(&qword_100075990, &qword_1000516B8);
  v59 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(v1 + v58, v59, v88);
  v60 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperShowing;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v60, v24, v20);
  v61 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperIsFloating;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v61, v24, v20);
  v62 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useLandscapeLayout;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v62, v24, v20);
  v63 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isEmbedded;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v63, v24, v20);
  v64 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isPopover;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v64, v24, v20);
  v65 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isSheet;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v65, v24, v20);
  v66 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__width;
  *&v100[0] = 0;
  v67 = v96;
  Published.init(initialValue:)();
  v82(v1 + v66, v67, v97);
  v68 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsGridOnly;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v68, v24, v20);
  v69 = (v1 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  *v69 = 0;
  v69[1] = 0;
  v70 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__enableDarkGrid;
  LOBYTE(v100[0]) = 0;
  Published.init(initialValue:)();
  v38(v1 + v70, v24, v20);
  v71 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__overrideColorScheme;
  v72 = type metadata accessor for ColorScheme();
  v73 = v89;
  (*(*(v72 - 8) + 56))(v89, 1, 1, v72);
  sub_100008A40(v73, v90, &qword_100075648, &qword_1000511B0);
  v74 = v92;
  Published.init(initialValue:)();
  sub_1000059D4(v73, &qword_100075648, &qword_1000511B0);
  (*(v93 + 32))(v1 + v71, v74, v94);
  v75 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor;
  v76 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  (*(*(v76 - 8) + 56))(v1 + v75, 1, 1, v76);
  swift_beginAccess();
  v99 = v95;
  sub_100004944(&unk_1000765A0, &qword_1000516B0);
  Published.init(initialValue:)();
  swift_endAccess();
  return v1;
}

uint64_t sub_100026CE0()
{
  v1 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedColor;
  v2 = sub_100004944(&qword_100075FB0, &qword_100051758);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__fallbackColor;
  v4 = sub_100004944(&qword_100075FA8, &qword_100051750);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__allowsNoColor;
  v6 = sub_100004944(&qword_100076550, &qword_100051748);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__maxGain;
  v9 = sub_100004944(&qword_100075FA0, &qword_100051740);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useAdjustment, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__lockHue, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isVolatile, v6);
  v11 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedTab;
  v12 = sub_100004944(&qword_100075F98, &qword_1000525C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__favoriteColors;
  v14 = sub_100004944(&qword_100075FD8, &unk_100051DF0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__title;
  v16 = sub_100004944(&qword_100075F90, &unk_100051730);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsAlpha, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsEyedropper, v6);
  v17 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__suggestedColors;
  v18 = sub_100004944(&qword_100075F88, &qword_100051728);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperShowing, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperIsFloating, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useLandscapeLayout, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isEmbedded, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isPopover, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isSheet, v6);
  v10(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__width, v9);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsGridOnly, v6);
  v19 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8);
  sub_10000C134(*(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close));
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__enableDarkGrid, v6);
  v20 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__overrideColorScheme;
  v21 = sub_100004944(&qword_100075F80, &qword_100051720);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  sub_1000059D4(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor, &qword_100075FC0, &qword_100051918);
  return v0;
}

uint64_t sub_100027188()
{
  sub_100026CE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ColorPickerState()
{
  result = qword_100075940;
  if (!qword_100075940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027234()
{
  sub_100027680(319, &qword_100075950, &qword_100075798, &qword_100051468, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    sub_100027634(319, &qword_100075958);
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      sub_100027634(319, &qword_100075960);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_100027634(319, &qword_100075968);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_100027634(319, &qword_100075970);
          if (v11 <= 0x3F)
          {
            v24 = *(v10 - 8) + 64;
            sub_100027680(319, &qword_100075978, &unk_1000765A0, &qword_1000516B0, &type metadata accessor for Published);
            if (v13 <= 0x3F)
            {
              v25 = *(v12 - 8) + 64;
              sub_100027634(319, &qword_100075980);
              if (v15 <= 0x3F)
              {
                v26 = *(v14 - 8) + 64;
                sub_100027680(319, &qword_100075988, &qword_100075990, &qword_1000516B8, &type metadata accessor for Published);
                if (v17 <= 0x3F)
                {
                  v27 = *(v16 - 8) + 64;
                  sub_100027680(319, &qword_100075998, &qword_100075648, &qword_1000511B0, &type metadata accessor for Published);
                  if (v19 <= 0x3F)
                  {
                    v28 = *(v18 - 8) + 64;
                    sub_100027680(319, &qword_1000759A0, &unk_1000759A8, &qword_1000516E0, &type metadata accessor for Optional);
                    if (v21 <= 0x3F)
                    {
                      v29 = *(v20 - 8) + 64;
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100027634(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100027680(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008B90(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000276F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ColorPickerState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100027730@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v11;
  if ((v11 & 0xFF00) == 0x200)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = v7;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
  }

  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_100027838(__int128 *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[1];
  v6 = *a1;

  return static Published.subscript.setter();
}

unint64_t sub_100027934()
{
  result = qword_100075FD0;
  if (!qword_100075FD0)
  {
    sub_100008B90(&qword_100075FB8, &qword_100051910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075FD0);
  }

  return result;
}

uint64_t sub_100027998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075FC0, &qword_100051918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027B20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100019C08(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100027BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[0] = a1;
  v19[1] = a2;
  v6 = sub_100004944(&qword_100076290, &qword_100052268);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v19 - v9;
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10002F0F4(0, v11, 0);
  v12 = v21;
  for (i = (a3 + 32); ; i += 4)
  {
    v14 = i[1];
    v20[0] = *i;
    v20[1] = v14;
    v15 = i[3];
    v20[2] = i[2];
    v20[3] = v15;
    (v19[0])(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      sub_10002F0F4(v16 > 1, v17 + 1, 1);
      v12 = v21;
    }

    v12[2] = v17 + 1;
    sub_100031594(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_100027D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100027E14(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004944(&qword_100076290, &qword_100052268);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10002F0F4(0, v11, 0);
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v22;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_10002F0F4(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      v12[2] = v17 + 1;
      sub_100031594(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_10002820C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004944(&qword_100076260, &qword_100052058);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v31 - v8;
  if (*(a1 + 48) >> 62 == 2)
  {
    v10 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 16);
    v37[0] = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent);
    v37[1] = v10;
    v37[2] = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 32);
    v38 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 48);
    sub_10003126C(v37, v36);
    sub_100028550(a1);
    result = sub_1000312A4(v37);
    v11 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    if (v11)
    {
      v12 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v36[0] = 0;
      v13 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      (*(v5 + 8))(v9, v4);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v13 + 80);
        v16 = _swiftEmptyArrayStorage;
        do
        {
          v22 = *v15;
          if (*v15 >> 62 == 2)
          {
            v34 = *v15;
            v23 = *(v15 - 2);
            v33 = *(v15 - 3);
            v32 = v23;
            v31 = *(v15 - 1);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36[0] = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10002F0D4(0, v16[2] + 1, 1);
              v16 = v36[0];
            }

            v18 = v16[2];
            v17 = v16[3];
            v19 = v34;
            if (v18 >= v17 >> 1)
            {
              sub_10002F0D4((v17 > 1), v18 + 1, 1);
              v19 = v34;
              v16 = v36[0];
            }

            v16[2] = v18 + 1;
            v20 = &v16[8 * v18];
            v21 = v32;
            v20[2] = v33;
            v20[3] = v21;
            v20[4] = v31;
            v20[5] = v19;
          }

          v15 += 4;
          --v14;
        }

        while (v14);
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      v25 = sub_1000286F0(a1, v16);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        v28 = v2 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator__colorPickerState;
        swift_beginAccess();
        v29 = *(v28 + 8);
        swift_getKeyPath();
        swift_getKeyPath();

        v30 = static Published.subscript.modify();
        sub_100027B20(v25, v36);
        v30(v35, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100028550(uint64_t result)
{
  v2 = *(result + 48);
  if (v2 >> 62 == 2)
  {
    v3 = *(result + 56);
    v4 = *(result + 16);
    v19[0] = *result;
    v19[1] = v4;
    v19[2] = *(result + 32);
    v20 = v2;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v17 = v6;
    v18 = v5;
    v14 = v5;
    v15 = v6;
    sub_100008A40(&v18, v13, &qword_100076330, &qword_100050368);
    sub_100008A40(&v17, v13, &qword_100076338, &qword_100052370);
    sub_100004944(&qword_1000762D8, &qword_1000522E8);
    State.wrappedValue.getter();
    v7 = v13[0];
    if (*(v13[0] + 16) && (v8 = sub_10002E89C(v19), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = &_swiftEmptySetSingleton;
    }

    v16 = v10;
    sub_10002F760(&v14, v3);
    v11 = v16;
    v14 = v5;
    v15 = v6;
    State.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v13[2];
    sub_10002FDEC(v11, v19, isUniquelyReferenced_nonNull_native);
    v13[0] = v5;
    v13[1] = v6;
    State.wrappedValue.setter();
    sub_1000059D4(&v18, &qword_100076330, &qword_100050368);
    return sub_1000059D4(&v17, &qword_100076338, &qword_100052370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000286F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    result = 0;
    v5 = (a2 + 88);
    do
    {
      v6 = v5[-4].f64[1];
      v8 = v5[-3];
      v7 = v5[-2];
      v9 = v5[-1].f64[0];
      v10 = LOBYTE(v5[-1].f64[1]);
      v11 = BYTE1(v5[-1].f64[1]);
      v12 = v5->f64[0];
      v13 = HIWORD(v5[-1].f64[1]) >> 14;
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v19 = v10 | (v11 << 8) | ((*(&v5[-1].f64[1] + 2) | (HIWORD(v5[-1].f64[1]) << 32)) << 16);
          if (*&v8.f64[1] | *&v8.f64[0] | *&v6 | *&v7.f64[0] | *&v7.f64[1] | *&v9 | *&v12)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19 == 0xC000000000000000;
          }

          if (v20)
          {
            v23 = *(a1 + 48);
            if (v23 >> 62 == 3 && v23 == 0xC000000000000000)
            {
              v24 = vorrq_s8(*(a1 + 8), *(a1 + 24));
              if (!(*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *(a1 + 40) | *(a1 + 56) | *a1))
              {
                return result;
              }
            }
          }

          else
          {
            v21 = *(a1 + 48);
            if (v21 >> 62 == 3 && !*(a1 + 56) && v21 == 0xC000000000000000 && *a1 == 1)
            {
              v22 = vorrq_s8(*(a1 + 16), *(a1 + 32));
              if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(a1 + 8)))
              {
                return result;
              }
            }
          }

          goto LABEL_5;
        }

        v14 = *(a1 + 48);
        if (v14 >> 62 != 2)
        {
          goto LABEL_5;
        }

        v17 = v5[-4].f64[1];
        if (*a1 != v6 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), v8), vceqq_f64(*(a1 + 24), v7)))) & 1) == 0)
        {
          goto LABEL_5;
        }

        v16 = *(a1 + 56);
        if (v10)
        {
LABEL_3:
          if (v14 & ~(v11 ^ (v14 >> 8)))
          {
            goto LABEL_4;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v13)
        {
          if (*(a1 + 48) >> 62 == 1 && *&v6 == *a1)
          {
            return result;
          }

          goto LABEL_5;
        }

        v14 = *(a1 + 48);
        if (v14 >> 62)
        {
          goto LABEL_5;
        }

        v15 = v5[-4].f64[1];
        if (*a1 != v6 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), v8), vceqq_f64(*(a1 + 24), v7)))) & 1) == 0)
        {
          goto LABEL_5;
        }

        v16 = *(a1 + 56);
        if (v10)
        {
          goto LABEL_3;
        }
      }

      v18 = v5[-1].f64[0];
      if (!(v14 & 1 | (*(a1 + 40) != v9)) && (((v14 >> 8) & 1 ^ v11) & 1) == 0)
      {
LABEL_4:
        if (*&v12 == v16)
        {
          return result;
        }
      }

LABEL_5:
      ++result;
      v5 += 4;
    }

    while (v2 != result);
  }

  return 0;
}

void sub_100028938(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if ([a1 state] == 1)
  {
    v11 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView;
    [a1 locationInView:*(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView)];
    v12 = *(v1 + v11);
    if (v12)
    {
      v13 = [v12 indexPathForItemAtPoint:?];
      if (!v13)
      {
        return;
      }

      v14 = v13;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v4 + 32))(v10, v8, v3);
      v15 = *(v1 + v11);
      if (v15)
      {
        v16 = v1;
        v17 = v15;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v19 = [v17 cellForItemAtIndexPath:isa];

        if (v19)
        {
          type metadata accessor for FavoriteColorWellCell();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            v21 = *(v16 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
            if (v21)
            {
              v22 = v20;
              v23 = v21;
              dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

              if ((v27 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL || v27 >> 62 != 2)
              {
                (*(v4 + 8))(v10, v3);

                return;
              }

              sub_10000598C(0, &qword_100076328, UIEditMenuConfiguration_ptr);
              [v22 center];
              v24 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
              v25 = sub_10003A000();
              [v25 presentEditMenuWithConfiguration:v24];

              goto LABEL_13;
            }

LABEL_17:
            __break(1u);
            return;
          }
        }

LABEL_13:
        (*(v4 + 8))(v10, v3);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_100028C9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100028DB0()
{
  v1 = v0;
  v2 = sub_100004944(&qword_100076260, &qword_100052058);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v5 = &v58 - v4;
  v6 = sub_100029638();
  v7 = [objc_allocWithZone(UICollectionView) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v8 = *&v62[0];
  [v7 setDelegate:*&v62[0]];

  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setAllowsMultipleSelection:1];
  [v10 setAllowsSelection:1];
  [v10 setAlwaysBounceVertical:0];
  [v10 setPrefetchingEnabled:0];
  type metadata accessor for AddColorCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = String._bridgeToObjectiveC()();
  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v13];

  type metadata accessor for FavoriteColorWellCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = String._bridgeToObjectiveC()();
  [v10 registerClass:v14 forCellWithReuseIdentifier:v15];

  sub_10000598C(0, &qword_1000762E8, UICollectionViewCell_ptr);
  v16 = swift_getObjCClassFromMetadata();
  v17 = String._bridgeToObjectiveC()();
  [v10 registerClass:v16 forCellWithReuseIdentifier:v17];

  type metadata accessor for RemoveColorCell();
  v18 = swift_getObjCClassFromMetadata();
  v19 = String._bridgeToObjectiveC()();
  [v10 registerClass:v18 forCellWithReuseIdentifier:v19];

  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  v20 = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v10;
  v23 = [v21 bundleForClass:v20];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [v22 setAccessibilityLabel:v26];

  UIViewRepresentableContext.coordinator.getter();
  v27 = objc_allocWithZone(UILongPressGestureRecognizer);
  v28 = *&v62[0];
  v29 = [v27 initWithTarget:*&v62[0] action:"showDeleteCallout:"];

  [v22 addGestureRecognizer:v29];
  v30 = swift_allocObject();
  v31 = v22;
  UIViewRepresentableContext.coordinator.getter();
  v32 = *&v62[0];
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v34 = *(v1 + 16);
  *(v33 + 24) = *v1;
  *(v33 + 40) = v34;
  *(v33 + 56) = *(v1 + 32);
  *(v33 + 72) = *(v1 + 48);
  objc_allocWithZone(sub_100004944(&qword_1000762F8, &qword_1000522F8));
  sub_10003126C(v1, v62);
  v35 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  if (*v1)
  {
    v36 = v35;
    v37 = *v1;
    v38 = swift_retain_n();
    sub_10002A3D0(v38, v5);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    UIViewRepresentableContext.coordinator.getter();
    v58 = v5;
    v39 = v61;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = v63;
    v41 = v62[1];
    v42 = v62[2];
    v43 = &v39[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
    *v43 = v62[0];
    *(v43 + 1) = v41;
    *(v43 + 2) = v42;
    *(v43 + 24) = v40;

    UIViewRepresentableContext.coordinator.getter();
    v44 = *&v62[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v45 = *&v44[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors];
    *&v44[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = v61;

    UIViewRepresentableContext.coordinator.getter();
    v46 = *&v62[0];
    *(*&v62[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage) = *(v1 + 32);

    UIViewRepresentableContext.coordinator.getter();
    v47 = *&v62[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v48 = *&v47[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors];
    *&v47[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = v61;

    UIViewRepresentableContext.coordinator.getter();
    v49 = *&v62[0];
    v50 = *(*&v62[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    *(*&v62[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource) = v36;
    v51 = v36;

    UIViewRepresentableContext.coordinator.getter();
    v52 = *&v62[0];
    v53 = *(*&v62[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView);
    *(*&v62[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView) = v31;
    v54 = v31;

    UIViewRepresentableContext.coordinator.getter();
    v55 = *&v62[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v59 + 8))(v58, v60);
    v55[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = v61;

    return v54;
  }

  else
  {
    v57 = *(v1 + 8);
    type metadata accessor for ColorPickerState();
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100029638()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v1 = objc_opt_self();
    v2 = [v1 currentDevice];
    v3 = [v2 userInterfaceIdiom];

    v4 = 30.0;
    if (v50[0])
    {
      v4 = 28.0;
    }

    if (v3 == 6)
    {
      v5 = 42.0;
    }

    else
    {
      v5 = v4;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = [v1 currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 18.0;
    if (v50[0])
    {
      v9 = 16.0;
    }

    else
    {
      v9 = 18.0;
    }

    if (v7 == 6)
    {
      v10 = 20.0;
    }

    else
    {
      v10 = v9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v50[0])
    {
      v8 = 16.0;
    }

    v11 = objc_opt_self();
    v12 = [v11 absoluteDimension:v5];
    v13 = [v11 absoluteDimension:v5];
    v14 = objc_opt_self();
    v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

    v16 = [objc_opt_self() itemWithLayoutSize:v15];
    v17 = objc_opt_self();
    v18 = [v11 fractionalWidthDimension:1.0];
    v19 = [v11 absoluteDimension:v5];
    v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

    sub_100004944(&qword_1000746F0, &qword_10004E888);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100050D80;
    *(v21 + 32) = v16;
    sub_10000598C(0, &qword_1000762C0, NSCollectionLayoutItem_ptr);
    v48 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

    v24 = objc_opt_self();
    v25 = [v24 fixedSpacing:v10];
    [v23 setInterItemSpacing:v25];

    v26 = [v11 fractionalWidthDimension:1.0];
    v27 = [v11 fractionalHeightDimension:1.0];
    v28 = [v14 sizeWithWidthDimension:v26 heightDimension:v27];

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100050D80;
    *(v29 + 32) = v23;
    v47 = v23;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v17 verticalGroupWithLayoutSize:v28 subitems:v30];

    v32 = [v24 fixedSpacing:v8];
    [v31 setInterItemSpacing:v32];

    v33 = [v11 fractionalWidthDimension:1.0];
    v34 = [v11 fractionalHeightDimension:1.0];
    v35 = [v14 sizeWithWidthDimension:v33 heightDimension:v34];

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100050D80;
    *(v36 + 32) = v31;
    v37 = v31;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    v39 = [v17 horizontalGroupWithLayoutSize:v35 subitems:v38];

    v40 = [objc_opt_self() sectionWithGroup:v39];
    [v40 setInterGroupSpacing:v10];
    [v40 setOrthogonalScrollingBehavior:4];
    v41 = swift_allocObject();
    v42 = *(v49 + 16);
    *(v41 + 16) = *v49;
    *(v41 + 32) = v42;
    *(v41 + 48) = *(v49 + 32);
    *(v41 + 64) = *(v49 + 48);
    aBlock[4] = sub_10003160C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CA98;
    aBlock[3] = &unk_10006DBA0;
    v43 = _Block_copy(aBlock);
    sub_10003126C(v49, v50);

    [v40 setVisibleItemsInvalidationHandler:v43];
    _Block_release(v43);
    v44 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v40];

    return v44;
  }

  else
  {
    v46 = *(v49 + 8);
    type metadata accessor for ColorPickerState();
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100029DD0(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
{
  v44 = a3[3];
  v45 = a3[1];
  v42 = a3[2];
  v43 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = v44 >> 62;
  if ((v44 >> 62) <= 1)
  {
    if (v9)
    {
      v34 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v36 = [a1 dequeueReusableCellWithReuseIdentifier:v34 forIndexPath:isa];

      v37 = objc_opt_self();
      v13 = v36;
      v16 = [v37 clearColor];
      [v13 setBackgroundColor:v16];
    }

    else
    {
      v10 = String._bridgeToObjectiveC()();
      v11 = IndexPath._bridgeToObjectiveC()().super.isa;
      v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11];

      type metadata accessor for FavoriteColorWellCell();
      v13 = swift_dynamicCastClassUnconditional();
      sub_100018314();
      v14 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color];
      *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color] = v15;
      v16 = v15;

      [*&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] setBackgroundColor:v16];
    }

    return v13;
  }

  if (v9 != 2)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableCellWithReuseIdentifier:v38 forIndexPath:v39];

    return v13;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v18];

  type metadata accessor for FavoriteColorWellCell();
  v20 = swift_dynamicCastClassUnconditional();
  if (*a5)
  {
    v13 = v20;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v21 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain;
    *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = v46;
    v22 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
    v23 = [*&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] layer];
    v24 = &CADynamicRangeHigh;
    if (*&v13[v21] <= 1.0)
    {
      v24 = &CADynamicRangeAutomatic;
    }

    v25 = *v24;
    [v23 setPreferredDynamicRange:v25];

    v26 = [*&v13[v22] layer];
    [v26 setContentsMaximumDesiredEDR:*&v13[v21]];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000195E4(v46);
    v27 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color];
    *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color] = v28;
    v29 = v28;

    [*&v13[v22] setBackgroundColor:v29];
    v30 = swift_allocObject();
    *(v30 + 16) = v8;
    *(v30 + 24) = v43;
    *(v30 + 40) = v45;
    *(v30 + 72) = v44;
    *(v30 + 56) = v42;
    v31 = &v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
    v33 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
    v32 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete + 8];
    *v31 = sub_100031804;
    v31[1] = v30;
    sub_10000C134(v33);
    return v13;
  }

  v41 = a5[1];
  type metadata accessor for ColorPickerState();
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002A3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100004944(&qword_100076260, &qword_100052058);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v68 - v9;
  v11 = sub_100030DA8(_swiftEmptyArrayStorage);
  sub_1000316D4();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10006C388);
  *&v77 = v3;
  v12 = *v3;
  if (!v12)
  {
    goto LABEL_66;
  }

  v71 = v7;
  v72 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (v82[0])
  {
    *&v82[0] = 0;
    BYTE8(v82[0]) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v70 = v12;

  v13 = *&v82[0];
  v73 = v6;
  v74 = v10;
  if (!*&v82[0])
  {
    goto LABEL_26;
  }

  v14 = *(*&v82[0] + 16);
  if (v14)
  {
    *&v76 = a1;
    *&v78 = _swiftEmptyArrayStorage;
    sub_10002F0D4(0, v14, 0);
    v15 = *(v13 + 16);
    if (!v15)
    {
      goto LABEL_60;
    }

    v16 = 0;
    v17 = v78;
    v18 = (v13 + 80);
    while (1)
    {
      if (v16 >= *(v13 + 16))
      {
        goto LABEL_62;
      }

      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;
      *&v78 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v15;
        v75 = v19;
        v69 = v20;
        v68 = v21;
        sub_10002F0D4((v23 > 1), v24 + 1, 1);
        v21 = v68;
        v20 = v69;
        v19 = v75;
        v15 = v26;
        v17 = v78;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + (v24 << 6);
      *(v25 + 32) = v19;
      *(v25 + 48) = v20;
      *(v25 + 64) = v21;
      *(v25 + 80) = v22 & 0x101010101010101;
      *(v25 + 88) = v16;
      if (v14 - 1 == v16)
      {
        break;
      }

      ++v16;
      v18 += 28;
      if (v15 == v16)
      {
        goto LABEL_60;
      }
    }

    *&v82[0] = 0;
    BYTE8(v82[0]) = 1;
    v6 = v73;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    v27 = *(v17 + 16);

    v28 = *(v77 + 32);
    if (v28)
    {
      v29 = v28 - v27 % v28;
      if (!__OFSUB__(v28, v27 % v28))
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          if (v29)
          {
            v30 = sub_10002EF70(0, 1, 1, _swiftEmptyArrayStorage);
            v31 = 0;
            v32 = *(v30 + 2);
            v33 = v32 << 6;
            do
            {
              v34 = *(v30 + 3);
              v35 = v32 + 1;
              if (v32 >= v34 >> 1)
              {
                v30 = sub_10002EF70((v34 > 1), v35, 1, v30);
              }

              *(v30 + 2) = v35;
              v36 = &v30[v33];
              *(v36 + 4) = v31;
              *(v36 + 10) = 0x4000000000000000;
              v33 += 64;
              v32 = v35;
              ++v31;
            }

            while (v29 != v31);
          }

          *&v82[0] = 0;
          BYTE8(v82[0]) = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
          goto LABEL_25;
        }

        goto LABEL_65;
      }
    }

    else
    {
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v67 = *(v77 + 8);
    type metadata accessor for ColorPickerState();
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

LABEL_25:

LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = *&v82[0];
  v38 = *(*&v82[0] + 16);
  if (v38)
  {
    v39 = 0;
    v81 = *(v77 + 40);
    v40 = _swiftEmptyArrayStorage;
    while (1)
    {
      v41 = v37 + 32 + 56 * v39;
      v82[0] = *v41;
      v82[1] = *(v41 + 16);
      v82[2] = *(v41 + 32);
      v42 = *(v41 + 48);
      v83 = *(v41 + 48);
      v43 = *v41;
      v76 = *(v41 + 16);
      v77 = v43;
      v75 = *(v41 + 32);
      if (*(v11 + 16) && (v44 = sub_10002E89C(v82), (v45 & 1) != 0))
      {
        v46 = *(*(v11 + 56) + 8 * v44);
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v47 = 0;
        if (__OFADD__(-1, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      ++v39;
      while (1)
      {
        v78 = v81;
        sub_100004944(&qword_1000762D8, &qword_1000522E8);
        State.wrappedValue.getter();
        v48 = v80;
        if (!*(v80 + 16))
        {
          break;
        }

        v49 = sub_10002E89C(v82);
        if ((v50 & 1) == 0)
        {
          break;
        }

        v51 = *(*(v48 + 56) + 8 * v49);

        if (!*(v51 + 16))
        {
          break;
        }

        v52 = *(v51 + 40);
        v53 = static Hasher._hash(seed:_:)();
        v54 = -1 << *(v51 + 32);
        v55 = v53 & ~v54;
        if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
        {
          break;
        }

        v56 = ~v54;
        while (*(*(v51 + 48) + 8 * v55) != v47)
        {
          v55 = (v55 + 1) & v56;
          if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        if (__OFADD__(v47++, 1))
        {
          goto LABEL_61;
        }
      }

LABEL_46:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_10002EF70(0, *(v40 + 2) + 1, 1, v40);
      }

      v59 = *(v40 + 2);
      v58 = *(v40 + 3);
      if (v59 >= v58 >> 1)
      {
        v40 = sub_10002EF70((v58 > 1), v59 + 1, 1, v40);
      }

      *(v40 + 2) = v59 + 1;
      v60 = &v40[64 * v59];
      v61 = v76;
      *(v60 + 2) = v77;
      *(v60 + 3) = v61;
      *(v60 + 4) = v75;
      *(v60 + 10) = v42 & 0x101010101010101 | 0x8000000000000000;
      *(v60 + 11) = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v78 = v11;
      sub_10002FF54(v47, v82, isUniquelyReferenced_nonNull_native);
      v11 = v78;
      if (v39 == v38)
      {

        v6 = v73;
        goto LABEL_55;
      }

      if (v39 >= *(v37 + 16))
      {
        goto LABEL_59;
      }
    }
  }

LABEL_55:
  *&v78 = 0;
  BYTE8(v78) = 1;
  v63 = v74;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v72;
  v65 = v71;
  if (v79 << 8 != 512)
  {
    *&v78 = 0;
    BYTE8(v78) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  (*(v65 + 32))(v64, v63, v6);
}

uint64_t sub_10002AC10(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v80 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v80);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v78);
  v75 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004944(&qword_100076258, &qword_100052050);
  v10 = *(v9 - 8);
  v73 = *(v10 + 64);
  __chkstk_darwin(v9);
  v74 = &v66 - v11;
  v71 = type metadata accessor for IndexPath();
  v70 = *(v71 - 8);
  v12 = *(v70 + 64);
  __chkstk_darwin(v71);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100004944(&qword_100076260, &qword_100052058);
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v72);
  v17 = &v66 - v16;
  UIViewRepresentableContext.coordinator.getter();
  v18 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 16);
  v68 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor);
  v67 = v18;
  v66 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 32);
  v19 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 48);

  v20 = *v2;
  if (!*v2)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v21 = v85 & 0xFF00;
  if ((v19 & 0xFF00) == 0x200)
  {
    if (v21 != 512)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v21 == 512)
    {
      goto LABEL_8;
    }

    v87[0] = v68;
    v87[1] = v67;
    v87[2] = v66;
    v88 = v19;
    v89[0] = v82;
    v89[1] = v83;
    v89[2] = v84;
    v90 = v85;
    if ((sub_100019DF8(v87, v89) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  UIViewRepresentableContext.coordinator.getter();
  v22 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22 != LOBYTE(aBlock[0]))
  {
LABEL_8:

    goto LABEL_9;
  }

  UIViewRepresentableContext.coordinator.getter();
  v58 = v82;
  v59 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v60 = sub_10002E744(v59, aBlock[0]);

  if ((v60 & 1) == 0 || (UIViewRepresentableContext.coordinator.getter(), v61 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage), v82, v61 != *(v3 + 32)))
  {

    goto LABEL_9;
  }

  UIViewRepresentableContext.coordinator.getter();
  v62 = v82;
  v63 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v63)
  {
    if (!aBlock[0])
    {
LABEL_27:

      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (!aBlock[0])
  {
LABEL_26:

    goto LABEL_9;
  }

  v64 = sub_10002E744(v63, aBlock[0]);

  if (v64)
  {
    goto LABEL_27;
  }

LABEL_9:
  sub_10002A3D0(v20, v17);

  UIViewRepresentableContext.coordinator.getter();
  v23 = v82;
  v24 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  v25 = v24;

  if (v24)
  {
    UIViewRepresentableContext.coordinator.getter();
    v26 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing);

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    UIViewRepresentableContext.coordinator.getter();
    v27 = aBlock[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v85;
    v29 = v83;
    v30 = v84;
    v31 = &v27[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
    *v31 = v82;
    *(v31 + 1) = v29;
    *(v31 + 2) = v30;
    *(v31 + 24) = v28;

    UIViewRepresentableContext.coordinator.getter();
    v32 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor] = aBlock[0];

    UIViewRepresentableContext.coordinator.getter();
    v33 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v34 = *&v33[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors];
    *&v33[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = aBlock[0];

    UIViewRepresentableContext.coordinator.getter();
    v35 = v82;
    *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage) = *(v3 + 32);

    UIViewRepresentableContext.coordinator.getter();
    v36 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v14 + 8))(v17, v72);
    v37 = *&v36[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors];
    *&v36[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = aBlock[0];

LABEL_11:
    UIViewRepresentableContext.coordinator.getter();
    v38 = *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = v81;
    if (v38 == LOBYTE(aBlock[0]))
    {
    }

    else
    {
      v40 = sub_100029638();
      [v39 setCollectionViewLayout:v40];

      UIViewRepresentableContext.coordinator.getter();
      v41 = v82;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v41[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = aBlock[0];
    }

    sub_10002BA48(v39, a2);
    UIViewRepresentableContext.coordinator.getter();
    v42 = v82;
    *(v82 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing) = 0;

    v43 = *(v3 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (BYTE8(v82))
    {
      goto LABEL_17;
    }

    if ((v82 * *(v3 + 32)) >> 64 == (v82 * *(v3 + 32)) >> 63)
    {
      v44 = v69;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v70 + 8))(v44, v71);
      [v39 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];

LABEL_17:
      sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
      v46 = static OS_dispatch_queue.main.getter();
      v47 = v74;
      (*(v10 + 16))(v74, a2, v9);
      v48 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v49 = (v73 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      (*(v10 + 32))(&v50[v48], v47, v9);
      v51 = &v50[v49];
      v52 = *(v3 + 16);
      *v51 = *v3;
      *(v51 + 1) = v52;
      *(v51 + 2) = *(v3 + 32);
      *(v51 + 6) = *(v3 + 48);
      aBlock[4] = sub_1000313C8;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002C56C;
      aBlock[3] = &unk_10006DB50;
      v53 = _Block_copy(aBlock);
      sub_10003126C(v3, &v82);

      v54 = v75;
      static DispatchQoS.unspecified.getter();
      *&v82 = _swiftEmptyArrayStorage;
      sub_10003154C(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags);
      sub_100004944(&qword_100076278, &qword_100052210);
      sub_100031478();
      v55 = v77;
      v56 = v80;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v53);

      (*(v79 + 8))(v55, v56);
      return (*(v76 + 8))(v54, v78);
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  v65 = *(v3 + 8);
  type metadata accessor for ColorPickerState();
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002BA48(void *a1, uint64_t a2)
{
  v92 = a1;
  v4 = sub_100004944(&qword_100076290, &qword_100052268);
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v78 - v9;
  v91 = type metadata accessor for IndexPath();
  v10 = *(v91 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v91);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004944(&qword_100076260, &qword_100052058);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v78 - v16;
  if (!*v2)
  {
    goto LABEL_43;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v18 = v97;
  v89 = a2;
  if ((v97 & 0xFF00) != 0x200)
  {
    v20 = v14;
    v85 = v93;
    v21 = v94;
    v22 = v95;
    v23 = v96;
    sub_100004944(&qword_100076258, &qword_100052050);
    UIViewRepresentableContext.coordinator.getter();
    v24 = v93.f64[0];
    v25 = *(*&v93.f64[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    v2 = v25;

    if (v25)
    {
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v26 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*(v20 + 8))(v17, v13);
      v27 = *(v26 + 16);
      v84 = v26;
      if (!v27)
      {
        v19 = _swiftEmptyArrayStorage;
LABEL_23:

        goto LABEL_24;
      }

      v28 = (v26 + 88);
      v19 = _swiftEmptyArrayStorage;
      v29 = v85;
      while (1)
      {
        v32 = *(v28 - 1);
        if (((v32 >> 14) | 2) == 2)
        {
          v33 = *(v28 - 7);
          if (((v18 & 0x100) == 0) != (v33 & 1))
          {
            v34 = *(v28 - 7);
            v35 = *(v28 - 5);
            v36 = vsubq_f64(v29, v34);
            if (sqrt(vaddvq_f64(vmulq_f64(v36, v36)) + (v21 - v35) * (v21 - v35)) <= 0.001)
            {
              v37 = *(v28 - 2);
              if (vabdd_f64(v22, *&v37) <= 0.001)
              {
                v38 = *(v28 - 2);
                v39 = *(v28 - 8);
                v40 = *(v28 - 6);
                v41 = *v28;
                if (v18)
                {
                  if (*(v28 - 1))
                  {
                    goto LABEL_18;
                  }
                }

                else if ((*(v28 - 1) & 1) == 0 && vabdd_f64(v23, v38) <= 0.001)
                {
LABEL_18:
                  v80 = *(v28 - 8);
                  v81 = v38;
                  v79 = v41;
                  v82 = v37;
                  v83 = v34;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v86 = v10;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v19 = sub_10002EF70(0, *(v19 + 2) + 1, 1, v19);
                  }

                  v43 = v82;
                  v45 = *(v19 + 2);
                  v44 = *(v19 + 3);
                  v46 = v45 + 1;
                  v29 = v85;
                  v47 = v83;
                  v48 = v81;
                  v49 = v80;
                  if (v45 >= v44 >> 1)
                  {
                    v78 = v45 + 1;
                    v50 = sub_10002EF70((v44 > 1), v45 + 1, 1, v19);
                    v46 = v78;
                    v49 = v80;
                    v48 = v81;
                    v43 = v82;
                    v47 = v83;
                    v29 = v85;
                    v19 = v50;
                  }

                  *(v19 + 2) = v46;
                  v30 = &v19[64 * v45];
                  *(v30 + 2) = v47;
                  *(v30 + 6) = v35;
                  v31 = v40 & 0xFFFF0000FFFFFFFFLL | (v32 << 32);
                  *(v30 + 56) = v43;
                  *(v30 + 9) = v48;
                  v30[80] = v49;
                  v30[81] = v33;
                  *(v30 + 82) = v31;
                  *(v30 + 43) = WORD2(v31);
                  *(v30 + 11) = v79;
                  v10 = v86;
                }
              }
            }
          }
        }

        v28 += 8;
        if (!--v27)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_43:
    v77 = v2[1];
    type metadata accessor for ColorPickerState();
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v19 = &off_10006C470;
LABEL_24:
  v51 = [v92 indexPathsForSelectedItems];
  if (v51)
  {
    v52 = v51;
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v51);
  *(&v78 - 2) = v89;
  v54 = sub_100027BC8(sub_10003152C, (&v78 - 4), v19);
  v55 = sub_100027E14(v53);
  v56 = sub_10002E328(v55, v54);

  if (v56)
  {
  }

  else
  {
    *&v85.f64[0] = v19;
    v57 = v53[2];
    v89 = v54;
    if (v57)
    {
      v84 = v8;
      v86 = v10;
      v58 = *(v10 + 16);
      v59 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      *&v83.f64[0] = v53;
      v60 = v53 + v59;
      v61 = *(v10 + 72);
      v62 = (v10 + 8);
      v64 = v91;
      v63 = v92;
      v65 = v87;
      do
      {
        v58(v65, v60, v64);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v63 deselectItemAtIndexPath:isa animated:0];

        (*v62)(v65, v64);
        v60 += v61;
        --v57;
      }

      while (v57);

      v8 = v84;
      v67 = v88;
      v54 = v89;
      v10 = v86;
    }

    else
    {

      v67 = v88;
    }

    v68 = *(v54 + 16);
    v69 = v90;
    if (v68)
    {
      v70 = v54 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v71 = *(v67 + 72);
      v72 = (v10 + 48);
      v73 = (v10 + 8);
      do
      {
        sub_100008A40(v70, v69, &qword_100076290, &qword_100052268);
        sub_100008A40(v69, v8, &qword_100076290, &qword_100052268);
        v75 = v91;
        if ((*v72)(v8, 1, v91) == 1)
        {
          v74.super.isa = 0;
        }

        else
        {
          v74.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v73)(v8, v75);
        }

        [v92 selectItemAtIndexPath:v74.super.isa animated:0 scrollPosition:0];

        v69 = v90;
        sub_1000059D4(v90, &qword_100076290, &qword_100052268);
        v70 += v71;
        --v68;
      }

      while (v68);
    }
  }
}

void sub_10002C268(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004944(&qword_100076260, &qword_100052058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v8 = v17;
  v9 = *(v17 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  v10 = v9;

  if (!v9)
  {
    goto LABEL_14;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v11 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  (*(v4 + 8))(v7, v3);
  v12 = *(v11 + 16);

  v13 = ceil(v12 / *(a2 + 32));
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = v13;
  v17 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (v15 == v14)
  {
    sub_1000059D4(&v17, &qword_100076288, &qword_100052260);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16 == 1)
  {
    sub_1000059D4(&v17, &qword_100076288, &qword_100052260);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = 0;
    v16 = 1;
    static Published.subscript.setter();
  }
}

uint64_t sub_10002C56C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10002C5B0(__int128 *a1)
{
  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v2 = *&v8[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource];
  v3 = v2;

  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002C658(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(a3 "container")];
  v18 = v17;
  result = swift_unknownObjectRelease();
  v20 = a1 / v18;
  if (COERCE__INT64(fabs(a1 / v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v27 = v8;
  v21 = v20;
  v22 = *(a4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28 != v21)
  {
    sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    v25 = *(a4 + 16);
    *(v24 + 16) = *a4;
    *(v24 + 32) = v25;
    *(v24 + 48) = *(a4 + 32);
    *(v24 + 64) = *(a4 + 48);
    *(v24 + 72) = v21;
    aBlock[4] = sub_1000316C8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002C56C;
    aBlock[3] = &unk_10006DBF0;
    v26 = _Block_copy(aBlock);
    sub_10003126C(a4, &v28);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_10003154C(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004944(&qword_100076278, &qword_100052210);
    sub_100031478();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v27 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_10002CA24(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002CA98(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_100004944(&qword_1000762C8, &qword_100052298);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v9(v10, a5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002CB54()
{
  v1 = v0[6];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    if (v1 == 0xC000000000000000 && (*v0 | v0[7] | v0[1] | v0[2] | v0[3] | v0[4] | v0[5]) == 0)
    {
      return 0x6F74747542646441;
    }

    else
    {
      return 0x754265766F6D6552;
    }
  }

  else
  {
    if (!v2)
    {
      _StringGuts.grow(_:)(17);
      v3._countAndFlagsBits = 0x6574736567677553;
      v3._object = 0xEF20726F6C6F4364;
      String.append(_:)(v3);
LABEL_5:
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }

    return 0x692072656C6C6946;
  }
}

Swift::Int sub_10002CCD4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {
      Hasher._combine(_:)(1uLL);
      v3 = v1;
      goto LABEL_14;
    }

    v8 = *v0;
    v10 = v0[1];
    v12 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v18 = v0[5];
    v5 = 0;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v9 = *v0;
    v11 = v0[1];
    v13 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v19 = v0[5];
    v5 = 2;
LABEL_6:
    Hasher._combine(_:)(v5);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v0[2] | v0[1] | v1 | v0[3] | v0[4] | v0[5] | v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 == 0xC000000000000000;
  }

  if (v6)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10002CDE8()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {
      Hasher._combine(_:)(1uLL);
      v3 = v1;
      goto LABEL_14;
    }

    v7 = *v0;
    v9 = v0[1];
    v11 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v17 = v0[5];
    v5 = 0;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v8 = *v0;
    v10 = v0[1];
    v12 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v18 = v0[5];
    v5 = 2;
LABEL_6:
    Hasher._combine(_:)(v5);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v0[2] | v0[1] | v1 | v0[3] | v0[4] | v0[5] | v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 == 0xC000000000000000;
  }

  if (v6)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v3);
}

Swift::Int sub_10002CED0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  Hasher.init(_seed:)();
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (v9)
    {
      Hasher._combine(_:)(1uLL);
      v7 = v1;
      goto LABEL_14;
    }

    v10 = 0;
    goto LABEL_6;
  }

  if (v9 == 2)
  {
    v10 = 2;
LABEL_6:
    Hasher._combine(_:)(v10);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v4 | v2 | v1 | v3 | v5 | v6 | v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8 == 0xC000000000000000;
  }

  if (v11)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_10002CFE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100030EC4(v7, v8) & 1;
}

uint64_t sub_10002D044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002D0B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002D128()
{
  v1 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__numberOfPages;
  v2 = sub_100004944(&qword_100076318, &qword_100052358);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__currentPage, v2);
  v4 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__pageControlPendingPage;
  v5 = sub_100004944(&qword_100076320, &unk_100052360);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for FavoriteColorPickerView.Model()
{
  result = qword_100076100;
  if (!qword_100076100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002D2A0()
{
  sub_10002D36C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002D3BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002D36C()
{
  if (!qword_100076110)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100076110);
    }
  }
}

void sub_10002D3BC()
{
  if (!qword_100076118)
  {
    sub_100008B90(&unk_100076120, &qword_100051E38);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100076118);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for FavoriteColorPickerView.ColorItem(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for FavoriteColorPickerView.ColorItem(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for FavoriteColorPickerView.ColorItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0xFFFFFF80 | (*(a1 + 48) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for FavoriteColorPickerView.ColorItem(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D520(uint64_t a1)
{
  v1 = *(a1 + 48) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002D54C(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 0x101 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_100051E00;
  }

  return result;
}

__n128 sub_10002D5A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002D5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10002D604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D660()
{
  v1 = sub_100004944(&qword_100076320, &unk_100052360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - v4;
  v6 = sub_100004944(&qword_100076318, &qword_100052358);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__numberOfPages;
  v16 = 2;
  Published.init(initialValue:)();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__currentPage;
  v16 = 0;
  Published.init(initialValue:)();
  v12(v0 + v13, v10, v6);
  v14 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__pageControlPendingPage;
  v16 = 0;
  v17 = 1;
  sub_100004944(&unk_100076120, &qword_100051E38);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_10002D874@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FavoriteColorPickerView.Model();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002D8B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_100028DB0();
}

uint64_t sub_10002D8F8(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  return sub_10002AC10(a1, a2);
}

uint64_t sub_10002D93C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  if (*&v8[0])
  {
    v4 = objc_allocWithZone(type metadata accessor for FavoriteColorPickerView.Coordinator());

    sub_10003126C(v8, v7);
    v5 = sub_1000310DC(v8);

    result = sub_1000312A4(v8);
    *a1 = v5;
  }

  else
  {
    type metadata accessor for ColorPickerState();
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031840();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031840();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002DAF4()
{
  sub_100031840();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10002DB20()
{
  result = qword_100076240;
  if (!qword_100076240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076240);
  }

  return result;
}

unint64_t sub_10002DB78()
{
  result = qword_100076248;
  if (!qword_100076248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076248);
  }

  return result;
}

uint64_t sub_10002DBCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002DC4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10002DCC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10002DD58(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[1];
  v8 = *a1;

  return static Published.subscript.setter();
}

uint64_t sub_10002DDF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002DE74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10002DEE8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10002DF68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002DFE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002E064(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002E11C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002E1AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002E21C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_10002E2A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002E328(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for IndexPath();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_100076290, &qword_100052268);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v41 = &v33 - v10;
  v40 = sub_100004944(&qword_1000762A0, &qword_100052278);
  v11 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  if (!v14 || a1 == a2)
  {
    return 1;
  }

  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = (v4 + 48);
  v36 = (v4 + 32);
  v37 = (v4 + 8);
  v19 = *(v8 + 72);
  v20 = v41;
  v34 = (v4 + 48);
  v35 = v19;
  while (1)
  {
    v21 = *(v40 + 48);
    sub_100008A40(v16, v13, &qword_100076290, &qword_100052268);
    sub_100008A40(v17, &v13[v21], &qword_100076290, &qword_100052268);
    v22 = *v18;
    if ((*v18)(v13, 1, v42) != 1)
    {
      break;
    }

    if (v22(&v13[v21], 1, v42) != 1)
    {
      goto LABEL_14;
    }

    sub_1000059D4(v13, &qword_100076290, &qword_100052268);
LABEL_5:
    v17 += v19;
    v16 += v19;
    if (!--v14)
    {
      return 1;
    }
  }

  v23 = v13;
  v24 = v13;
  v25 = v20;
  v26 = v24;
  sub_100008A40(v23, v25, &qword_100076290, &qword_100052268);
  if (v22(&v26[v21], 1, v42) != 1)
  {
    v27 = v38;
    v28 = v42;
    (*v36)(v38, &v26[v21], v42);
    sub_10003154C(&qword_1000762A8, &type metadata accessor for IndexPath);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *v37;
    v30 = v41;
    (*v37)(v27, v28);
    v31 = v26;
    v20 = v30;
    v29(v30, v28);
    v18 = v34;
    v19 = v35;
    sub_1000059D4(v31, &qword_100076290, &qword_100052268);
    v13 = v31;
    if ((v39 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  (*v37)(v25, v42);
  v13 = v26;
LABEL_14:
  sub_1000059D4(v13, &qword_1000762A0, &qword_100052278);
  return 0;
}

uint64_t sub_10002E744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 81);
  for (i = (a1 + 81); ; i += 56)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(i - 49), *(v3 - 49)), vceqq_f64(*(i - 33), *(v3 - 33))))) & 1) == 0 || *(i - 17) != *(v3 - 17))
    {
      break;
    }

    result = 0;
    if (*(i - 1))
    {
      if (!*(v3 - 1))
      {
        return result;
      }
    }

    else if ((*(v3 - 1) & 1) != 0 || *(i - 9) != *(v3 - 9))
    {
      return result;
    }

    if ((*i ^ *v3))
    {
      return result;
    }

    v3 += 56;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_10002E80C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10002E908(a1, v4);
}

unint64_t sub_10002E89C(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10001910C();
  v4 = Hasher._finalize()();

  return sub_10002EA0C(a1, v4);
}

unint64_t sub_10002E908(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10002EA0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v8 = *(v2 + 48) + 56 * result;
      if (*v8 == *a1 && *(v8 + 8) == *(a1 + 8) && *(v8 + 16) == *(a1 + 16) && *(v8 + 24) == *(a1 + 24) && *(v8 + 32) == *(a1 + 32))
      {
        v9 = *(v8 + 49);
        if (*(v8 + 48))
        {
          if (*(a1 + 48))
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (*(v8 + 40) == *(a1 + 40))
          {
            v7 = *(a1 + 48);
          }

          else
          {
            v7 = 1;
          }

          if ((v7 & 1) == 0)
          {
LABEL_7:
            if (((v9 ^ *(a1 + 49)) & 1) == 0)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_10002EB00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&qword_100076300, &qword_100051020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10002EC04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&qword_100076310, &qword_100052350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10002ED1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&unk_100076360, &unk_1000523E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002EE50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&qword_100075698, &qword_100051388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002EF70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004944(&qword_100076298, &qword_100052270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}