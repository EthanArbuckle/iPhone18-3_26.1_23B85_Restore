void sub_100C6F158(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_16;
    }

    if (a4 == 1)
    {
      v5 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a4 > 4u)
  {
    if (a4 == 5)
    {
      Hasher._combine(_:)(6uLL);
      if (!a3)
      {
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(1u);
      goto LABEL_17;
    }

    v6 = 4;
LABEL_23:
    Hasher._combine(_:)(v6);
    return;
  }

  if (a4 != 3)
  {
    Hasher._combine(_:)(5uLL);
    if (!a3)
    {
      v6 = 0;
      goto LABEL_23;
    }

    if (a3 == 1)
    {
      v6 = 1;
      goto LABEL_23;
    }

LABEL_15:
    v5 = 2;
    goto LABEL_16;
  }

  v5 = 3;
LABEL_16:
  Hasher._combine(_:)(v5);
LABEL_17:

  String.hash(into:)();
}

uint64_t sub_100C6F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_1009F9488(v7, v8, v10, v11);
}

BOOL sub_100C6F328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100C72C94(v13, v14);
}

double sub_100C6F3AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100C74578(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

BOOL sub_100C6F454(float *a1, float *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && a1[6] == a2[6] && a1[7] == a2[7])
  {
    return a1[8] == a2[8];
  }

  return result;
}

double sub_100C6F4A4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C74A6C(a1, v6);
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

BOOL sub_100C6F504(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static URL.== infix(_:_:)())
  {
    v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    if (sub_1009F9488(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), *(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100C6F578(void *a1)
{
  v2 = sub_1005B981C(&qword_101A177C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C785D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  sub_100055F0C(&qword_101A07060, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_100C6F6F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100C6D98C(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100C6F750()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100C6D98C(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100C6F79C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100C74CFC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100C6F7EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v4 = v3 == 4;
      goto LABEL_12;
    }

    if (v2 == 5)
    {
      v4 = v3 == 5;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v4 = v3 == 2;
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v4 = v3 == 3;
LABEL_12:
      v6 = v4;
      return v6 & 1;
    }
  }

  if ((v3 - 2) < 4u)
  {
    return 0;
  }

  v7 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_100C6F88C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(BYTE1(v1) & 1);
    Hasher._combine(_:)(BYTE2(v1) & 1);
    Hasher._combine(_:)(BYTE3(v1) & 1);
    if ((v1 & 0x7FFFFF00000000) == 0 && (v1 & 0x7F80000000000000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = HIDWORD(v1);
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

unint64_t sub_100C6F940@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_100C75524(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100C6F988(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  LODWORD(v2) = (((*a2 & 0x100) == 0) ^ ((v2 & 0x100) >> 8)) & ~(*a2 ^ v2) & (((*a2 & 0x10000) == 0) ^ WORD1(v2)) & (((*a2 & 0x1000000) == 0) ^ BYTE3(v2));
  if (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2)))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100C6FA14()
{
  if (*(v0 + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (*(v0 + 2))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 3))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100C6E0D8(v2 | v3 | v4, v0[1]);
}

void sub_100C6FA5C(uint64_t a1)
{
  if (*(v1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (*(v1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 3))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  sub_100C6E074(v1[1], a1, v3 | v4 | v5);
}

Swift::Int sub_100C6FAA4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  Hasher._combine(_:)(LODWORD(v6));
  return Hasher._finalize()();
}

void sub_100C6FB4C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100C75A38(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 1) = BYTE1(v4) & 1;
    *(a2 + 2) = BYTE2(v4) & 1;
    *(a2 + 3) = HIBYTE(v4) & 1;
    *(a2 + 4) = v5;
  }
}

BOOL sub_100C6FBF4(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && ((*(a1 + 2) ^ *(a2 + 2)) & 1) == 0 && ((*(a1 + 3) ^ *(a2 + 3)) & 1) == 0)
  {
    return a1[1] == a2[1];
  }

  return result;
}

Swift::Int sub_100C6FC50()
{
  Hasher.init(_seed:)();
  sub_100C6E7B8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100C6FC94()
{
  Hasher.init(_seed:)();
  sub_100C6E7B8(v1);
  return Hasher._finalize()();
}

double sub_100C6FCD0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C75C7C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_100C6FD34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100C6F158(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100C6FD9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100C6F158(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100C6FDF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100C76584(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_100C6FE44()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  simd_quatf.hash(into:)();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  Hasher._combine(_:)(*&v7);
  v8 = *(v0 + 64);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
}

uint64_t sub_100C6FEF4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C79058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v11 = 1;
    type metadata accessor for simd_quatf(0);
    sub_100055F0C(&qword_101A17A60, 255, type metadata accessor for simd_quatf);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 32);
    v11 = 2;
    type metadata accessor for CGSize(0);
    sub_100055F0C(&qword_1019FABB0, 255, type metadata accessor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 48);
    v11 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v12 = *(v3 + 64);
    v11 = 4;
    sub_1006CDEDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100C701A4()
{
  Hasher.init(_seed:)();
  sub_100C6FE44();
  return Hasher._finalize()();
}

Swift::Int sub_100C701E8()
{
  Hasher.init(_seed:)();
  sub_100C6FE44();
  return Hasher._finalize()();
}

__n128 sub_100C70224@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C771D8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_100C70288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100C72E04(v7, v9);
}

uint64_t sub_100C702E4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17AA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C790AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_100C791A8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = *(v3 + 4);
    v12 = 1;
    sub_1005B981C(&qword_101A17A80);
    sub_100C791FC(&qword_101A17AB0, sub_100C79280);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v13 = *(v3 + 6);
    v12 = 3;
    sub_1005B981C(&qword_101A03918);
    sub_100C792D4(&qword_101A17AC0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100C70564()
{
  v5 = *v0;
  v6 = v0[1];
  v1 = v0[2].n128_i64[0];
  v2 = v0[2].n128_u8[8];
  v3 = v0[3].n128_i64[0];
  Hasher.init(_seed:)();
  sub_100865528(v5);
  sub_100865528(v6);
  sub_10086537C(v7, v1);
  Hasher._combine(_:)(v2);
  sub_100865210(v7, v3);
  return Hasher._finalize()();
}

void sub_100C705F4(uint64_t a1)
{
  v6 = v1[1];
  v3 = v1[2].n128_i64[0];
  v4 = v1[2].n128_u8[8];
  v5 = v1[3].n128_i64[0];
  sub_100865528(*v1);
  sub_100865528(v6);
  sub_10086537C(a1, v3);
  Hasher._combine(_:)(v4);

  sub_100865210(a1, v5);
}

Swift::Int sub_100C70680()
{
  v5 = *v0;
  v6 = v0[1];
  v1 = v0[2].n128_i64[0];
  v2 = v0[2].n128_u8[8];
  v3 = v0[3].n128_i64[0];
  Hasher.init(_seed:)();
  sub_100865528(v5);
  sub_100865528(v6);
  sub_10086537C(v7, v1);
  Hasher._combine(_:)(v2);
  sub_100865210(v7, v3);
  return Hasher._finalize()();
}

double sub_100C7070C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C77500(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100C70770(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[2].i64[0];
  v3 = a1[2].u8[8];
  v4 = a1[3].i64[0];
  v5 = a2[2].i64[0];
  v6 = a2[2].u8[8];
  v7 = a2[3].i64[0];
  if (sub_100C7287C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_100B32A64(v2, v5) & 1) == 0 || ((v3 ^ v6))
  {
    return 0;
  }

  return sub_100B32C4C(v4, v7);
}

uint64_t sub_100C70810()
{
  _StringGuts.grow(_:)(66);
  v0._object = 0x80000001015957E0;
  v0._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v0);
  Float.write<A>(to:)();
  v1._countAndFlagsBits = 0x746E6569726F202CLL;
  v1._object = 0xEF203A6E6F697461;
  String.append(_:)(v1);
  sub_1005B981C(&qword_101A173B8);
  sub_100C793FC(&qword_101A176E8);
  v2._countAndFlagsBits = SIMD.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A657A6973202CLL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x8000000101595800;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_100C709DC()
{
  _StringGuts.grow(_:)(66);
  v0._countAndFlagsBits = 0xD000000000000021;
  v0._object = 0x8000000101595860;
  String.append(_:)(v0);
  v1._countAndFlagsBits = sub_100C70B08();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x69666E6F63202C3ELL;
  v2._object = 0xEB00000000203A67;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100C70810();
  String.append(_:)(v3);

  v4._object = 0x8000000101595890;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_100C70B08()
{
  _StringGuts.grow(_:)(102);
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x80000001015958B0;
  String.append(_:)(v1);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._object = 0x80000001015958E0;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x3A6874706564202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  Float.write<A>(to:)();
  v7._object = 0x8000000101595900;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  Float.write<A>(to:)();
  v8._object = 0x8000000101595920;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  Float.write<A>(to:)();
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

unint64_t sub_100C70CC4()
{
  _StringGuts.grow(_:)(27);

  type metadata accessor for URL();
  sub_100055F0C(&qword_101A15B10, 255, &type metadata accessor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000018;
}

uint64_t simd_quatf.encode(to:)(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10002A948(v2, v3);
  sub_1005B981C(&qword_101A173B8);
  sub_100C793FC(&qword_101A173C0);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100005070(v2);
}

uint64_t sub_100C70E9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100C77820(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100C70EC8(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10002A948(v2, v3);
  sub_1005B981C(&qword_101A173B8);
  sub_100C793FC(&qword_101A173C0);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100005070(v2);
}

double sub_100C70FA8()
{
  type metadata accessor for CRLUSDRendering.TaskQueue();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = _swiftEmptyArrayStorage;
  *&result = 1;
  *(v0 + 112) = xmmword_101482150;
  qword_101A173B0 = v0;
  return result;
}

uint64_t sub_100C70FFC()
{
  v1[5] = v0;
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C710BC, 0, 0);
}

uint64_t sub_100C710BC()
{
  if (qword_1019F1F88 != -1)
  {
    swift_once();
  }

  v1 = qword_101A173B0;
  *(v0 + 72) = qword_101A173B0;

  return _swift_task_switch(sub_100C71154, v1, 0);
}

uint64_t sub_100C71154()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 72);
  v3 = sub_100055F0C(&qword_101A04DE0, v2, type metadata accessor for CRLUSDRendering.TaskQueue);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_100C712B8;
  v5 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v1, v3, 0xD000000000000013, 0x800000010156F8C0, sub_100C7BAF4, v5, &type metadata for () + 8);
}

uint64_t sub_100C712B8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100C714E8;
  }

  else
  {
    v4 = sub_100C713E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C713E4()
{
  v1 = v0[11];
  v2 = static Task<>.checkCancellation()();
  if (!v1)
  {
    type metadata accessor for MainActor();
    v0[12] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v12;
    v0[13] = v11;
    v0[14] = v12;
    v2 = sub_100C7154C;
    v3 = v11;

    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v0[9];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  *(v5 + 120) = v8;
  sub_100C72384();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C714E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C7154C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  type metadata accessor for Entity();
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering11LoadReceipt_url, v3);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100C71638;
  v6 = v0[8];

  return Entity.init(contentsOf:withName:)(v6, 0, 0);
}

uint64_t sub_100C71638(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[16] = v1;

  v5 = v3[14];
  v6 = v3[13];
  if (v1)
  {
    v7 = sub_100C7187C;
  }

  else
  {
    v7 = sub_100C7177C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100C7177C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100C717E8, v1, 0);
}

void sub_100C717E8()
{
  v2 = v0[9];
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    *(v2 + 120) = v5;
    sub_100C72384();

    v7 = v0[1];

    v7(v6);
  }
}

uint64_t sub_100C7187C()
{
  v1 = *(v0 + 72);

  sub_10086E6A0();
  *(v0 + 136) = swift_allocError();
  *v2 = 0xD00000000000001CLL;
  *(v2 + 8) = 0x8000000101595940;
  *(v2 + 16) = 2;
  swift_willThrow();

  return _swift_task_switch(sub_100C71948, v1, 0);
}

uint64_t sub_100C71948()
{
  v2 = *(v0 + 72);
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    sub_100C72384();

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

uint64_t sub_100C719E8()
{
  if (qword_1019F1F88 != -1)
  {
    swift_once();
  }

  v1 = qword_101A173B0;
  *(v0 + 24) = qword_101A173B0;

  return _swift_task_switch(sub_100C71A80, v1, 0);
}

uint64_t sub_100C71A80()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 24);
  v3 = sub_100055F0C(&qword_101A04DE0, v2, type metadata accessor for CRLUSDRendering.TaskQueue);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100C71BDC;
  v5 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v1, v3, 0xD000000000000013, 0x800000010156F8C0, sub_10086E564, v5, &type metadata for () + 8);
}

uint64_t sub_100C71BDC()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100C71E04;
  }

  else
  {
    v4 = sub_100C71D08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C71D08()
{
  v1 = v0[5];
  v2 = static Task<>.checkCancellation()();
  if (!v1)
  {
    type metadata accessor for MainActor();
    v0[6] = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v2 = sub_100C71E1C;
    v3 = v11;
    v4 = v13;

    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v0[3];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  *(v5 + 120) = v8;
  sub_100C72384();
  v9 = v0[1];

  return v9();
}

uint64_t sub_100C71E1C()
{

  if (URL.isFileURL.getter())
  {
    v1 = objc_opt_self();
    URL.path.getter();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 determineCompression:v2];

    v4 = v3 == -1;
    if (v3 == -1)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = v3;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  *(v0 + 64) = v4;
  *(v0 + 56) = v5;
  v6 = *(v0 + 24);

  return _swift_task_switch(sub_100C71F10, v6, 0);
}

void sub_100C71F10()
{
  v2 = *(v0 + 24);
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 64);
    *(v2 + 120) = v5;
    sub_100C72384();
    v7 = *(v0 + 8);
    v8 = *(v0 + 56);

    v7(v8, v6);
  }
}

uint64_t sub_100C71F94()
{
  v1 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering11LoadReceipt_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100C72030()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A050F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = *(v1 + 128);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15[1] = *(v1 + 128);
    v15[2] = v1;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v5, v11, v2);
      type metadata accessor for CancellationError();
      sub_100055F0C(&qword_1019F4FA0, 255, &type metadata accessor for CancellationError);
      v13 = swift_allocError();
      CancellationError.init()();
      v15[3] = v13;
      CheckedContinuation.resume(throwing:)();
      (*(v8 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

void sub_100C72200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A050F0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4, v6);
  v9 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100B37F40(0, v9[2] + 1, 1, v9);
    *(a2 + 128) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100B37F40(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 128) = v9;
  sub_100C72384();
}

void sub_100C72384()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1);
  v6 = &v10 - v5;
  v7 = *(v0 + 128);
  if (*(v7 + 16))
  {
    v8 = *(v0 + 120);
    if (v8 <= 0)
    {
      *(v0 + 120) = v8 + 1;
      v9 = v3;
      (*(v2 + 16))(v6, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v3, v4);
      sub_10067D5B8(0, 1);
      CheckedContinuation.resume(returning:)();
      (*(v2 + 8))(v6, v9);
    }
  }
}

unint64_t sub_100C724B8()
{
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_100C78C68();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  sub_1005B981C(&qword_101A12AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = 0xD000000000000026;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for Data;
  *(inited + 40) = 0x8000000101595790;
  *(inited + 48) = v0;
  *(inited + 56) = v2;
  v5 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_100C79340(v4);
  return v5;
}

BOOL sub_100C72610(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  if ((sub_1009F9488(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), *(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v6 = *(v5 + 20);
  v7 = a1 + v6;
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  v10 = v8;
  v10.i32[3] = *v7;
  v11 = *(v9 + 16);
  v11.i32[3] = *v9;
  v12 = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v10, v11))) & 1) != 0 && (vmovn_s32(vceqq_f32(v8, *(v9 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v7 + 32), *(v9 + 32)), vceqq_f64(*(v7 + 48), *(v9 + 48))), xmmword_10148D100)) & 0xF) == 0 && *(v7 + 64) == *(v9 + 64))
  {
    return CGRectEqualToRect(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24)));
  }

  return v12;
}

