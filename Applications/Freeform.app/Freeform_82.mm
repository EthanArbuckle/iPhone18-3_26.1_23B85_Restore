unint64_t sub_100B21E50()
{
  result = qword_101A116C0;
  if (!qword_101A116C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116C0);
  }

  return result;
}

unint64_t sub_100B21EA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018757F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B21EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00958);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B22310();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v32 = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000038 && v10 == 0x8000000101589A90)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v31 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v30;
  if (v30)
  {
    if (qword_1019F1CF8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Image.InstantAlphaPath.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v15[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v16 = xmmword_101463530;
      *(v16 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v28 = sub_1007BF158(0, v17, 0, 0, 0, 0);
  v29 = v18;

  sub_100020E58(a1, a1[3]);
  v19 = dispatch thunk of Decoder.userInfo.getter();
  v20 = sub_1007B74FC(1, v19, 0, 0);
  v22 = v21;
  v23 = v5;
  v25 = v24;
  (*(v6 + 8))(v8, v23);

  result = sub_100005070(a1);
  v26 = v29;
  *a2 = v28;
  *(a2 + 8) = v26;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v25 & 1;
  return result;
}

unint64_t sub_100B22310()
{
  result = qword_101A116D0;
  if (!qword_101A116D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116D0);
  }

  return result;
}

unint64_t sub_100B22364(uint64_t a1)
{
  result = sub_100B2238C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B2238C()
{
  result = qword_101A116D8;
  if (!qword_101A116D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116D8);
  }

  return result;
}

unint64_t sub_100B223E0(uint64_t a1)
{
  result = sub_100B10F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B22448()
{
  result = qword_101A116E0;
  if (!qword_101A116E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116E0);
  }

  return result;
}

unint64_t sub_100B2249C(uint64_t a1)
{
  result = sub_100B10EC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B22504()
{
  result = qword_101A116E8;
  if (!qword_101A116E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116E8);
  }

  return result;
}

unint64_t sub_100B22558()
{
  result = qword_101A116F0;
  if (!qword_101A116F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116F0);
  }

  return result;
}

unint64_t sub_100B225AC(uint64_t a1)
{
  result = sub_100B10E6C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B22614(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100B22668()
{
  result = qword_101A116F8;
  if (!qword_101A116F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116F8);
  }

  return result;
}

uint64_t sub_100B226C8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B226F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 297);
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

double sub_100B22744(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 392) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 400) = 1;
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
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = -a2 << 8;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      return result;
    }

    *(a1 + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100B22810(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100B2283C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_100B22898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_100B22918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100B22960(uint64_t result, int a2, int a3)
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

unint64_t sub_100B229E8()
{
  result = qword_101A11700;
  if (!qword_101A11700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11700);
  }

  return result;
}

unint64_t sub_100B22A40()
{
  result = qword_101A11708;
  if (!qword_101A11708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11708);
  }

  return result;
}

unint64_t sub_100B22A98()
{
  result = qword_101A11710;
  if (!qword_101A11710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11710);
  }

  return result;
}

unint64_t sub_100B22AF0()
{
  result = qword_101A11718;
  if (!qword_101A11718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11718);
  }

  return result;
}

unint64_t sub_100B22B48()
{
  result = qword_101A11720;
  if (!qword_101A11720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11720);
  }

  return result;
}

unint64_t sub_100B22BA0()
{
  result = qword_101A11728;
  if (!qword_101A11728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11728);
  }

  return result;
}

unint64_t sub_100B22BF8()
{
  result = qword_101A11730;
  if (!qword_101A11730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11730);
  }

  return result;
}

unint64_t sub_100B22C50()
{
  result = qword_101A11738;
  if (!qword_101A11738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11738);
  }

  return result;
}

unint64_t sub_100B22CA8()
{
  result = qword_101A11740;
  if (!qword_101A11740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11740);
  }

  return result;
}

unint64_t sub_100B22CFC()
{
  result = qword_101A11748;
  if (!qword_101A11748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11748);
  }

  return result;
}

id sub_100B22D84()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Rect.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Rect.version.unsafeMutableAddressor()
{
  if (qword_1019F1D00 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Rect.version;
}

id static TSContentLanguage.Models.Rect.version.getter()
{
  if (qword_1019F1D00 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Rect.version;

  return v1;
}

Swift::Int sub_100B22EBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B22F84()
{
  String.hash(into:)();
}

Swift::Int sub_100B23038()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B230FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2371C(*a1);
  *a2 = result;
  return result;
}

void sub_100B2312C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697469736F70;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B231B0()
{
  v1 = 0x6E6F697469736F70;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

unint64_t sub_100B23230@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2371C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B23258(uint64_t a1)
{
  v2 = sub_100B23DD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B23294(uint64_t a1)
{
  v2 = sub_100B23DD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Rect.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_1005B981C(&qword_101A11750);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_100020E58(a1, a1[3]);
  sub_100B23DD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_100B0D5F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a4;
    v17 = a5;
    v18 = 1;
    sub_100B1A7E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1D00 != -1)
    {
      swift_once();
    }

    v16 = *&static TSContentLanguage.Models.Rect.version;
    v18 = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

BOOL TSContentLanguage.Models.Insets.isEquivalent(to:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = sub_1007C87EC(a5, a1);
  if (result)
  {
    result = sub_1007C87EC(a6, a2);
    if (result)
    {
      result = sub_1007C87EC(a7, a3);
      if (result)
      {
        return sub_1007C87EC(a8, a4);
      }
    }
  }

  return result;
}

BOOL static TSContentLanguage.Models.Rect.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  if (a4 == a8)
  {
    return a3 == a7;
  }

  return 0;
}

void sub_100B23620(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100B23768(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

BOOL sub_100B23670(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

BOOL sub_100B236A8(double *a1)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = v1[2];
  v5 = v1[3];
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(v1[1], a1[1]);
    if (result)
    {
      result = sub_1007C87EC(v6, v4);
      if (result)
      {
        return sub_1007C87EC(v5, v3);
      }
    }
  }

  return result;
}

unint64_t sub_100B2371C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875878, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_100B23768(void *a1)
{
  v4 = sub_1005B981C(&qword_101A11780);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B23DD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_35;
  }

  LOBYTE(v42) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000024 && v9 == 0x800000010158A070)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v45) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v42;
  if (!v42)
  {
LABEL_16:
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.userInfo.getter();

    v46 = 0;
    sub_1007CEB2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v43)
    {
      v15 = KeyedDecodingContainer.codingPath.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v40 = v5;
        v45 = _swiftEmptyArrayStorage;
        sub_100034080(0, v16, 0);
        v17 = v45;
        v39 = v15;
        v18 = v15 + 32;
        do
        {
          sub_10000630C(v18, &v42);
          sub_100020E58(&v42, v44);
          v19 = dispatch thunk of CodingKey.stringValue.getter();
          v41 = v20;
          sub_100005070(&v42);
          v45 = v17;
          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            sub_100034080((v21 > 1), v22 + 1, 1);
            v17 = v45;
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v24 = v41;
          v23[4] = v19;
          v23[5] = v24;
          v18 += 40;
          --v16;
        }

        while (v16);

        v5 = v40;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 0x6E6F697469736F70;
      v36 = 0xE800000000000000;
    }

    else
    {
      v2 = *&v42;
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Decoder.userInfo.getter();

      v46 = 1;
      sub_1007CEF28();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((v43 & 1) == 0)
      {
        (*(v5 + 8))(v7, v4);
        sub_100005070(a1);
        return v2;
      }

      v25 = KeyedDecodingContainer.codingPath.getter();
      v26 = *(v25 + 16);
      if (v26)
      {
        v40 = v5;
        v45 = _swiftEmptyArrayStorage;
        sub_100034080(0, v26, 0);
        v17 = v45;
        v39 = v25;
        v27 = v25 + 32;
        do
        {
          sub_10000630C(v27, &v42);
          sub_100020E58(&v42, v44);
          v28 = dispatch thunk of CodingKey.stringValue.getter();
          v41 = v29;
          sub_100005070(&v42);
          v45 = v17;
          v31 = v17[2];
          v30 = v17[3];
          if (v31 >= v30 >> 1)
          {
            sub_100034080((v30 > 1), v31 + 1, 1);
            v17 = v45;
          }

          v17[2] = v31 + 1;
          v32 = &v17[2 * v31];
          v33 = v41;
          v32[4] = v28;
          v32[5] = v33;
          v27 += 40;
          --v26;
        }

        while (v26);

        v5 = v40;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 1702521203;
      v36 = 0xE400000000000000;
    }

    *v34 = v35;
    v34[1] = v36;
    v34[2] = v17;
    swift_willThrow();
    goto LABEL_33;
  }

  if (qword_1019F1D00 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.Rect.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {

    goto LABEL_16;
  }

  sub_1007C8648();
  swift_allocError();
  *v14 = xmmword_101463530;
  *(v14 + 16) = 0;
  swift_willThrow();

LABEL_34:
  (*(v5 + 8))(v7, v4);
LABEL_35:
  sub_100005070(a1);
  return v2;
}

unint64_t sub_100B23DD8()
{
  result = qword_101A11758;
  if (!qword_101A11758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11758);
  }

  return result;
}

unint64_t sub_100B23E2C(uint64_t a1)
{
  result = sub_100B10590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B23E54(void *a1)
{
  a1[2] = sub_1007CEFD0();
  a1[3] = sub_100B18704();
  result = sub_100B23E8C();
  a1[4] = result;
  return result;
}

unint64_t sub_100B23E8C()
{
  result = qword_101A11760;
  if (!qword_101A11760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11760);
  }

  return result;
}

unint64_t sub_100B23F04()
{
  result = qword_101A11768;
  if (!qword_101A11768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11768);
  }

  return result;
}

unint64_t sub_100B23F5C()
{
  result = qword_101A11770;
  if (!qword_101A11770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11770);
  }

  return result;
}

unint64_t sub_100B23FB4()
{
  result = qword_101A11778;
  if (!qword_101A11778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11778);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.Resource.version.unsafeMutableAddressor()
{
  if (qword_1019F1D08 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Resource.version;
}

uint64_t TSContentLanguage.Models.Resource.init(base64Encoded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  return result;
}

uint64_t TSContentLanguage.Models.Resource.init(indirect:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  return result;
}

uint64_t TSContentLanguage.Models.Resource.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v6 = 0;
    v7 = v12;
    v8 = v13;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v6 = -1;
      goto LABEL_7;
    }

    v7 = v12;
    v8 = v13;
    v6 = 1;
  }

  v9 = v14;
  v10 = v15;
LABEL_7:
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v6;
  return result;
}

Swift::Int sub_100B241D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B242B4()
{
  String.hash(into:)();
}

Swift::Int sub_100B2437C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B24454@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2602C(*a1);
  *a2 = result;
  return result;
}

void sub_100B24484(uint64_t *a1@<X8>)
{
  v2 = 0xEE006465646F636ELL;
  v3 = 0x655F343665736162;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463657269646E69;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B2451C()
{
  v1 = 0x655F343665736162;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x7463657269646E69;
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

unint64_t sub_100B245B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2602C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B245D8(uint64_t a1)
{
  v2 = sub_100B2658C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B24614(uint64_t a1)
{
  v2 = sub_100B2658C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Resource.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B26078(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Resource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A11788);
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(v3 + 32);
  sub_100020E58(a1, a1[3]);
  sub_100B2658C();
  if (v11)
  {
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v12 = v3[1];
    v17 = *v3;
    v18 = v12;
    v19 = 1;
    sub_100B265E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v16 + 8))(v7, v5);
    }

    else
    {
      LOBYTE(v17) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1D08 != -1)
      {
        swift_once();
      }

      *&v17 = static TSContentLanguage.Models.Resource.version;
      v19 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v16 + 8))(v7, v5);
    }
  }

  else
  {
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v14 = v3[1];
    v17 = *v3;
    v18 = v14;
    v19 = 0;
    sub_100B26634();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v16 + 8))(v10, v5);
    }

    else
    {
      LOBYTE(v17) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1D08 != -1)
      {
        swift_once();
      }

      *&v17 = static TSContentLanguage.Models.Resource.version;
      v19 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v16 + 8))(v10, v5);
    }
  }
}

uint64_t static TSContentLanguage.Models.Resource.Base64EncodedResource.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

BOOL sub_100B24B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8Freeform17TSContentLanguageO6ModelsO8ResourceO21__derived_enum_equalsySbAG_AGtFZ_0(v5, v7);
}

uint64_t *TSContentLanguage.Models.Resource.IndirectResource.version.unsafeMutableAddressor()
{
  if (qword_1019F1D10 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Resource.IndirectResource.version;
}

Swift::Int sub_100B24C3C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B24D10()
{
  String.hash(into:)();
}

Swift::Int sub_100B24DD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B24EA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B26688(*a1);
  *a2 = result;
  return result;
}

