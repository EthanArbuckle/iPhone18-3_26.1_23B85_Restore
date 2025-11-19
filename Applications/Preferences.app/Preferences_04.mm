void *sub_100065368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C478, &qword_100112490);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006555C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationDetent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000655A4()
{
  result = qword_10015C498;
  if (!qword_10015C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C498);
  }

  return result;
}

Swift::Int sub_1000655F8(Swift::UInt a1, Swift::UInt a2, unsigned __int8 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1);
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  if (a3 >> 6)
  {
    Hasher._combine(_:)(2uLL);
    v8 = a1;
LABEL_8:
    Hasher._combine(_:)(v8);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
LABEL_9:
  sub_1000658BC(v10, a4);
  return Hasher._finalize()();
}

void sub_100065710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v7 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v3);
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      Hasher._combine(_:)(v5 & 1);
      goto LABEL_9;
    }

    Hasher._combine(_:)(2uLL);
    v8 = v3;
  }

  Hasher._combine(_:)(v8);
LABEL_9:

  sub_1000658BC(a1, v6);
}

Swift::Int sub_1000657E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  v5 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v5 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1);
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    Hasher._combine(_:)(2uLL);
    v6 = v1;
LABEL_8:
    Hasher._combine(_:)(v6);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v3 & 1);
LABEL_9:
  sub_1000658BC(v8, v4);
  return Hasher._finalize()();
}

void sub_1000658BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      if (*v4)
      {
        Hasher._combine(_:)(1uLL);

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v9);
      }

      else
      {
        Hasher._combine(_:)(0);

        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
      }

      sub_100065B0C(v5, v6, v7, v8, v9, v10, v11);
      v4 += 56;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000659EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      if ((a7 & 0xC0) != 0x80 || a1 != a5 || a2 != a6)
      {
        return 0;
      }
    }

    else if (a7 < 0xC0u || a6 | a5 || a7 != 192)
    {
      return 0;
    }
  }

  else if (a3 >> 6)
  {
    if ((a7 & 0xC0) != 0x40 || a1 != a5)
    {
      return 0;
    }
  }

  else
  {
    if (a7 >= 0x40u)
    {
      return 0;
    }

    if (a1 == a5 && a2 == a6)
    {
      if ((a3 ^ a7))
      {
        return 0;
      }
    }

    else
    {
      v9 = a4;
      v10 = a8;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      a4 = v9;
      a8 = v10;
      if ((a3 ^ a7))
      {
        return 0;
      }
    }
  }

  return sub_10006C604(a4, a8);
}

uint64_t sub_100065B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100065B78()
{
  result = qword_10015C4A0;
  if (!qword_10015C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4A0);
  }

  return result;
}

uint64_t sub_100065BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000663C4(v5, v7) & 1;
}

Swift::Int sub_100065C28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  if (v7)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_100065D04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (v0[6])
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v5);
  }

  else
  {
    v6 = v0[5];
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();

    String.hash(into:)();
  }
}

Swift::Int sub_100065DE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  if (v7)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_100065EC0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_100065FB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10006603C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000660A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100066128(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1000661C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100066244()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
}

Swift::Int sub_100066298()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

unint64_t sub_100066318()
{
  result = qword_10015C4A8;
  if (!qword_10015C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4A8);
  }

  return result;
}

unint64_t sub_100066370()
{
  result = qword_10015C4B0;
  if (!qword_10015C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4B0);
  }

  return result;
}

uint64_t sub_1000663C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0 || (v4 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v7 != v13)
    {
      return 0;
    }
  }

  else
  {
    if (a2[6])
    {
      return 0;
    }

    v15 = a1[5];
    v16 = a2[5];
    if ((v4 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 != v13 || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006650C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100066554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000665B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000665F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006665C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100066678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1000666C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_100066730()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_100066A40(void *a1)
{
  v2 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1;
  AsyncStream.Continuation.yield<A>()();

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100066B3C()
{
  result = qword_10015C588;
  if (!qword_10015C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C588);
  }

  return result;
}

Swift::Int sub_100066B90(Swift::UInt a1, Swift::UInt a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1);
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  if (a3 >> 6)
  {
    Hasher._combine(_:)(2uLL);
    v6 = a1;
LABEL_8:
    Hasher._combine(_:)(v6);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

void sub_100066C84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      Hasher._combine(_:)(v3 & 1);
      return;
    }

    Hasher._combine(_:)(2uLL);
    v5 = v1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100066D24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1);
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    Hasher._combine(_:)(2uLL);
    v5 = v1;
LABEL_8:
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v3 & 1);
  return Hasher._finalize()();
}

BOOL sub_100066DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a6 < 0x40u)
      {
        if (a1 == a4 && a2 == a5)
        {
          return (a6 ^ a3 ^ 1) & 1;
        }

        v6 = a3;
        v7 = a6;
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a3 = v6;
        a6 = v7;
        if (v8)
        {
          return (a6 ^ a3 ^ 1) & 1;
        }
      }

      return 0;
    }

    if ((a6 & 0xC0) == 0x40)
    {
      v10 = a1 == a4;
      goto LABEL_15;
    }

    return 0;
  }

  if (a3 >> 6 != 2)
  {
    return a6 >= 0xC0u && !(a5 | a4) && a6 == 192;
  }

  if ((a6 & 0xC0) != 0x80)
  {
    return 0;
  }

  v10 = a1 == a4 && a2 == a5;
LABEL_15:
  v11 = v10;
  return v11 & 1;
}

uint64_t sub_100066EEC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

unint64_t sub_100066F2C()
{
  result = qword_10015C590;
  if (!qword_10015C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C590);
  }

  return result;
}

Swift::Int sub_100066F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100067020(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100066FDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100067020(v3, v1);
  return Hasher._finalize()();
}

void sub_100067020(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10006717C()
{
  *(v0 + 32) = *(v0 + 120);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100067208()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v24 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable;
  v12 = *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable);
  if (v12)
  {
    [v12 invalidate];
  }

  v13 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation;
  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation, v7);
  AsyncStream.Continuation.finish()();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  v16 = *(v3 + 8);
  v16(v6, v2);
  v17 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshots;
  v18 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v16((v1 + v15), v2);
  v19 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEvent;
  v20 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v14((v1 + v13), v7);

  v21 = *(v1 + v24);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000674E4()
{
  sub_100067208();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000676A0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_10006796C;
  }

  else
  {
    *(v2 + 145) = *(v2 + 144);
    v4 = sub_1000677BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000677D8()
{
  if (*(v0 + 145) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    v2 = *(v0 + 112);
    v1 = *(v0 + 120);
    v3 = *(v0 + 96);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = sub_100005430();
    *(v0 + 16) = v10 & 1;
    *(v0 + 17) = BYTE1(v10) & 1;
    *(v0 + 18) = BYTE2(v10) & 1;
    *(v0 + 24) = v11;
    *(v0 + 32) = v12;
    *(v0 + 40) = v13;
    sub_10004DED0(&qword_10015C910, &qword_100112B78);
    AsyncStream.Continuation.yield(_:)();
    (*(v7 + 8))(v6, v9);
    v14 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    v16 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v15 = v0;
    v15[1] = sub_1000676A0;

    return AsyncDebounceSequence.Iterator.next()(v0 + 144, v16);
  }
}

uint64_t sub_10006796C()
{
  *(v0 + 56) = *(v0 + 136);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_1000679F8()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v1 + OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEventContinuation, v7);
  AsyncStream.Continuation.finish()();
  (*(v8 + 8))(v11, v7);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  (*(v3 + 8))(v6, v2);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v13 = result;
    [result unregisterObserver:v1];

    v14 = type metadata accessor for ManagedConfigurationStateProvider();
    v15.receiver = v1;
    v15.super_class = v14;
    return objc_msgSendSuper2(&v15, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100067DB4(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121E40, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100067F70(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121DB0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10006812C(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000049, 0x8000000100121D30, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000682E8(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121CE0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000684A4(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD00000000000004CLL, 0x8000000100121C90, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100068660(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_100068700(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121C00, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000688BC(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000047, 0x8000000100121BB0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100068A78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t sub_100068B14(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSKeyValueObservation();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100068D2C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100068F0C(v21 + 1);
    }

    v19 = v8;
    sub_100069134(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for NSKeyValueObservation();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000691B8(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100068D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSKeyValueObservation();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100068F0C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100068F0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100069134(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000691B8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100068F0C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100069474();
      goto LABEL_12;
    }

    sub_1000695C4(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSKeyValueObservation();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100069318()
{
  v1 = v0;
  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100069474()
{
  v1 = v0;
  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000695C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_1000697D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100069930(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100005B08(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_1000699A8(uint64_t a1)
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169610);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = a1;
    v21 = v13;
    *v12 = 136315394;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = sub_100025CF0(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121E40, &v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "Start (%s.%s)…", v12, 0x16u);
    swift_arrayDestroy();
    a1 = v20;
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v4 + 8))(v7, v3);
  v17 = [objc_opt_self() defaultCenter];
  v18 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v17 postNotificationName:v18 object:v9 userInfo:v19.super.isa];

  sub_100067DB4(v9);
}

void sub_100069CAC()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - v4;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169610);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121DB0, &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v5, v1);
  v14 = [objc_opt_self() defaultCenter];
  v15 = String._bridgeToObjectiveC()();
  [v14 postNotificationName:v15 object:v7 userInfo:0];

  sub_100067F70(v7);
}

void sub_100069F70()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169610);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v15);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000049, 0x8000000100121D30, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v5, v1);
  sub_10006812C(v7);
}

void sub_10006A1C8()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169610);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v15);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121CE0, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v5, v1);
  sub_1000682E8(v7);
}

void sub_10006A420(uint64_t a1)
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169610);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = a1;
    v21 = v13;
    *v12 = 136315394;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = sub_100025CF0(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100025CF0(0xD00000000000004CLL, 0x8000000100121C90, &v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "Start (%s.%s)…", v12, 0x16u);
    swift_arrayDestroy();
    a1 = v20;
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v4 + 8))(v7, v3);
  v17 = [objc_opt_self() defaultCenter];
  v18 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v17 postNotificationName:v18 object:v9 userInfo:v19.super.isa];

  sub_1000684A4(v9);
}

void sub_10006A724()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169610);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v15);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121C00, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v5, v1);
  sub_100068700(v7);
}

void sub_10006A97C()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169610);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, &v15);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100025CF0(0xD000000000000047, 0x8000000100121BB0, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%s.%s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v5, v1);
  sub_1000688BC(v7);
}

unint64_t sub_10006ABD8()
{
  result = qword_10015C938;
  if (!qword_10015C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C938);
  }

  return result;
}

Swift::Int sub_10006AC2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(BYTE1(a1) & 1);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  sub_100067020(v9, a2);
  sub_100067020(v9, a3);
  sub_100067020(v9, a4);
  return Hasher._finalize()();
}

uint64_t sub_10006ACCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_10006AEA8(v3 | v4, *(a1 + 1), *(a1 + 2), *(a1 + 3), v6 | v7, *(a2 + 1), *(a2 + 2), *(a2 + 3));
}

Swift::Int sub_10006AD34()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10006AC2C(v2 | v3, *(v0 + 1), *(v0 + 2), *(v0 + 3));
}

void sub_10006AD6C(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  sub_100067020(a1, v5);
  sub_100067020(a1, v6);

  sub_100067020(a1, v7);
}

Swift::Int sub_10006AE00()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  sub_100067020(v8, v4);
  sub_100067020(v8, v5);
  sub_100067020(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10006AEA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 ^ a5;
  if (((a1 ^ a5) & 0x100) != 0 || (v8 & 1) != 0 || (v8 & 0x10000) != 0 || (sub_1000459A0(a2, a6) & 1) == 0 || (sub_1000459A0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_1000459A0(a4, a8);
}

NSString sub_10006AF3C()
{
  result = String._bridgeToObjectiveC()();
  qword_100169568 = result;
  return result;
}

id sub_10006AF74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006B05C()
{
  *(v0 + 16) = *(v0 + 104);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006B0E8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10006B1E4, 0, 0);
}

uint64_t sub_10006B1E4()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v5 + 8))(v4, v7);
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_10006B0E8;
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);

    return AsyncStream.Iterator.next(isolation:)(v0 + 88, 0, 0, v11);
  }
}

uint64_t sub_10006B328()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v31 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v10 = &v26 - v9;
  v30 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks;
  v11 = *(v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks);
  v12 = *(v11 + 16);
  if (v12)
  {
    v27 = v6;
    v28 = v3;
    v29 = v2;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);

      Task.cancel()();

      v13 += 8;
      --v12;
    }

    while (v12);

    v3 = v28;
    v2 = v29;
    v6 = v27;
  }

  v15 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation;
  v16 = v31;
  (*(v7 + 16))(v10, v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation, v31);
  AsyncStream.Continuation.finish()();
  v17 = *(v7 + 8);
  v17(v10, v16);
  v18 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation, v2);
  AsyncStream.Continuation.finish()();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v20 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots;
  v21 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  v17((v1 + v15), v16);
  v22 = *(v1 + v30);

  v23 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEvent;
  v24 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v19((v1 + v18), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10006B6A4()
{
  sub_10006B328();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006B6D8()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10006B748()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  v11 = v0[14];
  v12 = v0[10];
  if (v11 != v0[11])
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = v0[14];
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v12 + 8 * v11 + 32);
    }

    v18 = v4;
    v0[13] = v4;
    v0[14] = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v19 = v0[5];
      v20 = swift_task_alloc();
      v0[15] = v20;
      *(v20 + 16) = v19;
      *(v20 + 24) = v18;
      v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v22 = swift_task_alloc();
      v0[16] = v22;
      *v22 = v0;
      v22[1] = sub_10001E2A8;
      v10 = &type metadata for String;
      v8 = sub_10001E2A0;
      v4 = v0 + 2;
      v7 = 0x80000001001221F0;
      v12 = 0;
      v5 = 0;
      v6 = 0xD000000000000011;
      v9 = v20;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v12, v5, v6, v7, v8, v9, v10);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v12, v5, v6, v7, v8, v9, v10);
  }

  v13 = v0[9];
  v14 = v0[10];

  v15 = v0[1];

  return v15(1);
}