uint64_t sub_100C72734(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          goto LABEL_18;
        }
      }

      else if (a6 == 2)
      {
        goto LABEL_18;
      }
    }

    else if (!a6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      return a6 == 6 && !(a5 | a4);
    }

    if (a6 != 5)
    {
      return 0;
    }

    if (a2)
    {
      if (!a5)
      {
        return 0;
      }

      return a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    return !a5;
  }

  if (a3 != 3)
  {
    if (a6 != 4)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      if (a5 >= 2)
      {
        return a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      return 0;
    }

    return !a5;
  }

  if (a6 != 3)
  {
    return 0;
  }

LABEL_18:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100C7287C(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = 0;
  a1.i32[3] = a2.i32[0];
  a3.i32[3] = a4.i32[0];
  if (vminv_u16(vmovn_s32(vceqq_f32(a1, a3))))
  {
    v5 = vmovn_s32(vceqq_f32(a2, a4));
    if (v5.i8[2])
    {
      v4 = v5.i8[4];
    }
  }

  return v4 & 1;
}

uint64_t sub_100C728B8(float32x4_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2].i64[0];
  v7 = a1[2].u64[1];
  v6 = a1[3].i64[0];
  if (!(v7 >> 62))
  {
    v12 = *(a2 + 40);
    if (v12 >> 62)
    {
      return 0;
    }

    v14 = *a2;
    v13 = *(a2 + 16);
    v14.i64[1] = *(a2 + 8);
    v4.i32[3] = v3.i32[0];
    v14.i32[3] = v13.i32[0];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v14))) & 1) == 0)
    {
      return 0;
    }

    v13.i64[1] = *(a2 + 24);
    v15 = vmovn_s32(vceqq_f32(v3, v13));
    if ((v15.i8[2] & 1) == 0)
    {
      return 0;
    }

    if ((v15.i8[4] & 1) == 0)
    {
      return 0;
    }

    v16 = *(a2 + 48);
    return (sub_100B32A64(v5, *(a2 + 32)) & 1) != 0 && ((v7 ^ v12) & 1) == 0 && (sub_100B32C4C(v6, v16) & 1) != 0;
  }

  if (v7 >> 62 != 1)
  {
    v17 = vorrq_s8(v3, vdupq_laneq_s64(v4, 1)).u64[0];
    if (v7 == 0x8000000000000000 && (v17 | v4.i64[0] | v3.i64[1] | v5 | v6) == 0)
    {
      v20 = *(a2 + 40);
      if (v20 >> 62 != 2)
      {
        return 0;
      }

      if (v20 != 0x8000000000000000)
      {
        return 0;
      }

      v21 = vorrq_s8(*a2, *(a2 + 16));
      if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(a2 + 32) | *(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == 0x8000000000000000 && v4.i64[0] == 1 && !(v6 | v5 | v17 | v3.i64[1]))
      {
        v19 = *(a2 + 40);
        if (v19 >> 62 != 2 || *(a2 + 48) || v19 != 0x8000000000000000 || *a2 != 1)
        {
          return 0;
        }
      }

      else
      {
        v22 = *(a2 + 40);
        if (v22 >> 62 != 2 || *(a2 + 48) || v22 != 0x8000000000000000 || *a2 != 2)
        {
          return 0;
        }
      }

      v23 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) >> 62 != 1)
  {
    return 0;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);

  return sub_100C72734(v4.i64[0], v4.i64[1], v3.u8[0], v8, v9, v10);
}

uint64_t sub_100C72AEC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  if ((sub_1009F9488(*&v6[*(v8 + 20)], *&v6[*(v8 + 20) + 8], *&v7[*(v8 + 20)], *&v7[*(v8 + 20) + 8]) & 1) == 0)
  {
    return 0;
  }

  v9 = v4[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 != *v12 || v11 != v12[1])
  {
    return 0;
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 16);
  v18 = (a2 + v15);
  if (v17)
  {
    if (v18[1].n128_u8[0])
    {
LABEL_16:
      v26 = v4[8];
      return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + v26 + 16), *(a2 + v26 + 16)), vceqq_f32(*(a1 + v26), *(a2 + v26))), vandq_s8(vceqq_f32(*(a1 + v26 + 32), *(a2 + v26 + 32)), vceqq_f32(*(a1 + v26 + 48), *(a2 + v26 + 48))))) >> 31;
    }
  }

  else if ((v18[1].n128_u8[0] & 1) == 0)
  {
    v27 = *v18;
    v19 = CRL3DRotation.rawValue.getter(*v16);
    v21 = v20;
    v22 = CRL3DRotation.rawValue.getter(v27);
    v24 = v23;
    v25 = sub_1009F9488(v19, v21, v22, v23);
    sub_10002640C(v22, v24);
    sub_10002640C(v19, v21);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

BOOL sub_100C72C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2;
  v3.i32[3] = *a1;
  v4 = *(a2 + 16);
  v4.i32[3] = *a2;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v3, v4))) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vmovn_s32(vceqq_f32(v2, *(a2 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_10148D100)) & 0xF) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v8 = a1;
    result = CGRectEqualToRect(*(a1 + 72), *(a2 + 72));
    if (result)
    {
      result = 0;
      if (((*(v8 + 104) ^ *(a2 + 104)) & 1) == 0 && *(v8 + 112) == *(a2 + 112) && *(v8 + 120) == *(a2 + 120) && *(v8 + 128) == *(a2 + 128) && *(v8 + 132) == *(a2 + 132) && *(v8 + 136) == *(a2 + 136))
      {
        return (sub_100673320(*(v8 + 144), *(a2 + 144)) & 1) != 0 && *(v8 + 152) == *(a2 + 152);
      }
    }
  }

  return result;
}

void sub_100C72E8C(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v11 >= v10)
          {
            goto LABEL_16;
          }

          v9 = *(a1 + 64 + 8 * v11);
          ++v6;
          if (v9)
          {
            v6 = v11;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      if (*(*(a1 + 56) + ((v6 << 9) | (8 * v12))) == 2)
      {
        break;
      }

      v13 = __OFADD__(v5, 1);
      v4 = ++v5;
      if (v13)
      {
        goto LABEL_25;
      }
    }

    v13 = __OFADD__(v3++, 1);
  }

  while (!v13);
  __break(1u);
LABEL_16:
  BoundingBox.extents.getter();
  v37 = v14;
  sub_1005B981C(&qword_1019F54E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C6B0;
  *(v15 + 56) = &type metadata for Float;
  *(v15 + 64) = &protocol witness table for Float;
  *(v15 + 32) = v37;
  v16._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 2127904;
  v17._object = 0xE300000000000000;
  String.append(_:)(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10146C6B0;
  *(v18 + 56) = &type metadata for Float;
  *(v18 + 64) = &protocol witness table for Float;
  *(v18 + 32) = DWORD1(v37);
  v19._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2127904;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10146C6B0;
  *(v21 + 56) = &type metadata for Float;
  *(v21 + 64) = &protocol witness table for Float;
  *(v21 + 32) = DWORD2(v37);
  v22._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  _StringGuts.grow(_:)(69);
  v24._object = 0x8000000101595820;
  v24._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 40;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  if (__OFADD__(v4, v3))
  {
    goto LABEL_26;
  }

  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x2820736D696E6120;
  v28._object = 0xE800000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x2C65766974636120;
  v30._object = 0xE900000000000020;
  String.append(_:)(v30);
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000015;
  v32._object = 0x8000000101595840;
  String.append(_:)(v32);
  if (a2)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (a2)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  v35 = v34;
  String.append(_:)(*&v33);

  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
}

uint64_t sub_100C7328C(void *a1)
{
  v1 = [a1 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_10000BE7C(0xD000000000000026, 0x8000000101595790), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_100064288(*(v2 + 56) + 32 * v3, &v8);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_100C780B0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002640C(v6, v7);
  return v8;
}

uint64_t sub_100C73404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46746C7561666564 && a2 == 0xEC000000656D6172)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100C73530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F466172656D6163 && a2 == 0xE900000000000056;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724664656C616373 && a2 == 0xEF657A6953656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001015959E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xED0000656C616353)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C73704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D696E4179616C70 && a2 == 0xEE00736E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696E416573756170 && a2 == 0xEF736E6F6974616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001015959A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696E417465736572 && a2 == 0xEF736E6F6974616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D696E41706F7473 && a2 == 0xEE00736E6F697461)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C738D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465737561507369 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6570706F74537369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C73A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F426C65646F6DLL && a2 == 0xEB0000000073646ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6956734977656976 && a2 == 0xED0000656C626973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100C73C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C73DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7245676E69646F63 && a2 == 0xEB00000000726F72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7272456C7275 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x45676E6964616F6CLL && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7272456574617473 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4574756F656D6974 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEE00726F7272456ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x45636972656E6567 && a2 == 0xEC000000726F7272)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100C7402C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101595980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E49657A6973 && a2 == 0xEC00000073726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5365636166727573 && a2 == 0xEC000000656C6163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C741F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E696B5FLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101563060 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C743B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46746C7561666564 && a2 == 0xEC000000656D6172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E49656E616C70 && a2 == 0xEF736369736E6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101595960 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C74578@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A17720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v85 = a1;
  sub_100020E58(a1, v9);
  sub_100C78274();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v85);
  }

  v10 = v6;
  LOBYTE(v52) = 0;
  sub_1008CF960();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v62;
  v51 = v63;
  v13 = v64;
  v14 = v65;
  v15 = v66;
  v16 = v67;
  v17 = v68;
  type metadata accessor for CGRect(0);
  LOBYTE(v52) = 1;
  sub_100055F0C(&qword_1019FABE8, 255, type metadata accessor for CGRect);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v49 = v14;
  v50 = v13;
  v18 = v62;
  v19 = v63;
  LOBYTE(v52) = 2;
  sub_100C782C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = *(&v19 + 1);
  v45 = *(&v18 + 1);
  v46 = v18;
  v47 = v19;
  v20 = v62;
  v21 = *(&v62 + 1);
  v23 = v63;
  v22 = v23 >> 64;
  v48 = v23;
  LODWORD(v14) = v64;
  sub_1005B981C(&qword_101A17738);
  LOBYTE(v52) = 3;
  sub_100C783C8(&qword_101A17740, &qword_101A17748);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v14;
  v24 = v62;
  v81 = 4;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = *(v10 + 8);
  v40 = v25;
  v26(v8, v11);
  LODWORD(v52) = v12;
  *(&v52 + 4) = v83;
  HIDWORD(v52) = v84;
  v53 = v51;
  *&v54 = v50;
  *(&v54 + 1) = v49;
  *&v55 = v15;
  *(&v55 + 1) = v16;
  v42 = v22;
  v27 = v46;
  *&v56 = v17;
  *(&v56 + 1) = v46;
  v28 = v21;
  v41 = v21;
  v30 = v44;
  v29 = v45;
  v31 = v47;
  *&v57 = v45;
  *(&v57 + 1) = v47;
  *&v58 = v44;
  BYTE8(v58) = v20;
  HIDWORD(v58) = *&v82[3];
  *(&v58 + 9) = *v82;
  *&v59 = v28;
  *(&v59 + 1) = v48;
  *&v60 = v22;
  DWORD2(v60) = v43;
  v32 = v40;
  *&v61 = v24;
  *(&v61 + 1) = v40;
  sub_100C7833C(&v52, &v62);
  sub_100005070(v85);
  LODWORD(v62) = v12;
  *(&v62 + 4) = v83;
  HIDWORD(v62) = v84;
  v63 = v51;
  v64 = v50;
  v65 = v49;
  v66 = v15;
  v67 = v16;
  v68 = v17;
  v69 = v27;
  v70 = v29;
  v71 = v31;
  v72 = v30;
  v73 = v20;
  *&v74[3] = *&v82[3];
  *v74 = *v82;
  v75 = v41;
  v76 = v48;
  v77 = v42;
  v78 = v43;
  v79 = v24;
  v80 = v32;
  result = sub_1008CF410(&v62);
  v34 = v59;
  a2[6] = v58;
  a2[7] = v34;
  v35 = v61;
  a2[8] = v60;
  a2[9] = v35;
  v36 = v55;
  a2[2] = v54;
  a2[3] = v36;
  v37 = v57;
  a2[4] = v56;
  a2[5] = v37;
  v38 = v53;
  *a2 = v52;
  a2[1] = v38;
  return result;
}