void sub_100B24ED0(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656D616E656C6966;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B24F60()
{
  v1 = 0x696669746E656469;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x656D616E656C6966;
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

unint64_t sub_100B24FEC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B26688(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B25014(uint64_t a1)
{
  v2 = sub_100B26ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B25050(uint64_t a1)
{
  v2 = sub_100B26ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Resource.IndirectResource.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = a4;
  v12[2] = a5;
  v7 = sub_1005B981C(&qword_101A117A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100B26ADC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D10 != -1)
  {
    swift_once();
  }

  v12[3] = static TSContentLanguage.Models.Resource.IndirectResource.version;
  v13 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t TSContentLanguage.Models.Resource.IndirectResource.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    if (a2)
    {
      if (a5 == a1 && a6 == a2)
      {
        goto LABEL_6;
      }

      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a7 = v12;
      a4 = v10;
      a8 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

LABEL_6:
  if (a7 == a3 && a8 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100B253D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B266D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t *TSContentLanguage.Models.Resource.Base64EncodedResource.version.unsafeMutableAddressor()
{
  if (qword_1019F1D18 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Resource.Base64EncodedResource.version;
}

Swift::Int sub_100B25534()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B25600()
{
  String.hash(into:)();
}

Swift::Int sub_100B256B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B25780@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B26B30(*a1);
  *a2 = result;
  return result;
}

void sub_100B257B0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656D616E656C6966;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B25838()
{
  v1 = 0x676E69727473;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x656D616E656C6966;
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

unint64_t sub_100B258BC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B26B30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B258E4(uint64_t a1)
{
  v2 = sub_100B26FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B25920(uint64_t a1)
{
  v2 = sub_100B26FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B25988(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Resource.Base64EncodedResource.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = a4;
  v12[2] = a5;
  v7 = sub_1005B981C(&qword_101A117B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100B26FA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D18 != -1)
  {
    swift_once();
  }

  v12[3] = static TSContentLanguage.Models.Resource.Base64EncodedResource.version;
  v13 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t TSContentLanguage.Models.Resource.Base64EncodedResource.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == a1 && a6 == a2 || (v10 = a3, v11 = a4, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v10, a4 = v11, v13 = v12, result = 0, (v13 & 1) != 0))
  {
    if (a7 == a3 && a8 == a4)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100B25CD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B26B7C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100B25D44(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100B25DE8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 == *a1 && v1[1] == a1[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v4 == v2 && v5 == v3)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO8ResourceO08IndirectE0V23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_6:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO8ResourceO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[2];
  v10 = a2[3];
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v11 = a2[1];
    if (v5)
    {
      if (!v11 || (v4 != v8 || v5 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v6 == v9 && v7 == v10)
    {
      return 1;
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    v12 = v4 == v8 && v5 == a2[1];
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v6 == v9 && v7 == v10)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

unint64_t sub_100B2602C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018758F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B26078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B2658C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v35[0]) = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000028 && v10 == 0x8000000101589F10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v35, v35[3]);
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(v35);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101478600;
        *(v15 + 16) = 0;
        swift_willThrow();
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v36 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v35[0];
  if (v35[0])
  {
    if (qword_1019F1D08 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Resource.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  v19 = sub_1007B7540(0, v18, 0, 0);
  v21 = v20;
  v23 = v22;
  v33 = v19;
  v34 = v24;

  if (v21)
  {
    (*(v6 + 8))(v8, v5);
    v25 = v21;
  }

  else
  {
    v27 = a1[3];
    v34 = a1[4];
    sub_100020E58(a1, v27);
    v32 = dispatch thunk of Decoder.userInfo.getter();
    v28 = sub_1007B7830(1, v32, 0, 0);
    v25 = v29;
    v33 = v28;
    v34 = v30;
    v23 = v31;
    (*(v6 + 8))(v8, v5);

    if (!v23)
    {
      goto LABEL_13;
    }
  }

  result = sub_100005070(a1);
  v26 = v34;
  *a2 = v33;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v23;
  *(a2 + 32) = v21 == 0;
  return result;
}

unint64_t sub_100B2658C()
{
  result = qword_101A11790;
  if (!qword_101A11790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11790);
  }

  return result;
}

unint64_t sub_100B265E0()
{
  result = qword_101A11798;
  if (!qword_101A11798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11798);
  }

  return result;
}

unint64_t sub_100B26634()
{
  result = qword_101A117A0;
  if (!qword_101A117A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117A0);
  }

  return result;
}

unint64_t sub_100B26688(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875978, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B266D4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_100B26ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_12;
  }

  v21 = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v8 == 0xD00000000000003ALL && v9 == 0x8000000101589F40)
  {

    goto LABEL_10;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:
    type metadata accessor for TSCLVersion();
    v20 = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v19;
    if (v19)
    {
      if (qword_1019F1D10 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.Resource.IndirectResource.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v14[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101463530;
        *(v15 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(a1, a1[3]);
    v16 = dispatch thunk of Decoder.userInfo.getter();
    v7 = sub_1007B7B20(0, v16, 0, 0);

    v17 = a1[3];
    v18 = a1[4];
    sub_100020E58(a1, v17);
    v18 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BF5E8(1, v18, 0, 0, 0, 0);
    (*(v4 + 8))(v6, v3);

    sub_100005070(a1);
    return v7;
  }

  sub_1007C8648();
  swift_allocError();
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  swift_willThrow();
LABEL_11:
  (*(v4 + 8))(v6, v3);
LABEL_12:
  sub_100005070(a1);
  return v7;
}

unint64_t sub_100B26ADC()
{
  result = qword_101A117B0;
  if (!qword_101A117B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117B0);
  }

  return result;
}

unint64_t sub_100B26B30(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018759F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B26B7C(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00930);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_100B26FA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_12;
  }

  v21 = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v8 == 0xD000000000000040 && v9 == 0x8000000101589F80)
  {

    goto LABEL_10;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:
    type metadata accessor for TSCLVersion();
    v20 = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v19;
    if (v19)
    {
      if (qword_1019F1D18 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.Resource.Base64EncodedResource.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v14[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101463530;
        *(v15 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(a1, a1[3]);
    v16 = dispatch thunk of Decoder.userInfo.getter();
    v7 = sub_1007BFA90(0, v16, 0, 0, 0, 0);

    v17 = a1[3];
    v18 = a1[4];
    sub_100020E58(a1, v17);
    v18 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BFA90(1, v18, 0, 0, 0, 0);
    (*(v4 + 8))(v6, v3);

    sub_100005070(a1);
    return v7;
  }

  sub_1007C8648();
  swift_allocError();
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  swift_willThrow();
LABEL_11:
  (*(v4 + 8))(v6, v3);
LABEL_12:
  sub_100005070(a1);
  return v7;
}

unint64_t sub_100B26FA4()
{
  result = qword_101A117C0;
  if (!qword_101A117C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117C0);
  }

  return result;
}

unint64_t sub_100B26FF8(uint64_t a1)
{
  *(a1 + 8) = sub_100B27028();
  result = sub_100B2707C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B27028()
{
  result = qword_101A117C8;
  if (!qword_101A117C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117C8);
  }

  return result;
}

unint64_t sub_100B2707C()
{
  result = qword_101A117D0;
  if (!qword_101A117D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117D0);
  }

  return result;
}

unint64_t sub_100B27110()
{
  result = qword_101A117D8;
  if (!qword_101A117D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117D8);
  }

  return result;
}

unint64_t sub_100B27164(uint64_t a1)
{
  result = sub_100B10734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B271CC()
{
  result = qword_101A117E0;
  if (!qword_101A117E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117E0);
  }

  return result;
}

unint64_t sub_100B27220(uint64_t a1)
{
  result = sub_100B106E0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B27288(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100B272DC()
{
  result = qword_101A117E8;
  if (!qword_101A117E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117E8);
  }

  return result;
}

uint64_t sub_100B27330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100B27378(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100B27430()
{
  result = qword_101A117F0;
  if (!qword_101A117F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117F0);
  }

  return result;
}

unint64_t sub_100B27488()
{
  result = qword_101A117F8;
  if (!qword_101A117F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A117F8);
  }

  return result;
}

unint64_t sub_100B274E0()
{
  result = qword_101A11800;
  if (!qword_101A11800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11800);
  }

  return result;
}

unint64_t sub_100B27538()
{
  result = qword_101A11808;
  if (!qword_101A11808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11808);
  }

  return result;
}

unint64_t sub_100B27590()
{
  result = qword_101A11810;
  if (!qword_101A11810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11810);
  }

  return result;
}

unint64_t sub_100B275E8()
{
  result = qword_101A11818;
  if (!qword_101A11818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11818);
  }

  return result;
}

unint64_t sub_100B27640()
{
  result = qword_101A11820;
  if (!qword_101A11820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11820);
  }

  return result;
}

unint64_t sub_100B27698()
{
  result = qword_101A11828;
  if (!qword_101A11828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11828);
  }

  return result;
}

unint64_t sub_100B276F0()
{
  result = qword_101A11830;
  if (!qword_101A11830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11830);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Shape.init(identifier:geometry:aspectRatioLocked:description:path:tail:head:fill:stroke:shadow:layoutProperties:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15)
{
  *(a9 + 48) = 0;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 58) = 0;
  *(a9 + 56) = 2;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 200) = 0u;
  *(a9 + 136) = 0u;
  v20 = a9 + 136;
  *(a9 + 216) = -256;
  v21 = (a9 + 280);
  *(a9 + 280) = 0u;
  *(a9 + 296) = 0u;
  *(a9 + 312) = 0u;
  *(a9 + 328) = 0xFFFFFFFF00;
  *(a9 + 336) = 0u;
  *(a9 + 352) = 0u;
  *(a9 + 384) = 768;
  v22 = (a9 + 392);
  *(a9 + 368) = 0u;
  v23 = type metadata accessor for TSContentLanguage.Models.Shape();
  *v22 = 0u;
  *(a9 + 408) = 0u;
  *(a9 + 424) = 0u;
  *(a9 + 440) = 0u;
  *(a9 + 453) = 0u;
  v24 = *(v23 + 60);
  v25 = type metadata accessor for TSContentLanguage.Models.Text();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  *a9 = a1;
  *(a9 + 8) = a2;
  v26 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v26;
  *(a9 + 43) = *(a3 + 27);
  *(a9 + 59) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v27 = *(a7 + 16);
  *(a9 + 80) = *a7;
  *(a9 + 96) = v27;
  *(a9 + 112) = *(a7 + 32);
  *(a9 + 128) = *(a7 + 48);
  *(a9 + 129) = a8;
  *(a9 + 130) = a10;
  sub_10002C638(a11, v20, &qword_101A00910);
  v28 = *(a12 + 16);
  *(a9 + 224) = *a12;
  *(a9 + 240) = v28;
  *(a9 + 256) = *(a12 + 32);
  *(a9 + 272) = *(a12 + 48);
  v29 = a13[3];
  v21[2] = a13[2];
  v21[3] = v29;
  v21[4] = a13[4];
  v30 = a13[1];
  *v21 = *a13;
  v21[1] = v30;
  sub_10002C638(a14, a9 + 360, &qword_101A00900);
  return sub_10002C638(a15, a9 + v24, &qword_101A003E0);
}

uint64_t type metadata accessor for TSContentLanguage.Models.Shape()
{
  result = qword_101A118E0;
  if (!qword_101A118E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100B279E0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Shape.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Shape.version.unsafeMutableAddressor()
{
  if (qword_1019F1D20 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Shape.version;
}

id static TSContentLanguage.Models.Shape.version.getter()
{
  if (qword_1019F1D20 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Shape.version;

  return v1;
}

__n128 TSContentLanguage.Models.Shape.stroke.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 240);
  *a1 = *(v1 + 224);
  *(a1 + 16) = v3;
  result = *(v1 + 256);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Shape.stroke.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v2;
  result = *(a1 + 32);
  *(v1 + 256) = result;
  *(v1 + 272) = *(a1 + 48);
  return result;
}

double sub_100B27C14()
{
  static TSContentLanguage.Models.Shape.strokeDefault = 0u;
  *algn_101AD74B0 = 0u;
  *&result = 2;
  xmmword_101AD74C0 = xmmword_101497C00;
  byte_101AD74D0 = 73;
  return result;
}

__int128 *TSContentLanguage.Models.Shape.strokeDefault.unsafeMutableAddressor()
{
  if (qword_1019F1D28 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Shape.strokeDefault;
}

double static TSContentLanguage.Models.Shape.strokeDefault.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1019F1D28 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = byte_101AD74D0;
  v2 = *algn_101AD74B0;
  *a1 = static TSContentLanguage.Models.Shape.strokeDefault;
  *(a1 + 16) = v2;
  result = *&xmmword_101AD74C0;
  *(a1 + 32) = xmmword_101AD74C0;
  *(a1 + 48) = v1;
  return result;
}

__n128 TSContentLanguage.Models.Shape.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  *(a1 + 32) = *(v1 + 312);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 344);
  result = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = result;
  return result;
}

__n128 TSContentLanguage.Models.Shape.shadow.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 312) = *(a1 + 32);
  *(v1 + 328) = v2;
  *(v1 + 344) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = result;
  return result;
}

uint64_t TSContentLanguage.Models.Shape.canvasObject.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100B2BA14(v1, a1);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100B27F08(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x797274656D6F6567;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 1752457584;
      break;
    case 5:
      result = 1818845556;
      break;
    case 6:
      result = 1684104552;
      break;
    case 7:
      result = 1819044198;
      break;
    case 8:
      result = 0x656B6F727473;
      break;
    case 9:
      result = 0x776F64616873;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 1954047348;
      break;
    case 12:
      result = 0x6564695F65707974;
      break;
    case 13:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100B28070(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100B27F08(*a1);
  v5 = v4;
  if (v3 == sub_100B27F08(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100B280F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B27F08(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B2815C()
{
  sub_100B27F08(*v0);
  String.hash(into:)();
}

Swift::Int sub_100B281B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B27F08(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B28210@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2C158(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100B28240@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100B27F08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100B28288@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2C158(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B282B0(uint64_t a1)
{
  v2 = sub_100B2BA78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B282EC(uint64_t a1)
{
  v2 = sub_100B2BA78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Shape.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = type metadata accessor for TSContentLanguage.Models.Text();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A003E0);
  __chkstk_darwin(v6 - 8);
  v132 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v122 - v9;
  v10 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v10 - 8);
  v130 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v134 = &v122 - v13;
  __chkstk_darwin(v14);
  v136 = &v122 - v15;
  __chkstk_darwin(v16);
  v138 = &v122 - v17;
  __chkstk_darwin(v18);
  *&v140 = &v122 - v19;
  __chkstk_darwin(v20);
  *&v142 = &v122 - v21;
  __chkstk_darwin(v22);
  *&v144 = &v122 - v23;
  __chkstk_darwin(v24);
  v150 = &v122 - v25;
  v26 = type metadata accessor for CodingUserInfoKey();
  v27 = *(v26 - 8);
  v147 = v26;
  v148 = v27;
  __chkstk_darwin(v26);
  v131 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v135 = &v122 - v30;
  __chkstk_darwin(v31);
  v137 = &v122 - v32;
  __chkstk_darwin(v33);
  v139 = &v122 - v34;
  __chkstk_darwin(v35);
  *&v143 = &v122 - v36;
  __chkstk_darwin(v37);
  *&v141 = &v122 - v38;
  __chkstk_darwin(v39);
  *&v145 = &v122 - v40;
  __chkstk_darwin(v41);
  v146 = &v122 - v42;
  v149 = sub_1005B981C(&qword_101A00920);
  v151 = *(v149 - 8);
  __chkstk_darwin(v149);
  v44 = &v122 - v43;
  v45 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v45 - 8);
  v47 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v47 + 6) = 0;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  v47[58] = 0;
  *(v47 + 28) = 2;
  *(v47 + 136) = 0u;
  v155 = v47 + 136;
  *(v47 + 152) = 0u;
  *(v47 + 168) = 0u;
  *(v47 + 184) = 0u;
  *(v47 + 200) = 0u;
  *(v47 + 108) = -256;
  *(v47 + 280) = 0u;
  *(v47 + 296) = 0u;
  *(v47 + 312) = 0u;
  *(v47 + 41) = 0xFFFFFFFF00;
  *(v47 + 21) = 0u;
  *(v47 + 22) = 0u;
  *(v47 + 23) = 0u;
  *(v47 + 48) = 768;
  *(v47 + 453) = 0u;
  *(v47 + 424) = 0u;
  *(v47 + 440) = 0u;
  *(v47 + 392) = 0u;
  *(v47 + 408) = 0u;
  v49 = *(v48 + 68);
  v127 = v4;
  v52 = *(v4 + 56);
  v51 = v4 + 56;
  v50 = v52;
  v153 = &v47[v49];
  v154 = (v47 + 360);
  v133 = v3;
  v52();
  v53 = a1[3];
  v178 = a1;
  sub_100020E58(a1, v53);
  sub_100B2BA78();
  v54 = v152;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v54)
  {
    goto LABEL_14;
  }

  v124 = v51;
  v125 = (v47 + 280);
  v123 = v50;
  v152 = v47;
  LOBYTE(v170) = 12;
  v55 = v149;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v57)
  {
    if (v56 == 0xD000000000000025 && v57 == 0x8000000101589890)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v61[1] = 0;
        v61[2] = 0;
        *v61 = 0;
        swift_willThrow();
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v156) = 13;
  sub_10003EAB0(&qword_101A00400, type metadata accessor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = v170;
  if (v170)
  {
    if (qword_1019F1D20 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Shape.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v59[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v60 = xmmword_101463530;
      *(v60 + 16) = 0;
      swift_willThrow();

LABEL_13:
      (*(v151 + 8))(v44, v55);
LABEL_14:
      sub_100005070(v178);

      v62 = *(v155 + 3);
      v158 = *(v155 + 2);
      v159 = v62;
      v160 = *(v155 + 4);
      LOWORD(v161[0]) = *(v155 + 40);
      v63 = *(v155 + 1);
      v156 = *v155;
      v157 = v63;
      sub_10000CAAC(&v156, &qword_101A00910);
      v64 = v154[5];
      v174 = v154[4];
      v175[0] = v64;
      *(v175 + 13) = *(v154 + 93);
      v65 = v154[1];
      v170 = *v154;
      v171 = v65;
      v66 = v154[3];
      v172 = v154[2];
      v173 = v66;
      sub_10000CAAC(&v170, &qword_101A00900);
      return sub_10000CAAC(v153, &qword_101A003E0);
    }
  }

  sub_100020E58(v178, v178[3]);
  v68 = dispatch thunk of Decoder.userInfo.getter();
  v69 = sub_1007B7B48(0, v68, 0, 0);
  v71 = v70;

  v72 = v152;
  *v152 = v69;
  *(v72 + 8) = v71;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v156) = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v73 = v44;
  v74 = v55;

  v75 = v171;
  v76 = v172;
  v77 = WORD4(v172) | (BYTE10(v172) << 16);
  v78 = v152;
  *(v152 + 1) = v170;
  *(v78 + 32) = v75;
  *(v78 + 48) = v76;
  *(v78 + 56) = v77;
  *(v78 + 58) = BYTE2(v77);
  sub_100020E58(v178, v178[3]);
  v79 = dispatch thunk of Decoder.userInfo.getter();
  v80 = sub_1007B7B70(2, v79, 0, 0);

  *(v78 + 59) = v80;
  v81 = v178[3];
  v150 = v73;
  sub_100020E58(v178, v81);
  v82 = dispatch thunk of Decoder.userInfo.getter();
  v83 = sub_1007B7B48(3, v82, 0, 0);
  v85 = v84;

  *(v78 + 64) = v83;
  *(v78 + 72) = v85;
  sub_100020E58(v178, v178[3]);
  v86 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B7B98(4, v86, 0, 0, v176);
  v149 = v85;
  v146 = *(&v176[0] + 1);

  v87 = v176[1];
  *(v78 + 80) = v176[0];
  *(v78 + 96) = v87;
  *(v78 + 112) = v176[2];
  *(v78 + 128) = v177;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v156) = 5;
  sub_100B2BACC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v88 = v170;
  if (v170 == 11)
  {
    v88 = 6;
  }

  v152[129] = v88;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v169 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v89 = v170;
  if (v170 == 11)
  {
    v89 = 6;
  }

  v152[130] = v89;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v168 = 7;
  sub_100B2BB20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE1(v175[0]) == 255)
  {

    v158 = v172;
    v159 = v173;
    v160 = v174;
    LOWORD(v161[0]) = v175[0];
    v156 = v170;
    v157 = v171;
    sub_10000CAAC(&v156, &qword_101A00910);
    v90 = 0;
    v91 = 0;
    v144 = 0u;
    v145 = 0u;
    v92 = -256;
    v142 = 0u;
    v143 = 0u;
  }

  else
  {

    v144 = v171;
    v145 = v170;
    v142 = v173;
    v143 = v172;
    v91 = *(&v174 + 1);
    v90 = v174;
    v92 = v175[0];
  }

  v93 = *(v155 + 3);
  v166[2] = *(v155 + 2);
  v166[3] = v93;
  v166[4] = *(v155 + 4);
  v167 = *(v155 + 40);
  v94 = *(v155 + 1);
  v166[0] = *v155;
  v166[1] = v94;
  sub_10000CAAC(v166, &qword_101A00910);
  v95 = v152;
  v96 = v145;
  *(v152 + 152) = v144;
  *(v95 + 136) = v96;
  v97 = v143;
  *(v95 + 184) = v142;
  *(v95 + 168) = v97;
  *(v95 + 200) = v90;
  *(v95 + 208) = v91;
  *(v95 + 216) = v92;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  if (qword_1019F1D28 != -1)
  {
    swift_once();
  }

  v144 = static TSContentLanguage.Models.Shape.strokeDefault;
  v145 = *algn_101AD74B0;
  v98 = *(&xmmword_101AD74C0 + 1);
  *&v143 = xmmword_101AD74C0;
  v99 = byte_101AD74D0;
  v165 = 8;
  sub_100969848();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v100 = v172;
  v101 = v173;
  if (v172 >> 8 == 0xFFFFFFFF && v173 < 0x10u)
  {
  }

  else
  {
    v144 = v170;
    v145 = v171;
    v98 = *(&v172 + 1);

    *&v143 = v100;
    v99 = v101;
  }

  v102 = v152;
  v103 = v145;
  *(v152 + 14) = v144;
  *(v102 + 240) = v103;
  *(v102 + 256) = v143;
  *(v102 + 264) = v98;
  *(v102 + 272) = v99;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v164 = 9;
  sub_100B22CFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v104 = v171;
  v106 = v172;
  v105 = v173;
  v107 = v174;
  v108 = v125;
  *v125 = v170;
  v108[1] = v104;
  v108[2] = v106;
  v108[3] = v105;
  v108[4] = v107;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v163 = 10;
  sub_100B2BB74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE9(v171) << 8 == 768)
  {

    v160 = v174;
    v161[0] = v175[0];
    *(v161 + 13) = *(v175 + 13);
    v156 = v170;
    v157 = v171;
    v158 = v172;
    v159 = v173;
    sub_10000CAAC(&v156, &qword_101A00900);
    v109 = 0;
    v110 = 0;
    v144 = 0u;
    v145 = xmmword_101497C20;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
  }

  else
  {

    v144 = v170;
    v145 = v171;
    v142 = v173;
    v143 = v172;
    v140 = v175[0];
    v141 = v174;
    v109 = *&v175[1];
    v110 = DWORD2(v175[1]) | (BYTE12(v175[1]) << 32);
  }

  v111 = v154[5];
  v174 = v154[4];
  v175[0] = v111;
  *(v175 + 13) = *(v154 + 93);
  v112 = v154[1];
  v170 = *v154;
  v171 = v112;
  v113 = v154[3];
  v172 = v154[2];
  v173 = v113;
  sub_10000CAAC(&v170, &qword_101A00900);
  v114 = v125;
  v115 = v145;
  v125[5] = v144;
  v114[6] = v115;
  v116 = v142;
  v114[7] = v143;
  v114[8] = v116;
  v117 = v140;
  v114[9] = v141;
  v114[10] = v117;
  *(v152 + 57) = v109;
  *(v114 + 188) = BYTE4(v110);
  *(v114 + 46) = v110;
  sub_100020E58(v178, v178[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v162 = 11;
  sub_10003EAB0(&qword_101A009C8, type metadata accessor for TSContentLanguage.Models.Text);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if ((*(v127 + 48))(v132, 1, v133) == 1)
  {

    (*(v151 + 8))(v150, v74);
    sub_10000CAAC(v132, &qword_101A003E0);
    v118 = 1;
  }

  else
  {
    v119 = v126;
    sub_1007B5304(v132, v126);

    (*(v151 + 8))(v150, v74);
    sub_1007B5304(v119, v129);
    v118 = 0;
  }

  v120 = v129;
  (v123)(v129, v118, 1, v133);
  sub_10002C638(v120, v153, &qword_101A003E0);
  v121 = v152;
  sub_100B2BA14(v152, v128);
  sub_100005070(v178);
  return sub_100B2C1A4(v121, type metadata accessor for TSContentLanguage.Models.Shape);
}

uint64_t TSContentLanguage.Models.Shape.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A11858);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B2BA78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v41) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    v11 = *(v3 + 58);
    v12 = *(v3 + 32);
    v41 = *(v3 + 16);
    v42 = v12;
    *&v43 = v9;
    BYTE10(v43) = v11;
    WORD4(v43) = v10;
    LOBYTE(v35) = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v41) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v41) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 128);
    v14 = *(v3 + 96);
    v41 = *(v3 + 80);
    v42 = v14;
    v43 = *(v3 + 112);
    LOBYTE(v44) = v13;
    LOBYTE(v35) = 4;
    sub_1007C86F0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v41) = *(v3 + 129);
    LOBYTE(v35) = 5;
    sub_100B2BBC8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v70 = *(v3 + 130);
    v69 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 184);
    v67[2] = *(v3 + 168);
    v67[3] = v15;
    v67[4] = *(v3 + 200);
    v68 = *(v3 + 216);
    v16 = *(v3 + 152);
    v67[0] = *(v3 + 136);
    v67[1] = v16;
    v17 = *(v3 + 184);
    v63 = *(v3 + 168);
    v64 = v17;
    v65 = *(v3 + 200);
    v66 = *(v3 + 216);
    v18 = *(v3 + 152);
    v61 = *(v3 + 136);
    v62 = v18;
    v60 = 7;
    sub_10000BE14(v67, &v41, &qword_101A00910);
    sub_100B2BC1C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v58[2] = v63;
    v58[3] = v64;
    v58[4] = v65;
    v59 = v66;
    v58[0] = v61;
    v58[1] = v62;
    sub_10000CAAC(v58, &qword_101A00910);
    v19 = *(v3 + 272);
    v20 = *(v3 + 240);
    v54 = *(v3 + 224);
    v55 = v20;
    v56 = *(v3 + 256);
    v57 = v19;
    v53 = 8;
    sub_10096930C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + 328);
    v50 = *(v3 + 312);
    v51 = v21;
    v52 = *(v3 + 344);
    v22 = *(v3 + 296);
    v48 = *(v3 + 280);
    v49 = v22;
    v47 = 9;
    sub_100B215E4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v3 + 408);
    v24 = *(v3 + 440);
    v45 = *(v3 + 424);
    *v46 = v24;
    *&v46[13] = *(v3 + 453);
    v25 = *(v3 + 376);
    v41 = *(v3 + 360);
    v42 = v25;
    v26 = *(v3 + 408);
    v28 = *(v3 + 360);
    v27 = *(v3 + 376);
    v43 = *(v3 + 392);
    v44 = v26;
    v38 = v23;
    v39 = v45;
    v40[0] = *(v3 + 440);
    *(v40 + 13) = *(v3 + 453);
    v35 = v28;
    v36 = v27;
    v37 = v43;
    v34 = 10;
    sub_10000BE14(&v41, v32, &qword_101A00900);
    sub_100B2BC70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32[4] = v39;
    *v33 = v40[0];
    *&v33[13] = *(v40 + 13);
    v32[0] = v35;
    v32[1] = v36;
    v32[2] = v37;
    v32[3] = v38;
    sub_10000CAAC(v32, &qword_101A00900);
    type metadata accessor for TSContentLanguage.Models.Shape();
    LOBYTE(v31) = 11;
    type metadata accessor for TSContentLanguage.Models.Text();
    sub_10003EAB0(&qword_101A00450, type metadata accessor for TSContentLanguage.Models.Text);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v31) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1D20 != -1)
    {
      swift_once();
    }

    v31 = static TSContentLanguage.Models.Shape.version;
    v30[7] = 13;
    type metadata accessor for TSCLVersion();
    sub_10003EAB0(&qword_101A00458, type metadata accessor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Shape.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = *(a1 + 56) | (*(a1 + 58) << 16);
  v5 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    v8 = *(v1 + 24);
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    v11 = *(v1 + 48);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (!sub_1007C87EC(*(v1 + 16), *(a1 + 16)) || !sub_1007C87EC(v8, v12) || !sub_1007C87EC(v10, v14) || !sub_1007C87EC(v9, v13) || !sub_1007C87EC(v11, v15) || ((v4 ^ v3) & 1) != 0 || ((v4 & 0x100) == 0) == (v3 & 0x100) >> 8 || ((v4 & 0x10000) == 0) == (v3 & 0x10000u) >> 16)
    {
      return 0;
    }
  }

  v6 = *(v1 + 59);
  v7 = *(a1 + 59);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 72);
  v17 = *(a1 + 72);
  if (v16)
  {
    if (!v17 || (*(v1 + 64) != *(a1 + 64) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(v1 + 96);
  v104 = *(v1 + 80);
  v105 = v18;
  v106 = *(v1 + 112);
  v107 = *(v1 + 128);
  v19 = *(a1 + 96);
  v102[0] = *(a1 + 80);
  v102[1] = v19;
  v102[2] = *(a1 + 112);
  v103 = *(a1 + 128);
  v20 = v1;
  if (sub_1007C54E0(v102))
  {
    v21 = *(a1 + 129);
    v22 = TSContentLanguage.Models.LineEnd.rawValue.getter(*(v20 + 129));
    v24 = v23;
    if (v22 == TSContentLanguage.Models.LineEnd.rawValue.getter(v21) && v24 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    v27 = *(a1 + 130);
    v28 = TSContentLanguage.Models.LineEnd.rawValue.getter(*(v20 + 130));
    v30 = v29;
    if (v28 == TSContentLanguage.Models.LineEnd.rawValue.getter(v27) && v30 == v31)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    v33 = *(v20 + 184);
    v98 = *(v20 + 168);
    v99 = v33;
    v100 = *(v20 + 200);
    v101 = *(v20 + 216);
    v34 = *(v20 + 152);
    v96 = *(v20 + 136);
    v97 = v34;
    v35 = *(a1 + 184);
    v94[2] = *(a1 + 168);
    v94[3] = v35;
    v94[4] = *(a1 + 200);
    v95 = *(a1 + 216);
    v36 = *(a1 + 152);
    v94[0] = *(a1 + 136);
    v94[1] = v36;
    if (sub_1007C5814(v94))
    {
      v37 = *(v20 + 232);
      v38 = *(v20 + 272);
      v40 = *(a1 + 224);
      v39 = *(a1 + 232);
      v41 = *(a1 + 272);
      if (v38 >> 6)
      {
        v42 = *(a1 + 240);
        v43 = *(a1 + 248);
        v44 = *(a1 + 256);
        v45 = *(a1 + 264);
        if (v38 >> 6 == 1)
        {
          v46 = *(v20 + 264);
          v47 = *(v20 + 256);
          v85[0] = *(v20 + 224);
          v85[1] = v37;
          v86 = *(v20 + 240);
          v87 = v47;
          v88 = v46;
          v89 = v38 & 0x3F;
          if ((v41 & 0xC0) != 0x40)
          {
            return 0;
          }

          v90[0] = v40;
          v90[1] = v39;
          v90[2] = v42;
          v90[3] = v43;
          v91 = v44;
          v92 = v45;
          v93 = v41 & 0x3F;
          if ((_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v85, v90) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v41 & 0xC0) != 0x80 || v39 | v40 | v42 | v43 | v44 | v45 || v41 != 128)
        {
          return 0;
        }
      }

      else
      {
        if (v41 >= 0x40)
        {
          return 0;
        }

        v48 = *(v20 + 232);
        v49 = *(a1 + 232);
        v50 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(v20 + 224));
        v52 = v51;
        if (v50 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v40) && v52 == v53)
        {
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v54 & 1) == 0)
          {
            return 0;
          }
        }

        if (v48 != v49)
        {
          return 0;
        }
      }

      v55 = *(v20 + 328);
      v56 = *(a1 + 328);
      v57 = v56 & 0xFFFFFFFFFFFFFF00;
      if (v55 >> 8 == 0xFFFFFFFF)
      {
        if (v57 != 0xFFFFFFFF00)
        {
          return 0;
        }
      }

      else
      {
        if (v57 == 0xFFFFFFFF00)
        {
          return 0;
        }

        v58 = *(v20 + 296);
        v77[0] = *(v20 + 280);
        v77[1] = v58;
        v77[2] = *(v20 + 312);
        v79 = *(v20 + 336);
        v80 = *(v20 + 352);
        v78 = v55;
        v59 = *(a1 + 312);
        v81[1] = *(a1 + 296);
        v81[2] = v59;
        v81[0] = *(a1 + 280);
        v83 = *(a1 + 336);
        v84 = *(a1 + 352);
        v82 = v56;
        if (!_s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v77, v81))
        {
          return 0;
        }
      }

      v60 = *(v20 + 440);
      v75 = *(v20 + 424);
      v76[0] = v60;
      *(v76 + 13) = *(v20 + 453);
      v61 = *(v20 + 376);
      v71 = *(v20 + 360);
      v72 = v61;
      v62 = *(v20 + 408);
      v73 = *(v20 + 392);
      v74 = v62;
      v63 = *(a1 + 376);
      v69[0] = *(a1 + 360);
      v69[1] = v63;
      v64 = *(a1 + 392);
      v65 = *(a1 + 408);
      *&v70[13] = *(a1 + 453);
      v66 = *(a1 + 440);
      v69[4] = *(a1 + 424);
      *v70 = v66;
      v69[2] = v64;
      v69[3] = v65;
      if (sub_1007C5AE4(v69))
      {
        v67 = type metadata accessor for TSContentLanguage.Models.Shape();
        return sub_1007C5DF4(a1 + *(v67 + 60)) & 1;
      }
    }
  }

  return 0;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO5ShapeV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.Text();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v149[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_101A003E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v149[-v9];
  v11 = sub_1005B981C(&qword_101A008F8);
  __chkstk_darwin(v11);
  v14 = &v149[-v13];
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v19 = *(a1 + 56) | (*(a1 + 58) << 16);
  v20 = *(a2 + 56) | (*(a2 + 58) << 16);
  v21 = *(a2 + 56);
  if (*(a1 + 56) == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == 2)
    {
      return 0;
    }

    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v25 = *(a2 + 32);
    v26 = *(a2 + 48);
    v244[0] = *(a2 + 16);
    v244[1] = v25;
    v245 = v26;
    v246 = v20;
    v247 = BYTE2(v20);
    v240[0] = v22;
    v240[1] = v23;
    v241 = v24;
    v242 = v19;
    v243 = BYTE2(v19);
    v27 = v12;
    v28 = _s8Freeform17TSContentLanguageO6ModelsO8GeometryV23__derived_struct_equalsySbAG_AGtFZ_0(v240, v244);
    v12 = v27;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v29 = *(a1 + 59);
  v30 = *(a2 + 59);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      return 0;
    }