uint64_t sub_10006B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_10006B97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006B9EC()
{
  result = qword_10015CB80;
  if (!qword_10015CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CB80);
  }

  return result;
}

unint64_t sub_10006BA54()
{
  result = qword_10015CBA8;
  if (!qword_10015CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CBA8);
  }

  return result;
}

void sub_10006BAA8(uint64_t a1, uint64_t a2)
{
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(BYTE3(a2) & 1);
  Hasher._combine(_:)(BYTE4(a2) & 1);
  Hasher._combine(_:)(BYTE5(a2) & 1);
  Hasher._combine(_:)(BYTE6(a2));
}

BOOL sub_10006BB04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = v7 == 0;
  v17 = 0x10000000000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x10000000000;
  }

  v19 = v18 | (v8 << 48);
  v16 = v6 == 0;
  v20 = &_mh_execute_header;
  if (v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = &_mh_execute_header;
  }

  v16 = v5 == 0;
  v22 = 0x1000000;
  if (v16)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x1000000;
  }

  v24 = v21 | v23;
  v16 = v4 == 0;
  v25 = 0x10000;
  if (v16)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x10000;
  }

  v27 = v19 | v24 | v26;
  v16 = v3 == 0;
  v28 = 256;
  if (v16)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v2;
  if (!v14)
  {
    v17 = 0;
  }

  v31 = v17 | (v15 << 48);
  if (!v13)
  {
    v20 = 0;
  }

  if (!v12)
  {
    v22 = 0;
  }

  v32 = v20 | v22;
  if (!v11)
  {
    v25 = 0;
  }

  v33 = v31 | v32 | v25;
  if (!v10)
  {
    v28 = 0;
  }

  return sub_10006BDD4(v27 | v30, v33 | v28 | v9);
}

Swift::Int sub_10006BBD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  v8 = 0x10000000000;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v8 | (v7 << 48);
  v10 = &_mh_execute_header;
  if (!v5)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!v4)
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  v13 = 0x10000;
  if (!v3)
  {
    v13 = 0;
  }

  v14 = v9 | v12 | v13;
  v15 = 256;
  if (!v2)
  {
    v15 = 0;
  }

  sub_10006BAA8(v17, v14 | v15 | v1);
  return Hasher._finalize()();
}

void sub_10006BC9C(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!v1[5])
  {
    v2 = 0;
  }

  v3 = v2 | (v1[6] << 48);
  v4 = &_mh_execute_header;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = v4 | v5;
  v7 = 0x10000;
  if (!v1[2])
  {
    v7 = 0;
  }

  v8 = v3 | v6 | v7;
  v9 = 256;
  if (!v1[1])
  {
    v9 = 0;
  }

  sub_10006BAA8(a1, v8 | v9 | *v1);
}

Swift::Int sub_10006BD10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  v8 = 0x10000000000;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v8 | (v7 << 48);
  v10 = &_mh_execute_header;
  if (!v5)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!v4)
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  v13 = 0x10000;
  if (!v3)
  {
    v13 = 0;
  }

  v14 = v9 | v12 | v13;
  v15 = 256;
  if (!v2)
  {
    v15 = 0;
  }

  sub_10006BAA8(v17, v14 | v15 | v1);
  return Hasher._finalize()();
}

BOOL sub_10006BDD4(unint64_t a1, unint64_t a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  v2 = ((a1 ^ a2) & 0xFF000000000000) == 0;
  if (((a1 >> 40) & 1) != ((a2 >> 40) & 1))
  {
    v2 = 0;
  }

  if ((BYTE4(a1) & 1) != (BYTE4(a2) & 1))
  {
    v2 = 0;
  }

  if (((a1 >> 24) & 1) != ((a2 >> 24) & 1))
  {
    v2 = 0;
  }

  if (((a1 >> 16) & 1) != ((a2 >> 16) & 1))
  {
    v2 = 0;
  }

  return ((a1 >> 8) & 1) == ((a2 >> 8) & 1) && v2;
}

unint64_t sub_10006BE7C()
{
  result = qword_10015CBB0;
  if (!qword_10015CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CBB0);
  }

  return result;
}