uint64_t sub_100C74A6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A17798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100C78564();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v20) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for CGSize(0);
  v19[15] = 1;
  sub_100055F0C(&qword_1019FAB48, 255, type metadata accessor for CGSize);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v20;
  v11 = v21;
  LOBYTE(v20) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v20) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v20) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  result = sub_100005070(a1);
  *a2 = v9 & 1;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 28) = v15;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_100C74CFC(void *a1)
{
  v41 = sub_1005B981C(&qword_101A177C8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v33 - v2;
  v40 = sub_1005B981C(&qword_101A177D0);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v44 = &v33 - v3;
  v38 = sub_1005B981C(&qword_101A177D8);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v43 = &v33 - v4;
  v5 = sub_1005B981C(&qword_101A177E0);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_1005B981C(&qword_101A177E8);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_1005B981C(&qword_101A177F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = a1[3];
  v46 = a1;
  sub_100020E58(a1, v15);
  sub_100C7862C();
  v16 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v47 = v7;
    v17 = v10;
    v19 = v43;
    v18 = v44;
    v33 = v8;
    v20 = v45;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_100061BA0();
    if (v23 == 5 || v51 != v52 >> 1)
    {
      v24 = v11;
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      sub_1005B981C(&qword_101A0AEE0);
      *v26 = &type metadata for CRLUSDRendering.SceneAction;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v15);
      swift_willThrow();
      (*(v12 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 <= 1u)
    {
      if (v23)
      {
        v48 = 1;
        sub_100C7877C();
        v30 = v47;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v35 + 8))(v30, v36);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v15 = 0;
      }

      else
      {
        v48 = 0;
        sub_100C787D0();
        v28 = v17;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v48 = 0;
        v29 = v33;
        KeyedDecodingContainer.decode(_:forKey:)();
        v32 = v31;
        v48 = 1;
        KeyedDecodingContainer.decode(_:forKey:)();
        (*(v37 + 8))(v28, v29);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v15 = v32;
      }
    }

    else if (v23 == 2)
    {
      v48 = 2;
      sub_100C78728();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v19, v38);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v15 = 0;
    }

    else
    {
      if (v23 == 3)
      {
        v48 = 3;
        sub_100C786D4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v42 + 8))(v18, v40);
      }

      else
      {
        v48 = 4;
        sub_100C78680();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v20, v41);
      }

      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v15 = 0;
    }
  }

  sub_100005070(v46);
  return v15;
}

unint64_t sub_100C75524(void *a1)
{
  v2 = sub_1005B981C(&qword_101A17858);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  __chkstk_darwin(v2);
  v5 = &v31 - v4;
  v6 = sub_1005B981C(&qword_101A17860);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1005B981C(&qword_101A17868);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = a1[3];
  v36 = a1;
  v14 = sub_100020E58(a1, v13);
  sub_100C78824();
  v15 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v34;
    v35 = v10;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = sub_10074DC24();
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      sub_1005B981C(&qword_101A0AEE0);
      *v23 = &type metadata for CRLUSDRendering.SceneDescription.AnimationState;
      v14 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v35 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      v41 = 1;
      sub_100C78878();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v35;
      sub_100C788CC();
      v26 = v32;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v33 + 8))(v5, v26);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v27 = 256;
      if (!v42)
      {
        v27 = 0;
      }

      v28 = v27 | v41;
      v29 = 0x10000;
      if (!v43)
      {
        v29 = 0;
      }

      v30 = 0x1000000;
      if (!v44)
      {
        v30 = 0;
      }

      v14 = v28 | v29 | v30 | (v45 << 32);
    }

    else
    {
      v41 = 0;
      sub_100C78920();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v35;
      (*(v16 + 8))(v8, v6);
      (*(v25 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 2;
    }
  }

  sub_100005070(v36);
  return v14;
}

float sub_100C75A38(void *a1)
{
  v2 = sub_1005B981C(&qword_101A178B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C789C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 3;
  v9[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v8;
}

uint64_t sub_100C75C7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v50 = sub_1005B981C(&qword_101A178C8);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v57 = &v43 - v3;
  v4 = sub_1005B981C(&qword_101A178D0);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  __chkstk_darwin(v4);
  v54 = &v43 - v6;
  v49 = sub_1005B981C(&qword_101A178D8);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v56 = &v43 - v7;
  v48 = sub_1005B981C(&qword_101A178E0);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v43 - v8;
  v10 = sub_1005B981C(&qword_101A178E8);
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = sub_1005B981C(&qword_101A178F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = a1[3];
  v70 = a1;
  sub_100020E58(a1, v17);
  sub_100C78A1C();
  v18 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v19 = v18;
  if (v18)
  {
    return sub_100005070(v70);
  }

  v20 = v12;
  v58 = v10;
  v22 = v56;
  v21 = v57;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v66 = v23;
  v67 = v23 + 32;
  v68 = 0;
  v69 = v24;
  v25 = sub_100061BA0();
  if (v25 == 5 || v68 != v69 >> 1)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v16;
    v30 = v13;
    v32 = v31;
    sub_1005B981C(&qword_101A0AEE0);
    *v32 = &type metadata for CRLUSDRendering.RendererState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    (*(v14 + 8))(v29, v30);
    swift_unknownObjectRelease();
    return sub_100005070(v70);
  }

  if (v25 <= 1u)
  {
    if (v25)
    {
      LOBYTE(v59) = 1;
      sub_100C78BC0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = 0;
      (*(v46 + 8))(v9, v48);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v36 = 0;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v41 = 0;
      v40 = 0x8000000000000000;
      v19 = 1;
    }

    else
    {
      LOBYTE(v59) = 0;
      sub_100C78C14();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = 0;
      (*(v45 + 8))(v20, v58);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v36 = 0;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v41 = 0;
      v40 = 0x8000000000000000;
    }
  }

  else if (v25 == 2)
  {
    LOBYTE(v59) = 2;
    sub_100C78B6C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = 0;
    (*(v47 + 8))(v22, v49);
    (*(v14 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v36 = 0;
    v38 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v40 = 0x8000000000000000;
    v19 = 2;
  }

  else if (v25 == 3)
  {
    LOBYTE(v59) = 3;
    sub_100C78AC4();
    v26 = v54;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100C78B18();
    v27 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = 0;
    (*(v52 + 8))(v26, v27);
    (*(v14 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v19 = v59;
    v36 = v60;
    v38 = v61;
    v37 = v62;
    v39 = v63;
    v40 = v64;
    v41 = v65;
  }

  else
  {
    LOBYTE(v59) = 4;
    sub_100C78A70();
    v34 = v21;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100C780B0();
    v35 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = 0;
    (*(v53 + 8))(v34, v35);
    (*(v14 + 8))(v16, v13);
    swift_unknownObjectRelease();
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v19 = v59;
    v36 = v60;
    v40 = 0x4000000000000000;
    v38 = v61;
  }

  v42 = v55;
  result = sub_100005070(v70);
  *v42 = v19;
  v42[1] = v36;
  v42[2] = v38;
  v42[3] = v37;
  v42[4] = v39;
  v42[5] = v40;
  v42[6] = v41;
  return result;
}

uint64_t sub_100C76584(void *a1)
{
  v63 = sub_1005B981C(&qword_101A17970);
  v69 = *(v63 - 8);
  __chkstk_darwin(v63);
  v70 = &v55 - v2;
  v3 = sub_1005B981C(&qword_101A17978);
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v74 = &v55 - v4;
  v5 = sub_1005B981C(&qword_101A17980);
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v73 = &v55 - v6;
  v60 = sub_1005B981C(&qword_101A17988);
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v72 = &v55 - v7;
  v8 = sub_1005B981C(&qword_101A17990);
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v71 = &v55 - v9;
  v59 = sub_1005B981C(&qword_101A17998);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v55 - v10;
  v12 = sub_1005B981C(&qword_101A179A0);
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v15 = sub_1005B981C(&qword_101A179A8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = a1[3];
  v75 = a1;
  sub_100020E58(a1, v19);
  sub_100C78D10();
  v20 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_11;
  }

  v21 = v14;
  v55 = v12;
  v56 = v11;
  v81 = 0;
  v22 = v71;
  v23 = v72;
  v25 = v73;
  v24 = v74;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v77 = v26;
  v78 = v26 + 32;
  v79 = 0;
  v80 = v27;
  v28 = sub_10074CDA4();
  if (v28 == 7 || v79 != v80 >> 1)
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    sub_1005B981C(&qword_101A0AEE0);
    *v34 = &type metadata for CRLUSDRendering.RendererError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v28 <= 2u)
  {
    if (!v28)
    {
      LOBYTE(v76) = 0;
      sub_100C78FB0();
      v44 = v81;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v44)
      {
        v45 = v15;
        v46 = v55;
        v15 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v57 + 8))(v21, v46);
        (*(v16 + 8))(v18, v45);
        swift_unknownObjectRelease();
        v54 = v75;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v36 = v81;
    if (v28 == 1)
    {
      LOBYTE(v76) = 1;
      sub_100C78F5C();
      v37 = v56;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v75;
      if (!v36)
      {
        v39 = v15;
        v40 = v59;
        v15 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v58 + 8))(v37, v40);
        (*(v16 + 8))(v18, v39);
        swift_unknownObjectRelease();
LABEL_30:
        v54 = v38;
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v76) = 2;
      sub_100C78F08();
      v47 = v22;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v75;
      if (!v36)
      {
        v48 = v15;
        v49 = v62;
        v15 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v61 + 8))(v47, v49);
        (*(v16 + 8))(v18, v48);
        swift_unknownObjectRelease();
        goto LABEL_30;
      }
    }

LABEL_27:
    (*(v16 + 8))(v18, v15);
    swift_unknownObjectRelease();
    v54 = v38;
    goto LABEL_12;
  }

  if (v28 > 4u)
  {
    v38 = v75;
    if (v28 == 5)
    {
      LOBYTE(v76) = 5;
      sub_100C78DB8();
      v41 = v24;
      v42 = v81;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v42)
      {
        sub_100C78E0C();
        v43 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v67 + 8))(v41, v43);
        (*(v16 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v15 = v76;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v76) = 6;
      sub_100C78D64();
      v51 = v70;
      v52 = v81;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v52)
      {
        v81 = v15;
        v53 = v63;
        v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        (*(v69 + 8))(v51, v53);
        (*(v16 + 8))(v18, v81);
        swift_unknownObjectRelease();
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  if (v28 != 3)
  {
    LOBYTE(v76) = 4;
    sub_100C78E60();
    v50 = v81;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v50)
    {
      (*(v65 + 8))(v25, v66);
      (*(v16 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v15 = 0;
      v54 = v75;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  LOBYTE(v76) = 3;
  sub_100C78EB4();
  v29 = v81;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v29)
  {
LABEL_10:
    (*(v16 + 8))(v18, v15);
    swift_unknownObjectRelease();
LABEL_11:
    v54 = v75;
    goto LABEL_12;
  }

  v30 = v15;
  v31 = v60;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v64 + 8))(v23, v31);
  (*(v16 + 8))(v18, v30);
  swift_unknownObjectRelease();
  v54 = v75;
LABEL_12:
  sub_100005070(v54);
  return v15;
}

uint64_t sub_100C771D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A17A40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C79058();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v16) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  type metadata accessor for simd_quatf(0);
  v17 = 1;
  sub_100055F0C(&qword_101A17A50, 255, type metadata accessor for simd_quatf);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v16;
  type metadata accessor for CGSize(0);
  v17 = 2;
  sub_100055F0C(&qword_1019FAB48, 255, type metadata accessor for CGSize);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  v17 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v16;
  v17 = 4;
  sub_1006CDE88();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  result = sub_100005070(a1);
  *a2 = v10;
  *(a2 + 16) = v15;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  return result;
}

uint64_t sub_100C77500@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A17A68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100BD6968(_swiftEmptyArrayStorage);

  sub_100020E58(a1, a1[3]);
  sub_100C790AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v18 = 0;
  sub_100C79100();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17;
  v15 = v16;
  sub_1005B981C(&qword_101A17A80);
  v18 = 1;
  sub_100C791FC(&qword_101A17A88, sub_100C79154);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16;
  LOBYTE(v16) = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&qword_101A03918);
  v18 = 3;
  sub_100C792D4(&qword_101A17A98);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  result = sub_100005070(a1);
  v13 = v14;
  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_100C77820(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100020E58(v4, v4[3]);
    sub_1005B981C(&qword_101A173B8);
    sub_100C793FC(&qword_101A17AD0);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100005070(v4);
  }

  return sub_100005070(a1);
}

__n128 sub_100C7797C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100C779A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C779C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

__n128 sub_100C77A0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100C77A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100C77A70(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100C77ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100C77B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100C77B58(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100C77B80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100C77B9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
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

double sub_100C77BEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C77C58(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_101481DF0;
  }

  return result;
}

void sub_100C77D0C()
{
  type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C77DC0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100C77E4C()
{
  result = qword_101A176A8;
  if (!qword_101A176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176A8);
  }

  return result;
}

unint64_t sub_100C77EA4()
{
  result = qword_101A176B0;
  if (!qword_101A176B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176B0);
  }

  return result;
}

unint64_t sub_100C77EFC()
{
  result = qword_101A176B8;
  if (!qword_101A176B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176B8);
  }

  return result;
}

unint64_t sub_100C77F54()
{
  result = qword_101A176C0;
  if (!qword_101A176C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176C0);
  }

  return result;
}

unint64_t sub_100C77FAC()
{
  result = qword_101A176C8;
  if (!qword_101A176C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176C8);
  }

  return result;
}

unint64_t sub_100C78004()
{
  result = qword_101A176D0;
  if (!qword_101A176D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176D0);
  }

  return result;
}

unint64_t sub_100C7805C()
{
  result = qword_101A176D8;
  if (!qword_101A176D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176D8);
  }

  return result;
}

unint64_t sub_100C780B0()
{
  result = qword_101A176E0;
  if (!qword_101A176E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176E0);
  }

  return result;
}

unint64_t sub_100C78104()
{
  result = qword_101A176F8;
  if (!qword_101A176F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A176F8);
  }

  return result;
}

unint64_t sub_100C78158()
{
  result = qword_101A17710;
  if (!qword_101A17710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17710);
  }

  return result;
}

uint64_t sub_100C781AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C78214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100C78274()
{
  result = qword_101A17728;
  if (!qword_101A17728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17728);
  }

  return result;
}

unint64_t sub_100C782C8()
{
  result = qword_101A17730;
  if (!qword_101A17730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17730);
  }

  return result;
}

unint64_t sub_100C78374()
{
  result = qword_101A17758;
  if (!qword_101A17758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17758);
  }

  return result;
}

uint64_t sub_100C783C8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A17738);
    sub_100055F0C(a2, 255, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100C78468()
{
  result = qword_101A17778;
  if (!qword_101A17778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17778);
  }

  return result;
}

unint64_t sub_100C784BC()
{
  result = qword_101A17780;
  if (!qword_101A17780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17780);
  }

  return result;
}

unint64_t sub_100C78510()
{
  result = qword_101A17790;
  if (!qword_101A17790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17790);
  }

  return result;
}

unint64_t sub_100C78564()
{
  result = qword_101A177A0;
  if (!qword_101A177A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A177A0);
  }

  return result;
}

unint64_t sub_100C785D8()
{
  result = qword_101A177B8;
  if (!qword_101A177B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A177B8);
  }

  return result;
}

unint64_t sub_100C7862C()
{
  result = qword_101A177F8;
  if (!qword_101A177F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A177F8);
  }

  return result;
}

unint64_t sub_100C78680()
{
  result = qword_101A17800;
  if (!qword_101A17800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17800);
  }

  return result;
}