LABEL_18:
    v32 = *(a1 + 72);
    v33 = *(a2 + 72);
    if (v32)
    {
      if (!v33)
      {
        return 0;
      }

      if (*(a1 + 64) != *(a2 + 64) || v32 != v33)
      {
        v34 = v12;
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v34;
        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v33)
    {
      return 0;
    }

    v36 = *(a1 + 88);
    v37 = *(a2 + 88);
    if (v36)
    {
      if (!v37)
      {
        return 0;
      }

      v151 = v5;
      v152 = v12;
      v38 = *(a1 + 80);
      v39 = *(a1 + 96);
      v40 = *(a1 + 112);
      v41 = *(a1 + 128);
      v42 = *(a2 + 96);
      v43 = *(a2 + 112);
      v44 = *(a2 + 128);
      v235 = *(a2 + 80);
      v236 = v37;
      v237 = v42;
      v238 = v43;
      v239 = v44 & 1;
      v230 = v38;
      v231 = v36;
      v232 = v39;
      v233 = v40;
      v234 = v41 & 1;

      v45 = _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0();

      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v151 = v5;
      v152 = v12;
      if (v37)
      {
        return 0;
      }
    }

    v46 = *(a2 + 129);
    v47 = TSContentLanguage.Models.LineEnd.rawValue.getter(*(a1 + 129));
    v49 = v48;
    if (v47 == TSContentLanguage.Models.LineEnd.rawValue.getter(v46) && v49 == v50)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }

    v52 = *(a2 + 130);
    v53 = TSContentLanguage.Models.LineEnd.rawValue.getter(*(a1 + 130));
    v55 = v54;
    if (v53 == TSContentLanguage.Models.LineEnd.rawValue.getter(v52) && v55 == v56)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }

    v58 = *(a1 + 184);
    v192[2] = *(a1 + 168);
    v192[3] = v58;
    v192[4] = *(a1 + 200);
    v193 = *(a1 + 216);
    v59 = *(a1 + 152);
    v192[0] = *(a1 + 136);
    v192[1] = v59;
    v60 = *(a2 + 184);
    v194[2] = *(a2 + 168);
    v194[3] = v60;
    v194[4] = *(a2 + 200);
    v195 = *(a2 + 216);
    v61 = *(a2 + 152);
    v194[0] = *(a2 + 136);
    v194[1] = v61;
    v62 = *(a1 + 152);
    v63 = *(a1 + 184);
    v182 = *(a1 + 168);
    v183 = v63;
    v184 = *(a1 + 200);
    v180 = *(a1 + 136);
    v181 = v62;
    v64 = v193;
    *&v196[22] = *(a2 + 152);
    *&v196[38] = *(a2 + 168);
    *&v196[54] = *(a2 + 184);
    *&v196[70] = *(a2 + 200);
    *&v196[6] = *(a2 + 136);
    if (HIBYTE(v193) <= 0xFEu)
    {
      if (HIBYTE(v195) <= 0xFEu)
      {
        v72 = *(a2 + 152);
        v73 = *(a2 + 184);
        v188 = *(a2 + 168);
        v189 = v73;
        v190 = *(a2 + 200);
        v186 = *(a2 + 136);
        v187 = v72;
        LOWORD(v191[0]) = v195;
        v229 = v195;
        v228[4] = v190;
        v228[2] = v188;
        v228[3] = v73;
        v228[0] = v186;
        v228[1] = v72;
        v74 = *(a1 + 152);
        v75 = *(a1 + 184);
        v226[2] = *(a1 + 168);
        v226[3] = v75;
        v226[4] = *(a1 + 200);
        v76 = *(a1 + 136);
        v226[1] = v74;
        v226[0] = v76;
        v227 = v193;
        sub_10000BE14(v192, &v166, &qword_101A00910);
        sub_10000BE14(v194, &v166, &qword_101A00910);
        v150 = _s8Freeform17TSContentLanguageO6ModelsO4FillO21__derived_enum_equalsySbAG_AGtFZ_0(v226, v228);
        sub_10000CAAC(&v186, &qword_101A00910);
        v168 = v182;
        v169 = v183;
        v170 = v184;
        v166 = v180;
        v167 = v181;
        LOWORD(v171[0]) = v64;
        sub_10000CAAC(&v166, &qword_101A00910);
        if ((v150 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_48;
      }
    }

    else if (HIBYTE(v195) > 0xFEu)
    {
      v65 = *(a1 + 152);
      v66 = *(a1 + 184);
      v168 = *(a1 + 168);
      v169 = v66;
      v170 = *(a1 + 200);
      v166 = *(a1 + 136);
      v167 = v65;
      LOWORD(v171[0]) = v193;
      sub_10000BE14(v192, &v186, &qword_101A00910);
      sub_10000BE14(v194, &v186, &qword_101A00910);
      sub_10000CAAC(&v166, &qword_101A00910);
LABEL_48:
      v77 = *(a1 + 232);
      v78 = *(a1 + 272);
      v80 = *(a2 + 224);
      v79 = *(a2 + 232);
      v81 = *(a2 + 272);
      if (v78 >> 6)
      {
        v82 = *(a2 + 240);
        v83 = *(a2 + 248);
        v84 = *(a2 + 256);
        v85 = *(a2 + 264);
        if (v78 >> 6 == 1)
        {
          v86 = *(a1 + 264);
          v87 = *(a1 + 256);
          v217[0] = *(a1 + 224);
          v217[1] = v77;
          v218 = *(a1 + 240);
          v219 = v87;
          v220 = v86;
          v221 = v78 & 0x3F;
          if ((v81 & 0xC0) != 0x40)
          {
            return 0;
          }

          v222[0] = v80;
          v222[1] = v79;
          v222[2] = v82;
          v222[3] = v83;
          v223 = v84;
          v224 = v85;
          v225 = v81 & 0x3F;
          if ((_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v217, v222) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v81 & 0xC0) != 0x80 || v79 | v80 | v82 | v83 | v84 | v85 || v81 != 128)
        {
          return 0;
        }
      }

      else
      {
        if (v81 >= 0x40)
        {
          return 0;
        }

        v88 = *(a1 + 232);
        v89 = *(a2 + 232);
        v90 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(a1 + 224));
        v92 = v91;
        if (v90 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v80) && v92 == v93)
        {
        }

        else
        {
          v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v94 & 1) == 0)
          {
            return 0;
          }
        }

        if (v88 != v89)
        {
          return 0;
        }
      }

      v95 = *(a1 + 328);
      v96 = *(a2 + 328);
      v97 = v96 & 0xFFFFFFFFFFFFFF00;
      if (v95 >> 8 == 0xFFFFFFFF)
      {
        if (v97 != 0xFFFFFFFF00)
        {
          return 0;
        }
      }

      else
      {
        if (v97 == 0xFFFFFFFF00)
        {
          return 0;
        }

        v113 = *(a1 + 288);
        v115 = *(a1 + 296);
        v114 = *(a1 + 304);
        v117 = *(a1 + 312);
        v116 = *(a1 + 320);
        v119 = *(a1 + 336);
        v118 = *(a1 + 344);
        v120 = *(a1 + 352);
        v122 = *(a2 + 280);
        v121 = *(a2 + 288);
        v124 = *(a2 + 296);
        v123 = *(a2 + 304);
        v126 = *(a2 + 312);
        v125 = *(a2 + 320);
        v128 = *(a2 + 336);
        v127 = *(a2 + 344);
        v129 = v95 >> 62;
        v130 = v95 & 0x3FFFFFFFFFFFFFFFLL;
        v131 = *(a2 + 352);
        if (v129)
        {
          if (v129 == 1)
          {
            v197 = *(a1 + 280);
            v198 = v113;
            v199 = v115;
            v200 = v114;
            v201 = v117;
            v202 = v116;
            v203 = v130;
            v204 = v119;
            v205 = v118;
            v206 = v120;
            if (v96 >> 62 != 1)
            {
              return 0;
            }

            v207 = v122;
            v208 = v121;
            v209 = v124;
            v210 = v123;
            v211 = v126;
            v212 = v125;
            v213 = v96 & 0x3FFFFFFFFFFFFFFFLL;
            v214 = v128;
            v215 = v127;
            v216 = v131;
            if (!_s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v197, &v207))
            {
              return 0;
            }
          }

          else
          {
            v197 = *(a1 + 280);
            v198 = v113;
            v199 = v115;
            v200 = v114;
            v201 = v117;
            v202 = v116;
            v203 = v130;
            v204 = v119;
            v205 = v118;
            if (v96 >> 62 != 2)
            {
              return 0;
            }

            v207 = v122;
            v208 = v121;
            v209 = v124;
            v210 = v123;
            v211 = v126;
            v212 = v125;
            v213 = v96 & 0x3FFFFFFFFFFFFFFFLL;
            v214 = v128;
            v215 = v127;
            if (!_s8Freeform17TSContentLanguageO6ModelsO10DropShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v197, &v207))
            {
              return 0;
            }
          }
        }

        else
        {
          v197 = *(a1 + 280);
          v198 = v113;
          v199 = v115;
          v200 = v114;
          v201 = v117;
          v202 = v116;
          v203 = v130;
          v204 = v119;
          v205 = v118;
          v206 = v120;
          if (v96 >> 62)
          {
            return 0;
          }

          v207 = v122;
          v208 = v121;
          v209 = v124;
          v210 = v123;
          v211 = v126;
          v212 = v125;
          v213 = v96;
          v214 = v128;
          v215 = v127;
          v216 = v131;
          if (!_s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v197, &v207))
          {
            return 0;
          }
        }
      }

      v98 = (a1 + 360);
      v99 = *(a1 + 440);
      v184 = *(a1 + 424);
      v185[0] = v99;
      *(v185 + 13) = *(a1 + 453);
      v100 = *(a1 + 376);
      v180 = *(a1 + 360);
      v181 = v100;
      v101 = *(a1 + 408);
      v182 = *(a1 + 392);
      v183 = v101;
      v102 = *(a2 + 376);
      v186 = *(a2 + 360);
      v187 = v102;
      *(v191 + 13) = *(a2 + 453);
      v103 = *(a2 + 440);
      v190 = *(a2 + 424);
      v191[0] = v103;
      v104 = *(a2 + 408);
      v188 = *(a2 + 392);
      v189 = v104;
      v178 = v180;
      v179 = *(a1 + 376);
      v105 = *(&v181 + 1);
      v106 = (a1 + 392);
      v107 = *(a1 + 440);
      v176 = *(a1 + 424);
      v177[0] = v107;
      *(v177 + 13) = *(a1 + 453);
      v108 = *(a1 + 408);
      v174 = *(a1 + 392);
      v175 = v108;
      *&v173[19] = *(a2 + 376);
      v109 = (a2 + 392);
      v110 = WORD4(v187) & 0xFF00;
      *&v173[3] = v186;
      if ((WORD4(v181) & 0xFF00) == 0x300)
      {
        if (v110 == 768)
        {
          v166 = *v98;
          *&v167 = *(a1 + 376);
          *(&v167 + 1) = *(&v181 + 1);
          v111 = *(a1 + 440);
          v170 = *(a1 + 424);
          v171[0] = v111;
          *(v171 + 13) = *(a1 + 453);
          v112 = *(a1 + 408);
          v168 = *v106;
          v169 = v112;
          sub_10000BE14(&v180, v196, &qword_101A00900);
          sub_10000BE14(&v186, v196, &qword_101A00900);
          sub_10000CAAC(&v166, &qword_101A00900);
LABEL_83:
          v145 = *(type metadata accessor for TSContentLanguage.Models.Shape() + 60);
          v146 = *(v152 + 48);
          sub_10000BE14(a1 + v145, v14, &qword_101A003E0);
          sub_10000BE14(a2 + v145, v14 + v146, &qword_101A003E0);
          v147 = *(v151 + 48);
          if (v147(v14, 1, v4) == 1)
          {
            if (v147((v14 + v146), 1, v4) == 1)
            {
              sub_10000CAAC(v14, &qword_101A003E0);
              return 1;
            }

            goto LABEL_88;
          }

          sub_10000BE14(v14, v10, &qword_101A003E0);
          if (v147((v14 + v146), 1, v4) == 1)
          {
            sub_100B2C1A4(v10, type metadata accessor for TSContentLanguage.Models.Text);
LABEL_88:
            v69 = &qword_101A008F8;
            v70 = v14;
            goto LABEL_44;
          }

          sub_1007B5304(v14 + v146, v7);
          v148 = _s8Freeform17TSContentLanguageO6ModelsO4TextO21__derived_enum_equalsySbAG_AGtFZ_0(v10, v7);
          sub_100B2C1A4(v7, type metadata accessor for TSContentLanguage.Models.Text);
          sub_100B2C1A4(v10, type metadata accessor for TSContentLanguage.Models.Text);
          sub_10000CAAC(v14, &qword_101A003E0);
          return (v148 & 1) != 0;
        }
      }

      else if (v110 != 768)
      {
        v136 = *(a2 + 376);
        v153 = *(a2 + 360);
        *&v154 = v136;
        *(&v154 + 1) = *(&v187 + 1);
        *(v158 + 13) = *(a2 + 453);
        v137 = *(a2 + 440);
        v157 = *(a2 + 424);
        v158[0] = v137;
        v138 = *(a2 + 408);
        v155 = *v109;
        v156 = v138;
        v166 = v153;
        v167 = v154;
        *(v171 + 13) = *(v158 + 13);
        v170 = v157;
        v171[0] = v158[0];
        v168 = v155;
        v169 = v138;
        v139 = *v98;
        v140 = *(a1 + 376);
        *v196 = v139;
        v141 = *v106;
        v142 = *(a1 + 408);
        v143 = *(a1 + 424);
        v144 = *(a1 + 440);
        *&v196[93] = *(a1 + 453);
        *&v196[80] = v144;
        *&v196[64] = v143;
        *&v196[32] = v141;
        *&v196[48] = v142;
        *&v196[16] = v140;
        *&v196[24] = *(&v181 + 1);
        sub_10000BE14(&v180, &v159, &qword_101A00900);
        sub_10000BE14(&v186, &v159, &qword_101A00900);
        v150 = _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v196, &v166);
        sub_10000CAAC(&v153, &qword_101A00900);
        v159 = v178;
        v160 = v179;
        v161 = v105;
        v164 = v176;
        v165[0] = v177[0];
        *(v165 + 13) = *(v177 + 13);
        v162 = v174;
        v163 = v175;
        sub_10000CAAC(&v159, &qword_101A00900);
        if ((v150 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_83;
      }

      v166 = *v98;
      *&v167 = *(a1 + 376);
      *(&v167 + 1) = *(&v181 + 1);
      v132 = *(a1 + 440);
      v170 = *(a1 + 424);
      v171[0] = v132;
      *(v171 + 13) = *(a1 + 453);
      v133 = *(a1 + 408);
      v168 = *v106;
      v169 = v133;
      *(&v171[2] + 8) = *&v173[11];
      *(&v171[1] + 13) = *v173;
      *(&v171[3] + 1) = *(&v187 + 1);
      *(v172 + 13) = *(a2 + 453);
      v134 = *(a2 + 440);
      v171[6] = *(a2 + 424);
      v172[0] = v134;
      v135 = *(a2 + 408);
      v171[4] = *v109;
      v171[5] = v135;
      sub_10000BE14(&v180, v196, &qword_101A00900);
      sub_10000BE14(&v186, v196, &qword_101A00900);
      v69 = &qword_101A00908;
LABEL_43:
      v70 = &v166;
LABEL_44:
      sub_10000CAAC(v70, v69);
      return 0;
    }

    v67 = *(a1 + 152);
    v68 = *(a1 + 184);
    v168 = *(a1 + 168);
    v169 = v68;
    v170 = *(a1 + 200);
    v166 = *(a1 + 136);
    v167 = v67;
    *(&v171[2] + 2) = *&v196[32];
    *(&v171[3] + 2) = *&v196[48];
    *(&v171[4] + 2) = *&v196[64];
    *(v171 + 2) = *v196;
    LOWORD(v171[0]) = v193;
    *&v171[5] = *&v196[78];
    *(&v171[1] + 2) = *&v196[16];
    WORD4(v171[5]) = v195;
    sub_10000BE14(v192, &v186, &qword_101A00910);
    sub_10000BE14(v194, &v186, &qword_101A00910);
    v69 = &qword_101A00918;
    goto LABEL_43;
  }

  v31 = 0;
  if (v30 != 2 && ((v30 ^ v29) & 1) == 0)
  {
    goto LABEL_18;
  }

  return v31;
}