uint64_t sub_10006BED0()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v22 = &v22 - v4;
  v5 = sub_10004DED0(&qword_10015CB40, &unk_100112D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v22 - v8);
  v10 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  swift_defaultActor_initialize();
  *v9 = 1;
  (*(v6 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v9, v5);
  (*(v16 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots, v19, v15);
  (*(v11 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshotsContinuation, v14, v10);
  v25 = 0;
  v26 = 1;
  v27 = 0;
  v20 = v22;
  AsyncStream.Continuation.yield(_:)();
  (*(v23 + 8))(v20, v24);
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  return v1;
}

uint64_t sub_10006C244()
{
  v1 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots;
  v2 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshotsContinuation;
  v4 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SingleItemCellularTelephonyStateProvider()
{
  result = qword_10015CBE8;
  if (!qword_10015CBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C368()
{
  sub_10001266C(319, &qword_10015CA60, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001266C(319, &unk_10015CA68, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10006C474@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots;
  v5 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10006C4FC(uint64_t a1, int a2)
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

uint64_t sub_10006C544(uint64_t result, int a2, int a3)
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

BOOL sub_10006C5A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10006D57C(v8, v9);
}

uint64_t sub_10006C604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 80);
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v10 = *(v3 - 6);
      v11 = *(v3 - 5);
      v12 = *(v3 - 4);
      v13 = *(v3 - 3);
      v14 = *(v3 - 2);
      v15 = *v3;
      if (v4[5])
      {
        if ((*v3 & 1) == 0 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if (v7 == v12 && v8 == v13)
        {
          if (v9 != v14)
          {
            return 0;
          }
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v16 & 1) == 0 || v9 != v14)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v19 = v4[4];
        v18 = *(v3 - 1);
        if ((v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if ((v7 != v12 || v8 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v9 != v14 || v19 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 7;
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10006C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v72 - v10;
  v86 = type metadata accessor for LocalizedStringResource();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v86);
  v82 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v83 = &v72 - v17;
  v85 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  v18 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v20 = &v72 - v19;
  v89 = type metadata accessor for PrimarySettingsListSectionModel();
  v21 = *(*(v89 - 8) + 64);
  v22 = __chkstk_darwin(v89);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v27 = &v72 - v26;
  v28 = *(a1 + 16);
  if (v28 == *(a2 + 16))
  {
    if (!v28 || a1 == a2)
    {
      return 1;
    }

    v87 = v4;
    v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v30 = a1 + v29;
    v79 = a2 + v29;
    v78 = (v12 + 48);
    v74 = (v12 + 32);
    v75 = (v12 + 8);
    v31 = *(v25 + 72);
    v73 = v5;
    v32 = 0;
    v88 = v9;
    v76 = v31;
    v81 = v28;
    v77 = a1 + v29;
    while (1)
    {
      v34 = v31 * v32;
      result = sub_10002EA10(v30 + v31 * v32, v27, type metadata accessor for PrimarySettingsListSectionModel);
      if (v32 == v81)
      {
        __break(1u);
        return result;
      }

      sub_10002EA10(v79 + v34, v24, type metadata accessor for PrimarySettingsListSectionModel);
      v35 = *v27;
      v36 = *(v27 + 1);
      v37 = v27[16];
      v38 = *v24;
      v39 = *(v24 + 1);
      v40 = v24[16];
      v80 = v32;
      if (v37 <= 1)
      {
        break;
      }

      if (v37 == 2)
      {
        if (v40 != 2)
        {
          goto LABEL_98;
        }

        goto LABEL_16;
      }

      switch(v35)
      {
        case 1:
          if (v40 != 3 || v38 != 1)
          {
            goto LABEL_98;
          }

          break;
        case 2:
          if (v40 != 3 || v38 != 2)
          {
            goto LABEL_98;
          }

          break;
        case 3:
          if (v40 != 3 || v38 != 3)
          {
            goto LABEL_98;
          }

          break;
        case 4:
          if (v40 != 3 || v38 != 4)
          {
            goto LABEL_98;
          }

          break;
        case 5:
          if (v40 != 3 || v38 != 5)
          {
            goto LABEL_98;
          }

          break;
        case 6:
          if (v40 != 3 || v38 != 6)
          {
            goto LABEL_98;
          }

          break;
        case 7:
          if (v40 != 3 || v38 != 7)
          {
            goto LABEL_98;
          }

          break;
        case 8:
          if (v40 != 3 || v38 != 8)
          {
            goto LABEL_98;
          }

          break;
        case 9:
          if (v40 != 3 || v38 != 9)
          {
            goto LABEL_98;
          }

          break;
        case 10:
          if (v40 != 3 || v38 != 10)
          {
            goto LABEL_98;
          }

          break;
        case 11:
          if (v40 != 3 || v38 != 11)
          {
            goto LABEL_98;
          }

          break;
        case 12:
          if (v40 != 3 || v38 != 12)
          {
            goto LABEL_98;
          }

          break;
        case 13:
          if (v40 != 3 || v38 != 13)
          {
            goto LABEL_98;
          }

          break;
        case 14:
          if (v40 != 3 || v38 != 14)
          {
            goto LABEL_98;
          }

          break;
        case 15:
          if (v40 != 3 || v38 != 15)
          {
            goto LABEL_98;
          }

          break;
        case 16:
          if (v40 != 3 || v38 != 16)
          {
            goto LABEL_98;
          }

          break;
        case 17:
          if (v40 != 3 || v38 != 17)
          {
            goto LABEL_98;
          }

          break;
        default:
          if (v40 != 3 || v39 | v38)
          {
            goto LABEL_98;
          }

          goto LABEL_75;
      }

      if (v39)
      {
        goto LABEL_98;
      }

LABEL_75:
      v41 = *(v27 + 4);
      v42 = *(v24 + 4);
      if (v41)
      {
        if (!v42 || (*(v27 + 3) != *(v24 + 3) || v41 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else if (v42)
      {
        goto LABEL_98;
      }

      v43 = *(v89 + 24);
      v44 = *(v85 + 48);
      sub_10002C98C(&v27[v43], v20);
      sub_10002C98C(&v24[v43], &v20[v44]);
      v45 = *v78;
      v46 = v86;
      if ((*v78)(v20, 1, v86) == 1)
      {
        if (v45(&v20[v44], 1, v46) != 1)
        {
          goto LABEL_102;
        }

        sub_1000068B0(v20, &unk_10015FB70, &unk_100112010);
      }

      else
      {
        v47 = v83;
        sub_10002C98C(v20, v83);
        if (v45(&v20[v44], 1, v46) == 1)
        {
          (*v75)(v47, v46);
LABEL_102:
          sub_1000068B0(v20, &qword_10015E940, &unk_100113180);
LABEL_98:
          sub_10002E8E8(v24, type metadata accessor for PrimarySettingsListSectionModel);
          sub_10002E8E8(v27, type metadata accessor for PrimarySettingsListSectionModel);
          return 0;
        }

        v48 = v82;
        (*v74)(v82, &v20[v44], v46);
        sub_10006D784(&qword_10015BF48, &type metadata accessor for LocalizedStringResource);
        v49 = v47;
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *v75;
        (*v75)(v48, v46);
        v51(v49, v46);
        sub_1000068B0(v20, &unk_10015FB70, &unk_100112010);
        if ((v50 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v52 = *(v89 + 28);
      v53 = *&v27[v52];
      v54 = *&v24[v52];
      v55 = *(v53 + 16);
      if (v55 != *(v54 + 16))
      {
        goto LABEL_98;
      }

      if (v55 && v53 != v54)
      {
        v56 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v57 = v53 + v56;
        v58 = v54 + v56;
        v84 = *(v73 + 72);
        while (1)
        {
          sub_10002EA10(v57, v11, type metadata accessor for PrimarySettingsListItemModel);
          v59 = v88;
          sub_10002EA10(v58, v88, type metadata accessor for PrimarySettingsListItemModel);
          v60 = *(v11 + 1);
          v90[0] = *v11;
          v90[1] = v60;
          v91 = v11[32];
          v61 = *(v59 + 16);
          v92[0] = *v59;
          v92[1] = v61;
          v93 = *(v59 + 32);
          v62 = sub_10002BB48(v90, v92);
          v63 = v87;
          if ((v62 & 1) == 0 || (sub_10003A2B4(&v11[*(v87 + 20)], v59 + *(v87 + 20)) & 1) == 0)
          {
            break;
          }

          v64 = *(v63 + 24);
          v65 = v20;
          v66 = *&v11[v64];
          v67 = v59;
          v68 = v27;
          v69 = v24;
          v70 = *(v67 + v64);
          sub_10002E8E8(v67, type metadata accessor for PrimarySettingsListItemModel);
          sub_10002E8E8(v11, type metadata accessor for PrimarySettingsListItemModel);
          v71 = v66 == v70;
          v24 = v69;
          v27 = v68;
          if (!v71)
          {
            goto LABEL_98;
          }

          v20 = v65;
          v58 += v84;
          v57 += v84;
          if (!--v55)
          {
            goto LABEL_6;
          }
        }

        sub_10002E8E8(v59, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E8E8(v11, type metadata accessor for PrimarySettingsListItemModel);
        goto LABEL_98;
      }

LABEL_6:
      v32 = v80 + 1;
      sub_10002E8E8(v24, type metadata accessor for PrimarySettingsListSectionModel);
      sub_10002E8E8(v27, type metadata accessor for PrimarySettingsListSectionModel);
      result = 1;
      v30 = v77;
      v31 = v76;
      if (v32 == v81)
      {
        return result;
      }
    }

    if (v37)
    {
      if (v40 != 1)
      {
        goto LABEL_98;
      }
    }

    else if (v40)
    {
      goto LABEL_98;
    }

LABEL_16:
    if ((v35 != v38 || v36 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_75;
  }

  return 0;
}

uint64_t sub_10006D1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_10006D784(v32, v33);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_10006D7CC(v3, v17);
      sub_10006D7CC(v4, v14);
      v5 = v17[0] == v14[0] && v17[1] == v14[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[2] == v14[2] ? (v6 = v17[3] == v14[3]) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_49:
        sub_10006D828(v14);
        sub_10006D828(v17);
        return 0;
      }

      if (v19 > 1u)
      {
        if (v19 != 2)
        {
          v9 = v16 == 3 && v15 == 0;
          v12 = v15 == 1 && *(&v15 + 1) == 0 && v16 == 3;
          if (v18 == 0)
          {
            v7 = v9;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_46;
        }

        if (v16 != 2)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (!v19)
        {
          if (v16)
          {
            goto LABEL_49;
          }

          sub_1000548F0();
          if ((static NSObject.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_5:
          sub_10006D828(v14);
          sub_10006D828(v17);
          goto LABEL_6;
        }

        if (v16 != 1)
        {
          goto LABEL_49;
        }
      }

      if (v18 == v15)
      {
        goto LABEL_5;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_46:
      sub_10006D828(v14);
      sub_10006D828(v17);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 96;
      v4 += 96;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_10006D57C(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (((*a1 ^ *a2) & 1) != 0 || ((v2 >> 8) & 1) != ((v3 >> 8) & 1) || ((v2 >> 16) & 1) != ((v3 >> 16) & 1))
  {
    return 0;
  }

  v5 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v10 = a2[3];
  if (sub_1000459A0(a1[1], a2[1]) & 1) == 0 || (sub_1000459A0(v5, v8) & 1) == 0 || (sub_1000459A0(v7, v10) & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)))
  {
    return 0;
  }

  result = 0;
  if (((*(a1 + 36) ^ *(a2 + 36)) & 1) == 0 && ((*(a1 + 37) ^ *(a2 + 37)) & 1) == 0 && *(a1 + 38) == *(a2 + 38))
  {
    if (sub_1000459A0(a1[5], a2[5]))
    {
      v11 = a1[6];
      v12 = a1[7];
      v13 = *(a1 + 64);
      v14 = a1[9];
      v15 = a2[6];
      v16 = a2[7];
      v17 = *(a2 + 64);
      v18 = a2[9];
      v19 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v19 == 2)
        {
          if ((v17 & 0xC0) == 0x80 && v11 == v15 && v12 == v16)
          {
            return (sub_10006C604(v14, v18) & 1) != 0;
          }
        }

        else if (v17 >= 0xC0 && !(v16 | v15) && v17 == 192)
        {
          return (sub_10006C604(v14, v18) & 1) != 0;
        }
      }

      else
      {
        if (!v19)
        {
          if (v17 >= 0x40 || (v11 != v15 || v12 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v13 ^ v17) & 1) != 0)
          {
            return 0;
          }

          return (sub_10006C604(v14, v18) & 1) != 0;
        }

        if ((v17 & 0xC0) == 0x40 && v11 == v15)
        {
          return (sub_10006C604(v14, v18) & 1) != 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10006D784(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10006D87C()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v109 = &v85 - v2;
  v108 = sub_10004DED0(&qword_10015CDA0, &qword_1001131E8);
  v3 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v107 = &v85 - v4;
  v98 = sub_10004DED0(&qword_10015CDA8, &unk_1001131F0);
  v5 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v94 = &v85 - v6;
  v111 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v89 = *(v111 - 1);
  v7 = *(v89 + 64);
  __chkstk_darwin(v111);
  v88 = &v85 - v8;
  v91 = sub_10004DED0(&qword_10015CDB0, &qword_100113200);
  v9 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v85 - v10;
  v90 = sub_10004DED0(&qword_10015CDB8, &qword_100113208);
  v11 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v113 = &v85 - v12;
  v96 = sub_10004DED0(&qword_10015CDC0, &qword_100113210);
  v13 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v97 = &v85 - v14;
  v15 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  v100 = *(v15 - 8);
  v16 = *(v100 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v104 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v18;
  __chkstk_darwin(v17);
  v20 = &v85 - v19;
  v21 = sub_10004DED0(&qword_10015CDD0, &qword_100113220);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v85 - v24);
  v26 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v95 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v30;
  __chkstk_darwin(v29);
  v32 = &v85 - v31;
  v33 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v85 - v36;
  *v25 = 1;
  (*(v22 + 104))(v25, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v21);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v38 = v25;
  v39 = v115;
  (*(v22 + 8))(v38, v21);
  v102 = v34;
  v40 = *(v34 + 16);
  v99 = v37;
  v103 = v33;
  v40(v39 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshots, v37, v33);
  v105 = v27;
  v106 = v26;
  v43 = *(v27 + 16);
  v42 = v27 + 16;
  v41 = v43;
  v114 = v32;
  v43((v39 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshotsContinuation), v32, v26);
  v44 = [objc_allocWithZone(type metadata accessor for ManagedConfigurationStateProvider()) init];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v46 = result;
    v47 = [result isMultiUser];

    v112 = v20;
    v87 = v42;
    v86 = v41;
    if (v47)
    {
      goto LABEL_6;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v48 = result;
      cellularDataCapability = MobileGestalt_get_cellularDataCapability();

      if (cellularDataCapability)
      {
        v50 = type metadata accessor for CellularTelephonyStateProvider();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        v53 = sub_10001358C();
        v54 = &off_10014E9F8;
LABEL_7:
        v117 = v50;
        v118 = v54;
        *&v116 = v53;
        sub_100046A2C(&v116, &v119);
        v57 = type metadata accessor for SpringBoardApplicationStateProvider();
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();
        v85 = sub_100016628();
        v60 = type metadata accessor for AccountsStateProvider();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v110 = sub_10001C570();
        sub_10004DED0(&qword_10015C918, &qword_100112B80);
        sub_1000525A0(&qword_10015CDE0, &qword_10015C918, &qword_100112B80);
        sub_10006ABD8();
        AsyncSequence<>.removeDuplicates()();
        v63 = v120;
        v64 = v121;
        sub_100018544(&v119, v120);
        v65 = v88;
        (*(v64 + 8))(v63, v64);
        sub_1000525A0(&qword_10015CDE8, &qword_10015CB50, &unk_100112DA0);
        sub_10006BA54();
        v66 = v92;
        v67 = v111;
        AsyncSequence<>.removeDuplicates()();
        (*(v89 + 8))(v65, v67);
        v111 = v44;
        sub_10004DED0(&qword_10015C7D8, &unk_100113240);
        sub_1000525A0(&qword_10015CDF0, &qword_10015C7D8, &unk_100113240);
        sub_100066F2C();
        v68 = v94;
        AsyncSequence<>.removeDuplicates()();
        sub_1000525A0(&qword_10015CDF8, &qword_10015CDB8, &qword_100113208);
        sub_1000525A0(&qword_10015CE00, &qword_10015CDB0, &qword_100113200);
        sub_1000525A0(&qword_10015CE08, &qword_10015CDA8, &unk_1001131F0);
        v69 = v97;
        v70 = v113;
        combineLatest<A, B, C>(_:_:_:)();
        sub_1000068B0(v68, &qword_10015CDA8, &unk_1001131F0);
        sub_1000068B0(v66, &qword_10015CDB0, &qword_100113200);
        sub_1000068B0(v70, &qword_10015CDB8, &qword_100113208);
        sub_10004DED0(&qword_10015C448, qword_1001123D8);
        sub_1000525A0(&qword_10015CE10, &qword_10015C448, qword_1001123D8);
        sub_1000655A4();
        v71 = v110;
        v72 = v107;
        AsyncSequence<>.removeDuplicates()();
        sub_1000525A0(&qword_10015CE18, &qword_10015CDC0, &qword_100113210);
        sub_1000525A0(&qword_10015CE20, &qword_10015CDA0, &qword_1001131E8);
        v73 = v112;
        combineLatest<A, B>(_:_:)();
        sub_1000068B0(v72, &qword_10015CDA0, &qword_1001131E8);
        sub_1000068B0(v69, &qword_10015CDC0, &qword_100113210);
        v74 = v115;
        *(v115 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_managedConfigurationStateProvider) = v111;
        sub_10000B270(&v119, v74 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_cellularTelephonyStateProvider);
        *(v74 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_launchableApplicationStateProvider) = v85;
        *(v74 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_accountsStateProvider) = v71;
        v75 = type metadata accessor for TaskPriority();
        v76 = v109;
        (*(*(v75 - 8) + 56))(v109, 1, 1, v75);
        v77 = v104;
        sub_10006EE10(v73, v104);
        v78 = v95;
        v79 = v106;
        v86(v95, v114, v106);
        v80 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v81 = v105;
        v82 = (v101 + *(v105 + 80) + v80) & ~*(v105 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = 0;
        *(v83 + 24) = 0;
        sub_10006EE80(v77, v83 + v80);
        (*(v81 + 32))(v83 + v82, v78, v79);
        v84 = v111;

        sub_100094AF4(0, 0, v76, &unk_100113258, v83);

        sub_1000068B0(v112, &qword_10015CDC8, &qword_100113218);
        (*(v81 + 8))(v114, v79);
        (*(v102 + 8))(v99, v103);
        sub_10000665C(&v119);
        return v74;
      }

LABEL_6:
      v50 = type metadata accessor for SingleItemCellularTelephonyStateProvider();
      v55 = *(v50 + 48);
      v56 = *(v50 + 52);
      swift_allocObject();
      v53 = sub_10006BED0();
      v54 = &off_10014EE58;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006E5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = sub_10004DED0(&qword_10015CE28, &qword_100113260);
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10006E698, 0, 0);
}

uint64_t sub_10006E698()
{
  v1 = v0[24];
  sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  v2 = AsyncCombineLatest2Sequence.makeAsyncIterator()();
  v0[29] = v2;
  v0[22] = v2;
  v3 = async function pointer to AsyncCombineLatest2Sequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  v5 = sub_10004DED0(&qword_10015CE30, qword_100113268);
  *v4 = v0;
  v4[1] = sub_10006E770;

  return AsyncCombineLatest2Sequence.Iterator.next()(v0 + 2, v5);
}

uint64_t sub_10006E770()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10006EA80;
  }

  else
  {
    v3 = sub_10006E884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006E8A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *(v0 + 88);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 54);
    v10 = *(v0 + 17) & 1;
    v11 = *(v0 + 18) & 1;
    v12 = *(v0 + 52) & 1;
    v13 = *(v0 + 53) & 1;
    *(v0 + 96) = *(v0 + 16) & 1;
    *(v0 + 97) = v10;
    *(v0 + 98) = v11;
    *(v0 + 104) = v1;
    v14 = *(v0 + 32);
    *(v0 + 112) = v14;
    LODWORD(v14) = *(v0 + 48);
    *&v14 = vmovl_u8(*&v14).u64[0] & 0xFF01FF01FF01FF01;
    *(v0 + 128) = vuzp1_s8(*&v14, *&v14).u32[0];
    *(v0 + 132) = v12;
    *(v0 + 133) = v13;
    *(v0 + 134) = v9;
    *(v0 + 136) = v8;
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 160) = v7;
    *(v0 + 168) = v6;
    sub_10004DED0(&qword_10015CDD8, &qword_100113228);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v5);
    v15 = async function pointer to AsyncCombineLatest2Sequence.Iterator.next()[1];
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    v17 = sub_10004DED0(&qword_10015CE30, qword_100113268);
    *v16 = v0;
    v16[1] = sub_10006E770;

    return AsyncCombineLatest2Sequence.Iterator.next()(v0 + 16, v17);
  }

  else
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10006EA80()
{
  *(v0 + 184) = *(v0 + 248);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006EB0C()
{
  v1 = OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshots;
  v2 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshotsContinuation;
  v4 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10000665C((v0 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_cellularTelephonyStateProvider));
  v5 = *(v0 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_launchableApplicationStateProvider);

  v6 = *(v0 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_accountsStateProvider);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrimarySettingsListDataModelSystemStateSnapshotProvider()
{
  result = qword_10015CCE0;
  if (!qword_10015CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EC94()
{
  sub_10006EDBC(319, &qword_10015CCF0, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10006EDBC(319, &unk_10015CCF8, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10006EDBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PrimarySettingsListDataModelSystemStateSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006EE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EEF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015CDC8, &qword_100113218) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015CDD8, &qword_100113228) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_10006E5CC(a1, v10, v11, v1 + v6, v1 + v9);
}

Swift::Int sub_10006F058(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 <= 1u)
  {
    if (!a3)
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v6 = 2;
LABEL_7:
    Hasher._combine(_:)(v6);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a3 == 2)
  {
    v6 = 3;
    goto LABEL_7;
  }

  if (a1 | a2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_10006F13C()
{
  if (*(v0 + 16) <= 1u)
  {
    if (!*(v0 + 16))
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return;
    }

    v1 = 2;
    goto LABEL_7;
  }

  if (*(v0 + 16) == 2)
  {
    v1 = 3;
LABEL_7:
    Hasher._combine(_:)(v1);

    String.hash(into:)();
    return;
  }

  if (*v0 == 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10006F1F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 <= 1)
  {
    if (!v3)
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v4 = 2;
LABEL_7:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v3 == 2)
  {
    v4 = 3;
    goto LABEL_7;
  }

  if (v1 | v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10006F2B4()
{
  if (*(v0 + 16) - 1 > 1)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

unint64_t sub_10006F304()
{
  result = qword_10015CE38;
  if (!qword_10015CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE38);
  }

  return result;
}

uint64_t sub_10006F358(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        sub_1000548F0();
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006F474()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_10006F5B8, v5, v4);
}

uint64_t sub_10006F5B8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006F618()
{
  v1 = v0[29];
  v0[37] = v1;
  if (v1)
  {
    v2 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v1 store:v0[35]];
    v0[38] = v2;
    if (v2)
    {
      v3 = v2;
      v0[10] = v0;
      v0[15] = v0 + 29;
      v0[11] = sub_10006F938;
      v4 = swift_continuation_init();
      v0[25] = sub_10004DED0(&qword_10015CF90, &qword_100113620);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_10001F6FC;
      v0[21] = &unk_10014F130;
      v0[22] = v4;
      [v3 fetchProfilePictureFromCacheForAccountOwner:v0 + 18];

      return _swift_continuation_await(v0 + 10);
    }

    v6 = v0[32];
  }

  else
  {
    v5 = v0[32];
  }

  v7 = v0[31];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 shieldSignInOrCreateFlows];

  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  v11 = v0[35];
  v12 = v0[31];
  if (v9)
  {
    *(v10 + 24) = 0x8000000000000008;
  }

  else
  {
    *(v10 + 24) = 0x8000000000000000;
  }

  v0[18] = v12;
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10006F938()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = sub_10006FF3C;
  }

  else
  {
    v6 = sub_10006FA68;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10006FA68()
{
  v1 = v0[32];

  v2 = v0[29];
  v3 = v0[37];
  v4 = v0[38];
  if (v2)
  {
    v17 = v0[35];
    v5 = v0[31];
    v6 = v2;
    v7 = Image.init(uiImage:)() | 0x4000000000000000;
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    v0[18] = v5;
    sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    v9 = v0[31];
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 shieldSignInOrCreateFlows];

    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v9;
    v13 = v0[35];
    v14 = v0[31];
    if (v11)
    {
      *(v12 + 24) = 0x8000000000000008;
    }

    else
    {
      *(v12 + 24) = 0x8000000000000000;
    }

    v0[18] = v14;
    sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10006FD5C()
{
  v20 = v0;
  v1 = v0[36];
  v2 = v0[32];

  swift_willThrow();
  v3 = v0[36];
  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696E8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[28];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100025CF0(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load avatar image: %{public}s", v9, 0xCu);
    sub_10000665C(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10006FF3C()
{
  v22 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[32];

  swift_willThrow();

  v5 = v0[39];
  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_1001696E8);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[28];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100025CF0(v16, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load avatar image: %{public}s", v11, 0xCu);
    sub_10000665C(v12);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

unint64_t sub_100070128()
{
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100042AF8(v1);
  return v1;
}

unint64_t sub_1000701D4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_100042AF8(v4);
}

uint64_t sub_100070280(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10007034C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    if (v5)
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

    v9 = sub_100070784;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000704E4;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000704E4()
{
  v1 = v0[17];

  v2 = v0[14];
  v3 = v0[15];

  return _swift_task_switch(sub_100070548, v2, v3);
}

uint64_t sub_100070548()
{
  v1 = v0[9];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[16];
    v4 = v0[13];

LABEL_12:
    v16 = v0[11];
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }

  v5 = v0[8];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[9];

    sub_1000068B0(v15, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_12;
  }

  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_1001696E8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received notification to reload avatar image", v10, 2u);
  }

  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_100070810;

  return sub_100045328();
}

uint64_t sub_100070784()
{
  *(v0 + 56) = *(v0 + 152);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100070810()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_100070930, v4, v3);
}

uint64_t sub_100070930()
{
  v1 = v0[20];
  v2 = v0[9];

  sub_1000068B0(v2, &unk_10015FCF0, &unk_100117B60);
  v3 = v0[12];
  v0[17] = static MainActor.shared.getter();
  v4 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  v6 = sub_10004DED0(&qword_10015CF80, &unk_1001135D8);
  *v5 = v0;
  v5[1] = sub_10007034C;
  v7 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v7, v6);
}

uint64_t sub_100070A14()
{
  sub_100070BD0(v0[2]);
  v1 = OBJC_IVAR____TtC11SettingsAppP33_38407CB6A1B54ACF24C74ACB13DB4A0030PrimaryAppleAccountAvatarState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_100070AC0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_100070AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100070B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100070BA4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_100070BD0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_100070C04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_100042AF8(v1);
  return sub_100070BD0(v3);
}

uint64_t sub_100070C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_100070C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_100070CEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_100070D28(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100070D94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v33 = sub_10004DED0(&qword_10015D050, &qword_1001137E8);
  v3 = *(v33 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v33);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_10004DED0(&qword_10015D058, &qword_1001137F0);
  v31 = *(v9 - 8);
  v10 = v31;
  v11 = *(v31 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v36 = a1;
  v37 = xmmword_100113720;
  v38 = 0;
  v39 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  sub_1000525A0(&qword_10015D068, &qword_10015D060, &qword_1001137F8);
  v30 = v16;
  Section<>.init(header:content:)();
  v35 = a1;
  sub_10004DED0(&qword_10015D070, &qword_100113800);
  sub_1000525A0(&qword_10015D078, &qword_10015D070, &qword_100113800);
  v28 = v8;
  Section<>.init(content:)();
  v17 = *(v10 + 16);
  v29 = v14;
  v17(v14, v16, v9);
  v18 = v3[2];
  v19 = v32;
  v20 = v8;
  v21 = v33;
  v18(v32, v20, v33);
  v22 = v34;
  v17(v34, v14, v9);
  v23 = sub_10004DED0(&qword_10015D080, &qword_100113808);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = v3[1];
  v24(v28, v21);
  v25 = *(v31 + 8);
  v25(v30, v9);
  v24(v19, v21);
  return (v25)(v29, v9);
}

uint64_t sub_100071144(uint64_t a1)
{
  v1 = *(a1 + 32);
  AppStorage.projectedValue.getter();
  static Animation.default.getter();
  sub_10004DED0(&qword_10015D088, &qword_100113810);
  Binding.animation(_:)();

  return Toggle.init(isOn:label:)();
}

void sub_100071220(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001001225D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100071250@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v47 = *(v3 - 8);
  v4 = v47[8];
  v5 = __chkstk_darwin(v3);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v38 - v8;
  v9 = __chkstk_darwin(v7);
  v41 = &v38 - v10;
  v11 = __chkstk_darwin(v9);
  v40 = &v38 - v12;
  v13 = __chkstk_darwin(v11);
  v39 = &v38 - v14;
  v15 = __chkstk_darwin(v13);
  v46 = &v38 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - v18;
  __chkstk_darwin(v17);
  v45 = &v38 - v20;
  v21 = *a1;
  AppStorage.projectedValue.getter();
  v48 = v51;
  v49 = v52;
  v50 = v53;
  static Animation.default.getter();
  sub_10004DED0(&qword_10015D088, &qword_100113810);
  Binding.animation(_:)();

  Toggle.init(isOn:label:)();
  v22 = a1[1];
  AppStorage.projectedValue.getter();
  v48 = v51;
  v49 = v52;
  v50 = v53;
  static Animation.default.getter();
  Binding.animation(_:)();

  v23 = v19;
  v38 = v19;
  Toggle.init(isOn:label:)();
  v24 = a1[2];
  AppStorage.projectedValue.getter();
  v48 = v51;
  v49 = v52;
  v50 = v53;
  static Animation.default.getter();
  Binding.animation(_:)();

  v25 = v46;
  Toggle.init(isOn:label:)();
  v26 = a1[3];
  AppStorage.projectedValue.getter();
  v48 = v51;
  v49 = v52;
  v50 = v53;
  static Animation.default.getter();
  Binding.animation(_:)();

  v27 = v39;
  Toggle.init(isOn:label:)();
  v28 = v47[2];
  v29 = v40;
  v28(v40, v45, v3);
  v30 = v41;
  v28(v41, v23, v3);
  v31 = v42;
  v28(v42, v25, v3);
  v32 = v43;
  v33 = v27;
  v28(v43, v27, v3);
  v34 = v44;
  v28(v44, v29, v3);
  v35 = sub_10004DED0(&qword_10015D090, &qword_100113818);
  v28(&v34[v35[12]], v30, v3);
  v28(&v34[v35[16]], v31, v3);
  v28(&v34[v35[20]], v32, v3);
  v36 = v47[1];
  v36(v33, v3);
  v36(v46, v3);
  v36(v38, v3);
  v36(v45, v3);
  v36(v32, v3);
  v36(v31, v3);
  v36(v30, v3);
  return (v36)(v29, v3);
}

void sub_10007180C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x800000010011F9E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

void sub_10007183C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x800000010011F9A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_10007186C()
{
  v1 = sub_10004DED0(&qword_10015D030, &qword_1001137D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v6;
  v11 = *(v0 + 32);
  v9 = v10;
  sub_10004DED0(&qword_10015D038, &qword_1001137E0);
  sub_1000525A0(&qword_10015D040, &qword_10015D038, &qword_1001137E0);
  List<>.init(content:)();
  sub_1000525A0(&qword_10015D048, &qword_10015D030, &qword_1001137D8);
  View.navigationTitle(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100071A44@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10015AB10 != -1)
  {
    swift_once();
  }

  v2 = qword_100169798;
  v3 = AppStorage.init<A>(wrappedValue:_:store:)();
  v4 = AppStorage.init<A>(wrappedValue:_:store:)();
  v5 = AppStorage.init<A>(wrappedValue:_:store:)();
  v6 = AppStorage.init<A>(wrappedValue:_:store:)();
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = result;
  return result;
}

uint64_t sub_100071B90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100071BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071CAC@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_10004DED0(&qword_10015D128, &qword_100113920);
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = v22 - v4;
  v25 = v1;
  sub_10004DED0(&qword_10015D130, &qword_100113928);
  v6 = sub_100052374(&qword_10015D138, &qword_100113930);
  v7 = sub_100052374(&qword_10015D140, &qword_100113938);
  v8 = sub_100052374(&qword_10015D148, &qword_100113940);
  v9 = sub_100052374(&qword_10015D150, &qword_100113948);
  v10 = sub_1000525A0(&qword_10015D158, &qword_10015D150, &qword_100113948);
  v26 = v9;
  v27 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_1000525A0(&qword_10015D160, &qword_10015D148, &qword_100113940);
  v26 = v7;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  v29 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v26 = v6;
  v27 = v13;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    sub_10004DED0(&qword_10015D170, &qword_100113950);
    v16 = *(type metadata accessor for PresentationDetent() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001103D0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    sub_100065070(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  sub_1000525A0(&qword_10015D168, &qword_10015D128, &qword_100113920);
  v20 = v24;
  View.presentationDetents(_:)();

  return (*(v23 + 8))(v5, v20);
}

uint64_t sub_10007207C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v34 = a2;
  v30 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015D150, &qword_100113948);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_10004DED0(&qword_10015D140, &qword_100113938);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_10004DED0(&qword_10015D138, &qword_100113930);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v36 = a1;
  sub_10004DED0(&qword_10015D178, &qword_100113958);
  sub_1000525A0(&qword_10015D180, &qword_10015D178, &qword_100113958);
  List<>.init(content:)();
  v20 = v30;
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v30);
  v21 = sub_1000525A0(&qword_10015D158, &qword_10015D150, &qword_100113948);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v6, v20);
  (*(v29 + 8))(v10, v7);
  v35 = v28;
  v22 = sub_10004DED0(&qword_10015D148, &qword_100113940);
  v37 = v7;
  v38 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1000525A0(&qword_10015D160, &qword_10015D148, &qword_100113940);
  View.toolbar<A>(content:)();
  (*(v31 + 8))(v14, v11);
  v37 = v11;
  v38 = v22;
  v39 = OpaqueTypeConformance2;
  v40 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  View.settingsListAppearance()();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_100072504@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v96 = sub_10004DED0(&qword_10015D1B8, &qword_100113990);
  v80 = *(v96 - 8);
  v3 = *(v80 + 64);
  v4 = __chkstk_darwin(v96);
  v95 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v73 - v6;
  v94 = sub_10004DED0(&qword_10015D1C0, &qword_100113998);
  v78 = *(v94 - 8);
  v7 = *(v78 + 64);
  v8 = __chkstk_darwin(v94);
  v93 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v73 - v10;
  v11 = sub_10004DED0(&qword_10015D1C8, &qword_1001139A0);
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = v88[8];
  v13 = __chkstk_darwin(v11);
  v92 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v73 - v15;
  v77 = type metadata accessor for NavigationPath();
  v76 = *(v77 - 1);
  v16 = *(v76 + 64);
  __chkstk_darwin(v77);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for EnvironmentValues();
  v73 = *(v74 - 8);
  v19 = *(v73 + 64);
  __chkstk_darwin(v74);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004DED0(&qword_10015D1D0, &qword_1001139A8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v91 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v85 = &v73 - v26;
  v27 = type metadata accessor for SettingsApplicationDebugRoot();
  v28 = v27 - 8;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  v31 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v83 = *(v31 - 8);
  v84 = v31;
  v32 = *(v83 + 64);
  v33 = __chkstk_darwin(v31);
  v82 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v73 - v35;
  sub_100074D20(a1, &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v38 = swift_allocObject();
  sub_100074D84(&v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  v81 = v36;
  Button.init(action:label:)();
  v39 = *(v28 + 28);
  v75 = a1;
  v40 = &a1[v39];
  v41 = *v40;
  LOBYTE(v29) = v40[8];

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v73 + 8))(v21, v74);
    v41 = v97;
  }

  v43 = *(v41 + 24);

  swift_getKeyPath();
  *&v97 = v43;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v45 = v76;
  v46 = v77;
  (*(v76 + 16))(v18, v43 + v44, v77);

  LOBYTE(v44) = NavigationPath.isEmpty.getter();
  (*(v45 + 8))(v18, v46);
  if (v44)
  {
    v47 = 1;
    v48 = v85;
  }

  else
  {
    v49 = v75;
    sub_100074D20(v75, &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v50 = swift_allocObject();
    v51 = sub_100074D84(&v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v50 + v37);
    __chkstk_darwin(v51);
    *(&v73 - 2) = v49;
    v48 = v85;
    Button.init(action:label:)();
    v47 = 0;
  }

  v52 = v84;
  v53 = v83;
  (*(v83 + 56))(v48, v47, 1, v84);
  sub_10004DED0(&qword_10015D1D8, &qword_1001139D8);
  sub_1000525A0(&qword_10015D1E0, &qword_10015D1D8, &qword_1001139D8);
  v54 = v86;
  Section<>.init(content:)();
  v97 = xmmword_100113820;
  v98 = 0;
  v99 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D1E8, &qword_1001139E0);
  sub_1000525A0(&qword_10015D1F0, &qword_10015D1E8, &qword_1001139E0);
  v55 = v87;
  Section<>.init(header:content:)();
  v97 = xmmword_100113830;
  v98 = 0;
  v99 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D1F8, &qword_1001139E8);
  sub_100074F04();
  v56 = v90;
  Section<>.init(header:content:)();
  v57 = *(v53 + 16);
  v58 = v82;
  v57(v82, v81, v52);
  sub_100059CA0(v48, v91, &qword_10015D1D0, &qword_1001139A8);
  v77 = v88[2];
  (v77)(v92, v54, v89);
  v59 = v78;
  v76 = *(v78 + 16);
  (v76)(v93, v55, v94);
  v60 = v80;
  v75 = *(v80 + 16);
  v75(v95, v56, v96);
  v61 = v79;
  v57(v79, v58, v52);
  v62 = sub_10004DED0(&qword_10015D218, qword_100113A00);
  sub_100059CA0(v91, &v61[v62[12]], &qword_10015D1D0, &qword_1001139A8);
  v63 = v89;
  (v77)(&v61[v62[16]], v92, v89);
  v64 = v94;
  (v76)(&v61[v62[20]], v93, v94);
  v65 = &v61[v62[24]];
  v66 = v96;
  v75(v65, v95, v96);
  v67 = *(v60 + 8);
  v67(v90, v66);
  v68 = *(v59 + 8);
  v68(v87, v64);
  v69 = v88[1];
  v69(v86, v63);
  sub_100075014(v85);
  v70 = v84;
  v71 = *(v83 + 8);
  v71(v81, v84);
  v67(v95, v96);
  v68(v93, v94);
  v69(v92, v63);
  sub_100075014(v91);
  return (v71)(v82, v70);
}

uint64_t sub_1000730C0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for SettingsApplicationDebugRoot() + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = *&v13[0];
  }

  v11 = *(v8 + 24);

  memset(v13, 0, sizeof(v13));
  v14 = 6;
  sub_1000A57A4(v13);
}

void sub_100073244(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x80000001001226B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100073274(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for SettingsApplicationDebugRoot() + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v14;
  }

  v11 = *(v8 + 24);

  swift_getKeyPath();
  v14 = v11;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = v11;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.removeLast(_:)(1);
  swift_endAccess();
  v14 = v11;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_1000734AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavigationPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v25[1] = v27;
  v14 = (a1 + *(type metadata accessor for SettingsApplicationDebugRoot() + 20));
  v15 = *v14;
  LOBYTE(a1) = *(v14 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
    v15 = v26;
  }

  v17 = *(v15 + 24);

  swift_getKeyPath();
  v26 = v17;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v5 + 16))(v8, v17 + v18, v4);

  v19 = NavigationPath.count.getter();
  (*(v5 + 8))(v8, v4);
  v25[2] = v19;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;

  v28 = v20;
  v29 = v22;
  v23._countAndFlagsBits = 0x6F20736D65746920;
  v23._object = 0xEE0068746170206ELL;
  String.append(_:)(v23);
  v24 = v29;
  *a2 = v28;
  *(a2 + 8) = v24;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1000737D4@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v38 = sub_10004DED0(&qword_10015D240, &qword_100113A58);
  v36 = *(v38 - 8);
  v1 = *(v36 + 64);
  v2 = __chkstk_darwin(v38);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v31 - v4;
  v6 = sub_10004DED0(&qword_10015D248, &qword_100113A60);
  v35 = *(v6 - 8);
  v7 = v35;
  v8 = *(v35 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = AppStorage.init<A>(wrappedValue:_:store:)();
  v15 = AppStorage.init<A>(wrappedValue:_:store:)();
  v16 = AppStorage.init<A>(wrappedValue:_:store:)();
  v17 = AppStorage.init<A>(wrappedValue:_:store:)();
  v18 = AppStorage.init<A>(wrappedValue:_:store:)();
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;
  sub_100075098();
  v34 = v13;
  NavigationLink.init(destination:label:)();
  sub_100071A44(v40);
  sub_1000750EC();
  v32 = v5;
  NavigationLink.init(destination:label:)();
  v19 = *(v7 + 16);
  v33 = v11;
  v20 = v13;
  v21 = v6;
  v19(v11, v20, v6);
  v23 = v36;
  v22 = v37;
  v24 = *(v36 + 16);
  v25 = v38;
  v24(v37, v5, v38);
  v26 = v39;
  v19(v39, v11, v21);
  v27 = sub_10004DED0(&qword_10015D260, &qword_100113A68);
  v24(&v26[*(v27 + 48)], v22, v25);
  v28 = *(v23 + 8);
  v28(v32, v25);
  v29 = *(v35 + 8);
  v29(v34, v21);
  v28(v22, v25);
  return (v29)(v33, v21);
}

double sub_100073BC4@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x686372616553;
  *a1 = xmmword_100113840;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_100073BE4@<D0>(uint64_t a1@<X8>)
{
  result = 1.24009431e180;
  *a1 = xmmword_100113850;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100073C04@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v30 = sub_10004DED0(&qword_10015D230, &qword_100113A48);
  v27 = *(v30 - 8);
  v1 = v27;
  v2 = *(v27 + 64);
  v3 = __chkstk_darwin(v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = sub_10004DED0(&qword_10015D210, &unk_1001139F0);
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = *(v29 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10000A5B0();
  LabeledContent<>.init(content:label:)();
  v26 = v7;
  LabeledContent<>.init(content:label:)();
  v16 = *(v9 + 16);
  v28 = v13;
  v16(v13, v15, v8);
  v17 = *(v1 + 16);
  v18 = v7;
  v19 = v30;
  v17(v5, v18, v30);
  v20 = v31;
  v16(v31, v13, v8);
  v21 = sub_10004DED0(&qword_10015D238, &qword_100113A50);
  v17(&v20[*(v21 + 48)], v5, v19);
  v22 = *(v27 + 8);
  v23 = v19;
  v22(v26, v19);
  v24 = *(v29 + 8);
  v24(v15, v8);
  v22(v5, v23);
  return (v24)(v28, v8);
}

void sub_100073F54(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_100082F60();
  v6 = v5;

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v2 mainBundle];
  v8 = sub_10008305C();
  v10 = v9;

  if (!v10)
  {

LABEL_5:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v11._countAndFlagsBits = 10272;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v4;
  v15 = v6;
  v16 = &_swiftEmptyArrayStorage;
LABEL_6:
  *a1 = v14;
  a1[1] = v15;
  a1[2] = 0;
  a1[3] = v16;
}

double sub_10007405C@<D0>(uint64_t a1@<X8>)
{
  result = 1.35441148e-306;
  *a1 = xmmword_100113860;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_10007407C@<D0>(uint64_t a1@<X8>)
{
  *&result = 28494;
  *a1 = xmmword_100113870;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

void sub_10007409C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000100122600;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1000740CC()
{
  if (qword_10015AA78 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_10004DED0(&qword_10015D220, &qword_100113A40);
  sub_10004DED0(&qword_10015D210, &unk_1001139F0);
  sub_1000525A0(&qword_10015D228, &qword_10015D220, &qword_100113A40);
  sub_100074F88();
  return ForEach<>.init(_:id:content:)();
}

void sub_100074200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundlePath];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_100074258(uint64_t *a1)
{
  v2 = *a1;
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10000A5B0();
  return LabeledContent<>.init(content:label:)();
}

void sub_1000742F8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 infoDictionary];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v6 = sub_1000B8930(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10001EE30(*(v5 + 56) + 32 * v6, &v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v8 = sub_10008305C();
  if (!v9)
  {
LABEL_7:

    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v20 = v18;
  v21 = v19;
  v12._countAndFlagsBits = 10272;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v10;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v20;
  v16 = v21;
  v17 = &_swiftEmptyArrayStorage;
LABEL_9:
  *a2 = v15;
  a2[1] = v16;
  a2[2] = 0;
  a2[3] = v17;
}

uint64_t sub_100074468@<X0>(uint64_t a1@<X8>)
{
  sub_100083150();
  sub_10002EAE0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000744C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v23 = a2;
  v22 = sub_10004DED0(&qword_10015D188, &qword_100113960);
  v2 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v4 = &v20 - v3;
  v21 = sub_10004DED0(&qword_10015D190, &qword_100113968);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004DED0(&qword_10015D198, &qword_100113970);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  static ToolbarItemPlacement.principal.getter();
  sub_10004DED0(&qword_10015D1A0, &qword_100113978);
  sub_1000525A0(&qword_10015D1A8, &qword_10015D1A0, &qword_100113978);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v24 = v20;
  sub_10004DED0(&qword_10015B028, &unk_100113980);
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v22 + 48);
  (*(v12 + 16))(v4, v15, v11);
  v17 = &v4[v16];
  v18 = v21;
  (*(v5 + 16))(v17, v8, v21);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v8, v18);
  return (*(v12 + 8))(v15, v11);
}

double sub_100074834@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_100039F14(0xD000000000000015, 0x800000010011EB50, 1);
  sub_100009670(0x6775626544, 0xE500000000000000, 0);

  sub_100009680(0x6775626544, 0xE500000000000000, 0);

  sub_10002A748(0xD000000000000015, 0x800000010011EB50, 1);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0xD000000000000015;
  *(a1 + 32) = 0x800000010011EB50;
  *(a1 + 40) = 1;
  *&result = 0x6775626544;
  *(a1 + 48) = xmmword_100113880;
  *(a1 + 64) = 0;
  *(a1 + 72) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100074934(uint64_t a1)
{
  v2 = type metadata accessor for SettingsApplicationDebugRoot();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100074D20(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100074D84(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

uint64_t sub_100074A60(uint64_t a1)
{
  v19 = type metadata accessor for EnvironmentValues();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059CA0(a1, v9, &qword_10015D1B0, &qword_100114420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  DismissAction.callAsFunction()();
  return (*(v11 + 8))(v14, v10);
}

double sub_100074CDC@<D0>(uint64_t a1@<X8>)
{
  result = 1.73118111e-306;
  *a1 = xmmword_100113890;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100074D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationDebugRoot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationDebugRoot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100074E18()
{
  result = qword_10015B0E0;
  if (!qword_10015B0E0)
  {
    type metadata accessor for SettingsAppNavigationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B0E0);
  }

  return result;
}

uint64_t sub_100074E88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsApplicationDebugRoot() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100074F04()
{
  result = qword_10015D200;
  if (!qword_10015D200)
  {
    sub_100052374(&qword_10015D1F8, &qword_1001139E8);
    sub_100074F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D200);
  }

  return result;
}

unint64_t sub_100074F88()
{
  result = qword_10015D208;
  if (!qword_10015D208)
  {
    sub_100052374(&qword_10015D210, &unk_1001139F0);
    sub_10000A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D208);
  }

  return result;
}

uint64_t sub_100075014(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015D1D0, &qword_1001139A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100075098()
{
  result = qword_10015D250;
  if (!qword_10015D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D250);
  }

  return result;
}

unint64_t sub_1000750EC()
{
  result = qword_10015D258;
  if (!qword_10015D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D258);
  }

  return result;
}

uint64_t sub_10007516C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015D268, &qword_100113B68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_10004DED0(&qword_10015D270, &qword_100113B70);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = sub_10004DED0(&qword_10015D278, &qword_100113B78);
  v17 = *(v16 - 8);
  v28 = v16;
  v29 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  v33 = v2;
  sub_10004DED0(&qword_10015D280, &qword_100113B80);
  sub_1000525A0(&qword_10015D288, &qword_10015D280, &qword_100113B80);
  List<>.init(content:)();
  v21 = sub_1000525A0(&qword_10015D290, &qword_10015D268, &qword_100113B68);
  View.navigationTitle(_:)();
  (*(v8 + 8))(v11, v7);
  v23 = v30;
  v22 = v31;
  (*(v30 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v31);
  v34 = v7;
  v35 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v23 + 8))(v6, v22);
  (*(v27 + 8))(v15, v12);
  v34 = v12;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.settingsListAppearance()();
  return (*(v29 + 8))(v20, v25);
}

uint64_t sub_100075590@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v60 = sub_10004DED0(&qword_10015D298, &unk_100113B88);
  v63 = *(v60 - 8);
  v3 = v63[8];
  v4 = __chkstk_darwin(v60);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v42 - v6;
  v59 = sub_10004DED0(&qword_10015D058, &qword_1001137F0);
  v62 = *(v59 - 8);
  v7 = v62[8];
  v8 = __chkstk_darwin(v59);
  v61 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v42 - v10;
  v57 = sub_10004DED0(&qword_10015D2A0, &qword_100113B98);
  v55 = *(v57 - 8);
  v11 = v55[8];
  v12 = __chkstk_darwin(v57);
  v56 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v42 - v14;
  v53 = sub_10004DED0(&qword_10015D2A8, &qword_100113BA0);
  v48 = *(v53 - 8);
  v15 = v48;
  v16 = *(v48 + 64);
  v17 = __chkstk_darwin(v53);
  v52 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v66 = a1;
  v67 = xmmword_100113A70;
  v68 = 0;
  v69 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D2B0, &qword_100113BA8);
  sub_1000525A0(&qword_10015D2B8, &qword_10015D2B0, &qword_100113BA8);
  v47 = v20;
  Section<>.init(header:content:)();
  v65 = a1;
  *&v67 = 0xD000000000000010;
  *(&v67 + 1) = 0x80000001001226D0;
  v68 = 0;
  v69 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D2C0, &unk_100113BB0);
  sub_1000525A0(&qword_10015D2C8, &qword_10015D2C0, &unk_100113BB0);
  v21 = v51;
  Section<>.init(header:content:)();
  v64 = a1;
  v67 = xmmword_100113A80;
  v68 = 0;
  v69 = &_swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  sub_1000525A0(&qword_10015D068, &qword_10015D060, &qword_1001137F8);
  v22 = v54;
  Section<>.init(header:content:)();
  v23 = v58;
  Section<>.init(content:)();
  v43 = *(v15 + 16);
  v24 = v52;
  v25 = v53;
  v43(v52, v20, v53);
  v46 = v55[2];
  v26 = v56;
  v46(v56, v21, v57);
  v45 = v62[2];
  v45(v61, v22, v59);
  v44 = v63[2];
  v27 = v49;
  v28 = v23;
  v29 = v60;
  v44(v49, v28, v60);
  v30 = v50;
  v43(v50, v24, v25);
  v31 = sub_10004DED0(&qword_10015D2D0, &qword_100113BC0);
  v32 = v26;
  v33 = v57;
  v46(&v30[v31[12]], v32, v57);
  v34 = v59;
  v45(&v30[v31[16]], v61, v59);
  v35 = v27;
  v44(&v30[v31[20]], v27, v29);
  v36 = v63[1];
  ++v63;
  v36(v58, v29);
  v37 = v62[1];
  ++v62;
  v37(v54, v34);
  v38 = v55[1];
  v38(v51, v33);
  v39 = *(v48 + 8);
  v40 = v53;
  v39(v47, v53);
  v36(v35, v60);
  v37(v61, v34);
  v38(v56, v33);
  return (v39)(v52, v40);
}

uint64_t sub_100075D7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v2 = *(v34 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_10004DED0(&qword_10015D2D8, &qword_100113BC8);
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  v32 = v16;
  LabeledContent<>.init(content:label:)();
  v17 = *(v35 + 24);
  AppStorage.projectedValue.getter();
  v18 = v8;
  v30 = v8;
  Toggle.init(isOn:label:)();
  v19 = *(v10 + 16);
  v31 = v14;
  v19(v14, v16, v9);
  v20 = v2[2];
  v21 = v18;
  v22 = v34;
  v20(v6, v21, v34);
  v23 = v36;
  v24 = v14;
  v25 = v9;
  v19(v36, v24, v9);
  v26 = sub_10004DED0(&unk_10015D2F0, &unk_100113BF0);
  v20(&v23[*(v26 + 48)], v6, v22);
  v27 = v2[1];
  v27(v30, v22);
  v28 = *(v33 + 8);
  v28(v32, v25);
  v27(v6, v22);
  return (v28)(v31, v25);
}

double sub_1000760D8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.DateStyle();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v39 = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    sub_1000068B0(&v39, &qword_10015C8D0, &unk_100116750);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_8;
  }

  v22 = swift_dynamicCast();
  (*(v15 + 56))(v13, v22 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_8:
    sub_1000068B0(v13, &qword_10015D2E8, &unk_100113BE0);
    v36 = xmmword_100113A90;
    *&v37 = 0;
    *(&v37 + 1) = &_swiftEmptyArrayStorage;
    v38 = 1;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_9;
  }

  (*(v15 + 32))(v18, v13, v14);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v23 = Date.formatted(date:time:)();
  v25 = v24;
  (*(v34 + 8))(v5, v35);
  (*(v32 + 8))(v9, v33);
  *&v39 = v23;
  *(&v39 + 1) = v25;
  sub_10002EAE0();
  *&v36 = Text.init<A>(_:)();
  *(&v36 + 1) = v26;
  *&v37 = v27 & 1;
  *(&v37 + 1) = v28;
  v38 = 0;
  _ConditionalContent<>.init(storage:)();
  (*(v15 + 8))(v18, v14);
LABEL_9:
  result = *&v39;
  v30 = v40;
  v31 = v41;
  *a1 = v39;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

uint64_t sub_10007655C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v47 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v51 = *(v47 - 8);
  v3 = v51[8];
  v4 = __chkstk_darwin(v47);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v46 = &v41 - v7;
  v8 = __chkstk_darwin(v6);
  v52 = &v41 - v9;
  v10 = __chkstk_darwin(v8);
  v45 = &v41 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v49 = sub_10004DED0(&qword_10015D2D8, &qword_100113BC8);
  v44 = *(v49 - 8);
  v17 = v44;
  v18 = *(v44 + 64);
  v19 = __chkstk_darwin(v49);
  v50 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v41 - v21;
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  v43 = v22;
  LabeledContent<>.init(content:label:)();
  v23 = *a1;
  AppStorage.projectedValue.getter();
  v42 = v16;
  Toggle.init(isOn:label:)();
  v24 = a1[1];
  AppStorage.projectedValue.getter();
  v41 = v14;
  Toggle.init(isOn:label:)();
  v25 = a1[2];
  AppStorage.projectedValue.getter();
  v26 = v45;
  Toggle.init(isOn:label:)();
  v27 = *(v17 + 16);
  v28 = v50;
  v27(v50, v22, v49);
  v29 = v52;
  v30 = v51[2];
  v31 = v47;
  v30(v52, v16, v47);
  v32 = v46;
  v30(v46, v14, v31);
  v30(v53, v26, v31);
  v33 = v48;
  v34 = v28;
  v35 = v49;
  v27(v48, v34, v49);
  v36 = sub_10004DED0(&qword_10015D2E0, &qword_100113BD8);
  v30(&v33[v36[12]], v29, v31);
  v30(&v33[v36[16]], v32, v31);
  v37 = v53;
  v30(&v33[v36[20]], v53, v31);
  v38 = v51[1];
  v38(v26, v31);
  v38(v41, v31);
  v38(v42, v31);
  v39 = *(v44 + 8);
  v39(v43, v35);
  v38(v37, v31);
  v38(v32, v31);
  v38(v52, v31);
  return (v39)(v50, v35);
}

double sub_100076A90@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.DateStyle();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v39 = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    sub_1000068B0(&v39, &qword_10015C8D0, &unk_100116750);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_8;
  }

  v22 = swift_dynamicCast();
  (*(v15 + 56))(v13, v22 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_8:
    sub_1000068B0(v13, &qword_10015D2E8, &unk_100113BE0);
    v36 = xmmword_100113A90;
    *&v37 = 0;
    *(&v37 + 1) = &_swiftEmptyArrayStorage;
    v38 = 1;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_9;
  }

  (*(v15 + 32))(v18, v13, v14);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v23 = Date.formatted(date:time:)();
  v25 = v24;
  (*(v34 + 8))(v5, v35);
  (*(v32 + 8))(v9, v33);
  *&v39 = v23;
  *(&v39 + 1) = v25;
  sub_10002EAE0();
  *&v36 = Text.init<A>(_:)();
  *(&v36 + 1) = v26;
  *&v37 = v27 & 1;
  *(&v37 + 1) = v28;
  v38 = 0;
  _ConditionalContent<>.init(storage:)();
  (*(v15 + 8))(v18, v14);
LABEL_9:
  result = *&v39;
  v30 = v40;
  v31 = v41;
  *a1 = v39;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

void sub_100076F14(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x8000000100122710;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

double sub_100076F44@<D0>(uint64_t a1@<X8>)
{
  result = 1.81653197e223;
  *a1 = xmmword_100113AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100076F64(uint64_t a1)
{
  v1 = *(a1 + 32);
  AppStorage.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

void sub_100076FD8(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001001226F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100077008@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_10007516C(a1);
}

id sub_10007706C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3 = OBJC_IVAR____TtC11SettingsApp27SettingsApplicationDelegate_observationTokens;
    swift_beginAccess();
    v4 = *&v0[v3];
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v11 = *&v0[v3];
      }

      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
LABEL_11:
        v10 = *&v0[v3];
        *&v0[v3] = &_swiftEmptyArrayStorage;

        v13.receiver = v0;
        v13.super_class = type metadata accessor for SettingsApplicationDelegate();
        return objc_msgSendSuper2(&v13, "dealloc");
      }
    }

    result = objc_opt_self();
    if (v5 >= 1)
    {
      v6 = result;
      v12 = v3;

      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
          swift_unknownObjectRetain();
        }

        ++v7;
        v9 = [v6 defaultCenter];
        [v9 removeObserver:v8];
        swift_unknownObjectRelease();
      }

      while (v5 != v7);

      v3 = v12;
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000772C8()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    cellularDataCapability = MobileGestalt_get_cellularDataCapability();

    v3 = [objc_opt_self() sharedApplication];
    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    if (cellularDataCapability)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_100113C10;
      if (qword_10015A9C0 != -1)
      {
        swift_once();
      }

      v5 = qword_100169508;
      *(v4 + 32) = qword_100169508;
      v6 = qword_10015A9C8;
      v7 = v5;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = qword_100169510;
      *(v4 + 40) = qword_100169510;
      v9 = qword_10015A9D0;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = qword_100169518;
      *(v4 + 48) = qword_100169518;
      v12 = (v4 + 56);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100113C00;
      if (qword_10015A9C0 != -1)
      {
        swift_once();
      }

      v14 = qword_100169508;
      *(v13 + 32) = qword_100169508;
      v15 = qword_10015A9C8;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v11 = qword_100169510;
      *(v13 + 40) = qword_100169510;
      v12 = (v13 + 48);
    }

    v17 = qword_10015A9D8;
    v18 = v11;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_100169520;
    *v12 = qword_100169520;
    sub_100077A3C();
    v20 = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setShortcutItems:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000775C4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_100077664(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077744(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077824(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077904(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

unint64_t sub_1000779E4()
{
  result = qword_10015D3B0;
  if (!qword_10015D3B0)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D3B0);
  }

  return result;
}

unint64_t sub_100077A3C()
{
  result = qword_10015D3C0;
  if (!qword_10015D3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015D3C0);
  }

  return result;
}

void *sub_100077A90()
{
  swift_getKeyPath();
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  v2 = v1;
  return v1;
}

id sub_100077B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  *a2 = v4;

  return v4;
}

uint64_t sub_100077D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100077DCC, v6, v5);
}

uint64_t sub_100077DCC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_100077EB0;
  v10 = v0[5];
  v11 = v0[3];

  return (sub_100078A2C)(v11);
}

uint64_t sub_100077EB0(char a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

id sub_100078030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000780FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch) = v2;
  v4 = v2;
}

uint64_t sub_10007813C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A924;

  return sub_100077D30(v2, v3, v5, v4);
}

uint64_t sub_1000781FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000ACE4;

  return v7();
}

uint64_t sub_1000782E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000ACE4;

  return sub_1000781FC(v2, v3, v5);
}

uint64_t sub_1000783A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000A924;

  return v8();
}

uint64_t sub_10007848C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000784CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000ACE4;

  return sub_1000783A4(a1, v4, v5, v7);
}

uint64_t sub_100078598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10006B97C(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100078854(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100078854(a3);

    return v23;
  }

LABEL_8:
  sub_100078854(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100078854(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000788BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ACE4;

  return sub_100015138(a1, v5);
}

uint64_t sub_100078974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A924;

  return sub_100015138(a1, v5);
}

uint64_t sub_100078A2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078AC4, v4, v3);
}

uint64_t sub_100078AC4()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = [v2 type];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  v7 = sub_10004DE84(v15);
  v8 = v7;
  if (v7 != 4)
  {
    v9 = v7;
    v10 = *(v0[4] + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject);
    v11 = qword_10015AB30;

    if (v11 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100020FC4(v10, v0[2]);

    *(v0 + 16) = v9;
    PassthroughSubject.send(_:)();
  }

  v12 = v0[1];

  return v12(v8 != 4);
}

uint64_t sub_100078C78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v57 = v5;
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutDirection();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LocalizedStringResource();
  v13 = *(v51 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v51);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = type metadata accessor for SettingsEventImage();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v3;
  v25 = *(v3 + 28);
  v59 = v1;
  SettingsNavigationEventRecord.icon.getter();
  v26 = (*(v21 + 88))(v24, v20);
  if (v26 == enum case for SettingsEventImage.graphicIcon(_:))
  {
    (*(v21 + 96))(v24, v20);
    v27 = *v24;
    v49 = v24[1];
    v50 = v27;
    v28 = 2;
  }

  else if (v26 == enum case for SettingsEventImage.applicationIcon(_:))
  {
    (*(v21 + 96))(v24, v20);
    v29 = *v24;
    v49 = v24[1];
    v50 = v29;
    v28 = 1;
  }

  else
  {
    (*(v21 + 8))(v24, v20);
    v49 = 0;
    v50 = 0;
    v28 = 3;
  }

  v30 = v59;
  SettingsNavigationEventRecord.title.getter();
  v31 = v55;
  v32 = v30 + *(v55 + 24);
  sub_1000C3538(v12);
  LocalizedStringResource.locale.setter();
  v33 = v51;
  (*(v13 + 16))(v17, v19, v51);
  v34 = String.init(localized:)();
  v36 = v35;
  (*(v13 + 8))(v19, v33);
  v37 = v30 + *(v31 + 20);
  v38 = v52;
  sub_1000C3760(v52);
  v39 = SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:)();
  v41 = v40;
  (*(v53 + 8))(v38, v54);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    v39 = 0;
    v41 = 0;
  }

  v43 = v58;
  sub_100079334(v30, v58);
  v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v45 = swift_allocObject();
  result = sub_100079398(v43, v45 + v44);
  v47 = v49;
  *a1 = v50;
  *(a1 + 8) = v47;
  *(a1 + 16) = v28;
  *(a1 + 24) = v34;
  *(a1 + 32) = v36;
  *(a1 + 40) = v39;
  *(a1 + 48) = v41;
  *(a1 + 56) = sub_1000793FC;
  *(a1 + 64) = v45;
  return result;
}