unint64_t sub_100C786D4()
{
  result = qword_101A17808;
  if (!qword_101A17808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17808);
  }

  return result;
}

unint64_t sub_100C78728()
{
  result = qword_101A17810;
  if (!qword_101A17810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17810);
  }

  return result;
}

unint64_t sub_100C7877C()
{
  result = qword_101A17818;
  if (!qword_101A17818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17818);
  }

  return result;
}

unint64_t sub_100C787D0()
{
  result = qword_101A17820;
  if (!qword_101A17820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17820);
  }

  return result;
}

unint64_t sub_100C78824()
{
  result = qword_101A17870;
  if (!qword_101A17870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17870);
  }

  return result;
}

unint64_t sub_100C78878()
{
  result = qword_101A17878;
  if (!qword_101A17878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17878);
  }

  return result;
}

unint64_t sub_100C788CC()
{
  result = qword_101A17880;
  if (!qword_101A17880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17880);
  }

  return result;
}

unint64_t sub_100C78920()
{
  result = qword_101A17888;
  if (!qword_101A17888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17888);
  }

  return result;
}

unint64_t sub_100C78974()
{
  result = qword_101A178A8;
  if (!qword_101A178A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A178A8);
  }

  return result;
}

unint64_t sub_100C789C8()
{
  result = qword_101A178B8;
  if (!qword_101A178B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A178B8);
  }

  return result;
}

unint64_t sub_100C78A1C()
{
  result = qword_101A178F8;
  if (!qword_101A178F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A178F8);
  }

  return result;
}

unint64_t sub_100C78A70()
{
  result = qword_101A17900;
  if (!qword_101A17900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17900);
  }

  return result;
}

unint64_t sub_100C78AC4()
{
  result = qword_101A17908;
  if (!qword_101A17908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17908);
  }

  return result;
}

unint64_t sub_100C78B18()
{
  result = qword_101A17910;
  if (!qword_101A17910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17910);
  }

  return result;
}

unint64_t sub_100C78B6C()
{
  result = qword_101A17918;
  if (!qword_101A17918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17918);
  }

  return result;
}

unint64_t sub_100C78BC0()
{
  result = qword_101A17920;
  if (!qword_101A17920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17920);
  }

  return result;
}

unint64_t sub_100C78C14()
{
  result = qword_101A17928;
  if (!qword_101A17928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17928);
  }

  return result;
}

unint64_t sub_100C78C68()
{
  result = qword_101A17960;
  if (!qword_101A17960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17960);
  }

  return result;
}

unint64_t sub_100C78CBC()
{
  result = qword_101A17968;
  if (!qword_101A17968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17968);
  }

  return result;
}

unint64_t sub_100C78D10()
{
  result = qword_101A179B0;
  if (!qword_101A179B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179B0);
  }

  return result;
}

unint64_t sub_100C78D64()
{
  result = qword_101A179B8;
  if (!qword_101A179B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179B8);
  }

  return result;
}

unint64_t sub_100C78DB8()
{
  result = qword_101A179C0;
  if (!qword_101A179C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179C0);
  }

  return result;
}

unint64_t sub_100C78E0C()
{
  result = qword_101A179C8;
  if (!qword_101A179C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179C8);
  }

  return result;
}

unint64_t sub_100C78E60()
{
  result = qword_101A179D0;
  if (!qword_101A179D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179D0);
  }

  return result;
}

unint64_t sub_100C78EB4()
{
  result = qword_101A179D8;
  if (!qword_101A179D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179D8);
  }

  return result;
}

unint64_t sub_100C78F08()
{
  result = qword_101A179E0;
  if (!qword_101A179E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179E0);
  }

  return result;
}

unint64_t sub_100C78F5C()
{
  result = qword_101A179E8;
  if (!qword_101A179E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179E8);
  }

  return result;
}

unint64_t sub_100C78FB0()
{
  result = qword_101A179F0;
  if (!qword_101A179F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A179F0);
  }

  return result;
}

unint64_t sub_100C79004()
{
  result = qword_101A17A38;
  if (!qword_101A17A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17A38);
  }

  return result;
}

unint64_t sub_100C79058()
{
  result = qword_101A17A48;
  if (!qword_101A17A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17A48);
  }

  return result;
}

unint64_t sub_100C790AC()
{
  result = qword_101A17A70;
  if (!qword_101A17A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17A70);
  }

  return result;
}

unint64_t sub_100C79100()
{
  result = qword_101A17A78;
  if (!qword_101A17A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17A78);
  }

  return result;
}

unint64_t sub_100C79154()
{
  result = qword_101A17A90;
  if (!qword_101A17A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17A90);
  }

  return result;
}

unint64_t sub_100C791A8()
{
  result = qword_101A17AA8;
  if (!qword_101A17AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17AA8);
  }

  return result;
}

uint64_t sub_100C791FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A17A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100C79280()
{
  result = qword_101A17AB8;
  if (!qword_101A17AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17AB8);
  }

  return result;
}

uint64_t sub_100C792D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A03918);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100C79340(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A2F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100C793A8()
{
  result = qword_101A17AC8;
  if (!qword_101A17AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17AC8);
  }

  return result;
}

uint64_t sub_100C793FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A173B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100C79674()
{
  type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_100C79728();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100C79728()
{
  if (!qword_101A17B40)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A17B40);
    }
  }
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFEu) > 3))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_100C79820(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C7983C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState.PlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100C79918(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100C79944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C7998C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C79A04(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[36])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100C79A58(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100C79AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100C79B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100C79BB4()
{
  result = type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100C79CB8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_100C79CD4(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_100C79D0C()
{
  result = qword_101A17C10;
  if (!qword_101A17C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C10);
  }

  return result;
}

unint64_t sub_100C79D64()
{
  result = qword_101A17C18;
  if (!qword_101A17C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C18);
  }

  return result;
}

unint64_t sub_100C79DBC()
{
  result = qword_101A17C20;
  if (!qword_101A17C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C20);
  }

  return result;
}

unint64_t sub_100C79E14()
{
  result = qword_101A17C28;
  if (!qword_101A17C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C28);
  }

  return result;
}

unint64_t sub_100C79E6C()
{
  result = qword_101A17C30;
  if (!qword_101A17C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C30);
  }

  return result;
}

unint64_t sub_100C79EC4()
{
  result = qword_101A17C38;
  if (!qword_101A17C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C38);
  }

  return result;
}

unint64_t sub_100C79F1C()
{
  result = qword_101A17C40;
  if (!qword_101A17C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C40);
  }

  return result;
}

unint64_t sub_100C79F74()
{
  result = qword_101A17C48;
  if (!qword_101A17C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C48);
  }

  return result;
}

unint64_t sub_100C79FCC()
{
  result = qword_101A17C50;
  if (!qword_101A17C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C50);
  }

  return result;
}

unint64_t sub_100C7A024()
{
  result = qword_101A17C58;
  if (!qword_101A17C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C58);
  }

  return result;
}

unint64_t sub_100C7A07C()
{
  result = qword_101A17C60;
  if (!qword_101A17C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C60);
  }

  return result;
}

unint64_t sub_100C7A0D4()
{
  result = qword_101A17C68;
  if (!qword_101A17C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C68);
  }

  return result;
}

unint64_t sub_100C7A12C()
{
  result = qword_101A17C70;
  if (!qword_101A17C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C70);
  }

  return result;
}

unint64_t sub_100C7A184()
{
  result = qword_101A17C78;
  if (!qword_101A17C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C78);
  }

  return result;
}

unint64_t sub_100C7A1DC()
{
  result = qword_101A17C80;
  if (!qword_101A17C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C80);
  }

  return result;
}

unint64_t sub_100C7A234()
{
  result = qword_101A17C88;
  if (!qword_101A17C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C88);
  }

  return result;
}

unint64_t sub_100C7A28C()
{
  result = qword_101A17C90;
  if (!qword_101A17C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C90);
  }

  return result;
}

unint64_t sub_100C7A2E4()
{
  result = qword_101A17C98;
  if (!qword_101A17C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17C98);
  }

  return result;
}

unint64_t sub_100C7A33C()
{
  result = qword_101A17CA0;
  if (!qword_101A17CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CA0);
  }

  return result;
}

unint64_t sub_100C7A394()
{
  result = qword_101A17CA8;
  if (!qword_101A17CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CA8);
  }

  return result;
}

unint64_t sub_100C7A3EC()
{
  result = qword_101A17CB0;
  if (!qword_101A17CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CB0);
  }

  return result;
}

unint64_t sub_100C7A444()
{
  result = qword_101A17CB8;
  if (!qword_101A17CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CB8);
  }

  return result;
}

unint64_t sub_100C7A49C()
{
  result = qword_101A17CC0;
  if (!qword_101A17CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CC0);
  }

  return result;
}

unint64_t sub_100C7A4F4()
{
  result = qword_101A17CC8;
  if (!qword_101A17CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CC8);
  }

  return result;
}

unint64_t sub_100C7A54C()
{
  result = qword_101A17CD0;
  if (!qword_101A17CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CD0);
  }

  return result;
}

unint64_t sub_100C7A5A4()
{
  result = qword_101A17CD8;
  if (!qword_101A17CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CD8);
  }

  return result;
}

unint64_t sub_100C7A5FC()
{
  result = qword_101A17CE0;
  if (!qword_101A17CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CE0);
  }

  return result;
}

unint64_t sub_100C7A654()
{
  result = qword_101A17CE8;
  if (!qword_101A17CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CE8);
  }

  return result;
}

unint64_t sub_100C7A6AC()
{
  result = qword_101A17CF0;
  if (!qword_101A17CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CF0);
  }

  return result;
}

unint64_t sub_100C7A704()
{
  result = qword_101A17CF8;
  if (!qword_101A17CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17CF8);
  }

  return result;
}

unint64_t sub_100C7A75C()
{
  result = qword_101A17D00;
  if (!qword_101A17D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D00);
  }

  return result;
}

unint64_t sub_100C7A7B4()
{
  result = qword_101A17D08;
  if (!qword_101A17D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D08);
  }

  return result;
}

unint64_t sub_100C7A80C()
{
  result = qword_101A17D10;
  if (!qword_101A17D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D10);
  }

  return result;
}

unint64_t sub_100C7A864()
{
  result = qword_101A17D18;
  if (!qword_101A17D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D18);
  }

  return result;
}

unint64_t sub_100C7A8BC()
{
  result = qword_101A17D20;
  if (!qword_101A17D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D20);
  }

  return result;
}

unint64_t sub_100C7A914()
{
  result = qword_101A17D28;
  if (!qword_101A17D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D28);
  }

  return result;
}

unint64_t sub_100C7A96C()
{
  result = qword_101A17D30;
  if (!qword_101A17D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D30);
  }

  return result;
}

unint64_t sub_100C7A9C4()
{
  result = qword_101A17D38;
  if (!qword_101A17D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D38);
  }

  return result;
}

unint64_t sub_100C7AA1C()
{
  result = qword_101A17D40;
  if (!qword_101A17D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D40);
  }

  return result;
}

unint64_t sub_100C7AA74()
{
  result = qword_101A17D48;
  if (!qword_101A17D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D48);
  }

  return result;
}

unint64_t sub_100C7AACC()
{
  result = qword_101A17D50;
  if (!qword_101A17D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D50);
  }

  return result;
}

unint64_t sub_100C7AB24()
{
  result = qword_101A17D58;
  if (!qword_101A17D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D58);
  }

  return result;
}

unint64_t sub_100C7AB7C()
{
  result = qword_101A17D60;
  if (!qword_101A17D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D60);
  }

  return result;
}

unint64_t sub_100C7ABD4()
{
  result = qword_101A17D68;
  if (!qword_101A17D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D68);
  }

  return result;
}

unint64_t sub_100C7AC2C()
{
  result = qword_101A17D70;
  if (!qword_101A17D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D70);
  }

  return result;
}

unint64_t sub_100C7AC84()
{
  result = qword_101A17D78;
  if (!qword_101A17D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D78);
  }

  return result;
}

unint64_t sub_100C7ACDC()
{
  result = qword_101A17D80;
  if (!qword_101A17D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D80);
  }

  return result;
}

unint64_t sub_100C7AD34()
{
  result = qword_101A17D88;
  if (!qword_101A17D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D88);
  }

  return result;
}

unint64_t sub_100C7AD8C()
{
  result = qword_101A17D90;
  if (!qword_101A17D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D90);
  }

  return result;
}

unint64_t sub_100C7ADE4()
{
  result = qword_101A17D98;
  if (!qword_101A17D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17D98);
  }

  return result;
}

unint64_t sub_100C7AE3C()
{
  result = qword_101A17DA0;
  if (!qword_101A17DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DA0);
  }

  return result;
}

unint64_t sub_100C7AE94()
{
  result = qword_101A17DA8;
  if (!qword_101A17DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DA8);
  }

  return result;
}

unint64_t sub_100C7AEEC()
{
  result = qword_101A17DB0;
  if (!qword_101A17DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DB0);
  }

  return result;
}

unint64_t sub_100C7AF44()
{
  result = qword_101A17DB8;
  if (!qword_101A17DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DB8);
  }

  return result;
}

unint64_t sub_100C7AF9C()
{
  result = qword_101A17DC0;
  if (!qword_101A17DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DC0);
  }

  return result;
}

unint64_t sub_100C7AFF4()
{
  result = qword_101A17DC8;
  if (!qword_101A17DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DC8);
  }

  return result;
}

unint64_t sub_100C7B04C()
{
  result = qword_101A17DD0;
  if (!qword_101A17DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DD0);
  }

  return result;
}

unint64_t sub_100C7B0A4()
{
  result = qword_101A17DD8;
  if (!qword_101A17DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DD8);
  }

  return result;
}

unint64_t sub_100C7B0FC()
{
  result = qword_101A17DE0;
  if (!qword_101A17DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DE0);
  }

  return result;
}

unint64_t sub_100C7B154()
{
  result = qword_101A17DE8;
  if (!qword_101A17DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DE8);
  }

  return result;
}

unint64_t sub_100C7B1AC()
{
  result = qword_101A17DF0;
  if (!qword_101A17DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DF0);
  }

  return result;
}

unint64_t sub_100C7B204()
{
  result = qword_101A17DF8;
  if (!qword_101A17DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17DF8);
  }

  return result;
}

unint64_t sub_100C7B25C()
{
  result = qword_101A17E00;
  if (!qword_101A17E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E00);
  }

  return result;
}

unint64_t sub_100C7B2B4()
{
  result = qword_101A17E08;
  if (!qword_101A17E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E08);
  }

  return result;
}

unint64_t sub_100C7B30C()
{
  result = qword_101A17E10;
  if (!qword_101A17E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E10);
  }

  return result;
}