uint64_t sub_100B2BA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.Shape();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B2BA78()
{
  result = qword_101A11838;
  if (!qword_101A11838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11838);
  }

  return result;
}

unint64_t sub_100B2BACC()
{
  result = qword_101A11840;
  if (!qword_101A11840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11840);
  }

  return result;
}

unint64_t sub_100B2BB20()
{
  result = qword_101A11848;
  if (!qword_101A11848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11848);
  }

  return result;
}

unint64_t sub_100B2BB74()
{
  result = qword_101A11850;
  if (!qword_101A11850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11850);
  }

  return result;
}

unint64_t sub_100B2BBC8()
{
  result = qword_101A11860;
  if (!qword_101A11860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11860);
  }

  return result;
}

unint64_t sub_100B2BC1C()
{
  result = qword_101A11868;
  if (!qword_101A11868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11868);
  }

  return result;
}

unint64_t sub_100B2BC70()
{
  result = qword_101A11870;
  if (!qword_101A11870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11870);
  }

  return result;
}

uint64_t sub_100B2BCC4(uint64_t a1)
{
  result = sub_10003EAB0(&qword_101A11878, type metadata accessor for TSContentLanguage.Models.Shape);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B2BD1C(uint64_t a1)
{
  result = sub_10003EAB0(&qword_101A11420, type metadata accessor for TSContentLanguage.Models.Shape);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B2BD74(void *a1)
{
  a1[2] = sub_10003EAB0(&qword_101A11460, type metadata accessor for TSContentLanguage.Models.Shape);
  a1[3] = sub_10003EAB0(&qword_101A11488, type metadata accessor for TSContentLanguage.Models.Shape);
  result = sub_10003EAB0(&qword_101A11880, type metadata accessor for TSContentLanguage.Models.Shape);
  a1[4] = result;
  return result;
}

void sub_100B2BE48()
{
  sub_1005FEE9C(319, &qword_1019F5D48);
  if (v0 <= 0x3F)
  {
    sub_1005FEE9C(319, &qword_101A004F0);
    if (v1 <= 0x3F)
    {
      sub_1005FEE9C(319, &qword_1019F5D50);
      if (v2 <= 0x3F)
      {
        sub_1005FEE9C(319, &qword_101A004F8);
        if (v3 <= 0x3F)
        {
          sub_1005FEE9C(319, &qword_101A118F0);
          if (v4 <= 0x3F)
          {
            sub_1005FEE9C(319, &qword_101A118F8);
            if (v5 <= 0x3F)
            {
              sub_1005FEE9C(319, &qword_101A11900);
              if (v6 <= 0x3F)
              {
                sub_100B2BFE8();
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

void sub_100B2BFE8()
{
  if (!qword_101A11908)
  {
    type metadata accessor for TSContentLanguage.Models.Text();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A11908);
    }
  }
}

unint64_t sub_100B2C054()
{
  result = qword_101A11960;
  if (!qword_101A11960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11960);
  }

  return result;
}

unint64_t sub_100B2C0AC()
{
  result = qword_101A11968;
  if (!qword_101A11968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11968);
  }

  return result;
}

unint64_t sub_100B2C104()
{
  result = qword_101A11970;
  if (!qword_101A11970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11970);
  }

  return result;
}

unint64_t sub_100B2C158(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875A78, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B2C1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B2C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for CRLBoardCRDTData(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for UUID();
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6268);
  v4[16] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v4[17] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B2C3BC, 0, 0);
}

uint64_t sub_100B2C3BC()
{
  if (*(v0 + 72))
  {
    *(v0 + 152) = *sub_100020E58(*(v0 + 80), *(*(v0 + 80) + 24));
    type metadata accessor for MainActor();
    *(v0 + 160) = static MainActor.shared.getter();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100B2C588;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = *(v0 + 80);
    *(v0 + 168) = v13;
    *(v0 + 176) = v11;
    *(v0 + 184) = *sub_100020E58(v14, v14[3]);
    *(v0 + 192) = type metadata accessor for MainActor();
    *(v0 + 200) = static MainActor.shared.getter();
    *(v0 + 208) = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v16;
    *(v0 + 216) = v15;
    *(v0 + 224) = v16;
    v4 = sub_100B2C7C8;
    v5 = v15;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100B2C588()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];

  v7 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  (*(v4 + 56))(v2, 1, 1, v3);
  v8 = v7;
  v0[5] = sub_1007B196C(v6, v5, 0, v2, v8);
  v0[6] = v9;
  v10 = v0[18];

  sub_10000CAAC(v10, &unk_1019F52D0);

  return _swift_task_switch(sub_100B2C708, 0, 0);
}

uint64_t sub_100B2C708()
{
  v1 = v0[5];
  v2 = v0[10];
  v0[21] = v0[6];
  v0[22] = v1;
  v0[23] = *sub_100020E58(v2, v2[3]);
  v0[24] = type metadata accessor for MainActor();
  v0[25] = static MainActor.shared.getter();
  v0[26] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v4;
  v0[28] = v3;

  return _swift_task_switch(sub_100B2C7C8, v4, v3);
}

uint64_t sub_100B2C7C8()
{
  v1 = v0[23];
  v2 = static MainActor.shared.getter();
  v0[29] = v2;
  v3 = swift_task_alloc();
  v0[30] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_100B2C8CC;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001BLL, 0x800000010155F400, sub_1000875EC, v3, &type metadata for () + 8);
}

uint64_t sub_100B2C8CC()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_100B2CA2C, v3, v2);
}

uint64_t sub_100B2CA2C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B2CAB0, v1, v0);
}