uint64_t sub_100079124(uint64_t *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
  }

  v15 = a1 + *(type metadata accessor for SettingsSearchZeroKeywordListRecentItem() + 28);
  SettingsNavigationEventRecord.navigationLink.getter();
  sub_10005294C(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100079334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000793FC()
{
  v1 = *(type metadata accessor for SettingsSearchZeroKeywordListRecentItem() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_100079124(v2);
}

unint64_t sub_10007945C()
{
  result = qword_10015D5B8;
  if (!qword_10015D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D5B8);
  }

  return result;
}

id sub_1000794B0()
{
  v0 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v65 = &v57 - v6;
  v7 = __chkstk_darwin(v5);
  v74 = &v57 - v8;
  __chkstk_darwin(v7);
  v73 = &v57 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v72 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v60 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v64 = &v57 - v24;
  v25 = __chkstk_darwin(v23);
  v66 = &v57 - v26;
  __chkstk_darwin(v25);
  v27 = type metadata accessor for SettingsEventImage();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v59 = (&v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v30);
  v62 = (&v57 - v33);
  v34 = __chkstk_darwin(v32);
  v36 = (&v57 - v35);
  __chkstk_darwin(v34);
  v38 = (&v57 - v37);
  sub_10004DED0(&qword_10015D5C8, &unk_100116AA0);
  v39 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v63 = *(v39 + 72);
  v41 = v40;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1001103F0;
  *v38 = 0xD00000000000001CLL;
  v38[1] = 0x8000000100120130;
  v42 = *(v28 + 104);
  v77 = enum case for SettingsEventImage.graphicIcon(_:);
  v78 = v27;
  v67 = v28 + 104;
  v42(v38);
  v43 = v42;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v45 = result;
  v76 = v43;
  v58 = v4;
  MobileGestalt_get_deviceSupportsClosedLoopHaptics();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v46 = *(v69 + 104);
  v61 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v75 = v46;
  (v46)(v13);
  v47 = v73;
  v48 = v74;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  v49 = type metadata accessor for URL();
  v50 = *(v49 - 8);
  v73 = *(v50 + 48);
  v74 = v49;
  v72 = (v50 + 48);
  result = (v73)(v47, 1);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v71 = v68 + v41;
  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  *v36 = 0xD000000000000024;
  v36[1] = 0x8000000100120150;
  v76(v36, v77, v78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = v70;
  v52 = v61;
  v69 += 104;
  v75(v13, v61, v70);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  result = (v73)(v48, 1, v74);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v53 = v62;
  *v62 = 0xD00000000000001CLL;
  v53[1] = 0x8000000100120110;
  v76(v53, v77, v78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v75(v13, v52, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v54 = v65;
  URL.init(string:)();
  result = (v73)(v54, 1, v74);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v55 = v59;
  *v59 = 0xD000000000000022;
  v55[1] = 0x80000001001200E0;
  v76(v55, v77, v78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v75(v13, v52, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v56 = v58;
  URL.init(string:)();
  result = (v73)(v56, 1, v74);
  if (result != 1)
  {
    result = SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
    off_10015D5C0 = v68;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100079E74()
{
  v0 = *(SettingsZeroKeywordNavigationItemsProvider.suggestions.getter() + 16);

  if (v0 != 4)
  {
    result = SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();
    v8 = result;
    v2 = *(result + 16);
    if (qword_10015AA20 == -1)
    {
      if (v2 <= 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_once();
      if (v2 <= 4)
      {
LABEL_7:
        v3 = 4 - v2;
        v4 = off_10015D5C0;
        if (*(off_10015D5C0 + 2) >= v3)
        {
          v5 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
          v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);

          sub_1000C4690(v7, v4 + v6, 0, (2 * v3) | 1);
          return v8;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  return SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();
}

__n128 sub_100079FA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100079FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007A010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10004DED0(&qword_10015D658, &qword_100113FA8);
  sub_10007A0FC(a1, a2 + *(v4 + 44));
  result = sub_10004DED0(&qword_10015D5D8, &qword_100113F40);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10007A0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015D660, &qword_100113FB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v28[-v9];
  v12 = *a1;
  v30 = *(a1 + 8);
  v11 = v30;
  v13 = *(a1 + 16);
  v29 = v13;
  v14 = static Edge.Set.all.getter();
  LOBYTE(v39[0]) = 0;
  sub_100039F14(v12, v11, v13);
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = *(sub_10004DED0(&qword_10015D668, &qword_100113FB8) + 44);
  v33 = a1;
  sub_10004DED0(&qword_10015D670, &qword_100113FC0);
  sub_1000525A0(&qword_10015D678, &qword_10015D670, &qword_100113FC0);
  LabelGroup.init(content:)();
  v16 = v8;
  sub_100059CA0(v10, v8, &qword_10015D660, &qword_100113FB0);
  v17 = v30;
  *&v34 = v12;
  *(&v34 + 1) = v30;
  LOBYTE(v8) = v29;
  LOBYTE(v35) = v29;
  BYTE8(v35) = v14;
  __asm { FMOV            V0.2D, #16.0 }

  v32 = _Q0;
  v31 = xmmword_100113E20;
  v36 = _Q0;
  v37 = xmmword_100113E20;
  v38 = 0;
  *(a2 + 64) = 0;
  v23 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v23;
  v24 = v35;
  *a2 = v34;
  *(a2 + 16) = v24;
  v25 = sub_10004DED0(&qword_10015D680, &qword_100113FC8);
  sub_100059CA0(v16, a2 + *(v25 + 48), &qword_10015D660, &qword_100113FB0);
  v26 = a2 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0xBFF0000000000000;
  sub_100059CA0(&v34, v39, &qword_10015D688, &unk_100113FD0);
  sub_1000068B0(v10, &qword_10015D660, &qword_100113FB0);
  sub_1000068B0(v16, &qword_10015D660, &qword_100113FB0);
  v39[0] = v12;
  v39[1] = v17;
  v40 = v8;
  v41 = v14;
  v42 = v32;
  v43 = v31;
  v44 = 0;
  return sub_1000068B0(v39, &qword_10015D688, &unk_100113FD0);
}

uint64_t sub_10007A3DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1[3];
  v34 = a1[4];
  sub_10002EAE0();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v30 = v12;
  v31 = v13;

  sub_100009680(v4, v6, v8 & 1);

  v14 = a1[6];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v33 = a1[5];
    v35 = a1[6];

    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Font.footnote.getter();
    v21 = Text.font(_:)();
    v23 = v22;
    v29 = v24;
    v26 = v25;

    sub_100009680(v16, v18, v20 & 1);

    v27 = v29 & 1;
  }

  else
  {
LABEL_6:
    v21 = 0;
    v23 = 0;
    v27 = 0;
    v26 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  sub_100009670(v9, v11, v30 & 1);

  sub_10007AAFC(v21, v23, v27, v26);
  sub_10007AB40(v21, v23, v27, v26);
  sub_100009680(v9, v11, v30 & 1);
}

uint64_t sub_10007A5E4()
{
  v1 = sub_10004DED0(&qword_10015D5D0, &qword_100113F38);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v18 = *(v0 + 64);
  v6 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v6;
  v7 = swift_allocObject();
  v8 = *(v0 + 48);
  *(v7 + 48) = *(v0 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 64);
  v9 = *(v0 + 16);
  *(v7 + 16) = *v0;
  *(v7 + 32) = v9;
  v15 = v17;
  sub_10007A7E8(v17, v16);
  sub_10004DED0(&qword_10015D5D8, &qword_100113F40);
  sub_10007A820();
  Button.init(action:label:)();
  v10 = &v4[*(sub_10004DED0(&qword_10015D608, &qword_100113F58) + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  KeyPath = swift_getKeyPath();
  v12 = &v4[*(v1 + 36)];
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_10007A904();
  sub_10007AAA0();
  View.buttonStyle<A>(_:)();
  return sub_1000068B0(v4, &qword_10015D5D0, &qword_100113F38);
}

uint64_t sub_10007A7B8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

unint64_t sub_10007A820()
{
  result = qword_10015D5E0;
  if (!qword_10015D5E0)
  {
    sub_100052374(&qword_10015D5D8, &qword_100113F40);
    sub_1000525A0(&qword_10015D5E8, &qword_10015D5F0, &qword_100113F48);
    sub_1000525A0(&qword_10015D5F8, &qword_10015D600, &qword_100113F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D5E0);
  }

  return result;
}

unint64_t sub_10007A904()
{
  result = qword_10015D610;
  if (!qword_10015D610)
  {
    sub_100052374(&qword_10015D5D0, &qword_100113F38);
    sub_10007A9BC();
    sub_1000525A0(&qword_10015D640, &qword_10015D648, &qword_100113FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D610);
  }

  return result;
}

unint64_t sub_10007A9BC()
{
  result = qword_10015D618;
  if (!qword_10015D618)
  {
    sub_100052374(&qword_10015D608, &qword_100113F58);
    sub_1000525A0(&qword_10015D620, &qword_10015D628, &qword_100113F90);
    sub_1000525A0(&qword_10015D630, &qword_10015D638, &qword_100113F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D618);
  }

  return result;
}

unint64_t sub_10007AAA0()
{
  result = qword_10015D650;
  if (!qword_10015D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D650);
  }

  return result;
}

uint64_t sub_10007AAFC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009670(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10007AB40(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009680(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10007ABB0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ButtonStyleConfiguration.label.getter();
  v7 = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v8 = [objc_opt_self() tableCellDefaultSelectionTintColor];
    v7 = Color.init(uiColor:)();
  }

  v9 = static Alignment.center.getter();
  v11 = v10;
  (*(v3 + 32))(a1, v6, v2);
  result = sub_10004DED0(&qword_10015D690, &qword_100114040);
  v13 = (a1 + *(result + 36));
  *v13 = v7;
  v13[1] = v9;
  v13[2] = v11;
  return result;
}

unint64_t sub_10007ACF0()
{
  result = qword_10015D698;
  if (!qword_10015D698)
  {
    sub_100052374(&qword_10015D690, &qword_100114040);
    sub_10007AD7C();
    sub_10007ADD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D698);
  }

  return result;
}

unint64_t sub_10007AD7C()
{
  result = qword_10015D6A0;
  if (!qword_10015D6A0)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6A0);
  }

  return result;
}

unint64_t sub_10007ADD4()
{
  result = qword_10015D6A8;
  if (!qword_10015D6A8)
  {
    sub_100052374(&qword_10015D6B0, &qword_100114048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6A8);
  }

  return result;
}

__n128 sub_10007AE38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10007AE4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_10007AE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v59 = a4;
  v57 = a3;
  v56 = a2;
  v67 = a1;
  v73 = a6;
  v70 = type metadata accessor for ScrollViewProxy();
  v68 = *(v70 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v70);
  v65 = v8;
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PPTTestCase.Name();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  __chkstk_darwin(v9);
  v69 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SidebarListStyle();
  v64 = *(v63 - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(v63);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ScrollDismissesKeyboardMode();
  v55 = *(v58 - 8);
  v14 = *(v55 + 64);
  __chkstk_darwin(v58);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004DED0(&qword_10015D6B8, &qword_100114190);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v22 = sub_10004DED0(&qword_10015D6C0, &qword_100114198);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v53 - v24;
  v53 = sub_10004DED0(&qword_10015D6C8, &qword_1001141A0);
  v54 = *(v53 - 8);
  v26 = *(v54 + 64);
  __chkstk_darwin(v53);
  v28 = &v53 - v27;
  v74 = sub_10004DED0(&qword_10015D6D0, &qword_1001141A8);
  v29 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v31 = &v53 - v30;
  v62 = sub_10004DED0(&qword_10015D6D8, &qword_1001141B0);
  v61 = *(v62 - 8);
  v32 = *(v61 + 64);
  __chkstk_darwin(v62);
  v34 = &v53 - v33;
  v75 = v56;
  v76 = v57 & 1;
  v77 = v59;
  v78 = a5 & 1;
  sub_10004DED0(&qword_10015D6E0, &qword_1001141B8);
  sub_10007C810();
  List<>.init(content:)();
  sub_1000525A0(&qword_10015D700, &qword_10015D6B8, &qword_100114190);
  sub_10007AAA0();
  View.buttonStyle<A>(_:)();
  (*(v18 + 8))(v21, v17);
  v35 = &v25[*(v22 + 36)];
  *v35 = sub_10005A7CC;
  v35[1] = 0;
  static ScrollDismissesKeyboardMode.immediately.getter();
  v36 = sub_10007C918();
  View.scrollDismissesKeyboard(_:)();
  (*(v55 + 8))(v16, v58);
  sub_1000068B0(v25, &qword_10015D6C0, &qword_100114198);
  v79 = v22;
  v80 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v53;
  View.accessibilityIdentifier(_:)();
  (*(v54 + 8))(v28, v37);
  v38 = v60;
  SidebarListStyle.init()();
  v39 = sub_10007CA28();
  v59 = v34;
  v40 = v63;
  View.listStyle<A>(_:)();
  (*(v64 + 8))(v38, v40);
  sub_1000068B0(v31, &qword_10015D6D0, &qword_1001141A8);
  if (qword_10015AB78 != -1)
  {
    swift_once();
  }

  v41 = v72;
  v42 = sub_10000659C(v72, qword_100169838);
  v43 = v71;
  v44 = v69;
  (*(v71 + 16))(v69, v42, v41);
  v45 = v68;
  v46 = v66;
  v47 = v70;
  (*(v68 + 16))(v66, v67, v70);
  v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = swift_allocObject();
  (*(v45 + 32))(v49 + v48, v46, v47);
  v79 = v74;
  v80 = v40;
  v81 = v39;
  v82 = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v50 = v62;
  v51 = v59;
  View.onTest(_:handler:)();

  (*(v43 + 8))(v44, v41);
  return (*(v61 + 8))(v51, v50);
}

uint64_t sub_10007B77C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v13 = v20;
  }

  swift_getKeyPath();
  v20 = v13;
  sub_10007CC70(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);

  v19[1] = v15;
  v19[2] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4 & 1;

  sub_10004DED0(&qword_10015D720, &qword_1001141F8);
  sub_10004DED0(&qword_10015D6F8, &qword_1001141C0);
  sub_1000525A0(&qword_10015D728, &qword_10015D720, &qword_1001141F8);
  sub_10007C894();
  sub_10007CC70(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10007BA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v52 = a5;
  v53 = a2;
  v54 = a4;
  v50 = a3;
  v51 = type metadata accessor for SettingsSearchResultItem();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v48 = v10;
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsSearchItemIcon.IconType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SettingsSearchItemIcon();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  SettingsSearchResultItem.icon.getter();
  SettingsSearchItemIcon.iconType.getter();
  v21 = (*(v12 + 88))(v15, v11);
  if (v21 == enum case for SettingsSearchItemIcon.IconType.utTypeIdentifier(_:))
  {
    v22 = 2;
  }

  else
  {
    if (v21 != enum case for SettingsSearchItemIcon.IconType.bundleIdentifier(_:))
    {
      (*(v17 + 8))(v20, v16);
      result = (*(v12 + 8))(v15, v11);
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v37 = 0;
      v27 = 0;
      v36 = 0;
      v41 = 0;
      v33 = 0;
      v42 = 0;
      goto LABEL_7;
    }

    v22 = 1;
  }

  v47 = v22;
  v23 = SettingsSearchItemIcon.iconIdentifier.getter();
  v45 = v24;
  v46 = v23;
  (*(v17 + 8))(v20, v16);
  v25 = SettingsSearchResultItem.localizedTitle.getter();
  v43 = v26;
  v44 = v25;
  v27 = SettingsSearchResultItem.localizedSubtitle.getter();
  v29 = v28;
  v30 = v49;
  v31 = v51;
  (*(v8 + 16))(v49, a1, v51);
  v32 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v33 = swift_allocObject();
  v34 = v54;
  *(v33 + 16) = v53;
  *(v33 + 24) = v50 & 1;
  *(v33 + 32) = v34;
  *(v33 + 40) = v52 & 1;
  (*(v8 + 32))(v33 + v32, v30, v31);

  v36 = v29;
  v37 = v43;
  v38 = v44;
  v40 = v45;
  v39 = v46;
  v41 = sub_10007CCB8;
  v42 = v47;
LABEL_7:
  *a6 = v39;
  a6[1] = v40;
  a6[2] = v42;
  a6[3] = v38;
  a6[4] = v37;
  a6[5] = v27;
  a6[6] = v36;
  a6[7] = v41;
  a6[8] = v33;
  return result;
}

uint64_t sub_10007BE34(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EnvironmentValues();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v26 = v9;
    v18 = v13;
    v19 = a4;
    v20 = a5;
    v21 = v8;
    v22 = v17;
    os_log(_:dso:log:_:_:)();

    v8 = v21;
    a5 = v20;
    a4 = v19;
    v13 = v18;
    v9 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v27);
  }

  sub_1000EED28(a5);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v27);
  }

  SettingsSearchResultItem.url.getter();
  sub_10005294C(v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10007C108(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  __chkstk_darwin(v2);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ScrollViewProxy();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v38 = v9;
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PPTTestCase();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v49 = type metadata accessor for DispatchTime();
  v41 = *(v49 - 8);
  v14 = *(v41 + 64);
  v15 = __chkstk_darwin(v49);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v48 = &v35 - v18;
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000659C(v19, qword_100169700);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Running search scroll test", v22, 2u);
  }

  sub_100003CAC();
  v36 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v41 = *(v41 + 8);
  (v41)(v17, v49);
  v23 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v23, v39, v11);
  v24 = v37;
  (*(v7 + 16))(v10, v40, v37);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = (v13 + *(v7 + 80) + v25) & ~*(v7 + 80);
  v27 = swift_allocObject();
  (*(v12 + 32))(v27 + v25, v23, v11);
  (*(v7 + 32))(v27 + v26, v10, v24);
  aBlock[4] = sub_10007CB90;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014F6C8;
  v28 = _Block_copy(aBlock);

  v29 = v42;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10007CC70(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004DED0(&qword_10015D718, &qword_1001141C8);
  sub_1000525A0(&qword_10015EDA0, &qword_10015D718, &qword_1001141C8);
  v30 = v44;
  v31 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v48;
  v33 = v36;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v46 + 8))(v30, v31);
  (*(v43 + 8))(v29, v45);
  return (v41)(v32, v49);
}

uint64_t sub_10007C73C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *a1 = sub_10007C7D0;
  a1[1] = v7;
}

unint64_t sub_10007C810()
{
  result = qword_10015D6E8;
  if (!qword_10015D6E8)
  {
    sub_100052374(&qword_10015D6E0, &qword_1001141B8);
    sub_10007C894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6E8);
  }

  return result;
}

unint64_t sub_10007C894()
{
  result = qword_10015D6F0;
  if (!qword_10015D6F0)
  {
    sub_100052374(&qword_10015D6F8, &qword_1001141C0);
    sub_10007945C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6F0);
  }

  return result;
}

unint64_t sub_10007C918()
{
  result = qword_10015D708;
  if (!qword_10015D708)
  {
    sub_100052374(&qword_10015D6C0, &qword_100114198);
    sub_100052374(&qword_10015D6B8, &qword_100114190);
    sub_1000525A0(&qword_10015D700, &qword_10015D6B8, &qword_100114190);
    sub_10007AAA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D708);
  }

  return result;
}