unint64_t sub_100C7B364()
{
  result = qword_101A17E18;
  if (!qword_101A17E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E18);
  }

  return result;
}

unint64_t sub_100C7B3BC()
{
  result = qword_101A17E20;
  if (!qword_101A17E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E20);
  }

  return result;
}

unint64_t sub_100C7B414()
{
  result = qword_101A17E28;
  if (!qword_101A17E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E28);
  }

  return result;
}

unint64_t sub_100C7B46C()
{
  result = qword_101A17E30;
  if (!qword_101A17E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E30);
  }

  return result;
}

unint64_t sub_100C7B4C4()
{
  result = qword_101A17E38;
  if (!qword_101A17E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E38);
  }

  return result;
}

unint64_t sub_100C7B51C()
{
  result = qword_101A17E40;
  if (!qword_101A17E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E40);
  }

  return result;
}

unint64_t sub_100C7B574()
{
  result = qword_101A17E48;
  if (!qword_101A17E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E48);
  }

  return result;
}

unint64_t sub_100C7B5CC()
{
  result = qword_101A17E50;
  if (!qword_101A17E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E50);
  }

  return result;
}

unint64_t sub_100C7B624()
{
  result = qword_101A17E58;
  if (!qword_101A17E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E58);
  }

  return result;
}

unint64_t sub_100C7B67C()
{
  result = qword_101A17E60;
  if (!qword_101A17E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E60);
  }

  return result;
}

unint64_t sub_100C7B6D4()
{
  result = qword_101A17E68;
  if (!qword_101A17E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E68);
  }

  return result;
}

unint64_t sub_100C7B72C()
{
  result = qword_101A17E70;
  if (!qword_101A17E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E70);
  }

  return result;
}

unint64_t sub_100C7B784()
{
  result = qword_101A17E78;
  if (!qword_101A17E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E78);
  }

  return result;
}

unint64_t sub_100C7B7DC()
{
  result = qword_101A17E80;
  if (!qword_101A17E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E80);
  }

  return result;
}

unint64_t sub_100C7B834()
{
  result = qword_101A17E88;
  if (!qword_101A17E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E88);
  }

  return result;
}

unint64_t sub_100C7B88C()
{
  result = qword_101A17E90;
  if (!qword_101A17E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E90);
  }

  return result;
}

unint64_t sub_100C7B8E4()
{
  result = qword_101A17E98;
  if (!qword_101A17E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17E98);
  }

  return result;
}

unint64_t sub_100C7B93C()
{
  result = qword_101A17EA0;
  if (!qword_101A17EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17EA0);
  }

  return result;
}

unint64_t sub_100C7B994()
{
  result = qword_101A17EA8;
  if (!qword_101A17EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17EA8);
  }

  return result;
}

unint64_t sub_100C7B9EC()
{
  result = qword_101A17EB0;
  if (!qword_101A17EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17EB0);
  }

  return result;
}

unint64_t sub_100C7BA44()
{
  result = qword_101A17EB8;
  if (!qword_101A17EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17EB8);
  }

  return result;
}

unint64_t sub_100C7BA9C()
{
  result = qword_101A17EC0;
  if (!qword_101A17EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17EC0);
  }

  return result;
}

void sub_100C7BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100043E40(_swiftEmptyArrayStorage);
  v4 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v4, 0xD000000000000011, 0x8000000101595A30, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a3];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v6, 0x6D657449656C6966, 0xEC000000657A6953, v7);
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 sendEventInDomain:v9 lazily:1 eventPayload:isa];
}