uint64_t sub_100B2CAB0()
{

  return _swift_task_switch(sub_100B2CB18, 0, 0);
}

uint64_t sub_100B2CB18()
{
  v1 = *(v0 + 136);
  v2 = sub_100020E58(*(v0 + 80), *(*(v0 + 80) + 24));
  v3 = sub_1005B981C(&qword_1019F3480);
  (*(*(v3 - 8) + 56))(v1, 1, 5, v3);
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_100B2CC18;
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 136);

  return sub_100FF9238(v8, v6, v7, v4);
}

uint64_t sub_100B2CC18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  sub_10005111C(*(v3 + 136), type metadata accessor for CRLBoardLibraryViewModel.Filter);

  if (v1)
  {
    v5 = sub_100B2D06C;
  }

  else
  {
    v5 = sub_100B2CD84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B2CD84()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_100020E58(*(v0 + 80), *(*(v0 + 80) + 24));
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v6 + v7, v3);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10005111C(v3, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v1 + v5) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v4, v9, v10, v2);
  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_100B2CEFC;
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  return sub_100FF8924(v12, v13);
}

uint64_t sub_100B2CEFC()
{
  v2 = *v1;

  v3 = *(v2 + 120);
  if (v0)
  {

    sub_10005111C(v3, type metadata accessor for CRLBoardIdentifier);
    v4 = sub_100B2D2C0;
  }

  else
  {
    sub_10005111C(v3, type metadata accessor for CRLBoardIdentifier);
    v4 = sub_100B2D110;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B2D06C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B2D110()
{
  v1 = v0[16];
  v2 = type metadata accessor for CRLBoardEntity();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[33];
  if (v3 == 1)
  {
    sub_10000CAAC(v1, &qword_1019F6268);
    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.entityNotFound.getter();
    swift_willThrow();
  }

  else
  {
    v6 = v0[7];

    sub_100688FA0(v1, v6);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100B2D2C0()
{
  v1 = v0[16];
  v2 = type metadata accessor for CRLBoardEntity();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[33];
  sub_10000CAAC(v0[16], &qword_1019F6268);
  type metadata accessor for _PrebuiltAppIntentError();
  sub_1007D2540();
  swift_allocError();
  static _UnrecoverableError.entityNotFound.getter();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t *CRLAccessibilityUtil.Announcements.MoreOptionsShown.unsafeMutableAddressor()
{
  if (qword_1019F1D30 != -1)
  {
    swift_once();
  }

  return &static CRLAccessibilityUtil.Announcements.MoreOptionsShown;
}

uint64_t *CRLAccessibilityUtil.Announcements.FewerOptionsShown.unsafeMutableAddressor()
{
  if (qword_1019F1D38 != -1)
  {
    swift_once();
  }

  return &static CRLAccessibilityUtil.Announcements.FewerOptionsShown;
}

void sub_100B2D4B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static CRLAccessibilityUtil.Announcements.MoreOptionsShown = v4;
  unk_101AD74E0 = v6;
}

void sub_100B2D5AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static CRLAccessibilityUtil.Announcements.FewerOptionsShown = v4;
  unk_101AD74F0 = v6;
}

uint64_t sub_100B2D6A4(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

NSString sub_100B2D708()
{
  result = String._bridgeToObjectiveC()();
  static NSAttributedStringKey.crlaxLowPitch = result;
  return result;
}

uint64_t *NSAttributedStringKey.crlaxLowPitch.unsafeMutableAddressor()
{
  if (qword_1019F1D40 != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.crlaxLowPitch;
}

id static NSAttributedStringKey.crlaxLowPitch.getter()
{
  if (qword_1019F1D40 != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.crlaxLowPitch;

  return v1;
}

uint64_t sub_100B2D7F0(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_26;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024CBC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        result = sub_100024CBC((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  v13 = 0;
  v14 = *(v4 + 2);
LABEL_13:
  v15 = &v4[16 * v13 + 40];
  while (v14 != v13)
  {
    if (v13 >= *(v4 + 2))
    {
      goto LABEL_27;
    }

    ++v13;
    v17 = *(v15 - 1);
    v16 = *v15;
    v15 += 16;
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100034080(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100034080((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v17;
      v21[5] = v16;
      goto LABEL_13;
    }
  }

  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t _sSo15NSDateFormatterC8FreeformE37crlaxVoiceOverPronounceableTimeString3forSSSg10Foundation4DateV_tFZ_0()
{
  v0 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v0 - 8);
  v95 = &v94 - v1;
  v2 = type metadata accessor for Locale();
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin(v2);
  v96 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Calendar();
  v7 = *(v99 - 8);
  __chkstk_darwin(v99);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1005B981C(&qword_1019F5528);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v94 = xmmword_10146BDE0;
  *(v17 + 16) = xmmword_10146BDE0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for Calendar.Component.hour(_:), v13);
  v19(v18 + v15, enum case for Calendar.Component.minute(_:), v13);
  sub_10001644C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:)();

  (*(v100 + 8))(v6, v101);
  (*(v7 + 8))(v9, v99);
  v20 = DateComponents.hour.getter();
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v23 = DateComponents.minute.getter();
    if ((v24 & 1) == 0)
    {
      v26 = v23;
      v27 = objc_opt_self();
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() currentLocale];
      v30 = v96;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Locale._bridgeToObjectiveC()().super.isa;
      v32 = v97;
      v33 = v30;
      v34 = v98;
      (*(v97 + 8))(v33, v98);
      v35 = [v27 dateFormatFromTemplate:v28 options:0 locale:isa];

      if (v35)
      {
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v106 = v36;
        v107 = v38;
        v104 = 97;
        v105 = 0xE100000000000000;
        v39 = v95;
        (*(v32 + 56))(v95, 1, 1, v34);
        sub_100017CD8();
        StringProtocol.range<A>(of:options:range:locale:)();
        v41 = v40;
        sub_10098F88C(v39);
      }

      else
      {
        v41 = 1;
      }

      v42 = [objc_opt_self() mainBundle];
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = [v42 localizedStringForKey:v43 value:v44 table:0];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      if (v41)
      {
        if (!v26)
        {
          v101 = v12;
          v69 = objc_opt_self();
          v70 = [v69 mainBundle];
          v71 = String._bridgeToObjectiveC()();
          v72 = String._bridgeToObjectiveC()();
          v73 = [v70 localizedStringForKey:v71 value:v72 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          if (!v22)
          {

            v87 = [v69 mainBundle];
            v88 = String._bridgeToObjectiveC()();
            v89 = String._bridgeToObjectiveC()();
            v90 = [v87 localizedStringForKey:v88 value:v89 table:0];

            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_27:
            v12 = v101;
            goto LABEL_28;
          }

          v74 = [v69 mainBundle];
          v75 = String._bridgeToObjectiveC()();
          v76 = String._bridgeToObjectiveC()();
          v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v22 > 9)
          {

            v106 = v22;
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            v81 = v91;
          }

          else
          {
            sub_1005B981C(&qword_1019F54E0);
            v78 = swift_allocObject();
            *(v78 + 16) = xmmword_10146C6B0;
            *(v78 + 56) = &type metadata for Int;
            *(v78 + 64) = &protocol witness table for Int;
            *(v78 + 32) = v22;
            v79 = static String.localizedStringWithFormat(_:_:)();
            v81 = v80;
          }

          sub_1005B981C(&qword_1019F54E0);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_10146C6B0;
          *(v92 + 56) = &type metadata for String;
          *(v92 + 64) = sub_1000053B0();
          *(v92 + 32) = v79;
          *(v92 + 40) = v81;
          v25 = static String.localizedStringWithFormat(_:_:)();

LABEL_26:

          goto LABEL_27;
        }

        v100 = v46;
        v49 = 1;
      }

      else
      {
        if (v22 % 12)
        {
          v22 %= 12;
        }

        else
        {
          v22 = 12;
        }

        if (!v26)
        {
          v82 = [objc_opt_self() mainBundle];
          v83 = String._bridgeToObjectiveC()();
          v84 = String._bridgeToObjectiveC()();
          v85 = [v82 localizedStringForKey:v83 value:v84 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1005B981C(&qword_1019F54E0);
          v86 = swift_allocObject();
          *(v86 + 16) = v94;
          *(v86 + 56) = &type metadata for Int;
          *(v86 + 64) = &protocol witness table for Int;
          *(v86 + 32) = v22;
          *(v86 + 96) = &type metadata for String;
          *(v86 + 104) = sub_1000053B0();
          *(v86 + 72) = v46;
          *(v86 + 80) = v48;
          v25 = static String.localizedStringWithFormat(_:_:)();

          goto LABEL_28;
        }

        v100 = v46;
        v49 = 0;
      }

      v101 = v12;
      v106 = v22;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      sub_1005B981C(&qword_1019F54E0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10146C6B0;
      *(v53 + 56) = &type metadata for Int;
      *(v53 + 64) = &protocol witness table for Int;
      *(v53 + 32) = v26;
      v54 = String.init(format:_:)();
      v56 = v55;
      if (v49)
      {

        v57 = [objc_opt_self() mainBundle];
        v58 = String._bridgeToObjectiveC()();
        v59 = String._bridgeToObjectiveC()();
        v60 = [v57 localizedStringForKey:v58 value:v59 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = swift_allocObject();
        *(v61 + 16) = v94;
        *(v61 + 56) = &type metadata for String;
        v62 = sub_1000053B0();
        *(v61 + 32) = v50;
        *(v61 + 40) = v52;
        *(v61 + 96) = &type metadata for String;
        *(v61 + 104) = v62;
        *(v61 + 64) = v62;
        *(v61 + 72) = v54;
        *(v61 + 80) = v56;
      }

      else
      {
        v63 = [objc_opt_self() mainBundle];
        v64 = String._bridgeToObjectiveC()();
        v65 = String._bridgeToObjectiveC()();
        v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_10146C4D0;
        *(v67 + 56) = &type metadata for String;
        v68 = sub_1000053B0();
        *(v67 + 32) = v50;
        *(v67 + 40) = v52;
        *(v67 + 96) = &type metadata for String;
        *(v67 + 104) = v68;
        *(v67 + 64) = v68;
        *(v67 + 72) = v54;
        *(v67 + 80) = v56;
        *(v67 + 136) = &type metadata for String;
        *(v67 + 144) = v68;
        *(v67 + 112) = v100;
        *(v67 + 120) = v48;
      }

      v25 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_26;
    }
  }

  v25 = 0;
LABEL_28:
  (*(v102 + 8))(v12, v103);
  return v25;
}

uint64_t sub_100B2E7DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

char *sub_100B2E8BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  *&v6[OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_strokeWidthLabel] = 0;
  v12 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterStrokeDataProvider());
  v13 = &v12[OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState];
  *v13 = 0;
  v13[8] = 1;
  *&v12[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a5;
  v14 = type metadata accessor for CRLMiniFormatterDataProvider();
  v37.receiver = v12;
  v37.super_class = v14;
  v15 = a5;
  *&v6[OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_dataProvider] = objc_msgSendSuper2(&v37, "init");
  v16 = &v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = &v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v17 = 0;
  v17[1] = 0;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a4;
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v15;
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a6;
  v18 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v18[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v15;
  v36.receiver = v18;
  v36.super_class = v14;
  v19 = v15;
  v20 = a4;
  v21 = a6;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  swift_unknownObjectRetain();
  *&v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v36, "init");
  v25 = [v23 crlaxLabel];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *v17 = v27;
  v17[1] = v29;

  v35.receiver = v6;
  v35.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v30 = objc_msgSendSuper2(&v35, "init");
  swift_unknownObjectRelease();

  v31 = *&v30[OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_dataProvider];
  v32 = v30;
  v33 = v31;
  sub_100A07740();

  swift_unknownObjectRelease();
  return v32;
}

id sub_100B2EB5C()
{
  v0 = sub_100A07960();
  if (v0 != 1)
  {
    v2 = v1;
    sub_1000505D0(v0);
    if (v2)
    {
      v3 = String._bridgeToObjectiveC()();
      v4 = [objc_opt_self() imageNamed:v3];

      if (v4)
      {
        v5 = [objc_opt_self() labelColor];
        v6 = [v4 imageWithTintColor:v5];
      }

      else
      {
        v6 = 0;
      }

      v23 = [objc_opt_self() mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v23 localizedStringForKey:v24 value:v25 table:0];
      goto LABEL_16;
    }
  }

  sub_100A07D44();
  if (v7 < 2)
  {
LABEL_13:
    v20 = [objc_opt_self() mainScreen];
    v21 = [v20 traitCollection];

    [v21 crl_isUserInterfaceStyleDark];
    v22 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() imageNamed:v22];

    v23 = [objc_opt_self() mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];
LABEL_16:
    v10 = v26;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_22;
  }

  v8 = v7;
  v9 = [v7 UIColor];
  if (!v9)
  {
    sub_1000505D0(v8);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 imageNamed:v11];

  if (v13)
  {
    v6 = [v13 imageWithTintColor:v10];

    if (v6)
    {
      v14 = v6;
      if (sub_100C9CFE8())
      {
        v15 = [objc_opt_self() mainScreen];
        v16 = [v15 traitCollection];

        [v16 crl_isUserInterfaceStyleDark];
        v17 = String._bridgeToObjectiveC()();
        v18 = [v12 imageNamed:v17];

        if (v18)
        {
          v19 = v18;
          v6 = sub_100BE612C(v14);
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v27 = [objc_opt_self() mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10146C6B0;
  v32 = [v10 accessibilityName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000053B0();
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  static String.localizedStringWithFormat(_:_:)();
  sub_1000505D0(v8);

LABEL_22:

  sub_100006370(0, &qword_1019F6190);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = 0;
  v44 = 0;
  v46 = sub_1005D928C;
  v47 = v36;
  v45 = 0;
  v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v38 = sub_1005D10E8(v37, 0, v6, 0);

  if (v6)
  {
    v39 = [(UIImage *)v6 crl_imageWithAlpha:0 renderingMode:0.4, 0, 0, 0, sub_1005D928C, v47];
  }

  else
  {
    v39 = 0;
  }

  [v38 setImage:v39 forState:{1, v43, v44, v45, v46, v47}];
  [v38 setImage:v6 forState:0];
  v40 = v38;
  v41 = String._bridgeToObjectiveC()();

  [v40 setAccessibilityValue:v41];

  return v40;
}

id sub_100B2F294()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101465920;
  *(v0 + 32) = sub_100B2F410();
  v1 = sub_100A07960();
  if (v1 != 1)
  {
    if (v1)
    {
      sub_1000505D0(v1);
      sub_100B30D3C();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000505D0(0);
    }
  }

  v2 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setAxis:1];
  [v4 setSpacing:12.0];
  return v4;
}

uint64_t sub_100B2F410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1005B981C(&unk_1019F4CF0);
  __chkstk_darwin(v3 - 8);
  v47 = &v39 - v4;
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_dataProvider];
  v10 = sub_100A07960();
  if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_100A07944();
  v42 = v9;
  v43 = v11;
  if (v12 == 1 || (v14 = v13, v12, (v14 & 1) == 0))
  {
    sub_100B30438(v11);
    IndexSet.init(integer:)();
  }

  else
  {
    IndexSet.init()();
  }

  v15 = sub_100B2FA24();
  v48 = v16;
  v46 = swift_allocObject();
  *(v46 + 16) = v1;
  v17 = *(v6 + 16);
  v18 = v47;
  v44 = v8;
  v17(v47, v8, v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v50 = 1;
  v19 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_32:
    v38 = v1;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_33:
      sub_100006370(0, &qword_1019F6D00);

      _bridgeCocoaArray<A>(_:)();

LABEL_23:

      v26 = objc_allocWithZone(UIStackView);
      sub_100006370(0, &qword_1019F6D00);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v28 = [v26 initWithArrangedSubviews:isa];

      [v28 setAxis:0];
      [v28 setAlignment:0];
      [v28 setDistribution:1];
      [v28 setSpacing:1.0];
      v29 = v28;
      v30 = [v29 heightAnchor];
      v31 = [v30 constraintGreaterThanOrEqualToConstant:34.0];

      [v31 setActive:1];
      v32 = [v29 heightAnchor];

      v33 = [v32 constraintGreaterThanOrEqualToConstant:34.0];
      [v33 setActive:1];

      sub_1000505D0(v50);

      sub_10000CAAC(v47, &unk_1019F4CF0);
      v34 = sub_100A07960();
      if (v34)
      {
        v36 = v43;
        v35 = v44;
        if (v34 != 1)
        {
          v37 = v34;

          sub_1000505D0(v37);
LABEL_28:
          (*(v6 + 8))(v35, v5);
          return v29;
        }
      }

      else
      {
        sub_1000505D0(0);
        v36 = v43;
        v35 = v44;
      }

      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v29);

      goto LABEL_28;
    }

LABEL_22:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00);
    goto LABEL_23;
  }

LABEL_31:
  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_32;
  }

LABEL_10:
  v49 = _swiftEmptyArrayStorage;
  v1 = v1;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v40 = v6;
    v41 = v5;
    v45 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v19)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v6 = v15 & 0xC000000000000001;
    v5 = v22 & ~(v22 >> 63);
    do
    {
      if (v5 == v23)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v6)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v45 + 16))
        {
          goto LABEL_30;
        }

        v24 = *(v15 + 8 * v23 + 32);
      }

      v25 = v24;
      sub_1005D2FA4(v23, v24, v15, v47, &v50, v1, 0, sub_100B32088, v46, 0, v48, ObjectType);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v49 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v23;
    }

    while (v20 != v23);

    v6 = v40;
    v5 = v41;
    if (v49 >> 62)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void *sub_100B2FA24()
{
  v0 = _swiftEmptyArrayStorage;
  if ((sub_100A08580() & 1) == 0)
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = [objc_opt_self() imageNamed:v1];

    if (v2)
    {
      v3 = v2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = [objc_opt_self() mainBundle];
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v0 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = *(v0 + 2);
      v11 = *(v0 + 3);
      if (v12 >= v11 >> 1)
      {
        v0 = sub_100024CBC((v11 > 1), v12 + 1, 1, v0);
      }

      *(v0 + 2) = v12 + 1;
      v13 = &v0[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    else
    {
      v0 = _swiftEmptyArrayStorage;
    }
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 imageNamed:v14];

  if (v16)
  {
    v17 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100024CBC(0, *(v0 + 2) + 1, 1, v0);
    }

    v26 = *(v0 + 2);
    v25 = *(v0 + 3);
    if (v26 >= v25 >> 1)
    {
      v0 = sub_100024CBC((v25 > 1), v26 + 1, 1, v0);
    }

    *(v0 + 2) = v26 + 1;
    v27 = &v0[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = [v15 imageNamed:v28];

  if (v29)
  {
    v30 = v29;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = [objc_opt_self() mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100024CBC(0, *(v0 + 2) + 1, 1, v0);
    }

    v39 = *(v0 + 2);
    v38 = *(v0 + 3);
    if (v39 >= v38 >> 1)
    {
      v0 = sub_100024CBC((v38 > 1), v39 + 1, 1, v0);
    }

    *(v0 + 2) = v39 + 1;
    v40 = &v0[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v37;
  }

  v41 = String._bridgeToObjectiveC()();
  v42 = [v15 imageNamed:v41];

  if (v42)
  {
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v44 = [objc_opt_self() mainBundle];
    v45 = String._bridgeToObjectiveC()();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100024CBC(0, *(v0 + 2) + 1, 1, v0);
    }

    v52 = *(v0 + 2);
    v51 = *(v0 + 3);
    if (v52 >= v51 >> 1)
    {
      v0 = sub_100024CBC((v51 > 1), v52 + 1, 1, v0);
    }

    *(v0 + 2) = v52 + 1;
    v53 = &v0[16 * v52];
    *(v53 + 4) = v48;
    *(v53 + 5) = v50;
  }

  v54 = String._bridgeToObjectiveC()();
  v55 = [v15 imageNamed:v54];

  if (v55)
  {
    v56 = v55;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v57 = [objc_opt_self() mainBundle];
    v58 = String._bridgeToObjectiveC()();
    v59 = String._bridgeToObjectiveC()();
    v60 = [v57 localizedStringForKey:v58 value:v59 table:0];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100024CBC(0, *(v0 + 2) + 1, 1, v0);
    }

    v65 = *(v0 + 2);
    v64 = *(v0 + 3);
    if (v65 >= v64 >> 1)
    {
      v0 = sub_100024CBC((v64 > 1), v65 + 1, 1, v0);
    }

    *(v0 + 2) = v65 + 1;
    v66 = &v0[16 * v65];
    *(v66 + 4) = v61;
    *(v66 + 5) = v63;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100B30334(uint64_t a1)
{
  result = sub_100A08580();
  if ((result & 1) != 0 && __OFADD__(a1++, 1))
  {
    __break(1u);
    return result;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v4 = [objc_opt_self() solidPattern];
    }

    else
    {
      result = 0;
      if (a1 != 2)
      {
        return result;
      }

      v4 = [objc_opt_self() roundDashPattern];
    }

    return v4;
  }

  if (a1 == 3)
  {
    v4 = [objc_opt_self() shortDashPattern];
    return v4;
  }

  result = 0;
  if (a1 == 4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return 0;
  }

  return result;
}

void *sub_100B30438(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v3 = v1;
    v4 = v3;
    if (v2)
    {
      v5 = v3;
      v6 = [v2 strokeName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {

        v13 = 4;
        goto LABEL_17;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        v13 = 4;
LABEL_17:
        v22 = sub_100A08580();

        return (v13 - (v22 & 1));
      }
    }

    v14 = [v4 pattern];
    sub_100006370(0, &qword_1019F54D0);
    v15 = objc_opt_self();
    v16 = [v15 solidPattern];
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {

      v13 = 1;
    }

    else
    {
      v18 = [v15 roundDashPattern];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        v13 = 2;
      }

      else
      {
        v20 = [v15 shortDashPattern];
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          v13 = 3;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    goto LABEL_17;
  }

  return result;
}

void sub_100B30674()
{
  v1 = sub_100B30868();
  if (v2)
  {
    return;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_dataProvider);
  v5 = sub_100A07960();
  if (v5)
  {
    if (v5 != 1)
    {
      sub_1000505D0(v5);
    }
  }

  else
  {
    v6 = sub_100A07844();
    if (v6)
    {
      v7 = v6;
      v19 = [v6 color];
      [v7 width];
      v9 = v8;

      v10 = 0;
      v11 = v9;
      goto LABEL_8;
    }
  }

  v11 = 0;
  v19 = 0;
  v10 = 1;
LABEL_8:
  v12 = sub_100B30334(v3);
  v15 = v14;
  if (v12)
  {
    v16 = v12;
    sub_100A072F0(v16, v11, v10, v19);

LABEL_12:

    return;
  }

  if (v14)
  {
    v17 = v13;

    sub_100A074E0(v17, v15, v11, v10, v19);
    swift_bridgeObjectRelease_n();
    goto LABEL_12;
  }

  if ([*(v4 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController) mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor])
  {
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (v18)
    {
      [v18 applyStroke:0];
    }

    swift_unknownObjectRelease();
  }

  sub_100A07740();
}

uint64_t sub_100B30868()
{
  v1 = type metadata accessor for IndexSet.Index();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A0F910);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - v11;
  (*(v6 + 16))(v8, v0, v5, v10);
  sub_100B32040(&unk_101A11A60, &type metadata accessor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_100B32040(&qword_101A0F918, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  v13 = sub_100B32040(&qword_101A11A70, &type metadata accessor for IndexSet.Index);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v2 + 8;
  v30 = *(v2 + 8);
  v30(v4, v1);
  v16 = 0;
  v29[1] = v14;
  if ((v14 & 1) == 0)
  {
    v18 = dispatch thunk of Collection.subscript.read();
    v16 = *v19;
    v18(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    while (1)
    {
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30(v4, v1);
      if (v20)
      {
        break;
      }

      v21 = v12;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v4;
      v24 = v1;
      v25 = v13;
      v26 = v15;
      v28 = *v27;
      v22(v31, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (v28 < v16)
      {
        v16 = v28;
      }

      v15 = v26;
      v13 = v25;
      v1 = v24;
      v4 = v23;
      v12 = v21;
      dispatch thunk of Collection.endIndex.getter();
    }
  }

  sub_10000CAAC(v12, &qword_101A0F910);
  return v16;
}

id sub_100B30D3C()
{
  sub_100A07D44();
  if (v0 < 2)
  {
    v6 = 0;
  }

  else
  {
    v2 = v1;
    v3 = v0;
    sub_100A08580();
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 localizedStringForKey:v5 value:v7 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v2)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [objc_opt_self() imageNamed:v12];

      v6 = sub_1005D1DAC(0, v13, v9, v11, 2, 71.0);
      sub_1000505D0(v3);
    }

    else
    {
      v14 = [v3 UIColor];
      v6 = sub_1005D1DAC(v14, 0, v9, v11, 2, 71.0);

      sub_1000505D0(v3);
    }
  }

  v15 = sub_100B31150();
  v16 = sub_100B3156C();
  sub_1005B981C(&unk_1019F4D60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10146CE00;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  v29 = v17;
  if (v6)
  {
    v18 = v15;
    v19 = v16;
    v20 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v21 = v15;
    v22 = v16;
    v20 = 0;
  }

  v23 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 initWithArrangedSubviews:isa];

  [v25 setAxis:0];
  [v25 setAlignment:0];
  [v25 setDistribution:0];
  [v25 setSpacing:12.0];
  v26 = [v25 heightAnchor];
  v27 = [v26 constraintGreaterThanOrEqualToConstant:34.0];

  [v27 setActive:1];
  return v25;
}

id sub_100B31150()
{
  v1 = v0;
  sub_100A0816C();
  v3 = v2;
  sub_100B313EC();
  v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = v7;
  if ((v3 & 0x100) != 0)
  {
    v9 = [v7 fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits:1];

    if (v10)
    {
      [v8 pointSize];
      v11 = [v6 fontWithDescriptor:v10 size:?];
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
  }

  [v4 setFont:v8];

  [v4 setTextAlignment:2];
  v12 = v4;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v12 widthAnchor];
  v14 = [v13 constraintEqualToConstant:71.0];

  [v14 setActive:1];
  v15 = v12;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v17 = 0;
  if (!IsVoiceOverRunning)
  {
    v17 = !UIAccessibilityIsSwitchControlRunning();
  }

  [v15 setIsAccessibilityElement:v17];

  [v15 setNumberOfLines:0];
  [v15 setAdjustsFontForContentSizeCategory:1];
  [v15 setShowsLargeContentViewer:1];

  v18 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_strokeWidthLabel);
  *(v1 + OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_strokeWidthLabel) = v15;
  v19 = v15;

  return v19;
}

uint64_t sub_100B313EC()
{
  sub_100A0816C();
  v1 = v0;
  v3 = v2;
  v4 = (v2 & 0xFF00) == 512;
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  *(v9 + 56) = &type metadata for CGFloat;
  *(v9 + 64) = sub_100B31FEC();
  v10 = v1;
  if ((v4 | v3))
  {
    v10 = 0.0;
  }

  *(v9 + 32) = v10;
  v11 = static String.localizedStringWithFormat(_:_:)();

  return v11;
}

id sub_100B3156C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CRLStepper) init];
  [v2 setMinValue:1.0];
  [v2 setMaxValue:100.0];
  [v2 setIncrement:1.0];
  sub_100A0816C();
  v5 = v4;
  if (((v3 & 0xFF00) == 512) | v3 & 1)
  {
    v5 = 1.0;
  }

  [v2 setCurrentValue:v5];
  [v2 setContinuous:1];
  v6 = v2;
  v7 = [v6 layer];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  [v7 setCornerRadius:*&qword_101AD5E10];

  v8 = [v6 layer];
  [v8 setCornerCurve:kCACornerCurveContinuous];

  [v6 addTarget:v1 action:"stepperValueDidChange:" forControlEvents:4096];
  [v6 addTarget:v1 action:"interactionStarted:" forControlEvents:1];
  [v6 addTarget:v1 action:"interactionEnded:" forControlEvents:64];
  v9 = sub_1005D5340();
  [v6 setCrlaxPreferredViewControllerForLargeContent:v9];

  return v6;
}

void sub_100B31770(void *a1)
{
  if (a1)
  {
    v6 = a1;
    [v6 currentValue];
    sub_100A07184(v2);
    v3 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_strokeWidthLabel);
    if (v3)
    {
      v4 = v3;
      sub_100B313EC();
      v5 = String._bridgeToObjectiveC()();

      [v4 setText:v5];
    }
  }
}