unint64_t sub_10007CA28()
{
  result = qword_10015D710;
  if (!qword_10015D710)
  {
    sub_100052374(&qword_10015D6D0, &qword_1001141A8);
    sub_100052374(&qword_10015D6C0, &qword_100114198);
    sub_10007C918();
    swift_getOpaqueTypeConformance2();
    sub_10007CC70(&qword_10015BB80, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D710);
  }

  return result;
}

uint64_t sub_10007CB20(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollViewProxy() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10007C108(a1, v4);
}

uint64_t sub_10007CB90()
{
  v0 = *(type metadata accessor for PPTTestCase() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(type metadata accessor for ScrollViewProxy() - 8) + 80);
  return PPTTestCase.performScrollTest(_:)();
}

uint64_t sub_10007CC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007CCB8()
{
  v1 = *(type metadata accessor for SettingsSearchResultItem() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_10007BE34(v2, v3, v4, v5, v6);
}

uint64_t sub_10007CD40()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = aBlock - v3;
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10007D868;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014F740;
  v9 = _Block_copy(aBlock);

  v10 = [v5 beginBackgroundTaskWithName:v8 expirationHandler:v9];
  _Block_release(v9);

  *(v0 + 144) = v10;
  *(v0 + 152) = 0;
  static TaskPriority.high.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  v12 = sub_10007D870();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v12;
  v13[4] = v0;
  swift_retain_n();
  sub_100094AF4(0, 0, v4, &unk_100114288, v13);
}