uint64_t sub_100C7BCA8(void *a1)
{
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v83 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v84 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5BoardVMa(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v86 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v85 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v82 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v82 - v21;
  __chkstk_darwin(v20);
  v24 = &v82 - v23;
  v87 = a1;
  sub_100065274(a1, &v82 - v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v88 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
LABEL_5:
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v28 = sub_100F8903C();
    v30 = v29;
    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 32) = v28;
    v89 = inited + 32;
    *(inited + 64) = v31;
    *(inited + 40) = v30;
    v87 = objc_opt_self();
    LODWORD(v32) = [v87 _atomicIncrementAssertCount];
    v90 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v90);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v39 = static OS_os_log.crlAssert;
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_10146CA70;
      *(v40 + 56) = &type metadata for Int32;
      *(v40 + 64) = &protocol witness table for Int32;
      *(v40 + 32) = v32;
      v41 = sub_1005CF000();
      *(v40 + 96) = v41;
      v42 = sub_1005CF04C();
      *(v40 + 72) = v33;
      *(v40 + 136) = &type metadata for String;
      *(v40 + 144) = v31;
      *(v40 + 104) = v42;
      *(v40 + 112) = v36;
      *(v40 + 120) = v38;
      *(v40 + 176) = &type metadata for UInt;
      *(v40 + 184) = &protocol witness table for UInt;
      *(v40 + 152) = 31;
      v43 = v90;
      *(v40 + 216) = v41;
      *(v40 + 224) = v42;
      *(v40 + 192) = v43;
      v44 = v33;
      v45 = v43;
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
      swift_setDeallocating();
      v86 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "Tried to add a non-draggable view model item %@ to the drag session context", 75, 2, inited);

      type metadata accessor for __VaListBuilder();
      v33 = swift_allocObject();
      v33[2] = 8;
      v33[3] = 0;
      v48 = v33 + 3;
      v33[4] = 0;
      v33[5] = 0;
      v38 = *(inited + 16);
      if (!v38)
      {
LABEL_31:
        v64 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v65 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v66 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v67 = String._bridgeToObjectiveC()();

        [v87 handleFailureInFunction:v65 file:v66 lineNumber:31 isFatal:0 format:v67 args:v64];

        swift_setDeallocating();
        swift_arrayDestroy();
        return sub_10000BB04(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      v49 = 0;
      v31 = 40;
      while (1)
      {
        LODWORD(v32) = sub_100020E58((v89 + 40 * v49), *(v89 + 40 * v49 + 24));
        v50 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v36 = *v48;
        v51 = *(v50 + 16);
        v52 = __OFADD__(*v48, v51);
        v53 = *v48 + v51;
        if (v52)
        {
          break;
        }

        v32 = v33[4];
        if (v32 >= v53)
        {
          goto LABEL_23;
        }

        if (v32 + 0x4000000000000000 < 0)
        {
          goto LABEL_49;
        }

        v54 = v33[5];
        if (2 * v32 > v53)
        {
          v53 = 2 * v32;
        }

        v33[4] = v53;
        if ((v53 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_50;
        }

        v55 = inited;
        v56 = v50;
        v57 = swift_slowAlloc();
        v58 = v57;
        v33[5] = v57;
        if (v54)
        {
          if (v57 != v54 || v57 >= &v54[8 * v36])
          {
            memmove(v57, v54, 8 * v36);
          }

          LODWORD(v32) = v33;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v50 = v56;
          inited = v55;
          v31 = 40;
LABEL_23:
          v58 = v33[5];
          if (!v58)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v50 = v56;
        inited = v55;
        v31 = 40;
        if (!v58)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v60 = *(v50 + 16);
        if (v60)
        {
          v61 = (v50 + 32);
          v62 = *v48;
          while (1)
          {
            v63 = *v61++;
            *&v58[8 * v62] = v63;
            v62 = *v48 + 1;
            if (__OFADD__(*v48, 1))
            {
              break;
            }

            *v48 = v62;
            if (!--v60)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v49 == v38)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100065274(v88, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v26 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v26 - 8) + 48))(v19, 5, v26))
    {
      sub_10000BB04(v19, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      goto LABEL_5;
    }

    sub_100C7CDE8(v19, v7, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100065274(v7, v4, type metadata accessor for CRLFolderIdentifier);
    v76 = *v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_100B36BBC(0, v76[2] + 1, 1, v76);
    }

    v78 = v76[2];
    v77 = v76[3];
    if (v78 >= v77 >> 1)
    {
      v76 = sub_100B36BBC(v77 > 1, v78 + 1, 1, v76);
    }

    sub_10000BB04(v7, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v76[2] = v78 + 1;
    sub_100C7CDE8(v4, v76 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v78, type metadata accessor for CRLFolderIdentifier);
    *v89 = v76;
    v71 = v86;
    v70 = v87;
    v72 = v85;
  }

  else
  {
    sub_100065274(v88, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100C7CDE8(v22, v13, _s5BoardVMa);
    sub_100065274(v13, v10, type metadata accessor for CRLBoardIdentifier);
    v69 = *(v89 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_100B36BE4(0, v69[2] + 1, 1, v69);
    }

    v71 = v86;
    v70 = v87;
    v73 = v84;
    v72 = v85;
    v75 = v69[2];
    v74 = v69[3];
    if (v75 >= v74 >> 1)
    {
      v69 = sub_100B36BE4(v74 > 1, v75 + 1, 1, v69);
    }

    sub_10000BB04(v13, _s5BoardVMa);
    v69[2] = v75 + 1;
    sub_100C7CDE8(v10, v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for CRLBoardIdentifier);
    *(v89 + 8) = v69;
  }

  sub_10000BB04(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100065274(v70, v72, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v79 = *(v89 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v79 = sub_100B3648C(0, v79[2] + 1, 1, v79);
  }

  v81 = v79[2];
  v80 = v79[3];
  if (v81 >= v80 >> 1)
  {
    v79 = sub_100B3648C(v80 > 1, v81 + 1, 1, v79);
  }

  v79[2] = v81 + 1;
  result = sub_100C7CDE8(v72, v79 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(v89 + 16) = v79;
  return result;
}

uint64_t sub_100C7C840(uint64_t a1)
{
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v45 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = v40 - v23;
  v24 = a1;
  v25 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  if (!v25)
  {
    return v26;
  }

  v41 = v11;
  v42 = v9;
  v53 = _swiftEmptyArrayStorage;
  sub_100776524(0, v25, 0);
  v26 = v53;
  v27 = v24 + ((v50[80] + 32) & ~v50[80]);
  v43 = (v19 + 48);
  v44 = (v19 + 16);
  v28 = (v19 + 32);
  v40[1] = "odel index path %@";
  v40[2] = "00-0000-000000000001";
  v47 = *(v50 + 9);
  v48 = v17;
  v49 = v19;
  v50 = v15;
  while (1)
  {
    sub_100065274(v27, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100065274(v17, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v45;
        sub_100C7CDE8(v15, v45, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003E264(v22);
        sub_10000BB04(v30, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v31 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v32 = v17;
      }

      else
      {
        sub_10000BB04(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v35 = v46;
        sub_100C7CDE8(v15, v46, _s5BoardVMa);
        (*v44)(v22, v35, v18);
        v31 = _s5BoardVMa;
        v32 = v35;
      }

      sub_10000BB04(v32, v31);
      goto LABEL_13;
    }

    if (*v15)
    {
      v33 = v42;
      UUID.init(uuidString:)();
      result = (*v43)(v33, 1, v18);
      if (result == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v33 = v41;
    UUID.init(uuidString:)();
    result = (*v43)(v33, 1, v18);
    if (result == 1)
    {
      break;
    }

LABEL_12:
    sub_10000BB04(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    (*v28)(v22, v33, v18);
LABEL_13:
    v36 = *v28;
    v37 = v52;
    (*v28)(v52, v22, v18);
    v53 = v26;
    v39 = v26[2];
    v38 = v26[3];
    if (v39 >= v38 >> 1)
    {
      sub_100776524(v38 > 1, v39 + 1, 1);
      v37 = v52;
      v26 = v53;
    }

    v26[2] = v39 + 1;
    v36(v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39, v37, v18);
    v27 += v47;
    --v25;
    v15 = v50;
    v17 = v48;
    if (!v25)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100C7CDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100C7CE60(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(*(v1 + 56) + 8 * v5) + 16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1000341AC(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100C7D078()
{
  v0 = type metadata accessor for CRLDataAssetStorage();
  v1 = swift_allocObject();
  type metadata accessor for CRLUnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  atomic_thread_fence(memory_order_acq_rel);
  *(v1 + 48) = v2;
  v4 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__assetUUID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryDirectoryForAVAsset) = 0;
  v6 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryURLForAVAsset;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + 16) = xmmword_10146F370;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v13[3] = v0;
  v13[4] = &off_10188D790;
  v13[0] = v1;
  v8 = type metadata accessor for CRLAsset();
  v9 = objc_allocWithZone(v8);
  sub_10000630C(v13, v9 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v12.receiver = v9;
  v12.super_class = v8;

  v10 = objc_msgSendSuper2(&v12, "init");

  result = sub_100005070(v13);
  qword_101AD79F0 = v10;
  return result;
}

uint64_t sub_100C7D2A8()
{
  sub_10000630C(v0 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v21);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  if (swift_dynamicCast())
  {
    v1 = *(v20 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store);

    v2 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v2 + 16));
    v3 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v4 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v4)
    {
      v5 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v7 = type metadata accessor for CRLAssetManager();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      v9 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v10 = swift_allocObject();
      v11 = v1;
      v12 = swift_slowAlloc();
      *v12 = 0;
      *(v10 + 16) = v12;
      atomic_thread_fence(memory_order_acq_rel);
      *&v8[v9] = v10;
      *&v8[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v13 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v8[v13] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v8[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v19.receiver = v8;
      v19.super_class = v7;
      v14 = objc_msgSendSuper2(&v19, "init");

      v15 = *&v1[v3];
      *&v1[v3] = v14;
      v5 = v14;

      v4 = 0;
    }

    v16 = *(v2 + 16);
    v17 = v4;
    os_unfair_lock_unlock(v16);
    v6 = sub_100C7F0F4(v0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100C7D944(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for CRLAssetData();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  sub_100601584(a1, v49);
  if (!v50)
  {
    v32 = &unk_1019F4D00;
    v33 = v49;
LABEL_11:
    sub_10000CAAC(v33, v32);
    goto LABEL_12;
  }

  type metadata accessor for CRLAsset();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v31 = 0;
    return v31 & 1;
  }

  v44 = v12;
  v45 = v51;
  v24 = (v1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  sub_10000630C(v24, v49);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  if (!swift_dynamicCast())
  {
    v35 = v45;
    v36 = &v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
    sub_10000630C(&v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v49);
    if (!swift_dynamicCast())
    {
      (*(v48 + 56))(v11, 1, 1, v44);
      sub_10000CAAC(v11, &unk_101A1B880);
      v37 = v24[3];
      v38 = v24[4];
      sub_100020E58(v24, v37);
      (*(v38 + 24))(v37, v38);
      v39 = *(v36 + 3);
      v40 = *(v36 + 4);
      sub_100020E58(v36, v39);
      (*(v40 + 24))(v39, v40);
      v31 = static UUID.== infix(_:_:)();

      v41 = v47;
      v42 = *(v46 + 8);
      v42(v5, v47);
      v42(v8, v41);
      return v31 & 1;
    }

    sub_1008786E0(&v51[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData], v11);

    (*(v48 + 56))(v11, 0, 1, v44);
    v32 = &unk_101A1B880;
    v33 = v11;
    goto LABEL_11;
  }

  sub_1008786E0(&v51[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData], v20);

  sub_1006008F0(v20, v23);
  v25 = v45;
  sub_10000630C(&v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v49);
  if (!swift_dynamicCast())
  {

    sub_10072C8E4(v23);
    goto LABEL_12;
  }

  sub_1008786E0(&v51[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData], v14);

  sub_1006008F0(v14, v17);
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v26 = v44, v27 = *(v44 + 20), v28 = *&v23[v27], v29 = *&v23[v27 + 8], v30 = &v17[v27], v28 == *v30) && v29 == *(v30 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v31 = sub_100B3216C(*&v23[*(v26 + 24)], *&v17[*(v26 + 24)]);
  }

  else
  {
    v31 = 0;
  }

  sub_10072C8E4(v17);
  sub_10072C8E4(v23);
  return v31 & 1;
}

uint64_t sub_100C7ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100C7ED5C, 0, 0);
}

uint64_t sub_100C7ED5C()
{
  v1 = sub_100DCB394();
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_100C7EDC8, v1, 0);
}

uint64_t sub_100C7EDC8()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  v3 = *(v1 + 272);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  sub_1012E35E4(sub_100C81448, v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C7F0F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v9);
  (*(v10 + 24))(v9, v10);
  v11 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

  v13 = sub_10003E994(v7);
  if ((v14 & 1) == 0)
  {

LABEL_7:
    (*(v5 + 8))(v7, v4);
LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *(v5 + 8);

  v16(v7, v4);

  sub_100006370(0, &qword_1019F54D0);
  v17 = v15[2];
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {

    goto LABEL_8;
  }

  v19 = [v15[3] anyObject];
  if (v19)
  {

    v20 = 1;
  }

  else
  {
    v20 = [v15[4] anyObject];

    if (v20)
    {
      swift_unknownObjectRelease();
      v20 = 1;
    }
  }

LABEL_9:
  os_unfair_lock_unlock(*(v8 + 16));
  return v20;
}

void sub_100C7F350(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = v68 - v10;
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v11 + 16));
  v84 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
  v85 = v2;
  v12 = [*(v2 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners) objectForKeyedSubscript:a1];
  if (!v12)
  {
    v42 = *(v11 + 16);

    os_unfair_lock_unlock(v42);
    return;
  }

  v69 = v11;
  v68[0] = ObjectType;
  v12[24] = 1;
  v90 = _swiftEmptyArrayStorage;
  v13 = v12;
  swift_beginAccess();
  sub_1009FA384(*(*(v13 + 2) + 16));
  v68[1] = v13;
  v14 = *(v13 + 2);
  v15 = *(v14 + 56);
  v80 = v14;
  v81 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v82 = v17 & v15;
  v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;

  v78 = v18;
  swift_beginAccess();
  v19 = 0;
  v20 = (v16 + 63) >> 6;
  v76 = v6 + 32;
  v77 = v6 + 16;
  v74 = v20;
  v75 = (v6 + 8);
  v83 = a1;
  v71 = v6;
  v72 = v5;
  v70 = v8;
  v21 = v81;
  v22 = v82;
  if (v82)
  {
    while (1)
    {
LABEL_9:
      v82 = (v22 - 1) & v22;
      v24 = v79;
      (*(v6 + 16))(v79, *(v80 + 48) + *(v6 + 72) * (__clz(__rbit64(v22)) | (v19 << 6)), v5);
      (*(v6 + 32))(v8, v24, v5);
      v25 = *&v78[v85];
      if (!*(v25 + 16))
      {
        goto LABEL_28;
      }

      v26 = sub_10003E994(v8);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v5;
      v29 = v8;
      v30 = *(*(v25 + 56) + 8 * v26);
      v18 = *v75;

      (v18)(v29, v28);

      v73 = v30;
      v31 = sub_100C81068();
      v32 = v31;
      if (v31 >> 62)
      {
        v33 = _CocoaArrayWrapper.endIndex.getter();
        if (!v33)
        {
LABEL_51:

LABEL_52:
          v43 = objc_opt_self();
          v44 = [v43 _atomicIncrementAssertCount];
          v89 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v89);
          StaticString.description.getter();
          v45 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v46 = String._bridgeToObjectiveC()();

          v47 = [v46 lastPathComponent];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v51 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v44;
          v53 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v53;
          v54 = sub_1005CF04C();
          *(inited + 104) = v54;
          *(inited + 72) = v45;
          *(inited + 136) = &type metadata for String;
          v55 = sub_1000053B0();
          *(inited + 112) = v48;
          *(inited + 120) = v50;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v55;
          *(inited + 152) = 347;
          v56 = v89;
          *(inited + 216) = v53;
          *(inited + 224) = v54;
          *(inited + 192) = v56;
          v57 = v45;
          v58 = v56;
          v59 = static os_log_type_t.error.getter();
          sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

          v60 = static os_log_type_t.error.getter();
          sub_100005404(v51, &_mh_execute_header, v60, "Bookkeeping for asset owners is wrong.", 38, 2, _swiftEmptyArrayStorage);

          sub_10063DF98(_swiftEmptyArrayStorage, "Bookkeeping for asset owners is wrong.");
          type metadata accessor for __VaListBuilder();
          v61 = swift_allocObject();
          v61[2] = 8;
          v61[3] = 0;
          v61[4] = 0;
          v61[5] = 0;
          v62 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v63 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v64 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v65 = String._bridgeToObjectiveC()();

          [v43 handleFailureInFunction:v63 file:v64 lineNumber:347 isFatal:1 format:v65 args:v62];

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v66, v67);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }
      }

      else
      {
        v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_51;
        }
      }

      v34 = 0;
      v35 = 0;
      v87 = v32 & 0xFFFFFFFFFFFFFF8;
      v88 = v32 & 0xC000000000000001;
      v36 = 1;
      v86 = v33;
      do
      {
        if (v88)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = (v34 + 1);
          if (__OFADD__(v34, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v34 >= *(v87 + 16))
          {
            goto LABEL_48;
          }

          v37 = *(v32 + 8 * v34 + 32);
          swift_unknownObjectRetain();
          v18 = (v34 + 1);
          if (__OFADD__(v34, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v38 = v37 == a1;
        if (v36)
        {
          v39 = *(v85 + v84);
          v40 = [v39 objectForKeyedSubscript:v37];

          swift_unknownObjectRelease();
          if (v40)
          {
            v36 = v40[24];
          }

          else
          {
            v36 = 0;
          }

          a1 = v83;
        }

        else
        {
          swift_unknownObjectRelease();
          v36 = 0;
        }

        v35 |= v38;
        ++v34;
      }

      while (v18 != v86);

      v8 = v70;
      if ((v35 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (v36)
      {
        v18 = *(v73 + 16);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v6 = v71;
      v5 = v72;
LABEL_35:
      v20 = v74;
      v21 = v81;
      v22 = v82;
      if (!v82)
      {
        goto LABEL_5;
      }
    }

LABEL_28:
    (*v75)(v8, v5);
    goto LABEL_35;
  }

  while (1)
  {
LABEL_5:
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v23 >= v20)
    {
      break;
    }

    v22 = *(v21 + 8 * v23);
    ++v19;
    if (v22)
    {
      v19 = v23;
      goto LABEL_9;
    }
  }

  v18 = v90;
  if (!(v90 >> 62))
  {
    v41 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_41;
  }

LABEL_50:
  v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
  if (v41 > 0)
  {
    sub_100C80114(v18);
  }

  os_unfair_lock_unlock(*(v69 + 16));
}

void sub_100C7FC50()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v1 + 16));
  swift_beginAccess();

  v3 = sub_100C7CE60(v2);

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    sub_100C8013C(v3);
  }

LABEL_4:

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_100C7FD30()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10006849C(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_101A17F68 = result;
  return result;
}

void sub_100C7FF90()
{
  type metadata accessor for CRLUnfairLock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  off_101A17F70 = v0;
}

id sub_100C7FFE8()
{
  result = [objc_opt_self() hashTableWithOptions:517];
  qword_101A17F78 = result;
  return result;
}

uint64_t sub_100C80040(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = qword_1019F1FA0;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_101A17F70;
  os_unfair_lock_lock(*(off_101A17F70 + 2));
  if (qword_1019F1FA8 != -1)
  {
    swift_once();
  }

  [qword_101A17F78 *a4];
  os_unfair_lock_unlock(v7[2]);

  return swift_unknownObjectRelease();
}

uint64_t sub_100C80164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1F98 != -1)
  {
    swift_once();
  }

  v18[1] = qword_101A17F68;
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10006849C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_100C80444(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (qword_1019F1FA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v4 = off_101A17F70;
    os_unfair_lock_lock(*(off_101A17F70 + 2));
    if (qword_1019F1FA8 != -1)
    {
      swift_once();
    }

    v5 = [qword_101A17F78 allObjects];
    sub_1005B981C(&unk_101A181A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    os_unfair_lock_unlock(v4[2]);
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        break;
      }

      goto LABEL_6;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      break;
    }

LABEL_6:
    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      type metadata accessor for CRLAsset();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v9 *a3];
      swift_unknownObjectRelease();

      ++v8;
      if (v10 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_18:
}

uint64_t sub_100C8061C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v21 = v18 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem) || (, v10 = dispatch thunk of DispatchWorkItem.isCancelled.getter(), result = , (v10 & 1) != 0))
  {
    v19 = v3;
    v20 = v2;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    aBlock[4] = sub_100C82B00;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189E448;
    v18[1] = _Block_copy(aBlock);
    v22 = _swiftEmptyArrayStorage;
    sub_10006849C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);

    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v14 = DispatchWorkItem.init(flags:block:)();

    *(v0 + v9) = v14;

    if (qword_1019F1F98 != -1)
    {
      swift_once();
    }

    static DispatchTime.now()();
    v15 = v21;
    + infix(_:_:)();
    v16 = v20;
    v17 = *(v19 + 8);
    result = v17(v5, v20);
    if (*(v0 + v9))
    {

      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return v17(v15, v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100C809C8()
{
  v53 = type metadata accessor for UUID();
  v49 = *(v53 - 8);
  __chkstk_darwin(v53);
  v1 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v46 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    os_unfair_lock_lock(*(*(Strong + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock) + 16));
    *&v3[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;

    v4 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
    swift_beginAccess();
    v5 = *&v3[v4];
    v54 = _swiftEmptyArrayStorage;
    v56 = _swiftEmptyArrayStorage;
    v6 = v5 + 64;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;
    v52 = v5;
    swift_bridgeObjectRetain_n();
    v11 = 0;
    while (1)
    {
      v13 = v11;
      if (!v9)
      {
        break;
      }

LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v52 + 56) + ((v11 << 9) | (8 * v14)));
      v16 = *(v15 + 24);

      v17 = [v16 anyObject];
      if (v17)
      {
        v12 = v17;
      }

      else if ([*(v15 + 32) anyObject])
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v18 = *(v15 + 16);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v54 = v56;
      }
    }

    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v11);
      ++v13;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v9 = v54;
    v45 = v54 >> 62;
    if (v54 >> 62)
    {
      goto LABEL_33;
    }

    v20 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      do
      {
        v21 = 0;
        v51 = v9 & 0xFFFFFFFFFFFFFF8;
        v52 = v9 & 0xC000000000000001;
        v50 = (v49 + 8);
        v47 = v1;
        v48 = v20;
        while (1)
        {
          if (v52)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *(v51 + 16))
            {
              goto LABEL_32;
            }

            v22 = *(v9 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v26 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
          v25 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
          sub_100020E58(&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v26);
          (*(v25 + 24))(v26, v25);
          swift_beginAccess();
          v27 = sub_10003E994(v1);
          if (v28)
          {
            v29 = v27;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = *&v3[v4];
            v55 = v31;
            *&v3[v4] = 0x8000000000000000;
            v32 = v3;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100AA4F80();
              v31 = v55;
            }

            v33 = *(v49 + 8);
            v34 = v53;
            v33(*(v31 + 48) + *(v49 + 72) * v29, v53);

            sub_100BDBB9C(v29, v31);
            v35 = v47;
            v33(v47, v34);
            *&v32[v4] = v31;
            v9 = v54;
            v3 = v32;
            v1 = v35;
            v20 = v48;
          }

          else
          {
            (*v50)(v1, v53);
            v9 = v54;
          }

          swift_endAccess();

          ++v21;
          if (v24 == v20)
          {
            goto LABEL_34;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        v20 = v19;
      }

      while (v19);
    }

LABEL_34:
    if (*(*&v3[v4] + 16))
    {
      sub_100C8061C(v19, 3600.0);
    }

    os_unfair_lock_unlock(*(*&v3[v46] + 16));
    if (v45)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_38;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_38:

      return;
    }

    if (qword_1019F1FA0 != -1)
    {
      goto LABEL_55;
    }

LABEL_41:
    v36 = off_101A17F70;
    os_unfair_lock_lock(*(off_101A17F70 + 2));
    if (qword_1019F1FA8 != -1)
    {
      swift_once();
    }

    v37 = [qword_101A17F78 allObjects];
    sub_1005B981C(&unk_101A181A0);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    os_unfair_lock_unlock(v36[2]);
    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
LABEL_57:

        return;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_57;
      }
    }

    v40 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v41 = *(v38 + 8 * v40 + 32);
        swift_unknownObjectRetain();
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          swift_once();
          goto LABEL_41;
        }
      }

      type metadata accessor for CRLAsset();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v41 willCullAssets:isa];
      swift_unknownObjectRelease();

      ++v40;
      if (v42 == v39)
      {
        goto LABEL_57;
      }
    }
  }
}