void *sub_100B319C8()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_10068AFC0();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v3 = v2;
    }

    sub_10063F990(v3);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100B31AB0(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, &v20);
  type metadata accessor for CRLShapeItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = v19;
  v5 = sub_10068AFC0();
  if (!v5 || (v6 = v5, v20 = v19, __chkstk_darwin(v5), v18[2] = &v20, v7 = sub_100C33540(sub_100613380, v18, v6), , (v7 & 1) == 0))
  {

LABEL_10:
    v16 = sub_1005D518C(a1, a2);
    return v16 & 1;
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v9 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v10 = v8;
  swift_beginAccess();
  v11 = *&v8[v9];
  if (*(v11 + 16) && (v12 = sub_1007CF108(), (v13 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 32 * v12;

    sub_100601584(v15, &v20);

    sub_10000CAAC(&v20, &unk_1019F4D50);
    v16 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    sub_10000CAAC(&v20, &unk_1019F4D50);

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100B31CDC(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, &v20);
  type metadata accessor for CRLShapeItem();
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  v4 = v19;
  v5 = sub_10068AFC0();
  if (!v5 || (v6 = v5, v20 = v19, __chkstk_darwin(v5), v18[2] = &v20, v7 = sub_100C33540(sub_100612848, v18, v6), , (v7 & 1) == 0))
  {

LABEL_10:
    v16 = sub_1005D518C(a1, a2);
    return v16 & 1;
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v9 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v10 = v8;
  swift_beginAccess();
  v11 = *&v8[v9];
  if (*(v11 + 16) && (v12 = sub_1007CF108(), (v13 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10000CAAC(&v20, &unk_1019F4D50), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 32 * v12;

    sub_100601584(v15, &v20);

    sub_10000CAAC(&v20, &unk_1019F4D50);
    v16 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    sub_10000CAAC(&v20, &unk_1019F4D50);

    v16 = 0;
  }

  return v16 & 1;
}

void sub_100B31F08()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLiOSMiniFormatterStrokeBuilder_strokeWidthLabel);
}

id sub_100B31F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterStrokeBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100B31FEC()
{
  result = qword_101A11A50;
  if (!qword_101A11A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11A50);
  }

  return result;
}

uint64_t sub_100B32040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B320AC()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v1 + 16);
    v6 = swift_getObjectType();
    (*(v5 + 120))(v6, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100B3216C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCRValue();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v7;
  v8 = sub_1005B981C(&qword_101A04C30);
  v9 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = (&v45 - v11);
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + 8 * v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = sub_1005B981C(&qword_101A04C38);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_10003DFF8(v30, v48, &qword_101A04C30);
    v32 = sub_1005B981C(&qword_101A04C38);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, v31 + v35, v4);
    v37 = sub_1007C7EC0(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_100B3D3F8(&qword_101A11B78, &type metadata accessor for AnyCRValue);
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = sub_1005B981C(&qword_101A04C38);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
LABEL_72:
    *&result = 0.0;
    return result;
  }

  v3 = 0;
  v45 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v46 = (v4 + 63) >> 6;
  v47 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v49 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v2 + 56) + 40 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);

    v20 = v16;
    v21 = v16;
    v22 = v18;
    sub_10067F098(v15, v21, v17, v18, v19);
    v23 = sub_10000BE7C(v12, v13);
    LOBYTE(v18) = v24;

    if ((v18 & 1) == 0)
    {
LABEL_71:
      sub_10067F114(v15, v20, v17, v22, v19);
      goto LABEL_72;
    }

    v25 = *(a2 + 56) + 40 * v23;
    result = *v25;
    v26 = *(v25 + 8);
    v27 = *(v25 + 32);
    v28 = v27 >> 5;
    if (v27 >> 5 > 3)
    {
      if (v27 >> 5 > 5)
      {
        if (v28 == 6)
        {
          if ((v19 & 0xE0) != 0xC0)
          {
            goto LABEL_71;
          }

          if (result == v15 && v26 == v20)
          {
            goto LABEL_69;
          }

LABEL_67:
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
          *&result = COERCE_DOUBLE(sub_10067F114(v15, v20, v17, v22, v19));
          v2 = v47;
          v6 = v49;
          if ((v41 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v19 < 0xE0 || (v20 | v15 | v17 | v22) != 0)
          {
            goto LABEL_71;
          }

          v2 = v47;
          v6 = v49;
          if (v19 != 224)
          {
            goto LABEL_71;
          }
        }
      }

      else if (v28 == 4)
      {
        v2 = v47;
        v6 = v49;
        if ((v19 & 0xE0) != 0x80)
        {
          goto LABEL_71;
        }

        if (*&result != *&v15)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v2 = v47;
        v6 = v49;
        if ((v19 & 0xE0) != 0xA0)
        {
          goto LABEL_71;
        }

        if ((result ^ v15))
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v29 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v27 >> 5 > 1)
      {
        if (v28 == 2)
        {
          if ((v19 & 0xE0) != 0x40)
          {
            goto LABEL_71;
          }

          v43 = *(v25 + 16);
          v44 = *(v25 + 24);
          v31 = *v25;

          v33 = sub_100672778(v32, v15);
          goto LABEL_40;
        }

        v2 = v47;
        v6 = v49;
        if ((v19 & 0xE0) != 0x60)
        {
          goto LABEL_71;
        }

        if (result != v15)
        {
          goto LABEL_72;
        }
      }

      else if (v28)
      {
        if ((v19 & 0xE0) != 0x20)
        {
          goto LABEL_71;
        }

        v43 = *(v25 + 16);
        v44 = *(v25 + 24);
        v31 = *v25;

        v33 = _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV23__derived_struct_equalsySbAG_AGtFZ_0(v35, v15);
LABEL_40:
        v42 = v33;
        sub_10067F114(v15, v20, v17, v22, v19);
        *&result = COERCE_DOUBLE(sub_10067F114(*&v31, v26, v43, v44, v27));
        v2 = v47;
        v6 = v49;
        if ((v42 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v19 >= 0x20)
        {
          goto LABEL_71;
        }

        if (v27)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_71;
          }

          if (!v26)
          {
            if (v20)
            {
              goto LABEL_71;
            }

            goto LABEL_63;
          }

          if (!v20)
          {
            goto LABEL_71;
          }
        }

        else if (v19)
        {
          goto LABEL_71;
        }

        if (result != v15 || v26 != v20)
        {
          v38 = *(v25 + 16);
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v29 = v38;
          if ((v39 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

LABEL_63:
        if (v29 != v17 || v30 != v22)
        {
          goto LABEL_67;
        }

LABEL_69:
        *&result = COERCE_DOUBLE(sub_10067F114(v15, v20, v17, v22, v19));
        v2 = v47;
        v6 = v49;
      }
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v46)
    {
      return 1;
    }

    v9 = *(v45 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v49 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B32A64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_14:
    v14 = v11 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v3 + 56) + 8 * v14);
    v10 = v16 == 0;

    if (!v16)
    {
      return v10;
    }

    v19 = v3;
    v20 = sub_10000BE7C(v17, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(*(a2 + 56) + 8 * v20);
    if (v23 == 2)
    {
      v3 = v19;
      v10 = 0;
      if (v18 != 2)
      {
        return v10;
      }
    }

    else
    {
      if (v18 == 2 || ((v23 ^ v18) & 1) != 0)
      {
        return 0;
      }

      v3 = v19;
      v26 = ((v18 & 0x100) == 0) != ((v23 >> 8) & 1) && ((v18 & 0x10000) == 0) != ((v23 >> 16) & 1) && ((v18 & 0x1000000) == 0) != ((v23 >> 24) & 1) && *(&v23 + 1) == *(&v18 + 1);
      v10 = 0;
      if (!v26)
      {
        return v10;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B32C4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10000BE7C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B32DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolder();
  v67 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v56 - v8;
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  v62 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v56 - v12;
  v13 = sub_1005B981C(&qword_101A11B38);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = a1;
  v60 = v7;
  v20 = 0;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v57 = (v24 + 63) >> 6;
  v58 = v22;
  v27 = &unk_101A11B40;
  v28 = &unk_101498230;
  v65 = &v56 - v18;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v30 = (v26 - 1) & v26;
    v31 = v29 | (v20 << 6);
LABEL_16:
    v36 = v59;
    v37 = v61;
    sub_100B3D440(*(v59 + 48) + *(v62 + 72) * v31, v61, type metadata accessor for CRLFolderIdentifier);
    v38 = v66;
    sub_100B3D440(*(v36 + 56) + *(v67 + 72) * v31, v66, type metadata accessor for CRLFolder);
    v39 = sub_1005B981C(v27);
    v40 = *(v39 + 48);
    sub_100B3D4A8(v37, v16, type metadata accessor for CRLFolderIdentifier);
    sub_100B3D4A8(v38, &v16[v40], type metadata accessor for CRLFolder);
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    v19 = v65;
LABEL_17:
    sub_10003DFF8(v16, v19, &qword_101A11B38);
    v41 = sub_1005B981C(v27);
    v42 = (*(*(v41 - 8) + 48))(v19, 1, v41);
    v64 = v42 == 1;
    if (v42 == 1)
    {
      return v64;
    }

    v43 = v30;
    v44 = v28;
    v45 = v27;
    v46 = v16;
    v47 = *(v41 + 48);
    v48 = v63;
    sub_100B3D4A8(v19, v63, type metadata accessor for CRLFolderIdentifier);
    v49 = &v19[v47];
    v50 = v60;
    sub_100B3D4A8(v49, v60, type metadata accessor for CRLFolder);
    v51 = sub_1007C88C4(v48);
    LOBYTE(v47) = v52;
    sub_100025F08(v48, type metadata accessor for CRLFolderIdentifier);
    if ((v47 & 1) == 0)
    {
      sub_100025F08(v50, type metadata accessor for CRLFolder);
      return 0;
    }

    v53 = v66;
    sub_100B3D440(*(a2 + 56) + *(v67 + 72) * v51, v66, type metadata accessor for CRLFolder);
    v54 = sub_100696024(v53, v50);
    sub_100025F08(v53, type metadata accessor for CRLFolder);
    result = sub_100025F08(v50, type metadata accessor for CRLFolder);
    v16 = v46;
    v19 = v65;
    v27 = v45;
    v28 = v44;
    v26 = v43;
    if (!v54)
    {
      return v64;
    }
  }

  if (v57 <= v20 + 1)
  {
    v32 = v20 + 1;
  }

  else
  {
    v32 = v57;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v34 >= v57)
    {
      v55 = sub_1005B981C(v27);
      (*(*(v55 - 8) + 56))(v16, 1, 1, v55);
      v30 = 0;
      v20 = v33;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v20;
    if (v35)
    {
      v30 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v20 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B33390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v67 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v56 - v8;
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  v62 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v56 - v12;
  v13 = sub_1005B981C(&qword_101A11B28);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = a1;
  v60 = v7;
  v20 = 0;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v57 = (v24 + 63) >> 6;
  v58 = v22;
  v27 = &unk_101A11B30;
  v28 = &unk_101498220;
  v65 = &v56 - v18;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v30 = (v26 - 1) & v26;
    v31 = v29 | (v20 << 6);
LABEL_16:
    v36 = v59;
    v37 = v61;
    sub_100B3D440(*(v59 + 48) + *(v62 + 72) * v31, v61, type metadata accessor for CRLFolderIdentifier);
    v38 = v66;
    sub_100B3D440(*(v36 + 56) + *(v67 + 72) * v31, v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v39 = sub_1005B981C(v27);
    v40 = *(v39 + 48);
    sub_100B3D4A8(v37, v16, type metadata accessor for CRLFolderIdentifier);
    sub_100B3D4A8(v38, &v16[v40], type metadata accessor for CRLBoardLibraryViewModel.Folder);
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    v19 = v65;
LABEL_17:
    sub_10003DFF8(v16, v19, &qword_101A11B28);
    v41 = sub_1005B981C(v27);
    v42 = (*(*(v41 - 8) + 48))(v19, 1, v41);
    v64 = v42 == 1;
    if (v42 == 1)
    {
      return v64;
    }

    v43 = v30;
    v44 = v28;
    v45 = v27;
    v46 = v16;
    v47 = *(v41 + 48);
    v48 = v63;
    sub_100B3D4A8(v19, v63, type metadata accessor for CRLFolderIdentifier);
    v49 = &v19[v47];
    v50 = v60;
    sub_100B3D4A8(v49, v60, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v51 = sub_1007C88C4(v48);
    LOBYTE(v47) = v52;
    sub_100025F08(v48, type metadata accessor for CRLFolderIdentifier);
    if ((v47 & 1) == 0)
    {
      sub_100025F08(v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return 0;
    }

    v53 = v66;
    sub_100B3D440(*(a2 + 56) + *(v67 + 72) * v51, v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v54 = sub_100F92694(v53, v50);
    sub_100025F08(v53, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    result = sub_100025F08(v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v16 = v46;
    v19 = v65;
    v27 = v45;
    v28 = v44;
    v26 = v43;
    if (!v54)
    {
      return v64;
    }
  }

  if (v57 <= v20 + 1)
  {
    v32 = v20 + 1;
  }

  else
  {
    v32 = v57;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v34 >= v57)
    {
      v55 = sub_1005B981C(v27);
      (*(*(v55 - 8) + 56))(v16, 1, 1, v55);
      v30 = 0;
      v20 = v33;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v20;
    if (v35)
    {
      v30 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v20 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B33930(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  v67 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v56 - v8;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v62 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v56 - v12;
  v13 = sub_1005B981C(&qword_101A11B18);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = a1;
  v60 = v7;
  v20 = 0;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v57 = (v24 + 63) >> 6;
  v58 = v22;
  v27 = &unk_101A11B20;
  v28 = &unk_101498210;
  v65 = &v56 - v18;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v30 = (v26 - 1) & v26;
    v31 = v29 | (v20 << 6);
LABEL_16:
    v36 = v59;
    v37 = v61;
    sub_100B3D440(*(v59 + 48) + *(v62 + 72) * v31, v61, type metadata accessor for CRLBoardIdentifier);
    v38 = v66;
    sub_100B3D440(*(v36 + 56) + *(v67 + 72) * v31, v66, _s5BoardVMa);
    v39 = sub_1005B981C(v27);
    v40 = *(v39 + 48);
    sub_100B3D4A8(v37, v16, type metadata accessor for CRLBoardIdentifier);
    sub_100B3D4A8(v38, &v16[v40], _s5BoardVMa);
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    v19 = v65;
LABEL_17:
    sub_10003DFF8(v16, v19, &qword_101A11B18);
    v41 = sub_1005B981C(v27);
    v42 = (*(*(v41 - 8) + 48))(v19, 1, v41);
    v64 = v42 == 1;
    if (v42 == 1)
    {
      return v64;
    }

    v43 = v30;
    v44 = v28;
    v45 = v27;
    v46 = v16;
    v47 = *(v41 + 48);
    v48 = v63;
    sub_100B3D4A8(v19, v63, type metadata accessor for CRLBoardIdentifier);
    v49 = &v19[v47];
    v50 = v60;
    sub_100B3D4A8(v49, v60, _s5BoardVMa);
    v51 = sub_1000486F0(v48);
    LOBYTE(v47) = v52;
    sub_100025F08(v48, type metadata accessor for CRLBoardIdentifier);
    if ((v47 & 1) == 0)
    {
      sub_100025F08(v50, _s5BoardVMa);
      return 0;
    }

    v53 = v66;
    sub_100B3D440(*(a2 + 56) + *(v67 + 72) * v51, v66, _s5BoardVMa);
    v54 = sub_1013030EC(v53, v50);
    sub_100025F08(v53, _s5BoardVMa);
    result = sub_100025F08(v50, _s5BoardVMa);
    v16 = v46;
    v19 = v65;
    v27 = v45;
    v28 = v44;
    v26 = v43;
    if (!v54)
    {
      return v64;
    }
  }

  if (v57 <= v20 + 1)
  {
    v32 = v20 + 1;
  }

  else
  {
    v32 = v57;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v34 >= v57)
    {
      v55 = sub_1005B981C(v27);
      (*(*(v55 - 8) + 56))(v16, 1, 1, v55);
      v30 = 0;
      v20 = v33;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v20;
    if (v35)
    {
      v30 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v20 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B33ED0(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for CRLBoardCRDTData(0);
  v4 = __chkstk_darwin(v91);
  v92 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = &v71 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v88 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v71 - v12;
  __chkstk_darwin(v11);
  v90 = &v71 - v14;
  v15 = sub_1005B981C(&qword_101A11C48);
  v16 = __chkstk_darwin(v15 - 8);
  result = __chkstk_darwin(v16);
  v20 = &v71 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v80 = a2;
  v21 = 0;
  v22 = *(a1 + 64);
  v73 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v72 = (v23 + 63) >> 6;
  v77 = v8 + 16;
  v87 = (v8 + 32);
  v89 = (v8 + 8);
  v81 = v19;
  v85 = &v71 - v18;
  v76 = a1;
  v75 = v8;
  v86 = v13;
  v79 = v7;
  while (v25)
  {
    v83 = (v25 - 1) & v25;
    v26 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
    (*(v8 + 16))(v90, *(a1 + 48) + *(v8 + 72) * v26, v7);
    v32 = *(*(a1 + 56) + 8 * v26);
    v33 = sub_1005B981C(&qword_1019FEF98);
    v34 = *(v33 + 48);
    v29 = v81;
    (*(v8 + 32))();
    *(v29 + v34) = v32;
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);

    v20 = v85;
    v13 = v86;
LABEL_17:
    sub_10003DFF8(v29, v20, &qword_101A11C48);
    v35 = sub_1005B981C(&qword_1019FEF98);
    v36 = (*(*(v35 - 8) + 48))(v20, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v79;
    (*v87)(v13, v20, v79);
    v40 = *&v20[v38];
    v41 = v80;
    v42 = sub_10003E994(v13);
    v44 = v43;
    v45 = v39;
    v82 = *v89;
    v82(v13, v39);
    if ((v44 & 1) == 0)
    {
      goto LABEL_44;
    }

    v46 = *(*(v41 + 56) + 8 * v42);

    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_43;
    }

    v84 = v46;
    v47 = *(v46 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
    v48 = *(v40 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data);
    if (v47 < 0)
    {
      if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      v7 = v45;
      v64 = (*(*(v47 & 0x7FFFFFFFFFFFFFFFLL) + 512))(v48 & 0x7FFFFFFFFFFFFFFFLL);

      v8 = v75;
      v20 = v85;
      v13 = v86;
      v25 = v83;
      a1 = v76;
      if ((v64 & 1) == 0)
      {
        return v37;
      }
    }

    else
    {
      if (v48 < 0)
      {
        goto LABEL_43;
      }

      v7 = v45;
      v78 = v40;
      v74 = v37;
      v49 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_100B3D440(v47 + v49, v93, type metadata accessor for CRLBoardCRDTData);
      v50 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_100B3D440(v48 + v50, v92, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      v51 = v90;
      CRRegister.wrappedValue.getter();
      v52 = v88;
      CRRegister.wrappedValue.getter();
      v53 = static UUID.== infix(_:_:)();
      v54 = v45;
      v55 = v82;
      v82(v52, v54);
      v55(v51, v7);
      if ((v53 & 1) == 0)
      {
        goto LABEL_42;
      }

      v56 = v90;
      CRRegister.wrappedValue.getter();
      v57 = v88;
      CRRegister.wrappedValue.getter();
      v58 = static UUID.== infix(_:_:)();
      v55(v57, v7);
      v55(v56, v7);
      if ((v58 & 1) == 0)
      {
        goto LABEL_42;
      }

      type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
      v59 = v90;
      CRRegister.wrappedValue.getter();
      v60 = v88;
      CRRegister.wrappedValue.getter();
      v61 = static UUID.== infix(_:_:)();
      v55(v60, v7);
      v55(v59, v7);
      if ((v61 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      v63 = v94;
      v62 = v95;
      CRRegister.wrappedValue.getter();
      if (*&v63 == *&v94 && v62 == v95)
      {
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v65 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      if ((sub_1012F6E64(v93 + *(v91 + 28)) & 1) == 0 || (sub_1005B981C(&qword_1019F4858), CRMaxRegister.wrappedValue.getter(), v66 = v94, CRMaxRegister.wrappedValue.getter(), v66 != v94) || (type metadata accessor for CRLSharedBoardMetadataCRDTData(0), sub_1005B981C(&qword_1019F4850), CRRegister.wrappedValue.getter(), v67 = v94, CRRegister.wrappedValue.getter(), v67 != v94) || (sub_1005B981C(&qword_101A2C810), CRRegister.wrappedValue.getter(), v68 = LOBYTE(v94), CRRegister.wrappedValue.getter(), v68 != LOBYTE(v94)) || (sub_100B3D3F8(&qword_1019FB870, &type metadata accessor for UUID), (static CROrderedSet.== infix(_:_:)() & 1) == 0) || (type metadata accessor for CRLBoardScenesCRDTData(0), (static CRDictionary.== infix(_:_:)() & 1) == 0))
      {
LABEL_42:
        sub_100025F08(v92, type metadata accessor for CRLBoardCRDTData);
        sub_100025F08(v93, type metadata accessor for CRLBoardCRDTData);
LABEL_43:

LABEL_44:

        return 0;
      }

      sub_10007F4A4();
      sub_10007F5AC();
      v69 = static CRDictionary.== infix(_:_:)();
      sub_100025F08(v92, type metadata accessor for CRLBoardCRDTData);
      sub_100025F08(v93, type metadata accessor for CRLBoardCRDTData);

      a1 = v76;
      v8 = v75;
      v20 = v85;
      v13 = v86;
      v25 = v83;
      v37 = v74;
      if ((v69 & 1) == 0)
      {
        return v37;
      }
    }
  }

  if (v72 <= v21 + 1)
  {
    v27 = v21 + 1;
  }

  else
  {
    v27 = v72;
  }

  v28 = v27 - 1;
  v29 = v81;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v72)
    {
      v70 = sub_1005B981C(&qword_1019FEF98);
      (*(*(v70 - 8) + 56))(v29, 1, 1, v70);
      v83 = 0;
      v21 = v28;
      goto LABEL_17;
    }

    v31 = *(v73 + 8 * v30);
    ++v21;
    if (v31)
    {
      v83 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v21 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100B34A48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = (*(v3 + 56) + 16 * (v9 | (v4 << 6)));
    v14 = *v12;
    v13 = v12[1];

    v15 = sub_1007CDD68();
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = (*(a2 + 56) + 16 * v15);
    if (*v17 == v14 && v17[1] == v13)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

double TSContentLanguage.Models.UnknownObject.Value.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B3CAA4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.UnknownObject.Value.encode(to:)(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v2 = *(v1 + 32);
  v3 = v2 >> 5;
  if (v2 >> 5 > 3)
  {
    if (v2 >> 5 > 5)
    {
      if (v3 == 6)
      {
        sub_10002A948(v5, v6);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      }

      else
      {
        sub_10002A948(v5, v6);
        dispatch thunk of SingleValueEncodingContainer.encodeNil()();
      }
    }

    else if (v3 == 4)
    {
      sub_10002A948(v5, v6);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    }

    else
    {
      sub_10002A948(v5, v6);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    }
  }

  else
  {
    if (v2 >> 5 > 1)
    {
      if (v3 != 2)
      {
        sub_10002A948(v5, v6);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
        return sub_100005070(v5);
      }

      sub_10002A948(v5, v6);
      sub_1005B981C(&qword_101A11A78);
      sub_100B3D5E8(&qword_101A11A80, sub_100B3CF20);
    }

    else if (v3)
    {
      sub_10002A948(v5, v6);
      sub_1005B981C(&qword_101A11A90);
      sub_100B3D510(&qword_101A11A98, sub_100B3CF20);
    }

    else
    {
      sub_10002A948(v5, v6);
      sub_100B214E8();
    }

    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  }

  return sub_100005070(v5);
}

uint64_t sub_100B34F2C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV5ValueO21__derived_enum_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

id sub_100B34FA0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.UnknownObject.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.UnknownObject.version.unsafeMutableAddressor()
{
  if (qword_1019F1D48 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.UnknownObject.version;
}

id static TSContentLanguage.Models.UnknownObject.version.getter()
{
  if (qword_1019F1D48 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.UnknownObject.version;

  return v1;
}

uint64_t TSContentLanguage.Models.UnknownObject.resource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_29:

LABEL_30:
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v25 = -1;
LABEL_31:
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
    *(a2 + 32) = v25;
    return result;
  }

  v5 = sub_100B3A180(*(a1 + 16), 0, &qword_101A11E10);
  v6 = sub_100B3C088(&v26, (v5 + 4), v3, a1);

  result = sub_100035F90();
  if (v6 != v3)
  {
    goto LABEL_37;
  }

  v8 = v5[2];
  if (!v8)
  {
    goto LABEL_29;
  }

  while (1)
  {
LABEL_7:
    v9 = v5[4];
    v10 = v5[5];
    v12 = v5[6];
    v11 = v5[7];
    v13 = *(v5 + 64);
    sub_10067F098(v9, v10, v12, v11, *(v5 + 64));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v5[3] >> 1)
    {
      v5 = sub_100B388D0(isUniquelyReferenced_nonNull_native, v8, 1, v5);
    }

    sub_100B3CF74((v5 + 4));
    v15 = v5[2];
    result = memmove(v5 + 4, v5 + 9, 40 * v15 - 40);
    v16 = v15 - 1;
    v5[2] = v15 - 1;
    v26 = v5;
    v17 = v13 >> 5;
    if (v13 >> 5 == 1)
    {
      sub_10079B9D8(v9);
      v5 = v26;
      goto LABEL_6;
    }

    if (v17 == 2)
    {
      break;
    }

    if (!v17)
    {

      v25 = v13 & 1;
      goto LABEL_31;
    }

    sub_10067F114(v9, v10, v12, v11, v13);
LABEL_6:
    v8 = v5[2];
    if (!v8)
    {

      goto LABEL_30;
    }
  }

  v18 = *(v9 + 16);
  v19 = v16 + v18;
  if (!__OFADD__(v16, v18))
  {
    v20 = v5[3] >> 1;
    if (v20 < v19)
    {
      if (v16 <= v19)
      {
        v24 = v16 + v18;
      }

      else
      {
        v24 = v16;
      }

      result = sub_100B388D0(1, v24, 1, v5);
      v5 = result;
      v16 = *(result + 16);
      v20 = *(result + 24) >> 1;
      if (!*(v9 + 16))
      {
        goto LABEL_25;
      }

LABEL_17:
      if (v20 - v16 < v18)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();
      result = sub_10067F114(v9, v10, v12, v11, v13);
      if (v18)
      {
        v21 = v5[2];
        v22 = __OFADD__(v21, v18);
        v23 = v21 + v18;
        if (v22)
        {
          goto LABEL_36;
        }

        v5[2] = v23;
      }
    }

    else
    {
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_25:
      result = sub_10067F114(v9, v10, v12, v11, v13);
      if (v18)
      {
        goto LABEL_34;
      }
    }

    v26 = v5;
    goto LABEL_6;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.UnknownObject.encode(to:)(void *a1, uint64_t a2)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = a2;
  sub_10002A948(v4, v5);
  sub_1005B981C(&qword_101A11A90);
  sub_100B3D510(&qword_101A11A98, sub_100B3CF20);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100005070(v4);
}

void *sub_100B354A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100B3CFA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100B354CC(void *a1)
{
  v2 = *v1;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  sub_10002A948(v4, v5);
  sub_1005B981C(&qword_101A11A90);
  sub_100B3D510(&qword_101A11A98, sub_100B3CF20);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100005070(v4);
}

char *sub_100B355CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A0DA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100B356F8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B35838(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100B3593C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_100B35A88(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A095F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019FFF80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B35C00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
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

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1005B981C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_100B35CF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A09648);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B35DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A09670);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100B35EEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A09688);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019FFFC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100B36058(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_1019FD568);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019FD560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100B361A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11DD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F6EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100B36334(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11B08);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F6EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B36564(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B36684(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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