uint64_t sub_10007CF20(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_100094AF4(0, 0, v5, &unk_100114298, v8);
}

uint64_t sub_10007D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10007D0DC, v6, v5);
}

uint64_t sub_10007D0DC()
{
  v11 = v0;
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169688);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100025CF0(*(v5 + 128), *(v5 + 136), &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "Expiring background task: %s", v6, 0xCu);
    sub_10000665C(v7);
  }

  v8 = *(v0 + 16);

  return _swift_task_switch(sub_10007D25C, v8, 0);
}

uint64_t sub_10007D25C()
{
  v1 = v0[2];
  sub_10007D67C();
  v2 = v0[4];
  v3 = v0[5];

  return _swift_task_switch(sub_10007D2C0, v2, v3);
}

uint64_t sub_10007D2C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007D340()
{
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin background indexing task", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + 120);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10007D494;

  return sub_10007DE9C();
}

uint64_t sub_10007D494()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10007D5A4, v2, 0);
}

uint64_t sub_10007D5A4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10007D67C();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "End background indexing task", v5, 2u);
  }

  v6 = v0[1];

  return v6();
}

void sub_10007D67C()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 144);
    if (v2 != UIBackgroundTaskInvalid)
    {
      if (qword_10015AAB0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000659C(v3, qword_100169688);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_100025CF0(*(v1 + 128), *(v1 + 136), &v8);
        _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up background task: %s", v6, 0xCu);
        sub_10000665C(v7);
      }

      [*(v1 + 112) endBackgroundTask:v2];
      *(v1 + 144) = 0;
      *(v1 + 152) = 1;
    }
  }
}