unint64_t sub_100C81068()
{
  v1 = *(v0 + 32);
  v2 = [v1 count];
  v3 = *(v0 + 24);
  if (v2 < 1)
  {
    v10 = [v3 allObjects];
    type metadata accessor for CRLBoard(0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v11 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      return v11;
    }

    sub_1005B981C(&qword_101A00150);
    v13 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    return v13;
  }

  if ([v3 count] < 1)
  {
    v12 = [v1 allObjects];
    sub_1005B981C(&qword_101A00150);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  v4 = [v3 allObjects];
  type metadata accessor for CRLBoard(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    sub_1005B981C(&qword_101A00150);
    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v6 = v5;
  }

  v7 = [v1 allObjects];
  sub_1005B981C(&qword_101A00150);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10079ADE8(v8);
  return v6;
}

uint64_t sub_100C812A8()
{

  return swift_deallocClassInstance();
}

id sub_100C81328(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100C81464(uint64_t a1, void *a2, void *a3)
{
  v195 = a1;
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v185 = &v181 - v9;
  v192 = type metadata accessor for UUID();
  v10 = *(v192 - 8);
  __chkstk_darwin(v192);
  v182 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v181 - v13;
  __chkstk_darwin(v15);
  v199 = &v181 - v16;
  v17 = *(a3 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock);
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
  Strong = swift_unknownObjectWeakLoadStrong();
  v196 = a3;
  v193 = v10;
  v187 = v14;
  v188 = v17;
  v184 = v7;
  v191 = v18;
  if (Strong)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_98:
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 7104878;
  }

  v197 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v183 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  v189 = v23;
  v190 = v25;
  *(inited + 32) = v23;
  v200 = (inited + 32);
  *(inited + 64) = v27;
  *(inited + 40) = v25;

  v28 = [a2 store];
  v29 = [v28 description];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  v198 = v27;
  *(inited + 72) = v30;
  *(inited + 80) = v32;
  v33 = [a2 store];
  v34 = v196;
  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {

LABEL_9:
    v194 = a2;
    v181 = objc_opt_self();
    LODWORD(v39) = [v181 _atomicIncrementAssertCount];
    v203[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v203);
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [v41 lastPathComponent];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v44;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_10;
  }

  v36 = v35;
  type metadata accessor for CRLBoardDataStore(0);
  v37 = static NSObject.== infix(_:_:)();

  v38 = v193;
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v74 = [a2 parentBoard];
  inited = v195;
  v76 = v189;
  v75 = v190;
  v186 = v74;
  if (!v74)
  {
    goto LABEL_66;
  }

  v77 = v74;
  v78 = swift_initStackObject();
  *(v78 + 16) = v183;
  *(v78 + 32) = v76;
  v200 = (v78 + 32);
  v79 = v198;
  *(v78 + 56) = &type metadata for String;
  *(v78 + 64) = v79;
  *(v78 + 40) = v75;
  v80 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
  v81 = *&v77[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  v194 = v77;
  v82 = [v81 description];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  *(v78 + 96) = &type metadata for String;
  *(v78 + 104) = v79;
  *(v78 + 72) = v83;
  *(v78 + 80) = v85;
  v86 = *&v77[v80];
  v55 = v34;
  v87 = swift_unknownObjectWeakLoadStrong();
  if (v87)
  {
    v88 = v87;
    type metadata accessor for CRLBoardDataStore(0);
    v89 = v86;
    v90 = static NSObject.== infix(_:_:)();

    if (v90)
    {

LABEL_68:
      v38 = v193;
      v119 = v194;
      inited = v195;
      goto LABEL_69;
    }
  }

  v190 = objc_opt_self();
  LODWORD(v191) = [v190 _atomicIncrementAssertCount];
  v203[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v78, v203);
  StaticString.description.getter();
  v91 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v92 = String._bridgeToObjectiveC()();

  v93 = [v92 lastPathComponent];

  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v97 = static OS_os_log.crlAssert;
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_10146CA70;
  *(v98 + 56) = &type metadata for Int32;
  *(v98 + 64) = &protocol witness table for Int32;
  *(v98 + 32) = v191;
  v99 = sub_100006370(0, &qword_1019F4D30);
  *(v98 + 96) = v99;
  v100 = sub_1005CF04C();
  *(v98 + 72) = v91;
  v101 = v198;
  *(v98 + 136) = &type metadata for String;
  *(v98 + 144) = v101;
  *(v98 + 104) = v100;
  *(v98 + 112) = v94;
  *(v98 + 120) = v96;
  *(v98 + 176) = &type metadata for UInt;
  *(v98 + 152) = 241;
  v102 = v203[0];
  *(v98 + 216) = v99;
  *(v98 + 224) = v100;
  *(v98 + 184) = &protocol witness table for UInt;
  *(v98 + 192) = v102;
  v103 = v91;
  v104 = v102;
  v105 = static os_log_type_t.error.getter();
  sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v106 = static os_log_type_t.error.getter();
  sub_100005404(v97, &_mh_execute_header, v106, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, v78);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  inited = (v38 + 3);
  v38[4] = 0;
  v38[5] = 0;
  v191 = v78;
  v34 = *(v78 + 16);
  if (!v34)
  {
LABEL_67:
    v120 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v121 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v122 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v123 = String._bridgeToObjectiveC()();

    [v190 handleFailureInFunction:v121 file:v122 lineNumber:241 isFatal:0 format:v123 args:v120];

    v55 = v196;
    goto LABEL_68;
  }

  a2 = 0;
  while (1)
  {
    v107 = &v200[5 * a2];
    v40 = v107[3];
    LODWORD(v39) = sub_100020E58(v107, v40);
    v108 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v43 = *inited;
    v109 = *(v108 + 16);
    v62 = __OFADD__(*inited, v109);
    v110 = *inited + v109;
    if (v62)
    {
      goto LABEL_91;
    }

    v39 = v38[4];
    if (v39 >= v110)
    {
      goto LABEL_58;
    }

    if (v39 + 0x4000000000000000 < 0)
    {
      goto LABEL_94;
    }

    v40 = v38[5];
    if (2 * v39 > v110)
    {
      v110 = 2 * v39;
    }

    v38[4] = v110;
    if ((v110 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_95;
    }

    v111 = v108;
    v112 = swift_slowAlloc();
    v113 = v112;
    v38[5] = v112;
    if (!v40)
    {
      break;
    }

    if (v112 != v40 || v112 >= &v40[v43])
    {
      memmove(v112, v40, 8 * v43);
    }

    LODWORD(v39) = v38;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v108 = v111;
LABEL_58:
    v113 = v38[5];
    if (!v113)
    {
      goto LABEL_65;
    }

LABEL_59:
    v115 = *(v108 + 16);
    if (v115)
    {
      v116 = (v108 + 32);
      v117 = *inited;
      while (1)
      {
        v118 = *v116++;
        v113[v117] = v118;
        v117 = *inited + 1;
        if (__OFADD__(*inited, 1))
        {
          break;
        }

        *inited = v117;
        if (!--v115)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
LABEL_10:
      v45 = static OS_os_log.crlAssert;
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_10146CA70;
      *(v46 + 56) = &type metadata for Int32;
      *(v46 + 64) = &protocol witness table for Int32;
      *(v46 + 32) = v39;
      v47 = sub_100006370(0, &qword_1019F4D30);
      *(v46 + 96) = v47;
      v48 = sub_1005CF04C();
      *(v46 + 72) = v40;
      v49 = v198;
      *(v46 + 136) = &type metadata for String;
      *(v46 + 144) = v49;
      *(v46 + 104) = v48;
      *(v46 + 112) = v43;
      *(v46 + 120) = v38;
      *(v46 + 176) = &type metadata for UInt;
      *(v46 + 152) = 235;
      v50 = v203[0];
      *(v46 + 216) = v47;
      *(v46 + 224) = v48;
      *(v46 + 184) = &protocol witness table for UInt;
      *(v46 + 192) = v50;
      v51 = v40;
      v52 = v50;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v54, "Unexpected board data store. expected=%{public}@, actual=%{public}@", 67, 2, inited);

      type metadata accessor for __VaListBuilder();
      v40 = swift_allocObject();
      v40[2] = 8;
      v40[3] = 0;
      v38 = v40 + 3;
      v40[4] = 0;
      v40[5] = 0;
      v186 = inited;
      v55 = *(inited + 16);
      if (v55)
      {
        v56 = 0;
        inited = 40;
        while (1)
        {
          v57 = &v200[5 * v56];
          v43 = v57[3];
          LODWORD(v39) = sub_100020E58(v57, v43);
          v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v60 = *v38;
          v61 = *(v58 + 16);
          v62 = __OFADD__(*v38, v61);
          v63 = *v38 + v61;
          if (v62)
          {
            goto LABEL_90;
          }

          v64 = v58;
          v39 = v40[4];
          if (v39 >= v63)
          {
            goto LABEL_27;
          }

          if (v39 + 0x4000000000000000 < 0)
          {
            goto LABEL_92;
          }

          v43 = v40[5];
          if (2 * v39 > v63)
          {
            v63 = 2 * v39;
          }

          v40[4] = v63;
          if ((v63 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_93;
          }

          result = swift_slowAlloc();
          v40[5] = result;
          if (v43)
          {
            break;
          }

LABEL_28:
          if (!result)
          {
            __break(1u);
            goto LABEL_98;
          }

          v66 = *(v64 + 16);
          if (v66)
          {
            v67 = (v64 + 32);
            v68 = *v38;
            while (1)
            {
              v69 = *v67++;
              *(result + v68) = v69;
              v68 = *v38 + 1;
              if (__OFADD__(*v38, 1))
              {
                break;
              }

              *v38 = v68;
              if (!--v66)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
            goto LABEL_81;
          }

LABEL_12:

          v56 = (v56 + 1);
          if (v56 == v55)
          {
            goto LABEL_34;
          }
        }

        if (result != v43 || result >= v43 + 8 * v60)
        {
          memmove(result, v43, 8 * v60);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
        result = v40[5];
        goto LABEL_28;
      }

LABEL_34:
      v70 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v73 = String._bridgeToObjectiveC()();

      [v181 handleFailureInFunction:v71 file:v72 lineNumber:235 isFatal:0 format:v73 args:v70];

      v34 = v196;
      v38 = v193;
      a2 = v194;
      goto LABEL_35;
    }

LABEL_43:

    a2 = a2 + 1;
    if (a2 == v34)
    {
      goto LABEL_67;
    }
  }

  v108 = v111;
  if (v113)
  {
    goto LABEL_59;
  }

LABEL_65:
  __break(1u);
LABEL_66:

  v119 = a2;
  swift_unknownObjectRetain();
  v55 = v34;
LABEL_69:
  v124 = v38[2];
  v124(v199, inited, v192);
  v125 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  v126 = *(v55 + v125);
  v127 = *(v126 + 16);
  v200 = v38 + 2;
  v191 = v124;
  if (!v127)
  {
LABEL_74:
    v133 = v185;
    sub_1008786E0(inited, v185);
    v134 = v119;
    v135 = [swift_unknownObjectRetain_n() store];
    v136 = v184;
    sub_1008786E0(v133, v184);
    v137 = type metadata accessor for CRLAssetBackedAssetStorage();
    v138 = swift_allocObject();
    sub_1006008F0(v136, &v138[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData]);
    *&v138[OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_store] = v135;
    v203[4] = &off_10189C5F8;
    v203[3] = v137;
    v203[0] = v138;
    v139 = type metadata accessor for CRLAsset();
    v140 = objc_allocWithZone(v139);
    sub_10000630C(v203, v140 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    v202.receiver = v140;
    v202.super_class = v139;
    v141 = objc_msgSendSuper2(&v202, "init");
    v142 = v133;
    v60 = v134;
    sub_10072C8E4(v142);
    sub_100005070(v203);
    type metadata accessor for CRLAssetManager.AssetInfo();
    v143 = swift_allocObject();
    v144 = objc_opt_self();
    v145 = v141;
    *(v143 + 24) = [v144 hashTableWithOptions:517];
    v146 = [objc_opt_self() hashTableWithOptions:517];
    *(v143 + 32) = v146;
    *(v143 + 16) = v145;
    type metadata accessor for CRLBoard(0);
    v147 = swift_dynamicCastClass();
    if (v147)
    {
      [*(v143 + 24) addObject:v147];
    }

    else
    {
      v148 = v145;
      [v146 addObject:v60];
    }

    swift_unknownObjectRelease();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v201 = *(v55 + v125);
    *(v55 + v125) = 0x8000000000000000;
    sub_100A9BB98(v143, v199, isUniquelyReferenced_nonNull_native);
    *(v55 + v125) = v201;
    swift_endAccess();
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v190 = v143;
    v150 = static OS_os_log.assetManagement;
    v151 = swift_initStackObject();
    *(v151 + 16) = xmmword_10146C6B0;
    v152 = UUID.uuidString.getter();
    v153 = v198;
    *(v151 + 56) = &type metadata for String;
    *(v151 + 64) = v153;
    *(v151 + 32) = v152;
    *(v151 + 40) = v154;
    v155 = static os_log_type_t.default.getter();
    sub_100005404(v150, &_mh_execute_header, v155, "CRLAssetManager asset(forAssetData:%@, owner:) create new", 57, 2, v151);

    swift_setDeallocating();
    sub_100005070(v151 + 32);
    goto LABEL_85;
  }

  v128 = sub_10003E994(v199);
  if ((v129 & 1) == 0)
  {

    goto LABEL_74;
  }

  v56 = *(*(v126 + 56) + 8 * v128);

  type metadata accessor for CRLBoard(0);
  v60 = v119;
  v130 = swift_dynamicCastClass();
  v59 = "addObject:";
  if (v130)
  {
    v131 = v130;
    v132 = v56[3];
  }

  else
  {
LABEL_81:
    v132 = v56[4];
    v131 = v60;
  }

  [v132 v59];
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v190 = v56;
  v156 = static OS_os_log.assetManagement;
  v157 = swift_initStackObject();
  *(v157 + 16) = xmmword_10146C6B0;
  v158 = UUID.uuidString.getter();
  v159 = v198;
  *(v157 + 56) = &type metadata for String;
  *(v157 + 64) = v159;
  *(v157 + 32) = v158;
  *(v157 + 40) = v160;
  v161 = static os_log_type_t.default.getter();
  sub_100005404(v156, &_mh_execute_header, v161, "CRLAssetManager asset(forAssetData:%@, owner:) add owner to existing", 68, 2, v157);
  swift_setDeallocating();
  sub_100005070(v157 + 32);
  swift_unknownObjectRetain();
LABEL_85:
  v162 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
  v163 = [*(v55 + OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners) objectForKeyedSubscript:v60];
  swift_unknownObjectRelease();
  v164 = v60;
  if (v163)
  {
    v165 = v182;
    v166 = v199;
    v167 = v192;
    v191(v182, v199, v192);
    swift_beginAccess();
    v168 = v187;
    sub_100E6AF38(v187, v165);
    v169 = v38[1];
    v169(v168, v167);
    swift_endAccess();

    swift_unknownObjectRelease();

    v169(v166, v167);
  }

  else
  {
    v170 = *(v55 + v162);
    v171 = v187;
    v194 = v164;
    v172 = v191;
    v173 = v192;
    v191(v187, v199, v192);
    type metadata accessor for CRLAssetManager.OwnerInfo();
    v174 = swift_allocObject();
    *(v174 + 24) = 0;
    sub_1005B981C(&qword_101A1DBB0);
    v175 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v176 = swift_allocObject();
    *(v176 + 16) = xmmword_10146C6B0;
    v172(v176 + v175, v171, v173);
    v177 = v170;
    v178 = sub_100E93A84(v176);
    swift_setDeallocating();
    v179 = v38[1];
    v179(v176 + v175, v173);
    swift_deallocClassInstance();
    v179(v171, v173);
    *(v174 + 16) = v178;
    [v177 setObject:v174 forKeyedSubscript:v194];

    swift_unknownObjectRelease();

    v179(v199, v173);
  }

  v180 = v190[2];

  sub_100C8061C();
  os_unfair_lock_unlock(*(v188 + 16));
  return v180;
}

id sub_100C828B4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = *(v3 + 16);
  v10(&v22 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  v11 = type metadata accessor for CRLFileAssetStorage();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage_lock;
  type metadata accessor for CRLUnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  atomic_thread_fence(memory_order_acq_rel);
  *(v12 + v13) = v14;
  v16 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID;
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  (*(v3 + 32))(v12 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url, v5, v2);
  v24[3] = v11;
  v24[4] = &off_10189C5F8;
  v24[0] = v12;
  v18 = type metadata accessor for CRLAsset();
  v19 = objc_allocWithZone(v18);
  sub_10000630C(v24, v19 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v23.receiver = v19;
  v23.super_class = v18;
  v20 = objc_msgSendSuper2(&v23, "init");
  (*(v3 + 8))(v9, v2);
  sub_100005070(v24);
  return v20;
}

void *sub_100C82B64(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v26 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject childReps];
      sub_100006370(0, &qword_1019FB7A0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v31)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_100C854AC();
            for (i = 0; i != v15; ++i)
            {
              sub_1005B981C(&qword_101A18250);
              v18 = sub_100777974(v30, i, v7);
              v20 = *v19;
              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v31);
            v22 = v21 + v31;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

void sub_100C82F80(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v85 = Strong;
  if (![objc_opt_self() prefersHoverToolPreview])
  {

    return;
  }

  v5 = [v85 canvasView];
  [a1 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [v85 convertBoundsToUnscaledPoint:{v7, v9}];
  v11 = v10;
  v13 = v12;
  [a1 zOffset];
  v15 = v14;
  v83 = [v85 freehandDrawingToolkit];
  v16 = [v85 canvasView];
  v17 = [v16 enclosingScrollView];

  sub_100C83978();
  v18 = sub_100C84C40(a1, v15);
  if (qword_1019F21C8 != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.crlPencilHover;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x80000001015960D0;
  String.append(_:)(v21);
  if (v18)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v18)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x657366664F7A202CLL;
  v25._object = 0xEA00000000003A74;
  String.append(_:)(v25);
  v26._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x3A6574617473202CLL;
  v27._object = 0xE900000000000020;
  String.append(_:)(v27);
  v28 = [a1 state];
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      v29 = 0xE500000000000000;
      v30 = 0x6465646E65;
      goto LABEL_29;
    }

    if (v28 != 4)
    {
      if (v28 == 5)
      {
        v29 = 0xE600000000000000;
        v30 = 0x64656C696166;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v29 = 0xE900000000000064;
    v31 = 0x6C65636E6163;
    goto LABEL_28;
  }

  if (!v28)
  {
    v29 = 0xE800000000000000;
    v31 = 0x626973736F70;
LABEL_28:
    v30 = v31 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
    goto LABEL_29;
  }

  if (v28 != 1)
  {
    if (v28 == 2)
    {
      v29 = 0xE700000000000000;
      v30 = 0x6465676E616863;
      goto LABEL_29;
    }

LABEL_25:
    v29 = 0xE700000000000000;
    v30 = 0x746C7561666564;
    goto LABEL_29;
  }

  v29 = 0xE500000000000000;
  v30 = 0x6E61676562;
LABEL_29:
  v32 = v29;
  String.append(_:)(*&v30);

  v33._object = 0x80000001015960F0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100C850EC;
  *(v35 + 24) = v34;
  *&v93[0] = sub_100C85110;
  *(&v93[0] + 1) = v35;
  v36 = v2;
  sub_1005B981C(&unk_101A18240);
  v37._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v37);

  v38 = v86;
  v39 = v87;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v38;
  *(inited + 40) = v39;
  v40 = static os_log_type_t.debug.getter();
  sub_100005404(v19, &_mh_execute_header, v40, "**** %@", 7, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100C83AA0();
  v41 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_pencilHoverStates;
  v42 = *&v36[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_pencilHoverStates];
  sub_100C83CE4(v11, v13);
  v42[OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType] = v43;

  v44 = v17;
  if ((v18 & 1) == 0)
  {
    goto LABEL_37;
  }

  v45 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator;
  v46 = *&v36[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator];
  if (!v46 || !v83 || !v17)
  {
    goto LABEL_37;
  }

  v81 = v46;
  v82 = v83;
  v47 = v17;
  if ([v47 isDragging] & 1) != 0 || (objc_msgSend(v47, "isDragging"))
  {

LABEL_36:
    v44 = v17;
LABEL_37:
    v48 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator;
    v49 = *&v36[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator];
    if (v49)
    {
      v50 = v49;
      sub_10083C82C();
    }

    v51 = *&v36[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager];
    v52 = sub_1012E2DEC();

    if (v52)
    {
      v53 = swift_unknownObjectWeakLoadStrong();
      if (v53)
      {
        v54 = v53;
        v55 = *&v36[v48];
        if (v55)
        {
          v56 = v55;
          [v54 invalidateLayersForDecorator:v56];
        }

        else
        {
        }
      }
    }

    return;
  }

  v57 = [v47 isDecelerating];

  if (v57)
  {
    v47 = v81;
    goto LABEL_36;
  }

  sub_100C83CE4(v11, v13);
  v59 = *&v36[v41];
  v84 = v58;
  v80 = v59;
  if (v58 - 1 >= 2)
  {
    if (v58 == 3)
    {
      v66 = objc_opt_self();
      v67 = v59;
      v63 = [v66 clearColor];
      v65 = 1.0;
      v64 = 0.0;
    }

    else
    {
      v68 = v59;
      v63 = [v82 colorForCurrentTool];
      [v82 opacityForCurrentTool];
      v65 = v69;
      v64 = 4.0;
    }
  }

  else
  {
    v60 = v58;
    v61 = qword_1019F2880;
    v62 = v59;
    if (v61 != -1)
    {
      swift_once();
    }

    v63 = qword_101AD8F20;
    if (v60 == 2)
    {
      v64 = 12.0;
    }

    else
    {
      v64 = 23.0;
    }

    v65 = 1.0;
  }

  v70 = [v63 CGColor];
  v71 = sub_100C9D130(v84, v70);

  v72 = [v63 CGColor];
  LOBYTE(v88) = v84;
  *(&v88 + 1) = v7;
  *&v89 = v9;
  *(&v89 + 1) = v15;
  *&v90 = v72;
  *(&v90 + 1) = v64;
  *&v91 = v65;
  *(&v91 + 1) = v71;
  v92 = v80;
  v94 = v80;
  v93[2] = v90;
  v93[3] = v91;
  v93[0] = v88;
  v93[1] = v89;
  if ([v82 supportsPencilHoverPreview])
  {
    sub_10083BD18(v93);
    v73 = [v82 isObjectEraser];
    *(v81 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_isHoveredWithObjectEraser) = v73;
  }

  else
  {
    *(v81 + OBJC_IVAR____TtC8Freeform30CRLiOSPencilToolShapeDecorator_isHoveredWithObjectEraser) = 0;
    sub_10083C82C();
  }

  [v82 keepPencilShadowVisible];
  [v82 inputPointFromHoverGesture:a1];
  [v82 updatePencilShadowWithInputPoint:&v86];
  if ([v82 isInDrawingMode])
  {
    [a1 state];
    sub_100C85198(v7, v9);

    sub_100C85144(&v88);
  }

  else
  {
    v74 = *&v36[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager];
    v75 = sub_1012E2DEC();

    if ((v75 & 1) != 0 && (v76 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v77 = v76;
      v78 = *&v36[v45];
      if (v78)
      {
        v79 = v78;
        [v77 invalidateLayersForDecorator:v79];

        sub_100C85144(&v88);
      }

      else
      {

        sub_100C85144(&v88);
      }
    }

    else
    {

      sub_100C85144(&v88);
    }
  }
}

void sub_100C83978()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layerHost];

    if (v2)
    {
      if ([v2 respondsToSelector:"asiOSCVC"])
      {
        v3 = [v2 asiOSCVC];
        v4 = [v3 delegate];

        if (!v4)
        {
          __break(1u);
          return;
        }

        swift_unknownObjectRelease();
        if ([v4 respondsToSelector:"currentDocumentMode"])
        {
          v5 = [v4 currentDocumentMode];
          swift_unknownObjectRelease();
          [v5 pencilModeType];

          return;
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_100C83AA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator);
  if (Strong)
  {
    if (!v3)
    {
      v7 = Strong;
      v4 = [objc_allocWithZone(type metadata accessor for CRLiOSPencilToolShapeDecorator()) init];
      v5 = *(v0 + v2);
      *(v0 + v2) = v4;
      v6 = v4;

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v7 addDecorator:v6];

      Strong = v7;
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator) = 0;
    Strong = v3;
  }
}

void sub_100C83BC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator);
  if (v3)
  {
    v4 = v3;
    sub_10083C82C();
  }

  v5 = *(v0 + OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager);
  v6 = sub_1012E2DEC();

  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(v1 + v2))
      {
        v8 = Strong;
        [Strong invalidateLayersForDecorator:?];
        Strong = v8;
      }
    }
  }
}

void sub_100C83CE4(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = [Strong layerHost];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (([v6 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v6 asiOSCVC];
  v8 = [v7 delegate];

  if (!v8)
  {
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  if (([v8 respondsToSelector:"currentDocumentMode"] & 1) == 0)
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = [v8 currentDocumentMode];
  swift_unknownObjectRelease();
  v10 = [v9 pencilModeType];

  if (!v10)
  {
LABEL_10:
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = [v11 pencilBehaviorOutsideModesAtUnscaledPoint:{a1, a2}];
    swift_unknownObjectRelease();
    if (v12 == 2 || v12 != 1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v10 != 1)
  {
    return;
  }

LABEL_13:
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13 && (v14 = v13, v15 = [v13 freehandDrawingToolkit], v14, v15))
  {
    sub_100D89D88();
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 101;
    v29 = v39;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:101 isFatal:0 format:v38 args:v35];
  }
}

id sub_100C8429C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100C843A8(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong convertBoundsToUnscaledPoint:{a1, a2}];
    v7 = v6;
    v9 = v8;
    v43 = v5;
    v10 = [v5 parentForFreehandDrawingLayoutsAtPoint:?];
    v42 = v10;
    if (v10)
    {
      v11 = [v10 children];
      sub_100006370(0, &qword_101A287B0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v12 = objc_opt_self();
    sub_100006370(0, &qword_101A287B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v12 freehandDrawingLayoutsToInteractWithFromLayouts:isa];

    sub_100006370(0, &qword_101A03810);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_59:
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    while (v17 != v18)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_54;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v22 = [v43 repForLayout:v19];

      ++v18;
      if (v22)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v21;
      }
    }

    v23 = sub_100C82B64(_swiftEmptyArrayStorage);

    if (v23 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15)
    {
      v16 = 0;
      v24 = _swiftEmptyArrayStorage;
LABEL_22:
      v25 = v16;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v16 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_55;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v24 = _swiftEmptyArrayStorage;
          if (v16 != v15)
          {
            goto LABEL_22;
          }

          goto LABEL_36;
        }

        ++v25;
        if (v16 == v15)
        {
          goto LABEL_36;
        }
      }
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_36:

    if (_swiftEmptyArrayStorage >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_38:
        v15 = 0;
        v28 = _swiftEmptyArrayStorage & 0xC000000000000001;
        v29 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        v30 = &selRef_concreteClass;
        v31 = &selRef_concreteClass;
        do
        {
          if (v28)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *(v29 + 16))
            {
              goto LABEL_58;
            }

            v32 = v24[v15 + 4];
          }

          v33 = v32;
          v34 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_57;
          }

          [v32 v30[181]];
          if ([v33 v31[91]])
          {
            v35 = v28;
            v36 = v24;
            v37 = v31;
            v38 = v30;
            result = [v33 shapeInfo];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = (*((swift_isaMask & *result) + 0x578))();

            if (v41)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v30 = v38;
            v31 = v37;
            v24 = v36;
            v28 = v35;
            v29 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
          }

          ++v15;
        }

        while (v34 != v16);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

id sub_100C84964(unint64_t a1)
{
  v14 = sub_1006749E8(a1, *v1);
  if (v14)
  {
    return ((v14 & 1) == 0);
  }

  sub_1012E2F54();

  *v1 = a1;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return ((v14 & 1) == 0);
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = [v5 styledLayout];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result opacity];
    v11 = v10;

    result = [v6 styledLayout];
    if (!result)
    {
      goto LABEL_21;
    }

    v12 = result;
    [result dynamicOpacityChangeDidBegin];

    result = [v6 styledLayout];
    if (!result)
    {
      goto LABEL_22;
    }

    v13 = result;
    [result dynamicOpacityUpdateToValue:v11 * 0.2];

    if (v7 == v3)
    {
      return ((v14 & 1) == 0);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_100C84B18()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_decorator] = 0;
  v1 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_previewImageProvider;
  type metadata accessor for CRLiOSPencilHoverPreviewImageProvider();
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_pencilHoverStates;
  v4 = type metadata accessor for CRLiOSPencilHoverStates();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC8Freeform23CRLiOSPencilHoverStates_currentHoverToolType] = 3;
  v8.receiver = v5;
  v8.super_class = v4;
  *&v0[v3] = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC8Freeform31CRLiOSPencilHoverGestureHandler_hoverRepManager] = [objc_allocWithZone(type metadata accessor for CRLiOSPencilHoveredRepManager()) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRLiOSPencilHoverGestureHandler();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100C84C40(void *a1, double a2)
{
  if ([a1 state] - 1 > 1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong canvasView];
    [a1 locationInView:v6];
    v8 = v7;
    v10 = v9;

    [v5 convertBoundsToUnscaledPoint:{v8, v10}];
    if (a2 < 0.0 || a2 >= 1.0)
    {

      return 0;
    }

    v13 = v12;
    v14 = v11;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = [v15 shouldAllowNativeHoverPreviewAtUnscaledPoint:{v14, v13}];
      swift_unknownObjectRelease();

      return v16;
    }
  }

  else
  {
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 197;
    v31 = v41;
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:197 isFatal:0 format:v40 args:v37];
  }

  return 1;
}