uint64_t sub_10007D7FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10007D870()
{
  result = qword_10015D830;
  if (!qword_10015D830)
  {
    type metadata accessor for BackgroundIndexingTaskManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D830);
  }

  return result;
}

uint64_t sub_10007D8C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_10007D320(a1, v4, v5, v6);
}

uint64_t sub_10007D978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_10007D044(a1, v4, v5, v6);
}

uint64_t sub_10007DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100008294(0, &qword_10015D9D8, CSUserQuery_ptr);
  v7 = async function pointer to static CSUserQuery.settingsSearchResult(for:in:)[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10007DB10;

  return static CSUserQuery.settingsSearchResult(for:in:)(a1, a2, a3, &off_10014CFF0);
}

uint64_t sub_10007DB10()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007DC44, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10007DC44()
{
  v19 = v0;
  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169670);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_100025CF0(v9, v8, &v18);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrive settings search result for %{public}s: %{public}@", v10, 0x16u);
    sub_1000068B0(v11, &unk_10015F9C0, &unk_100115230);

    sub_10000665C(v12);
  }

  else
  {
  }

  v14 = v0[2];
  v15 = type metadata accessor for SettingsSearchResultItem();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_10007DE9C()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10007DF68, 0, 0);
}

uint64_t sub_10007DF68()
{
  v1 = v0[2];
  if (*(v1 + 40))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v1 + 40) = 1;
  v0[7] = sub_10007F24C();
  v3 = *(&async function pointer to dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter + 1);
  v5 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter + async function pointer to dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10007E080;

  return v5();
}

uint64_t sub_10007E080(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10007E1A0, 0, 0);
}

id sub_10007E1A0()
{
  v1 = objc_opt_self();
  *(v0 + 72) = v1;
  result = [v1 sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result needsIndex];

  v5 = sub_100080DD8();
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v5;
  v8 = v6;
  if (qword_10015AA28 != -1)
  {
    swift_once();
  }

  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v7 UUIDString];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (!v15)
  {

    goto LABEL_16;
  }

  if (v13 != v17 || v15 != v19)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_16:
    v26 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v21 = [v9 standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 integerForKey:v22];

  v24 = v8;
  v25 = [v24 integerValue];

  v26 = v23 != v25;
LABEL_17:
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  *(v0 + 80) = sub_10000659C(v27, qword_100169688);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 128);
    v31 = swift_slowAlloc();
    *v31 = 67240704;
    *(v31 + 4) = v30;
    *(v31 + 8) = 1026;
    *(v31 + 10) = v4;
    *(v31 + 14) = 1024;
    *(v31 + 16) = v26;
    _os_log_impl(&_mh_execute_header, v28, v29, "indexContainsSearchableItems: %{BOOL,public}d, needsIndexing: %{BOOL,public}d, appNeedsIndexing: %{BOOL}d.", v31, 0x14u);
  }

  v32 = *(v0 + 128);

  v33 = v4 | ~v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  if (v33)
  {
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Performing Indexing.", v37, 2u);
    }

    if (qword_10015AAE8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 48);
    v39 = type metadata accessor for OSSignposter();
    sub_10000659C(v39, qword_100169730);
    static OSSignpostID.exclusive.getter();
    v40 = OSSignposter.logHandle.getter();
    v41 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v42 = *(v0 + 48);
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v41, v44, "Building Settings Index", "", v43, 2u);
    }

    v45 = *(v0 + 40);
    v46 = *(v0 + 48);
    v47 = *(v0 + 24);
    v48 = *(v0 + 32);
    v49 = *(v0 + 16);

    (*(v48 + 16))(v45, v46, v47);
    v50 = type metadata accessor for OSSignpostIntervalState();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    *(v0 + 88) = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v48 + 8))(v46, v47);
    *(v0 + 96) = *(v49 + 48);
    v53 = *(&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems() + 1);
    v62 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems() + async function pointer to dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems());

    v54 = swift_task_alloc();
    *(v0 + 104) = v54;
    *v54 = v0;
    v54[1] = sub_10007E8D0;

    return v62();
  }

  else if (v26)
  {
    if (v36)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Reindex Apps Only.", v55, 2u);
    }

    v56 = swift_task_alloc();
    *(v0 + 120) = v56;
    *v56 = v0;
    v56[1] = sub_10007EB24;
    v57 = *(v0 + 16);

    return sub_10007FC08();
  }

  else
  {
    if (v36)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Indexing not needed.", v58, 2u);
    }

    v60 = *(v0 + 40);
    v59 = *(v0 + 48);
    *(*(v0 + 16) + 40) = 0;

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_10007E8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10007EC90;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_10007E9EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

id sub_10007E9EC()
{
  v1 = v0[10];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Settings Search Indexing completed, setting markers.", v4, 2u);
  }

  v5 = v0[9];

  result = [v5 sharedInstance];
  if (result)
  {
    v7 = result;
    [result setHasIndexed];

    sub_100080FDC();
    v8 = v0[11];
    sub_1000804E4();

    v10 = v0[5];
    v9 = v0[6];
    *(v0[2] + 40) = 0;

    v11 = v0[1];

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007EB24()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10007EC20, 0, 0);
}

uint64_t sub_10007EC20()
{
  v2 = v0[5];
  v1 = v0[6];
  *(v0[2] + 40) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007EC90()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Indexing failed with error: %{public}@", v8, 0xCu);
    sub_1000068B0(v9, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v11 = v0[11];
  sub_1000804E4();

  v13 = v0[5];
  v12 = v0[6];
  *(v0[2] + 40) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_10007EE24()
{
  type metadata accessor for SettingsIndexingDefaults();
  result = swift_initStaticObject();
  qword_10015D840 = result;
  return result;
}

uint64_t sub_10007EE54()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v8 - v4;
  if (*(v0 + 41) == 1)
  {
    static TaskPriority.high.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    sub_100094AF4(0, 0, v5, &unk_100114348, v7);

    *(v0 + 41) = 0;
  }

  return result;
}