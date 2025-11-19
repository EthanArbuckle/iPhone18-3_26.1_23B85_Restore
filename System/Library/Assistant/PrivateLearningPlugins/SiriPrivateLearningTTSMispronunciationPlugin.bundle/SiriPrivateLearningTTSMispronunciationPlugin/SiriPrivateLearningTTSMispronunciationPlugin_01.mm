BOOL sub_147C8(uint64_t a1, uint64_t a2)
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
  return sub_18140(v5, v7);
}

uint64_t sub_14824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_34BC0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_14884(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_181E8(&v5, &v7) & 1;
}

uint64_t sub_148EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953718636;
  if (v2 != 1)
  {
    v3 = 1801677166;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7473726966;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1953718636;
  if (*a2 != 1)
  {
    v6 = 1801677166;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7473726966;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_34BC0();
  }

  return v9 & 1;
}

Swift::Int sub_149CC()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_14A5C()
{
  *v0;
  *v0;
  sub_34430();
}

Swift::Int sub_14AD8()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_14B64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18358(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_14B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1953718636;
  if (v2 != 1)
  {
    v4 = 1801677166;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7473726966;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_14BF8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PhonemeString_symbols);
  v4 = *(v1 + OBJC_IVAR___PhonemeString_symbols + 8);
  v5 = sub_34380();
  v6 = sub_34380();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___PhonemeString_encoding) > 1u)
  {
    *(v1 + OBJC_IVAR___PhonemeString_encoding);
  }

  v7 = sub_34380();

  v8 = sub_34380();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___PhonemeString_boundary);
  v10 = *(v1 + OBJC_IVAR___PhonemeString_boundary + 8);
  v11 = sub_34380();
  v12 = sub_34380();
  [a1 encodeObject:v11 forKey:v12];
}

id sub_14E00(void *a1)
{
  v2 = v1;
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v4 = sub_34660();
  if (v4)
  {
    v5 = v4;
    v6 = sub_343B0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_34660();
  if (v9)
  {
    v10 = v9;
    v11 = sub_343B0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_34660();
  if (!v14)
  {
    v16 = 0;
    v18 = 0;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_13:

    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_343B0();
  v18 = v17;

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v13 || (v19 = sub_183A4(v11, v13), v19 == 4))
  {

LABEL_14:

    goto LABEL_15;
  }

  if (v18)
  {
    v21 = &v2[OBJC_IVAR___PhonemeString_symbols];
    *v21 = v6;
    v21[1] = v8;
    v2[OBJC_IVAR___PhonemeString_encoding] = v19;
    v22 = &v2[OBJC_IVAR___PhonemeString_boundary];
    *v22 = v16;
    v22[1] = v18;
    v24.receiver = v2;
    v24.super_class = type metadata accessor for PhonemeString();
    v23 = objc_msgSendSuper2(&v24, "init");

    return v23;
  }

LABEL_15:
  type metadata accessor for PhonemeString();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_15020()
{
  v1 = *(v0 + OBJC_IVAR___PhonemeString_boundary + 8);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___PhonemeString_boundary) & 0xFFFFFFFFFFFFLL;
  }

  v3 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
  v4 = *(v0 + OBJC_IVAR___PhonemeString_symbols + 8);
  if (v2)
  {
    v14 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
    sub_324C();
    return sub_346E0();
  }

  v7 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
  v8 = *(v0 + OBJC_IVAR___PhonemeString_symbols + 8);
  v9 = sub_34440();
  v5 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v5;
  }

  v10 = v9;
  result = sub_2FACC(0, v9 & ~(v9 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_344B0();
      sub_34310();

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_2FACC((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = 0;
      v13[5] = 0xE000000000000000;
      sub_34450();
      --v10;
    }

    while (v10);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_151C0(uint64_t a1)
{
  sub_7734(a1, v7);
  if (!v8)
  {
    sub_76CC(v7);
    goto LABEL_16;
  }

  type metadata accessor for PhonemeString();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___PhonemeString_symbols) == *&v6[OBJC_IVAR___PhonemeString_symbols] && *(v1 + OBJC_IVAR___PhonemeString_symbols + 8) == *&v6[OBJC_IVAR___PhonemeString_symbols + 8];
  if (!v2 && (sub_34BC0() & 1) == 0 || (sub_249A0(*(v1 + OBJC_IVAR___PhonemeString_encoding), v6[OBJC_IVAR___PhonemeString_encoding]) & 1) == 0)
  {

    goto LABEL_16;
  }

  if (*(v1 + OBJC_IVAR___PhonemeString_boundary) == *&v6[OBJC_IVAR___PhonemeString_boundary] && *(v1 + OBJC_IVAR___PhonemeString_boundary + 8) == *&v6[OBJC_IVAR___PhonemeString_boundary + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_34BC0();
  }

  return v4 & 1;
}

Swift::Int sub_15378()
{
  sub_34C80();
  v1 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
  v2 = *(v0 + OBJC_IVAR___PhonemeString_symbols + 8);
  sub_34430();
  v3 = *(v0 + OBJC_IVAR___PhonemeString_boundary);
  v4 = *(v0 + OBJC_IVAR___PhonemeString_boundary + 8);
  sub_34430();
  *(v0 + OBJC_IVAR___PhonemeString_encoding);
  sub_34430();

  return sub_34C60();
}

uint64_t sub_154E0()
{
  BYTE8(v2) = 0;
  sub_34890(54);
  v3._object = 0x80000000000392A0;
  v3._countAndFlagsBits = 0xD000000000000018;
  sub_34460(v3);
  sub_34460(*(v0 + OBJC_IVAR___PhonemeString_symbols));
  v4._countAndFlagsBits = 0x69646F636E65202CLL;
  v4._object = 0xEC000000203A676ELL;
  sub_34460(v4);
  *&v2 = *(v0 + OBJC_IVAR___PhonemeString_encoding);
  sub_34980();
  v5._countAndFlagsBits = 0x61646E756F62202CLL;
  v5._object = 0xEC000000203A7972;
  sub_34460(v5);
  sub_34460(*(v0 + OBJC_IVAR___PhonemeString_boundary));
  return *(&v2 + 1);
}

char *sub_155F4()
{
  v1 = *(v0 + OBJC_IVAR___PhonemeString_boundary + 8);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___PhonemeString_boundary) & 0xFFFFFFFFFFFFLL;
  }

  v3 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
  if (v2)
  {
    v13 = *(v0 + OBJC_IVAR___PhonemeString_symbols);
    v14 = *(v0 + OBJC_IVAR___PhonemeString_symbols + 8);
    v11 = *(v0 + OBJC_IVAR___PhonemeString_boundary);
    v12 = *(v0 + OBJC_IVAR___PhonemeString_boundary + 8);
    sub_324C();
    return sub_34710();
  }

  v5 = sub_34440();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  result = sub_2FACC(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    do
    {
      sub_344B0();
      sub_34310();

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_2FACC((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      *(v9 + 4) = 0;
      *(v9 + 5) = 0xE000000000000000;
      sub_34450();
      --v6;
    }

    while (v6);
LABEL_10:
    sub_3204(&qword_4F110, &qword_36CB0);
    sub_18498();
    v10 = sub_34320();

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_15828()
{
  v1 = 0x676E69646F636E65;
  if (*v0 != 1)
  {
    v1 = 0x797261646E756F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736C6F626D7973;
  }
}

uint64_t sub_15884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1896C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_158AC(uint64_t a1)
{
  v2 = sub_16234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_158E8(uint64_t a1)
{
  v2 = sub_16234();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_15924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhonemeString();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_159D0(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F2F0, &unk_36FE8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_16234();
  sub_34CA0();
  v11 = *(v3 + OBJC_IVAR___PhonemeString_symbols);
  v12 = *(v3 + OBJC_IVAR___PhonemeString_symbols + 8);
  v16[15] = 0;
  sub_34B40();
  if (!v2)
  {
    v16[14] = *(v3 + OBJC_IVAR___PhonemeString_encoding);
    v16[13] = 1;
    sub_18444();
    sub_34B70();
    v13 = *(v3 + OBJC_IVAR___PhonemeString_boundary);
    v14 = *(v3 + OBJC_IVAR___PhonemeString_boundary + 8);
    v16[12] = 2;
    sub_34B40();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_15BA4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F2D0, &qword_36FE0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_16234();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for PhonemeString();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v11 = sub_34A80();
    v13 = &v1[OBJC_IVAR___PhonemeString_symbols];
    *v13 = v11;
    v13[1] = v14;
    v20 = 1;
    sub_16288();
    sub_34AB0();
    v1[OBJC_IVAR___PhonemeString_encoding] = v21;
    v21 = 2;
    v15 = sub_34A80();
    v16 = &v1[OBJC_IVAR___PhonemeString_boundary];
    *v16 = v15;
    v16[1] = v17;
    v18 = type metadata accessor for PhonemeString();
    v19.receiver = v1;
    v19.super_class = v18;
    v3 = objc_msgSendSuper2(&v19, "init");
    (*(v6 + 8))(v9, v5);
    sub_3364(a1);
  }

  return v3;
}

id sub_15E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PhonemeString());
  result = sub_15BA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_15E98()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_15F48()
{
  *v0;
  *v0;
  *v0;
  sub_34430();
}

Swift::Int sub_15FE4()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_16090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_183A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_160C0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x525341766ELL;
  v4 = 0xE500000000000000;
  v5 = 0x61706D6173;
  if (*v1 != 2)
  {
    v5 = 6844012;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x61706D617378;
    v2 = 0xE600000000000000;
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

unint64_t sub_161E0()
{
  result = qword_4F2C8;
  if (!qword_4F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2C8);
  }

  return result;
}

unint64_t sub_16234()
{
  result = qword_4F2D8;
  if (!qword_4F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2D8);
  }

  return result;
}

unint64_t sub_16288()
{
  result = qword_4F2E0;
  if (!qword_4F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E0);
  }

  return result;
}

uint64_t sub_162F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_3204(&qword_4F100, &qword_36CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_361D0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  v11 = v9;

  sub_2B13C(&v11);

  sub_3204(&qword_4F110, &qword_36CB0);
  sub_18498();
  sub_34320();

  sub_34430();
}

Swift::Int sub_16424()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_34C40();
  sub_162F8(v6, v1, v2, v4, v3);
  return sub_34C70();
}

Swift::Int sub_16490()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_34C40();
  sub_162F8(v6, v1, v2, v4, v3);
  return sub_34C70();
}

BOOL sub_164EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_34C40();
  sub_162F8(v12, v2, v3, v4, v5);
  v10 = sub_34C70();
  sub_34C40();
  sub_162F8(v12, v6, v7, v8, v9);
  return v10 == sub_34C70();
}

uint64_t sub_1659C()
{
  v0 = 121;
  for (i = &qword_45A88; ; i += 5)
  {
    v5 = *(i - 4);
    v4 = *(i - 3);
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_2A684(v5, v4, v7, v6);
    v12 = _swiftEmptyDictionarySingleton[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (_swiftEmptyDictionarySingleton[3] < v15)
    {
      sub_170B0(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_2A684(v5, v4, v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v21 = v10;
    sub_17AA8();
    v10 = v21;
    if (v16)
    {
LABEL_2:
      v2 = v10;

      *(_swiftEmptyDictionarySingleton[7] + 8 * v2) = v8;

      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (_swiftEmptyDictionarySingleton[6] + 32 * v10);
    *v18 = v5;
    v18[1] = v4;
    v18[2] = v7;
    v18[3] = v6;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v8;

    v19 = _swiftEmptyDictionarySingleton[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v20;
LABEL_3:
    if (!--v0)
    {
      qword_539F0 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_16780()
{
  v0 = sub_1A9A8(&off_45890);
  sub_3204(&qword_4F318, &qword_37000);
  result = swift_arrayDestroy();
  qword_539F8 = v0;
  return result;
}

uint64_t sub_167DC()
{
  sub_3204(&unk_4F320, &qword_37008);
  v0 = sub_3204(&qword_4F520, &qword_37010);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v2 = 8 * *(*(v0 - 8) + 72);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_36E40;
  v4 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v5 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v6 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v7 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v8 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v9 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v10 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v11 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v12 = *(v0 + 48);
  sub_34060();
  sub_34060();
  v13 = sub_1ABA8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_53A00 = v13;
  return result;
}

uint64_t sub_16B04()
{
  sub_3204(&unk_4F340, &qword_37028);
  v0 = sub_3204(&qword_4F530, &unk_37030);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = 8 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_36E40;
  v5 = v4 + v2;
  v6 = (v5 + *(v0 + 48));
  sub_34060();
  *v6 = 0xD000000000000013;
  v6[1] = 0x80000000000392C0;
  v7 = (v5 + v1 + *(v0 + 48));
  sub_34060();
  *v7 = 0xD000000000000013;
  v7[1] = 0x80000000000392E0;
  v8 = (v5 + 2 * v1 + *(v0 + 48));
  sub_34060();
  *v8 = 0xD000000000000013;
  v8[1] = 0x8000000000039300;
  v9 = (v5 + 3 * v1 + *(v0 + 48));
  sub_34060();
  *v9 = 0xD000000000000013;
  v9[1] = 0x80000000000392C0;
  v10 = (v5 + 4 * v1 + *(v0 + 48));
  sub_34060();
  *v10 = 0xD000000000000013;
  v10[1] = 0x8000000000039320;
  v11 = (v5 + 5 * v1 + *(v0 + 48));
  sub_34060();
  *v11 = 0xD000000000000013;
  v11[1] = 0x8000000000039340;
  v12 = (v5 + 6 * v1 + *(v0 + 48));
  sub_34060();
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000000039340;
  v13 = (v5 + 7 * v1 + *(v0 + 48));
  sub_34060();
  *v13 = 0xD000000000000013;
  v13[1] = 0x8000000000039360;
  v14 = (v5 + v3 + *(v0 + 48));
  sub_34060();
  *v14 = 0xD000000000000013;
  v14[1] = 0x8000000000039380;
  v15 = sub_1ADB4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_53A08 = v15;
  return result;
}

uint64_t sub_16DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 72);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v28 = *(a2 + 64);
    v29 = *(a1 + 64);
    v27 = *(a2 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_34BC0(), a2 = v9, (v10 & 1) != 0))
    {
      v25 = a2;
      v26 = v6;
      v11 = 0;
      for (i = v2 - 1; ; --i)
      {
        if (v4)
        {
          if (v4 == 1)
          {
            v13 = 1953718636;
          }

          else
          {
            v13 = 1801677166;
          }

          v14 = 0xE400000000000000;
          v15 = v7;
          if (v7)
          {
LABEL_15:
            if (v15 == 1)
            {
              v16 = 1953718636;
            }

            else
            {
              v16 = 1801677166;
            }

            v17 = 0xE400000000000000;
            if (v13 != v16)
            {
              goto LABEL_24;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v14 = 0xE500000000000000;
          v13 = 0x7473726966;
          v15 = v7;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        v17 = 0xE500000000000000;
        if (v13 != 0x7473726966)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v14 == v17)
        {

          v18 = v5;

          v19 = v8;

          goto LABEL_25;
        }

LABEL_24:
        v20 = sub_34BC0();

        v21 = v5;

        v22 = v8;

        if ((v20 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_25:
        sub_7F10(0, &unk_4F9E0, NSObject_ptr);
        if ((sub_34680() & 1) == 0 || v29 != v28)
        {
LABEL_33:

          return 0;
        }

        if ((v27 ^ v26))
        {
          return 0;
        }

        if (!i)
        {
          return 1;
        }

        v4 = *(a1 + v11 + 96);
        v5 = *(a1 + v11 + 104);
        v7 = *(v25 + v11 + 96);
        v8 = *(v25 + v11 + 104);
        v23 = *(v25 + v11 + 112);
        v28 = v23;
        v29 = *(a1 + v11 + 112);
        v26 = *(a1 + v11 + 120);
        v27 = *(v25 + v11 + 120);
        if ((*(a1 + v11 + 80) != *(v25 + v11 + 80) || *(a1 + v11 + 88) != *(v25 + v11 + 88)) && (sub_34BC0() & 1) == 0)
        {
          return 0;
        }

        v11 += 48;
      }
    }
  }

  return 0;
}

uint64_t sub_170B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3204(&qword_4F310, &qword_36FF8);
  v7 = sub_349D0();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v42 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v40 = v3;
    v41 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    v43 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
LABEL_17:
      v19 = v16 | (v9 << 6);
      v20 = *(v5 + 56);
      v21 = (*(v5 + 48) + 32 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = *(v20 + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v27 = v21[1];
      }

      v28 = *(v8 + 40);
      sub_34C40();
      sub_3204(&qword_4F100, &qword_36CA0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_361D0;
      *(v29 + 32) = v22;
      *(v29 + 40) = v23;
      *(v29 + 48) = v24;
      *(v29 + 56) = v25;
      v45 = v29;

      sub_2B13C(&v45);

      sub_3204(&qword_4F110, &qword_36CB0);
      sub_18498();
      sub_34320();

      sub_34430();

      v30 = sub_34C70();
      v31 = -1 << *(v8 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);

        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v8 + 48) + 32 * v14);
      *v15 = v22;
      v15[1] = v23;
      v15[2] = v24;
      v15[3] = v25;
      *(*(v8 + 56) + 8 * v14) = v26;
      ++*(v8 + 16);
      v5 = v43;
      v12 = v44;
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v41)
      {
        break;
      }

      v18 = v42[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v44 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v42, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1746C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3204(&qword_4F338, &qword_37020);
  result = sub_349D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17780(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3204(&qword_4F330, &qword_37018);
  v33 = a2;
  result = sub_349D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_17AA8()
{
  v1 = v0;
  sub_3204(&qword_4F310, &qword_36FF8);
  v2 = *v0;
  v3 = sub_349C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_17C20()
{
  v1 = v0;
  sub_3204(&qword_4F338, &qword_37020);
  v2 = *v0;
  v3 = sub_349C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_17D6C()
{
  v1 = v0;
  sub_3204(&qword_4F330, &qword_37018);
  v2 = *v0;
  v3 = sub_349C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_17EC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_34BC0() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 1953718636;
      }

      else
      {
        v9 = 1801677166;
      }

      v10 = 0xE400000000000000;
      v11 = a6;
      if (a6)
      {
LABEL_9:
        if (v11 == 1)
        {
          v12 = 1953718636;
        }

        else
        {
          v12 = 1801677166;
        }

        v13 = 0xE400000000000000;
        if (v9 != v12)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_19:

          return v8 & 1;
        }

LABEL_18:
        v8 = sub_34BC0();
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      v9 = 0x7473726966;
      v11 = a6;
      if (a6)
      {
        goto LABEL_9;
      }
    }

    v13 = 0xE500000000000000;
    if (v9 != 0x7473726966)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return v8 & 1;
}

uint64_t sub_17FE0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if ((sub_16DFC(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
    v14 = a6;
    v15 = a2;
    v16 = sub_34680();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
    v17 = a7;
    v18 = a3;
    v19 = sub_34680();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      sub_7F10(0, &qword_4F380, SISchemaUUID_ptr);
      v20 = a8;
      v21 = a4;
      v22 = sub_34680();

      if (v22)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

BOOL sub_18140(uint64_t a1, uint64_t a2)
{
  if ((sub_17FE0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a2 + 32);
      v9 = *(a2 + 48);
      if (v6 == v8 && v4 == v5)
      {
        if ((v7 & 1) == (v9 & 1))
        {
          return 1;
        }
      }

      else if ((sub_34BC0() & 1) != 0 && ((v7 ^ v9) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v5;
}

uint64_t sub_181E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_34BC0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = 1953718636;
  if (v4 != 1)
  {
    v7 = 1801677166;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7473726966;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = 1953718636;
  if (v5 != 1)
  {
    v10 = 1801677166;
  }

  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x7473726966;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v8 == v11 && v9 == v12)
  {
  }

  else
  {
    v13 = sub_34BC0();

    if ((v13 & 1) == 0)
    {
LABEL_29:
      v16 = 0;
      return v16 & 1;
    }
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if ((sub_34680() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_29;
  }

  v16 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v16 & 1;
}

uint64_t sub_18358(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46E50;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_183A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46EB8;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_183F0()
{
  result = qword_4F2E8;
  if (!qword_4F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2E8);
  }

  return result;
}

unint64_t sub_18444()
{
  result = qword_4F2F8;
  if (!qword_4F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F2F8);
  }

  return result;
}

unint64_t sub_18498()
{
  result = qword_4F300;
  if (!qword_4F300)
  {
    sub_A7E8(&qword_4F110, &qword_36CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F300);
  }

  return result;
}

__n128 sub_1850C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18518(uint64_t a1, int a2)
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

uint64_t sub_18560(uint64_t result, int a2, int a3)
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

__n128 sub_185D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_185EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_18634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18694(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_186A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_186F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18760()
{
  result = qword_4F350;
  if (!qword_4F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F350);
  }

  return result;
}

unint64_t sub_187B8()
{
  result = qword_4F358;
  if (!qword_4F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F358);
  }

  return result;
}

unint64_t sub_18810()
{
  result = qword_4F360;
  if (!qword_4F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F360);
  }

  return result;
}

unint64_t sub_18868()
{
  result = qword_4F368;
  if (!qword_4F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F368);
  }

  return result;
}

unint64_t sub_188C0()
{
  result = qword_4F370;
  if (!qword_4F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F370);
  }

  return result;
}

unint64_t sub_18918()
{
  result = qword_4F378;
  if (!qword_4F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F378);
  }

  return result;
}

uint64_t sub_1896C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797261646E756F62 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_34BC0();

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

__n128 sub_18A84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18AF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18B48(uint64_t a1, int a2)
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

uint64_t sub_18B90(uint64_t result, int a2, int a3)
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

uint64_t sub_18BEC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_34780();
    v5 = v4;
    v6 = sub_34820();
    v8 = v7;
    v9 = sub_347A0();
    sub_1B5A0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1B5A0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_34750();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1A7A8(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1B5A0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_18D08()
{
  sub_3204(&qword_4F4A8, &unk_37660);
  v0 = *(sub_34070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_361D0;
  sub_34060();
  result = sub_34060();
  qword_53A10 = v3;
  return result;
}

void sub_18DF4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v7 = sub_342A0();
  sub_3034(v7, qword_53A18);
  v8 = sub_34280();
  v9 = sub_345D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Start runTTSOverrider()", v10, 2u);
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
    v14 = sub_34280();
    v15 = sub_345D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No post Siri engagement data found", v16, 2u);
    }

    goto LABEL_20;
  }

  v12 = *(a1 + 48);
  v13 = sub_19B7C(*(a1 + 32), v11);
  if (v3 || !v13)
  {
    goto LABEL_21;
  }

  v17 = *(a2 + 16);
  v18 = v13;
  if (!sub_1B17C(v13, *a2, *(a2 + 8), *(a2 + 16)))
  {
    v21 = v18;
    v14 = sub_34280();
    v22 = sub_345D0();

    if (os_log_type_enabled(v14, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91 = v24;
      *v23 = 136315138;
      v25 = [v21 identifier];
      v26 = sub_343B0();
      v28 = v27;

      v29 = sub_22960(v26, v28, &v91);

      *(v23 + 4) = v29;
      v30 = "ASR contact name does not match the contact name, skipping correcting mispronunciation for contact ID: %s";
LABEL_18:
      _os_log_impl(&dword_0, v14, v22, v30, v23, 0xCu);
      sub_3364(v24);
    }

LABEL_19:

LABEL_20:
LABEL_21:
    sub_19820();
    return;
  }

  if ((sub_1A0BC(v18, v12 & 1) & 1) == 0)
  {
    v21 = v18;
    v14 = sub_34280();
    v22 = sub_345D0();

    if (os_log_type_enabled(v14, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91 = v24;
      *v23 = 136315138;
      v31 = [v21 identifier];
      v32 = sub_343B0();
      v34 = v33;

      v35 = sub_22960(v32, v34, &v91);

      *(v23 + 4) = v35;
      v30 = "Pronunciation is not overridable, skipping correcting mispronunciation for contact ID: %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v19 = *(a2 + 24);
  v20 = sub_19908(v19);
  v36 = v20;
  if (!v20)
  {
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_34890(51);
    v93._countAndFlagsBits = 0x74276E646C756F43;
    v93._object = 0xED00002070616D20;
    sub_34460(v93);
    v67 = [v19 description];
    v68 = sub_343B0();
    v70 = v69;

    v94._countAndFlagsBits = v68;
    v94._object = v70;
    sub_34460(v94);

    v95._countAndFlagsBits = 0xD00000000000001BLL;
    v95._object = 0x8000000000039460;
    sub_34460(v95);
    v96._countAndFlagsBits = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    sub_34460(v96);

    v97._countAndFlagsBits = 0x656C61636F6C20;
    v97._object = 0xE700000000000000;
    sub_34460(v97);
    sub_1B508();
    swift_allocError();
    *v71 = 0;
    v71[1] = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_21;
  }

  v37 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  v38 = sub_1BCFC(v17, v20, v4 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale);
  if (!v38)
  {
    sub_34890(40);

    v91 = 0xD000000000000010;
    v92 = 0x8000000000039480;
    v72 = [v19 description];
    v73 = sub_343B0();
    v75 = v74;

    v98._countAndFlagsBits = v73;
    v98._object = v75;
    sub_34460(v98);

    v99._countAndFlagsBits = 0xD000000000000016;
    v99._object = 0x80000000000394A0;
    sub_34460(v99);
    sub_1B508();
    swift_allocError();
    *v76 = 0xD000000000000010;
    v76[1] = 0x8000000000039480;
LABEL_34:
    swift_willThrow();

    goto LABEL_21;
  }

  v40 = v38;
  v88 = v39;
  sub_23E6C();
  if (!v41)
  {

    sub_1B508();
    swift_allocError();
    *v77 = 0xD000000000000028;
    v77[1] = 0x80000000000394C0;
    goto LABEL_34;
  }

  v87 = v40;
  v42 = v18;
  v43 = sub_34280();
  v44 = sub_345D0();

  buf = v44;
  v84 = v37;
  v89 = v42;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v91 = v80;
    *v45 = 136315138;
    log = v43;
    v46 = [v42 identifier];
    v47 = sub_343B0();
    v49 = v48;

    v50 = sub_22960(v47, v49, &v91);
    v42 = v89;

    *(v45 + 4) = v50;
    v43 = log;
    _os_log_impl(&dword_0, log, buf, "Updating phonemeData for contact: %s", v45, 0xCu);
    sub_3364(v80);
  }

  v51 = [objc_allocWithZone(CNSaveRequest) init];
  v52 = [v42 selfOrMutableCopy];
  v53 = sub_34380();

  [v52 setPhonemeData:v53];

  v85 = v52;
  [v51 updateContact:v52];
  v54 = *(v4 + 16);
  v91 = 0;
  v86 = v51;
  v55 = [v54 executeSaveRequest:v51 error:&v91];
  v56 = v91;
  if (!v55)
  {
    v78 = v91;

    sub_33AC0();

    swift_willThrow();
    goto LABEL_21;
  }

  v57 = v89;
  v58 = v56;
  v59 = sub_34280();
  v60 = sub_345D0();

  if (os_log_type_enabled(v59, v60))
  {
    bufa = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = v90;
    *bufa = 136315138;
    v61 = [v57 identifier];
    v62 = sub_343B0();
    v81 = v60;
    v64 = v63;

    v65 = sub_22960(v62, v64, &v91);

    *(bufa + 4) = v65;
    _os_log_impl(&dword_0, v59, v81, "Finished updating phonemeData for contact: %s", bufa, 0xCu);
    sub_3364(v90);
  }

  v66 = [v85 identifier];
  sub_343B0();

  sub_1C100(v87, v88, v4 + v84, v17);

  sub_19820();
}

void sub_19820()
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v0 = sub_342A0();
  sub_3034(v0, qword_53A18);
  oslog = sub_34280();
  v1 = sub_345D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "End runTTSOverrider()", v2, 2u);
  }
}

uint64_t sub_19908(char *a1)
{
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(v1 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, qword_53A10))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = *sub_30C0((v1 + 24), *(v1 + 48));
  result = sub_29BA4(a1, v4, 1);
  if (!v2)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v7 = result;
      if (sub_347D0() == 1)
      {
LABEL_9:
        v8 = sub_18BEC(v7);

        return v8;
      }
    }

    else
    {
      v7 = result;
      if (*(result + 16) == 1)
      {
        goto LABEL_9;
      }
    }

    sub_34890(47);
    v9 = [a1 description];
    v10 = sub_343B0();
    v12 = v11;

    v17._countAndFlagsBits = v10;
    v17._object = v12;
    sub_34460(v17);

    v18._object = 0x8000000000039440;
    v18._countAndFlagsBits = 0xD00000000000001ELL;
    sub_34460(v18);
    sub_34980();
    v19._countAndFlagsBits = 0x656D656E6F687020;
    v19._object = 0xEB00000000203A73;
    sub_34460(v19);
    type metadata accessor for PhonemeString();
    sub_1B55C(&qword_4F4D8);
    v13 = sub_34590();
    v15 = v14;

    v20._countAndFlagsBits = v13;
    v20._object = v15;
    sub_34460(v20);

    sub_1B508();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

id sub_19B7C(uint64_t a1, void *a2)
{
  sub_3204(&unk_4F4B0, &qword_36C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37540;
  v5 = CNContactPhonemeDataKey;
  *(v4 + 32) = CNContactPhonemeDataKey;
  *(v4 + 40) = CNContactGivenNameKey;
  *(v4 + 48) = CNContactFamilyNameKey;
  *(v4 + 56) = CNContactNicknameKey;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = CNContactGivenNameKey;
  v9 = CNContactFamilyNameKey;
  v10 = a1;
  v11 = a2;
  v12 = CNContactNicknameKey;
  *(v4 + 64) = [v6 descriptorForRequiredKeysForStyle:0];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_37550;
  v14 = CNContactPronunciationGivenNameKey;
  v15 = CNContactPronunciationFamilyNameKey;
  *(inited + 32) = CNContactPronunciationGivenNameKey;
  *(inited + 40) = v15;
  v16 = v14;
  v17 = v15;
  sub_24BCC(inited);
  v18 = objc_opt_self();
  sub_3204(&qword_4F100, &qword_36CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_35920;
  *(v19 + 32) = v10;
  *(v19 + 40) = a2;

  isa = sub_344F0().super.isa;

  v21 = [v18 predicateForContactsWithIdentifiers:isa];

  v22 = *(v42 + 16);
  sub_3204(&qword_4F4C0, &unk_37670);
  v23 = sub_344F0().super.isa;

  v43 = 0;
  v24 = [v22 unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:&v43];

  v25 = v43;
  if (!v24)
  {
    v35 = v43;
    sub_33AC0();

    goto LABEL_7;
  }

  sub_1B4BC();
  v26 = sub_34500();
  v27 = v25;

  if (v26 >> 62)
  {
    if (sub_349A0())
    {
      if (sub_349A0() >= 2)
      {
        goto LABEL_5;
      }

LABEL_10:
      if ((v26 & 0xC000000000000001) != 0)
      {
        v11 = sub_348C0();
      }

      else
      {
        if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
        }

        v11 = *(v26 + 32);
      }

      return v11;
    }
  }

  else
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      if (v28 >= 2)
      {
LABEL_5:

        v43 = 0;
        v44 = 0xE000000000000000;
        sub_34890(40);
        v29 = sub_34BB0();
        v31 = v30;

        v43 = v29;
        v44 = v31;
        v45._object = 0x8000000000039410;
        v45._countAndFlagsBits = 0xD000000000000023;
        sub_34460(v45);
        v46._countAndFlagsBits = v10;
        v46._object = v11;
        sub_34460(v46);
        v47._countAndFlagsBits = 46;
        v47._object = 0xE100000000000000;
        sub_34460(v47);
        v32 = v43;
        v33 = v44;
        sub_1B508();
        swift_allocError();
        *v34 = v32;
        v34[1] = v33;
LABEL_7:
        swift_willThrow();

        return v11;
      }

      goto LABEL_10;
    }
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v36 = sub_342A0();
  sub_3034(v36, qword_53A18);

  v37 = sub_34280();
  v38 = sub_345E0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_22960(v10, v11, &v43);
    _os_log_impl(&dword_0, v37, v38, "No matching contacts found for overriding for %s", v39, 0xCu);
    sub_3364(v40);
  }

  return 0;
}

uint64_t sub_1A0BC(void *a1, char a2)
{
  if (a2 & 1) != 0 || (*(v2 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_isCurareRun))
  {
    v4 = sub_1A284(a1);
    v5 = [a1 pronunciationGivenName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_343B0();
      v9 = v8;

      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
      v9 = 0xE000000000000000;
    }

    v11 = [a1 pronunciationFamilyName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_343B0();
      v15 = v14;

      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
      v15 = 0xE000000000000000;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v17 = v10;
    }

    v18 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v18 = v16;
    }

    v19 = (v18 == 0) & v4;
    if (v17)
    {
      return 0;
    }

    else
    {
      return v19;
    }
  }

  else
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v21 = sub_342A0();
    sub_3034(v21, qword_53A18);
    v22 = sub_34280();
    v23 = sub_345D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "The user-initiated conversation wasn't a success", v24, 2u);
    }

    return 0;
  }
}

uint64_t sub_1A284(void *a1)
{
  v3 = sub_235A8(a1);
  if (!v3)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v6 = sub_342A0();
    sub_3034(v6, qword_53A18);
    v7 = a1;
    v8 = sub_34280();
    v9 = sub_345E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v7 identifier];
      v13 = sub_343B0();
      v15 = v14;

      v16 = sub_22960(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_0, v8, v9, "Couldn't parse phonemeData for contact: %s", v10, 0xCu);
      sub_3364(v11);
    }

    return 1;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(v1 + v5, qword_53A10))
  {

    return 1;
  }

  v18 = sub_D224(v1 + v5, v4);

  return v18 & 1;
}

uint64_t sub_1A494()
{
  sub_3364((v0 + 24));
  v1 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  v2 = sub_34070();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSContactOverrider()
{
  result = qword_4F3C8;
  if (!qword_4F3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A594()
{
  result = sub_34070();
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

BOOL sub_1A678()
{
  v1 = [v0 pronunciationGivenName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_343B0();
    v5 = v4;

    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = [v0 pronunciationFamilyName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_343B0();
    v11 = v10;

    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6;
  }

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v12;
  }

  v15 = v14 == 0;
  return !v13 && v15;
}

uint64_t sub_1A75C(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR___PhonemeString_symbols);
  if (*v2 == *(*a2 + OBJC_IVAR___PhonemeString_symbols) && v2[1] == *(*a2 + OBJC_IVAR___PhonemeString_symbols + 8))
  {
    return 0;
  }

  else
  {
    return sub_34BC0();
  }
}

void sub_1A7A8(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_347F0();
      type metadata accessor for PhonemeString();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for PhonemeString();
    if (sub_347B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_347C0();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_34670(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_34680();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_1A9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3204(&qword_4F518, &unk_376A8);
    v3 = sub_349E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2A60C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3204(&qword_4F510, &qword_376A0);
    v3 = sub_349E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2A60C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1ABA8(uint64_t a1)
{
  v2 = sub_3204(&qword_4F520, &qword_37010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_3204(&qword_4F528, &unk_376B8);
    v9 = sub_349E0();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v10;

    while (1)
    {
      sub_1CA30(v11, v7, &qword_4F520, &qword_37010);
      result = sub_2A7B0(v7);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v9[6];
      v16 = sub_34070();
      v17 = *(v16 - 8);
      v18 = *(v17 + 32);
      v19 = *(v17 + 72) * v14;
      v18(v15 + v19, v7, v16);
      result = (v18)(v9[7] + v19, &v7[v24], v16);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1ADB4(uint64_t a1)
{
  v2 = sub_3204(&qword_4F530, &unk_37030);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_3204(&qword_4F538, &qword_376C8);
    v9 = sub_349E0();
    v10 = &v7[*(v2 + 48)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1CA30(v11, v7, &qword_4F530, &unk_37030);
      result = sub_2A7B0(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_34070();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = (v9[7] + 16 * v15);
      v19 = *(v10 + 1);
      *v18 = *v10;
      v18[1] = v19;
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1AFA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_3204(&qword_4F4F8, &qword_37690);
  v3 = sub_349E0();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_1CA30(&v31, v30, &qword_4F4F0, &qword_37688);
  result = sub_2A60C(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 168);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 120 * result;
    v15 = v32;
    v16 = v33;
    v17 = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v14 + 112) = v39;
    *(v14 + 80) = v19;
    *(v14 + 96) = v20;
    *(v14 + 64) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 136);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = *(v12 + 128);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_1CA30(&v31, v30, &qword_4F4F0, &qword_37688);
    result = sub_2A60C(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B17C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v34 = sub_33AB0();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 *off_47EA8[a4]];
  v14 = sub_343B0();
  v16 = v15;

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v17 = sub_342A0();
  sub_3034(v17, qword_53A18);

  v18 = sub_34280();
  v19 = sub_345D0();

  v20 = os_log_type_enabled(v18, v19);
  v33 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_22960(a2, a3, &v37);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_22960(v14, v16, &v37);
    _os_log_impl(&dword_0, v18, v19, "In doesContactNameMatch() ASR contact name: %s, contact name: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v22 = v16;
  v37 = a2;
  v38 = a3;

  sub_33A80();
  sub_324C();
  v23 = sub_34700();
  v25 = v24;
  v26 = *(v8 + 8);
  v27 = v34;
  v26(v12, v34);

  v37 = v23;
  v38 = v25;
  v35 = v33;
  v36 = v22;
  sub_33A80();
  v28 = sub_34700();
  v30 = v29;
  v26(v12, v27);

  v35 = v28;
  v36 = v30;
  v31 = sub_34720();

  return v31 == 0;
}

unint64_t sub_1B4BC()
{
  result = qword_4F4C8;
  if (!qword_4F4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F4C8);
  }

  return result;
}

unint64_t sub_1B508()
{
  result = qword_4F4D0;
  if (!qword_4F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4D0);
  }

  return result;
}

uint64_t sub_1B55C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhonemeString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B5AC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v59 = a1;
  v9 = sub_33B30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR___PhonemeString_symbols);
  v16 = *(a2 + OBJC_IVAR___PhonemeString_symbols + 8);
  v83 = 1;
  sub_3204(&unk_4F500, &qword_37698);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_35920;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = v15;
  *(v17 + 56) = v16;
  *(v17 + 64) = 0;
  *(v17 + 72) = v83;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  v58 = v16;
  swift_bridgeObjectRetain_n();
  sub_33B20();
  sub_33B10();
  v19 = round(v18 * 1000.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v19 < 9.22337204e18)
  {
    v20 = v19;
    (*(v10 + 8))(v14, v9);
    v21 = sub_235A8(v5);
    v57 = v15;
    v56 = v20;
    if (!v21)
    {
      goto LABEL_14;
    }

    v14 = v21;
    if (qword_4E588 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  swift_once();
LABEL_6:
  if (!sub_24AC0(a3, qword_53A10) && (sub_D224(a3, v14) & 1) == 0)
  {

    goto LABEL_14;
  }

  sub_D0FC(v14, v71);

  v22 = v71[0];
  if (v71[0] == 1)
  {
LABEL_14:
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v65 = 0;
    v69 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v64 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_17;
  }

  v24 = v71[1];
  v23 = v71[2];
  v25 = v71[3];
  v26 = v72;
  v63 = v73;
  v62 = v74;
  v61 = v75;
  v60 = v76;
  v64 = v77;
  v67 = v79;
  v68 = v78;
  v66 = v80;
  v65 = v81;
  v69 = v82;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v27 = sub_342A0();
  sub_3034(v27, qword_53A18);
  v28 = v5;
  v29 = sub_34280();
  v30 = sub_345D0();

  v54 = v30;
  v55 = v29;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v52 = v31;
    v53 = swift_slowAlloc();
    v70 = v53;
    *v31 = 136315138;
    v32 = [v28 identifier];
    v33 = sub_343B0();
    v35 = v34;

    v36 = sub_22960(v33, v35, &v70);

    v37 = v52;
    *(v52 + 1) = v36;
    v38 = v55;
    _os_log_impl(&dword_0, v55, v54, "Found existing phonemeData for contact: %s", v37, 0xCu);
    sub_3364(v53);
  }

  else
  {
  }

  sub_1C9F0(v22);
  sub_1C9F0(v63);
  sub_1C9F0(v68);
  sub_A948(v71, &qword_4F4E0, &unk_36430);
LABEL_17:
  v39 = v59;
  if (!v59)
  {

    goto LABEL_23;
  }

  v40 = sub_34BC0();

  if (v40)
  {
LABEL_23:
    result = sub_FF98(v22);
    v26 = 0;
    v22 = v17;
    v24 = v57;
    v23 = v58;
    v25 = v56;
    v47 = v64;
    v17 = v63;
    v46 = v62;
    v48 = v61;
    v49 = &v85;
LABEL_26:
    v45 = *(v49 - 32);
    goto LABEL_27;
  }

  if (v39 != 2)
  {

    goto LABEL_25;
  }

  v41 = sub_34BC0();

  if (v41)
  {
LABEL_25:
    result = sub_FF98(v63);
    v47 = 0;
    v46 = v57;
    v48 = v58;
    v49 = &v84;
    goto LABEL_26;
  }

  v42 = v62;
  v43 = v60;
  sub_FF98(v68);

  v45 = v43;
  v46 = v42;
  v69 = 0;
  v68 = v17;
  v67 = v57;
  v66 = v58;
  v65 = v56;
  v47 = v64;
  v17 = v63;
  v48 = v61;
LABEL_27:
  *a4 = v22;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  *(a4 + 24) = v25;
  *(a4 + 32) = v26;
  *(a4 + 39) = 0;
  *(a4 + 37) = 0;
  *(a4 + 33) = 0;
  *(a4 + 40) = v17;
  *(a4 + 48) = v46;
  *(a4 + 56) = v48;
  *(a4 + 64) = v45;
  *(a4 + 72) = v47;
  *(a4 + 79) = 0;
  *(a4 + 77) = 0;
  *(a4 + 73) = 0;
  v50 = v67;
  *(a4 + 80) = v68;
  *(a4 + 88) = v50;
  v51 = v65;
  *(a4 + 96) = v66;
  *(a4 + 104) = v51;
  *(a4 + 112) = v69;
  return result;
}

unint64_t sub_1BCFC(int a1, uint64_t a2, uint64_t a3)
{
  sub_1B5AC(a1, a2, a3, &v34);
  v4 = v34;
  if (v34 == 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v5 = sub_342A0();
    sub_3034(v5, qword_53A18);
    v6 = v3;
    v7 = sub_34280();
    v8 = sub_345E0();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v41 = v10;
    *v9 = 136315138;
    v11 = [v6 identifier];
    v12 = sub_343B0();
    v14 = v13;

    v15 = sub_22960(v12, v14, &v41);

    *(v9 + 4) = v15;
    v16 = "Unable to build phonemeData for contact: %s";
    goto LABEL_12;
  }

  v44 = v38;
  v45 = v39;
  v46[0] = v40[0];
  *(v46 + 9) = *(v40 + 9);
  v41 = v35;
  v42 = v36;
  v43 = v37;
  v17 = [objc_opt_self() stringFromContact:v3 style:0];
  if (v17)
  {
    v18 = v17;
    v19 = sub_343B0();
    v21 = v20;

    sub_EA90(v19, v21);

    sub_3204(&qword_4F4E8, &qword_37680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_35920;
    *(inited + 32) = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    *(inited + 40) = v23;
    *(inited + 48) = v4;
    *(inited + 104) = v44;
    *(inited + 120) = v45;
    *(inited + 136) = v46[0];
    *(inited + 145) = *(v46 + 9);
    *(inited + 56) = v41;
    *(inited + 72) = v42;
    *(inited + 88) = v43;
    v24 = sub_1AFA4(inited);
    swift_setDeallocating();
    sub_A948(inited + 32, &qword_4F4F0, &qword_37688);
    return v24;
  }

  sub_A948(&v34, &qword_4F4E0, &unk_36430);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v26 = sub_342A0();
  sub_3034(v26, qword_53A18);
  v27 = v3;
  v7 = sub_34280();
  v8 = sub_345E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v28 = [v27 identifier];
    v29 = sub_343B0();
    v31 = v30;

    v32 = sub_22960(v29, v31, &v33);

    *(v9 + 4) = v32;
    v16 = "Unable to get full name for contact %s";
LABEL_12:
    _os_log_impl(&dword_0, v7, v8, v16, v9, 0xCu);
    sub_3364(v10);
  }

LABEL_13:

  return 0;
}

id sub_1C100(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v95 = a4;
  v7 = sub_34070();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7, v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E588 != -1)
  {
    swift_once();
  }

  v13 = qword_53A10;
  v14 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale;
  if (sub_24AC0(v4 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, qword_53A10))
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  v94 = v15;
  v16 = sub_24AC0(v4 + v14, v13);
  if (v16)
  {
    v17 = 32;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = 0xE100000000000000;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
  if (!*(a1 + 16))
  {

    goto LABEL_21;
  }

  v89 = v17;
  v22 = sub_2A60C(v19, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_21:

    v42 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v88 = v18;
  v78 = v12;
  v80 = v8;
  v84 = a3;
  v87 = v7;
  v25 = *(a1 + 56) + 120 * v22;
  v27 = *v25;
  v26 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 32);
  v31 = *(v25 + 40);
  v32 = *(v25 + 48);
  v34 = *(v25 + 56);
  v33 = *(v25 + 64);
  v91 = *(v25 + 72);
  v35 = *(v25 + 80);
  v92 = *(v25 + 88);
  v93 = v33;
  v36 = *(v25 + 104);
  v90 = *(v25 + 96);
  v76 = *(v25 + 112);
  v96 = v27;
  v85 = v28;
  v86 = v26;
  v83 = v29;
  v82 = v32;
  v81 = v30;
  v79 = v34;
  v77 = v36;
  if (!v27)
  {
    sub_1C9F0(0);
    sub_1C9F0(v31);
    sub_1C9F0(v35);
    v39 = 0;
LABEL_25:
    v8 = v80;
LABEL_26:
    v12 = v78;
    goto LABEL_27;
  }

  sub_1C9F0(v96);
  v74 = v31;
  sub_1C9F0(v31);
  v75 = v35;
  sub_1C9F0(v35);
  sub_1C9F0(v96);

  if (!v96[2])
  {

    v39 = 0;
    v35 = v75;
    v31 = v74;
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    goto LABEL_25;
  }

  v38 = v96[5];
  v37 = v96[6];
  v39 = v96[7];
  v40 = v96[11];

  v8 = v80;
  if (!v39)
  {
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    v35 = v75;
    v31 = v74;
    goto LABEL_26;
  }

  p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
  if (v95)
  {
    v41 = sub_34BC0();

    v35 = v75;
    v31 = v74;
    v12 = v78;
    if ((v41 & 1) == 0)
    {

      v39 = 0;
      goto LABEL_27;
    }
  }

  else
  {

    v35 = v75;
    v31 = v74;
    v12 = v78;
  }

  v55 = type metadata accessor for PhonemeString();
  v56 = objc_allocWithZone(v55);
  v57 = &v56[OBJC_IVAR___PhonemeString_symbols];
  *v57 = v37;
  v57[1] = v39;
  v56[OBJC_IVAR___PhonemeString_encoding] = v94;
  v58 = &v56[OBJC_IVAR___PhonemeString_boundary];
  v59 = v88;
  *v58 = v89;
  v58[1] = v59;
  v97.receiver = v56;
  v97.super_class = v55;

  v39 = objc_msgSendSuper2(&v97, "init");
LABEL_27:
  v80 = v39;
  if (!v31)
  {
    goto LABEL_35;
  }

  if (!v31[2])
  {

LABEL_35:

    v43 = 0;
    goto LABEL_44;
  }

  v52 = v31[5];
  v78 = v31[6];
  v53 = v31[7];
  v54 = v31[11];

  if (!v53)
  {

    v43 = 0;
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    goto LABEL_44;
  }

  if (v95)
  {
    p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
    if (v95 == 1)
    {

LABEL_42:
      v61 = type metadata accessor for PhonemeString();
      v62 = objc_allocWithZone(v61);
      v63 = &v62[OBJC_IVAR___PhonemeString_symbols];
      *v63 = v78;
      v63[1] = v53;
      v62[OBJC_IVAR___PhonemeString_encoding] = v94;
      v64 = &v62[OBJC_IVAR___PhonemeString_boundary];
      v65 = v88;
      *v64 = v89;
      v64[1] = v65;
      v98.receiver = v62;
      v98.super_class = v61;
      v43 = objc_msgSendSuper2(&v98, p_weak_ivar_lyt[387]);
      goto LABEL_44;
    }
  }

  else
  {
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
  }

  v60 = sub_34BC0();

  if (v60)
  {
    goto LABEL_42;
  }

  v43 = 0;
LABEL_44:
  sub_1C9F0(v35);
  sub_FF98(v96);
  sub_FF98(v31);
  sub_FF98(v35);
  if (v35)
  {

    v44 = v80;
    a3 = v84;
    if (v35[2])
    {
      v66 = v35[5];
      v96 = v35[6];
      v42 = v35[7];
      v67 = v35[11];

      if (v42)
      {
        v7 = v87;
        if (v95 && v95 != 1)
        {
        }

        else
        {
          v68 = sub_34BC0();

          if ((v68 & 1) == 0)
          {

            v42 = 0;
            goto LABEL_22;
          }
        }

        v69 = type metadata accessor for PhonemeString();
        v70 = objc_allocWithZone(v69);
        v71 = &v70[OBJC_IVAR___PhonemeString_symbols];
        *v71 = v96;
        v71[1] = v42;
        v70[OBJC_IVAR___PhonemeString_encoding] = v94;
        v72 = &v70[OBJC_IVAR___PhonemeString_boundary];
        *v72 = 0;
        v72[1] = 0xE000000000000000;
        v99.receiver = v70;
        v99.super_class = v69;
        v42 = objc_msgSendSuper2(&v99, p_weak_ivar_lyt[387]);
        goto LABEL_22;
      }
    }

    else
    {

      v42 = 0;
    }

    v7 = v87;
  }

  else
  {
    v42 = 0;
    v7 = v87;
    v44 = v80;
    a3 = v84;
  }

LABEL_22:
  (v8[2])(v12, a3, v7);
  v45 = type metadata accessor for CorrectedPronunciation();
  v46 = objc_allocWithZone(v45);
  v47 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  v48 = &v46[OBJC_IVAR___CorrectedPronunciation_locale];
  *v48 = v47;
  v48[1] = v49;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString] = v44;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString] = v43;
  *&v46[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString] = v42;
  v100.receiver = v46;
  v100.super_class = v45;
  v50 = objc_msgSendSuper2(&v100, p_weak_ivar_lyt[387]);
  (v8[1])(v12, v7);
  return v50;
}

uint64_t sub_1C9F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3204(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CACC(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_33B90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v60 - v11;
  v13 = sub_33DD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  v20 = a2 + 16;
  v19 = v21;
  if (!v21)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v34 = sub_342A0();
    sub_3034(v34, qword_53A18);
    (*(v4 + 16))(v9, v64, v3);
    v35 = sub_34280();
    v36 = sub_345E0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = v38;
      *v37 = 136315138;
      sub_A8F0();
      v39 = sub_34BB0();
      v41 = v40;
      (*(v4 + 8))(v9, v3);
      v42 = sub_22960(v39, v41, &v67);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "Conversation %s has 0 turns in it", v37, 0xCu);
      sub_3364(v38);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    return 2;
  }

  v63 = v3;
  v22 = *(v20 + 16 * v19 + 8);
  v23 = *(v22 + 16);
  if (v23)
  {
    v61 = v12;
    v62 = v4;
    v25 = *(v14 + 16);
    v24 = v14 + 16;
    v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v65 = *(v24 + 56);
    v66 = v25;
    v60 = v22;

    v27 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v66(v18, v26, v13);
      v28 = sub_33DC0();
      v29 = [v28 intent];

      (*(v24 - 8))(v18, v13);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        break;
      }

      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();

      if (v31)
      {
        goto LABEL_9;
      }

LABEL_5:
      v26 += v65;
      if (!--v23)
      {

        v12 = v61;
        v4 = v62;
        goto LABEL_19;
      }
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_13008(0, *(v27 + 2) + 1, 1, v27);
    }

    v33 = *(v27 + 2);
    v32 = *(v27 + 3);
    if (v33 >= v32 >> 1)
    {
      v27 = sub_13008((v32 > 1), v33 + 1, 1, v27);
    }

    *(v27 + 2) = v33 + 1;
    v27[v33 + 32] = v30 == 0;
    goto LABEL_5;
  }

  v27 = &_swiftEmptyArrayStorage;
LABEL_19:

  v44 = sub_2EA48(v43);

  v45 = *(v44 + 16);

  if (v45 > 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v46 = sub_342A0();
    sub_3034(v46, qword_53A18);
    v47 = v63;
    (*(v4 + 16))(v12, v64, v63);
    v48 = sub_34280();
    v49 = sub_345E0();
    if (!os_log_type_enabled(v48, v49))
    {

      (*(v4 + 8))(v12, v47);
      if (*(v27 + 2))
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v50 = swift_slowAlloc();
    v51 = v12;
    v52 = swift_slowAlloc();
    v67 = v52;
    *v50 = 136315138;
    sub_A8F0();
    v53 = sub_34BB0();
    v54 = v4;
    v56 = v55;
    (*(v54 + 8))(v51, v47);
    v57 = sub_22960(v53, v56, &v67);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_0, v48, v49, "Conversation %s is linked with multiple domains", v50, 0xCu);
    sub_3364(v52);
  }

  if (!*(v27 + 2))
  {
LABEL_28:

    return 2;
  }

LABEL_25:
  v58 = v27[32];

  return v58;
}

uint64_t sub_1D114(uint64_t a1, uint64_t a2, int a3)
{
  v136 = a3;
  v138 = a1;
  v4 = sub_33B90();
  v5 = *(v4 - 8);
  v139 = v4;
  v140 = v5;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v137 = &v130 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v133 = &v130 - v16;
  __chkstk_darwin(v15, v17);
  v132 = &v130 - v18;
  v19 = sub_34110();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3204(&qword_4F5F0, &unk_37730);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v29 = &v130 - v28;
  v30 = sub_340D0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v30, v33);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v34, v37);
  v135 = &v130 - v39;
  v41 = __chkstk_darwin(v38, v40);
  v134 = &v130 - v42;
  __chkstk_darwin(v41, v43);
  v45 = &v130 - v44;
  sub_1DDAC(a2, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1DE1C(v29);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v46 = sub_342A0();
    sub_3034(v46, qword_53A18);
    v48 = v139;
    v47 = v140;
    (*(v140 + 16))(v10, v138, v139);
    v49 = sub_34280();
    v50 = sub_345E0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v141 = v52;
      *v51 = 136315138;
      sub_A8F0();
      v53 = sub_34BB0();
      v55 = v54;
      (*(v47 + 8))(v10, v48);
      v56 = sub_22960(v53, v55, &v141);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_0, v49, v50, "[%s]: No event found for extraction of features", v51, 0xCu);
      sub_3364(v52);
    }

    else
    {

      (*(v47 + 8))(v10, v48);
    }

    return 0;
  }

  v131 = v31;
  (*(v31 + 32))(v45, v29, v30);
  v57 = v45;
  v58 = sub_340C0();
  v59 = sub_31980(v58);

  v60 = v30;
  v61 = v139;
  v62 = v140;
  if (!v59)
  {
    goto LABEL_17;
  }

  if (!*(v59 + 16))
  {

    goto LABEL_17;
  }

  (*(v20 + 16))(v24, v59 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  v63 = sub_34100();
  v65 = v64;
  (*(v20 + 8))(v24, v19);
  if (!v65)
  {
LABEL_17:
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v93 = sub_342A0();
    sub_3034(v93, qword_53A18);
    v94 = v137;
    (*(v62 + 16))(v137, v138, v61);
    v95 = v61;
    v96 = v131;
    (*(v131 + 16))(v36, v57, v60);
    v97 = sub_34280();
    v98 = sub_345D0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v136 = v98;
      v135 = v60;
      v100 = v99;
      v101 = swift_slowAlloc();
      v138 = v57;
      v141 = v101;
      *v100 = 136315394;
      sub_A8F0();
      v102 = sub_34BB0();
      v104 = v103;
      (*(v62 + 8))(v94, v95);
      v105 = sub_22960(v102, v104, &v141);

      *(v100 + 4) = v105;
      *(v100 + 12) = 2080;
      v106 = sub_340B0();
      v108 = v107;
      v109 = *(v96 + 8);
      v110 = v135;
      v109(v36, v135);
      v111 = sub_22960(v106, v108, &v141);

      *(v100 + 14) = v111;
      _os_log_impl(&dword_0, v97, v136, "[%s]: Failed to get call contact ID for core duet event: %s", v100, 0x16u);
      swift_arrayDestroy();

      v109(v138, v110);
    }

    else
    {

      v112 = *(v96 + 8);
      v112(v36, v60);
      (*(v62 + 8))(v94, v95);
      v112(v57, v60);
    }

    return 0;
  }

  v66 = v57;
  v67 = sub_340C0();
  if (v136)
  {
    sub_31B60(v67);
    v69 = v68;

    if (v69)
    {

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v70 = sub_342A0();
      sub_3034(v70, qword_53A18);
      v71 = v140;
      v72 = v133;
      (*(v140 + 16))(v133, v138, v61);
      v73 = v131;
      v74 = v135;
      (*(v131 + 16))(v135, v66, v60);
      v75 = sub_34280();
      v76 = sub_345D0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v60;
        v78 = swift_slowAlloc();
        v79 = v72;
        v138 = swift_slowAlloc();
        v141 = v138;
        *v78 = 136315394;
        sub_A8F0();
        v80 = sub_34BB0();
        v81 = v61;
        v82 = v77;
        v84 = v83;
        (*(v71 + 8))(v79, v81);
        v85 = sub_22960(v80, v84, &v141);

        *(v78 + 4) = v85;
        *(v78 + 12) = 2080;
        v86 = v135;
        v87 = sub_340B0();
        v89 = v88;
        v90 = *(v73 + 8);
        v90(v86, v82);
        v91 = sub_22960(v87, v89, &v141);

        *(v78 + 14) = v91;
        v92 = "[%s]: Failed to get message handling status for core duet event: %s";
LABEL_28:
        _os_log_impl(&dword_0, v75, v76, v92, v78, 0x16u);
        swift_arrayDestroy();

        v90(v66, v82);
        return 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_31998(v67);
    v115 = v114;

    if (v115)
    {

      v73 = v131;
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v116 = sub_342A0();
      sub_3034(v116, qword_53A18);
      v71 = v140;
      v72 = v132;
      (*(v140 + 16))(v132, v138, v61);
      v74 = v134;
      (*(v73 + 16))(v134, v66, v60);
      v75 = sub_34280();
      v76 = sub_345D0();
      if (os_log_type_enabled(v75, v76))
      {
        v117 = v60;
        v78 = swift_slowAlloc();
        v118 = v72;
        v138 = swift_slowAlloc();
        v141 = v138;
        *v78 = 136315394;
        sub_A8F0();
        v119 = sub_34BB0();
        v120 = v61;
        v82 = v117;
        v122 = v121;
        (*(v71 + 8))(v118, v120);
        v123 = sub_22960(v119, v122, &v141);

        *(v78 + 4) = v123;
        *(v78 + 12) = 2080;
        v124 = v134;
        v125 = sub_340B0();
        v127 = v126;
        v90 = *(v73 + 8);
        v90(v124, v82);
        v128 = sub_22960(v125, v127, &v141);

        *(v78 + 14) = v128;
        v92 = "[%s]: Failed to get call duration for core duet event: %s";
        goto LABEL_28;
      }

LABEL_30:

      v129 = *(v73 + 8);
      v129(v74, v60);
      (*(v71 + 8))(v72, v61);
      v129(v66, v60);
      return 0;
    }
  }

  (*(v131 + 8))(v57, v60);
  return v63;
}

uint64_t sub_1DDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DE1C(uint64_t a1)
{
  v2 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DE84@<X0>(uint64_t *a1@<X8>)
{
  sub_33E80();
  sub_33E70();
  sub_33E40();

  v8 = v10;
  v2 = v10;
  v3 = sub_30C0(&v9, v10);
  *&v11[3] = v8;
  v4 = sub_22FEC(v11);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_3364(&v9);
  sub_33E70();
  sub_33E60();

  v5 = type metadata accessor for SiriConversationReader();
  v6 = swift_allocObject();
  sub_225F4(v11, v6 + 16);
  result = sub_225F4(&v9, v6 + 56);
  a1[3] = v5;
  a1[4] = &off_478F0;
  *a1 = v6;
  return result;
}

uint64_t sub_1DFA0@<X0>(void *a1@<X8>)
{
  sub_1E378(v41);
  type metadata accessor for PostSiriEngagementDataProcessor();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4014000000000000;
  sub_3204(&qword_4F758, qword_37880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_37740;
  v4 = sub_341A0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_34190();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_23460(&qword_4F760, &type metadata accessor for INStartCallIntentFeatureExtractor);
  *(v3 + 32) = v7;
  v8 = sub_341C0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_341B0();
  *(v3 + 96) = v8;
  *(v3 + 104) = sub_23460(&qword_4F768, &type metadata accessor for INSendMessageIntentFeatureExtractor);
  *(v3 + 72) = v11;
  v12 = sub_34180();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_34170();
  *(v3 + 136) = v12;
  *(v3 + 144) = sub_23460(&qword_4F770, &type metadata accessor for CommonInteractionFeatureExtractor);
  *(v3 + 112) = v15;
  sub_3204(&unk_4F4B0, &qword_36C70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_37550;
  v17 = sub_34140();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v16 + 32) = sub_34130();
  v20 = sub_34160();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v16 + 40) = sub_34150();
  v23 = v42;
  v24 = sub_225A4(v41, v42);
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24, v24);
  v27 = (v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = type metadata accessor for ASRLoggedContactTokensProcessor();
  v40[3] = v30;
  v40[4] = &off_473D8;
  v40[0] = v29;
  v31 = type metadata accessor for ConversationDataProcessor();
  v32 = swift_allocObject();
  v33 = sub_225A4(v40, v30);
  v34 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v33, v33);
  v36 = (v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  v32[5] = v30;
  v32[6] = &off_473D8;
  v32[2] = v38;
  v32[7] = v2;
  v32[8] = v3;
  v32[9] = v16;
  sub_3364(v40);
  result = sub_3364(v41);
  a1[3] = v31;
  a1[4] = &off_48648;
  *a1 = v32;
  return result;
}

uint64_t sub_1E378@<X0>(void *a1@<X8>)
{
  v2 = sub_33F20();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_33F10();
  v6 = sub_33C30();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_33C20();
  v9 = type metadata accessor for ASRLoggedContactTokensProcessor();
  v10 = swift_allocObject();
  v10[2] = v5;
  sub_33C60();
  v10[3] = v11;
  sub_33CB0();
  v10[4] = v12;

  a1[3] = v9;
  a1[4] = &off_473D8;
  *a1 = v10;
  return result;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPrivateLearningTTSMispronunciationPlugin.init()();
  return v0;
}

void (**SiriPrivateLearningTTSMispronunciationPlugin.init()())(char *, uint64_t)
{
  v1 = v0;
  v2 = sub_34070();
  v164 = *(v2 - 8);
  v3 = *(v164 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v159 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v155 - v8;
  v10 = sub_33BB0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v13 = sub_33E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_33F80();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  type metadata accessor for SiriPrivateLearningTTSMispronunciationPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v158 = objc_opt_self();
  v23 = [v158 bundleForClass:ObjCClassFromMetadata];
  sub_33F70();
  v24 = sub_33FA0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_33F90();
  v180 = v24;
  v181 = &protocol witness table for SupportedLocalesPListStore;
  *&v179 = v27;
  v28 = [objc_opt_self() currentLocale];
  sub_33BA0();

  v29 = [objc_opt_self() sharedPreferences];
  sub_33DE0();
  v30 = sub_33EE0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = v18;
  *(v1 + 344) = sub_33EC0();
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v34 = v14;
  v35 = v13;
  v36 = sub_342A0();
  sub_3034(v36, qword_53A18);

  v37 = sub_34280();
  v38 = sub_345C0();

  v39 = os_log_type_enabled(v37, v38);
  v165 = v2;
  v163 = v9;
  v162 = v33;
  v161 = v13;
  v167 = v34;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v179 = v41;
    *v40 = 136315138;
    v42 = *(v1 + 344);
    sub_33ED0();
    sub_23460(&qword_4F5F8, &type metadata accessor for CurrentLocales);
    v43 = v35;
    v44 = sub_34BB0();
    v46 = v45;
    (*(v34 + 8))(v33, v43);
    v47 = sub_22960(v44, v46, &v179);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_0, v37, v38, "Initialising TMDC plugin with current locale %s", v40, 0xCu);
    sub_3364(v41);
  }

  v48 = sub_33FF0();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_33FE0();
  v51 = sub_33FD0();

  *(v1 + 352) = v51 & 1;
  sub_1DE84(&v179);
  sub_1DFA0(&v176);
  type metadata accessor for PostSiriEngagementDataProcessor();
  v52 = swift_allocObject();
  *(v52 + 16) = 0x4014000000000000;
  sub_33E80();
  sub_33E70();
  sub_33E50();

  v53 = sub_33C30();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = v53;
  v157 = v53;
  swift_allocObject();
  v57 = sub_33C20();
  v173 = v56;
  v174 = &protocol witness table for TrialSiriUnderstandingTMDCStatusResolver;
  *&v172 = v57;
  v58 = v180;
  v59 = sub_225A4(&v179, v180);
  v166 = &v155;
  v60 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v59, v59);
  v62 = (&v155 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v177;
  v65 = sub_225A4(&v176, v177);
  v160 = &v155;
  v66 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v65, v65);
  v68 = (&v155 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v71 = *v68;
  v72 = type metadata accessor for SiriConversationReader();
  v171[4] = &off_478F0;
  v171[3] = v72;
  v171[0] = v70;
  v73 = type metadata accessor for ConversationDataProcessor();
  v170 = &off_48648;
  v169 = v73;
  v168[0] = v71;
  v74 = type metadata accessor for ConversationDataController();
  v75 = swift_allocObject();
  v76 = sub_225A4(v171, v72);
  v156 = &v155;
  v77 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v76, v76);
  v79 = (&v155 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79);
  v81 = v169;
  v82 = sub_225A4(v168, v169);
  v83 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v82, v82);
  v85 = (&v155 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85);
  v87 = *v79;
  v88 = *v85;
  v75[5] = v72;
  v75[6] = &off_478F0;
  v75[2] = v87;
  v75[10] = v73;
  v75[11] = &off_48648;
  v75[12] = v52;
  v75[7] = v88;
  v75[23] = 0x405E000000000000;
  sub_225F4(&v175, (v75 + 13));
  sub_225F4(&v172, (v75 + 18));
  sub_3364(v168);
  sub_3364(v171);
  sub_3364(&v176);
  sub_3364(&v179);
  *(v1 + 40) = v74;
  *(v1 + 48) = &off_473C8;
  *(v1 + 16) = v75;
  v89 = *(v1 + 344);

  v90 = v162;
  sub_33ED0();

  v166 = v1;
  v91 = v163;
  sub_33E00();
  v160 = *(v167 + 8);
  v167 += 8;
  v160(v90, v161);
  v92 = type metadata accessor for TTSPhonemesGenerator();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  v95 = swift_allocObject();
  v96 = v164;
  v156 = *(v164 + 16);
  v97 = v165;
  v156(v95 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_currentLocale, v91, v165);
  v98 = [objc_allocWithZone(sub_33BD0()) init];
  v155 = *(v96 + 8);
  v155(v91, v97);
  *(v95 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_sharedSession) = v98;
  v99 = [objc_allocWithZone(CNContactStore) init];
  v180 = v92;
  v181 = &off_473E8;
  *&v179 = v95;
  type metadata accessor for ContactPronunciationController();
  v100 = swift_allocObject();
  v101 = sub_225A4(&v179, v92);
  v102 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v101, v101);
  v104 = (&v155 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v105 + 16))(v104);
  v106 = *v104;
  *(v100 + 6) = v92;
  *(v100 + 7) = &off_473E8;
  *(v100 + 2) = v99;
  *(v100 + 3) = v106;
  sub_3364(&v179);
  v166[7] = v100;
  v107 = v166[43];

  sub_33ED0();

  sub_33DF0();
  v108 = v90;
  v109 = v161;
  v160(v108, v161);
  v110 = type metadata accessor for PhonemesMapper();
  v111 = swift_allocObject();
  v112 = *v111;
  v113 = [v158 bundleForClass:swift_getObjCClassFromMetadata()];
  v114 = v159;
  v156(v159, v91, v97);
  v115 = sub_2EB10(v113, v114);
  v116 = v91;
  v117 = v166;
  v155(v116, v97);
  v111[2] = v115;
  v117[8] = v111;
  v117[11] = v110;
  v117[12] = &off_48590;
  v118 = *(v157 + 48);
  v119 = *(v157 + 52);
  v120 = v157;
  swift_allocObject();
  v117[13] = sub_33C20();
  v117[16] = v120;
  v117[17] = &protocol witness table for TrialSiriUnderstandingTMDCStatusResolver;
  sub_23160((v117 + 13), &v179);
  v121 = type metadata accessor for P2PRunner();
  v122 = swift_allocObject();
  sub_225F4(&v179, v122 + 16);
  v117[21] = v121;
  v117[22] = &off_470E0;
  v117[18] = v122;
  v123 = type metadata accessor for TMDCSELFLogger();
  v124 = swift_allocObject();
  v117[26] = v123;
  v117[27] = &off_47118;
  v117[23] = v124;
  v125 = *(v117 + 352);
  v126 = v109;
  if (qword_4E560 != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for TMDCCoreDataStore();
  v128 = *(v127 + 48);
  v129 = *(v127 + 52);
  swift_allocObject();

  v130 = sub_33D90();
  v131 = type metadata accessor for TMDCCoreDataLogger();
  v132 = swift_allocObject();
  *(v132 + 32) = 2;
  *(v132 + 16) = v130;
  *(v132 + 24) = v125;
  v117[31] = v131;
  v117[32] = &off_48638;
  v117[28] = v132;
  v180 = sub_33F60();
  v181 = &protocol witness table for EnvironmentFeatureFlags;
  sub_22FEC(&v179);
  sub_33F50();
  sub_225F4(&v179, (v117 + 33));
  sub_23160((v117 + 8), &v179);
  v133 = v117[43];

  v134 = v162;
  sub_33ED0();

  v135 = v163;
  sub_33DF0();
  v160(v134, v126);
  LODWORD(v167) = *(v117 + 352);
  v136 = [objc_allocWithZone(CNContactStore) init];
  v137 = v180;
  v138 = sub_225A4(&v179, v180);
  v139 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v138, v138);
  v141 = (&v155 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v142 + 16))(v141);
  v143 = *v141;
  v177 = v110;
  v178 = &off_48590;
  v176 = v143;
  v144 = type metadata accessor for TTSContactOverrider();
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  v147 = swift_allocObject();
  v148 = sub_225A4(&v176, v110);
  v149 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v148, v148);
  v151 = (&v155 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v152 + 16))(v151);
  v153 = *v151;
  v147[6] = v110;
  v147[7] = &off_48590;
  v147[2] = v136;
  v147[3] = v153;
  (*(v164 + 32))(v147 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_currentLocale, v135, v165);
  *(v147 + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin19TTSContactOverrider_isCurareRun) = v167;
  sub_3364(&v176);
  sub_3364(&v179);
  v117[41] = v144;
  v117[42] = &off_47E98;
  v117[38] = v147;
  return v117;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.run(context:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_33CE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3204(&qword_4F600, &qword_37760);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v21 - v16;
  if (sub_21898(a1))
  {
    v18 = sub_34560();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v3;
    v19[5] = a2;
    v19[6] = a3;

    sub_1F81C(0, 0, v17, &unk_37770, v19);
  }

  else
  {
    (*(v8 + 104))(v12, enum case for PrivateLearningPluginResult.success(_:), v7);
    a2(v12);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_1F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_14454;

  return sub_1FB1C(a5, a6);
}

uint64_t sub_1F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3204(&qword_4F600, &qword_37760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_1CA30(a3, v28 - v12, &qword_4F600, &qword_37760);
  v14 = sub_34560();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_A948(v13, &qword_4F600, &qword_37760);
  }

  else
  {
    sub_34550();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_34530();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_34410() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_A948(a3, &qword_4F600, &qword_37760);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_A948(a3, &qword_4F600, &qword_37760);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1FB1C(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  v4 = sub_33CE0();
  v3[43] = v4;
  v5 = *(v4 - 8);
  v3[44] = v5;
  v6 = *(v5 + 64) + 15;
  v3[45] = swift_task_alloc();
  v7 = type metadata accessor for TMDCGroundTruth();
  v3[46] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v9 = sub_34070();
  v3[49] = v9;
  v10 = *(v9 - 8);
  v3[50] = v10;
  v11 = *(v10 + 64) + 15;
  v3[51] = swift_task_alloc();
  v12 = sub_33E10();
  v3[52] = v12;
  v13 = *(v12 - 8);
  v3[53] = v13;
  v14 = *(v13 + 64) + 15;
  v3[54] = swift_task_alloc();
  v15 = sub_341F0();
  v3[55] = v15;
  v16 = *(v15 - 8);
  v3[56] = v16;
  v17 = *(v16 + 64) + 15;
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_1FD30, 0, 0);
}

uint64_t sub_1FD30()
{
  if (qword_4E5B8 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = sub_34220();
  v0[58] = sub_3034(v4, qword_53A48);
  sub_34210();
  sub_341D0();
  v0[59] = sub_307AC("pluginRunExecutionTime", 22, 2, v1);
  v5 = *(v2 + 8);
  v0[60] = v5;
  v0[61] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v6 = sub_342A0();
  v0[62] = sub_3034(v6, qword_53A18);
  v7 = sub_34280();
  v8 = sub_345C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SiriPrivateLearningTTSMispronunciationPlugin.run() started", v9, 2u);
  }

  v10 = v0[42];

  v11 = *sub_30C0((v10 + 16), *(v10 + 40));
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_1FF30;

  return sub_887C();
}

uint64_t sub_1FF30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v7 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v5 = sub_20048;
  }

  else
  {
    v5 = sub_201E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_20048()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  *(v0 + 304) = *(v0 + 520);
  swift_errorRetain();
  sub_3204(&qword_4EF28, &qword_36CC0);
  sub_34400();
  sub_33CC0();
  (*(v4 + 104))(v3, enum case for PrivateLearningPluginResult.failure(_:), v5);
  v7(v3);
  (*(v4 + 8))(v3, v5);
  sub_34210();
  sub_341D0();
  sub_30A24("pluginRunFailure", 16, 2);

  v8 = *(v0 + 488);
  v9 = *(v0 + 472);
  v10 = *(v0 + 432);
  v11 = *(v0 + 408);
  v13 = *(v0 + 376);
  v12 = *(v0 + 384);
  v14 = *(v0 + 360);
  (*(v0 + 480))(*(v0 + 456), *(v0 + 440));
  sub_21558();

  v15 = *(v0 + 8);

  return v15();
}

void sub_201E0()
{
  v210 = v0;
  v1 = v0[64];
  v2 = v0[62];

  v3 = sub_34280();
  v4 = sub_345D0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[64];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_0, v3, v4, "Fetched %ld conversationData", v7, 0xCu);
  }

  else
  {
    v8 = v0[64];
  }

  v9 = v0[64];
  v183 = *(v9 + 16);
  v202 = v0;
  if (!v183)
  {

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v175 = 0;
  v10 = 0;
  v182 = v9 + 32;
  v187 = (v0[53] + 8);
  v11 = _swiftEmptyArrayStorage;
  v186 = (v0[50] + 8);
  v174 = v0[46];
  v193 = v0[42];
  v196 = v0[65];
  v181 = v0[64];
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_79;
    }

    v12 = v0[62];
    v184 = v10;
    v13 = (v182 + 56 * v10);
    v15 = v13[1];
    v14 = v13[2];
    v16 = *v13;
    *(v0 + 64) = *(v13 + 48);
    *(v0 + 2) = v15;
    *(v0 + 3) = v14;
    *(v0 + 1) = v16;
    v17 = v0[2];
    v189 = v0[4];
    v190 = v0[3];
    v188 = v0[5];
    v0[37] = v17;
    sub_1CA30((v0 + 37), (v0 + 39), &qword_4F730, &unk_37848);
    sub_231C4((v0 + 2), (v0 + 9));
    v18 = sub_34280();
    v19 = sub_345D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(v17 + 16);
      _os_log_impl(&dword_0, v18, v19, "Current ConversationData consists of %ld asrContactTokens", v20, 0xCu);
    }

    v200 = *(v17 + 16);
    if (v200)
    {
      break;
    }

LABEL_6:
    v10 = v184 + 1;
    sub_23220((v0 + 2));
    sub_A948((v0 + 37), &qword_4F730, &unk_37848);
    v9 = v181;
    if (v184 + 1 == v183)
    {
      v146 = v0[64];

      if (v11[2] && !v175)
      {
LABEL_71:
        v209[0] = 0;
        v209[1] = 0xE000000000000000;
        sub_34890(51);
        v212._object = 0x8000000000039770;
        v212._countAndFlagsBits = 0xD000000000000031;
        sub_34460(v212);
        sub_3204(&qword_4EF28, &qword_36CC0);
        v147 = sub_34510();
        v149 = v148;

        v213._countAndFlagsBits = v147;
        v213._object = v149;
        sub_34460(v213);

        sub_33CD0();
        sub_23460(&qword_4F738, &type metadata accessor for PrivateLearningPluginError);
        v150 = swift_allocError();
        sub_33CC0();
        swift_willThrow();
        v151 = v202;
        v153 = v202[57];
        v152 = v202[58];
        v155 = v202[44];
        v154 = v202[45];
        v156 = v202[43];
        v158 = v202[40];
        v157 = v202[41];
        v202[38] = v150;
        swift_errorRetain();
        sub_3204(&qword_4EF28, &qword_36CC0);
        sub_34400();
        sub_33CC0();
        (*(v155 + 104))(v154, enum case for PrivateLearningPluginResult.failure(_:), v156);
        v158(v154);
        (*(v155 + 8))(v154, v156);
        sub_34210();
        sub_341D0();
        sub_30A24("pluginRunFailure", 16, 2);

LABEL_74:
        v166 = v151[61];
        v167 = v151[59];
        v168 = v151[54];
        v169 = v151[51];
        v171 = v151[47];
        v170 = v151[48];
        v172 = v151[45];
        (v151[60])(v151[57], v151[55]);
        sub_21558();

        v173 = v151[1];

        v173();
        return;
      }

LABEL_73:
      v151 = v202;
      v160 = v202[57];
      v159 = v202[58];
      v162 = v202[44];
      v161 = v202[45];
      v163 = v202[43];
      v165 = v202[40];
      v164 = v202[41];

      (*(v162 + 104))(v161, enum case for PrivateLearningPluginResult.success(_:), v163);
      v165(v161);
      (*(v162 + 8))(v161, v163);
      sub_34210();
      sub_341D0();
      sub_30A24("pluginRunSuccess", 16, 2);
      goto LABEL_74;
    }
  }

  v21 = 0;
  v22 = v0[6];
  v199 = v17 + 32;
  if (!v0[7])
  {
    v22 = 0;
  }

  v191 = v22;
  v192 = v0[7];
  v201 = v17;
  while (1)
  {
    if (v21 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    v208 = v11;
    v23 = v0[62];
    v24 = v199 + 48 * v21;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v29 = *(v24 + 24);
    v28 = *(v24 + 32);
    v30 = *(v24 + 40);
    v0[16] = *v24;
    v0[17] = v26;
    *(v0 + 144) = v27;
    v0[19] = v29;
    v0[20] = v28;
    v204 = v28;
    *(v0 + 168) = v30;
    swift_bridgeObjectRetain_n();
    v31 = v29;
    v32 = sub_34280();
    v33 = sub_345D0();

    v206 = v25;
    if (os_log_type_enabled(v32, v33))
    {
      v194 = v27;
      v34 = v21;
      v35 = v31;
      v36 = v26;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v209[0] = v38;
      *v37 = 136315138;

      v39 = sub_22960(v25, v36, v209);

      *(v37 + 4) = v39;
      v0 = v202;
      _os_log_impl(&dword_0, v32, v33, "ASR token name: %s", v37, 0xCu);
      sub_3364(v38);

      v26 = v36;
      v31 = v35;
      v21 = v34;
      v27 = v194;
    }

    v40 = v0[62];
    v41 = sub_34280();
    v42 = sub_345D0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v204;
      _os_log_impl(&dword_0, v41, v42, "ASR token confidence: %f", v43, 0xCu);
    }

    if (v30)
    {
      break;
    }

LABEL_15:
    v11 = v208;
    v17 = v201;
LABEL_16:
    if (++v21 == v200)
    {
      goto LABEL_6;
    }
  }

  v44 = v0[62];
  v45 = sub_34280();
  v46 = sub_345D0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "ASR token confidence meets the asrConfidenceThreshold", v47, 2u);
  }

  v48 = *(v193 + 56);
  v203 = v31;
  if (*(v193 + 352) == 1)
  {
    v49 = *sub_30C0((v48 + 24), *(v48 + 48));

    v50 = v31;
    v51 = v26;
    v52 = v50;
    v53 = sub_34050();
    v54 = v196;
    v56 = sub_C6C8(v206, v51, v53, v55, 0);

    if (v196)
    {

      v17 = v201;
LABEL_40:
      v0 = v202;
      v77 = v202[62];
      swift_errorRetain();
      v78 = sub_34280();
      v79 = sub_345E0();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        swift_errorRetain();
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&dword_0, v78, v79, "%@", v80, 0xCu);
        sub_A948(v81, &qword_4E6D8, &qword_35750);
      }

      v11 = v208;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_139D8(0, v208[2] + 1, 1, v208);
      }

      v84 = v11[2];
      v83 = v11[3];
      if (v84 >= v83 >> 1)
      {
        v11 = sub_139D8((v83 > 1), v84 + 1, 1, v11);
      }

      v196 = 0;
      v11[2] = v84 + 1;
      v11[v84 + 4] = v54;
      goto LABEL_16;
    }

    v64 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
    v63 = sub_26214(v56, 0);
  }

  else
  {
    v57 = v0[54];
    v58 = v0[51];
    v59 = v0[52];
    v60 = *(v193 + 344);

    v61 = v31;
    sub_33ED0();
    sub_33E00();
    (*v187)(v57, v59);
    v62 = v27;
    v54 = v196;
    v63 = sub_24CBC(v191, v192, v206, v26, v62, v58);
    (*v186)(v0[51], v0[49]);
    if (v196)
    {

      v17 = v201;
      goto LABEL_40;
    }

    v51 = v26;
  }

  v65 = v51;
  if (v63[OBJC_IVAR___ContactPronunciation_source] <= 1u)
  {
    v66 = v203;
    if (!v63[OBJC_IVAR___ContactPronunciation_source])
    {

      goto LABEL_37;
    }
  }

  else
  {
    v66 = v203;
  }

  v67 = sub_34BC0();

  if ((v67 & 1) == 0)
  {
    v74 = *sub_30C0((v48 + 24), *(v48 + 48));
    v75 = sub_34050();
    v107 = sub_C6C8(v206, v65, v75, v76, 0);

    v108 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
    v111 = sub_26214(v107, 0);
    v68 = *&v111[OBJC_IVAR___ContactPronunciation_phonemeString];

    goto LABEL_38;
  }

LABEL_37:
  v68 = *&v63[OBJC_IVAR___ContactPronunciation_phonemeString];
LABEL_38:
  v69 = *sub_30C0((v193 + 144), *(v193 + 168));
  v70 = v68;
  v71 = sub_1928(v66, v70, (v193 + 64));
  v73 = v72;

  v85 = *(v193 + 136);
  sub_30C0((v193 + 104), *(v193 + 128));
  v86 = sub_33C90();
  v197 = v73;
  v185 = v65;
  if (v86 & v73)
  {
    v87 = v202[62];
    v88 = sub_34280();
    v89 = sub_345D0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_0, v88, v89, "tmdcRuntimeCorrections is enabled", v90, 2u);
    }

    v91 = v202[62];

    v92 = sub_34280();
    v93 = sub_345D0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v209[0] = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_22960(0, 0xE000000000000000, v209);
      _os_log_impl(&dword_0, v92, v93, "TTS mispronunciation is %s detected", v94, 0xCu);
      sub_3364(v95);
    }

    v96 = *sub_30C0((v193 + 304), *(v193 + 328));
    sub_18DF4((v202 + 2), (v202 + 16));
    v100 = *&v66[OBJC_IVAR___PhonemeString_symbols];
    v101 = *&v66[OBJC_IVAR___PhonemeString_symbols + 8];
    v177 = v99;
    v178 = v70;
    v176 = v97;
    if (v98)
    {
      v102 = v97;
      v103 = v99;
      v104 = v98;

      v105 = v103;
      v195 = v103;
      v106 = v102;
    }

    else
    {
      v195 = 0;
      v106 = 0;
      v104 = 0;
    }

    v110 = v100;
  }

  else
  {
    v178 = v70;
    v195 = 0;
    v176 = 0;
    v177 = 0;
    v106 = 0;
    v104 = 0;
    v109 = &v66[OBJC_IVAR___PhonemeString_symbols];
    v110 = *&v66[OBJC_IVAR___PhonemeString_symbols];
    v101 = *(v109 + 1);
  }

  v0 = v202;
  v112 = v202[48];
  v179 = v202[47];
  v180 = v202[62];

  sub_33B80();
  v113 = sub_33FF0();
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  swift_allocObject();
  sub_33FE0();
  v116 = sub_33FD0();

  *(v112 + v174[5]) = (v116 & 1) == 0;
  v117 = (v112 + v174[6]);
  *v117 = v206;
  v117[1] = v185;
  *(v112 + v174[7]) = v204;
  v118 = (v112 + v174[8]);
  *v118 = v110;
  v118[1] = v101;
  *(v112 + v174[9]) = v63;
  *(v112 + v174[10]) = v195;
  *(v112 + v174[11]) = v71;
  *(v112 + v174[12]) = v197 & 1;
  v119 = (v112 + v174[13]);
  *v119 = v106;
  v119[1] = v104;
  v198 = v104;
  sub_8000(v112, v179);
  v120 = sub_34280();
  v121 = sub_345D0();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v202[47];
  if (v122)
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v209[0] = v125;
    *v124 = 136315138;
    v126 = sub_34E4();
    v128 = v127;
    sub_8064(v123);
    v129 = sub_22960(v126, v128, v209);
    v0 = v202;

    *(v124 + 4) = v129;
    _os_log_impl(&dword_0, v120, v121, "TMDC created groundtruth: %s", v124, 0xCu);
    sub_3364(v125);
  }

  else
  {

    sub_8064(v123);
  }

  v130 = v0[42];
  v207 = sub_223E8();
  v205 = *(v207 + 16);
  if (!v205)
  {
LABEL_67:
    v145 = v0[48];

    sub_8064(v145);
    if (__OFADD__(v175, 1))
    {
      goto LABEL_80;
    }

    ++v175;
    sub_23274(v176, v198, v177);
    v196 = 0;
    goto LABEL_15;
  }

  v131 = 0;
  v132 = v207 + 32;
  while (v131 < *(v207 + 16))
  {
    v133 = v0[62];
    sub_23160(v132, (v0 + 22));
    sub_23160((v0 + 22), (v0 + 27));
    v134 = sub_34280();
    v135 = sub_345D0();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v209[0] = v137;
      *v136 = 136315138;
      sub_23160((v0 + 27), (v0 + 32));
      sub_3204(&qword_4F740, &qword_37858);
      v138 = sub_34400();
      v140 = v139;
      sub_3364(v0 + 27);
      v141 = sub_22960(v138, v140, v209);

      *(v136 + 4) = v141;
      _os_log_impl(&dword_0, v134, v135, "Logger %s started", v136, 0xCu);
      sub_3364(v137);
    }

    else
    {

      sub_3364(v0 + 27);
    }

    v142 = v0[48];
    v143 = v0[25];
    v144 = v0[26];
    sub_30C0(v0 + 22, v143);
    (*(v144 + 8))(v142, v190, v189, v188, v143, v144);
    ++v131;
    sub_3364(v0 + 22);
    v132 += 40;
    if (v205 == v131)
    {
      goto LABEL_67;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t sub_21558()
{
  v0 = sub_34230();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_341F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v12 = sub_342A0();
  sub_3034(v12, qword_53A18);
  v13 = sub_34280();
  v14 = sub_345C0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "SiriPrivateLearningTTSMispronunciationPlugin.run() ended", v15, 2u);
  }

  if (qword_4E5B8 != -1)
  {
    swift_once();
  }

  v16 = sub_34220();
  sub_3034(v16, qword_53A48);
  v17 = sub_34210();
  sub_34240();
  v18 = sub_345F0();
  if (sub_34690())
  {

    sub_34270();

    if ((*(v1 + 88))(v5, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v5, v0);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_341E0();
    _os_signpost_emit_with_name_impl(&dword_0, v17, v18, v21, "pluginRunExecutionTime", v19, v20, 2u);
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_21898(uint64_t a1)
{
  v73 = a1;
  v77 = sub_34070();
  v75 = *(v77 - 8);
  v2 = *(v75 + 64);
  __chkstk_darwin(v77, v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_33E10();
  v74 = *(v6 - 8);
  isa = v74[8].isa;
  __chkstk_darwin(v6, v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_33D00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v71 - v19;
  v76 = "[Error] Interval already ended";
  v21 = v1[43];
  if ((sub_33EA0() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v31 = sub_342A0();
    sub_3034(v31, qword_53A18);

    v32 = sub_34280();
    v33 = sub_345C0();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_22960(0xD00000000000003DLL, v76 | 0x8000000000000000, &v78);
    *(v34 + 12) = 2080;
    sub_33ED0();
    sub_33DF0();
    (v74[1].isa)(v10, v6);
    v35 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v37 = v36;
    (*(v75 + 8))(v5, v77);
    v38 = sub_22960(v35, v37, &v78);

    *(v34 + 14) = v38;
    v39 = "%s: siri locale %s isn't supported";
    goto LABEL_19;
  }

  if ((sub_33EB0() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v40 = sub_342A0();
    sub_3034(v40, qword_53A18);

    v32 = sub_34280();
    v33 = sub_345C0();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_22960(0xD00000000000003DLL, v76 | 0x8000000000000000, &v78);
    *(v34 + 12) = 2080;
    sub_33ED0();
    sub_33E00();
    (v74[1].isa)(v10, v6);
    v41 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v43 = v42;
    (*(v75 + 8))(v5, v77);
    v44 = sub_22960(v41, v43, &v78);

    *(v34 + 14) = v44;
    v39 = "%s: siri voice locale %s isn't supported";
LABEL_19:
    _os_log_impl(&dword_0, v32, v33, v39, v34, 0x16u);
    swift_arrayDestroy();

LABEL_20:

    return 0;
  }

  if ((sub_30F20() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v45 = sub_342A0();
    sub_3034(v45, qword_53A18);

    v46 = sub_34280();
    v47 = sub_345C0();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_35;
    }

    v48 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v78 = v73;
    *v48 = 136315650;
    *(v48 + 4) = sub_22960(0xD00000000000003DLL, v76 | 0x8000000000000000, &v78);
    *(v48 + 12) = 2080;
    LODWORD(v76) = v47;
    sub_33ED0();
    sub_33DF0();
    v72 = v74[1].isa;
    (v72)(v10, v6);
    v49 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v74 = v46;
    v50 = v49;
    v52 = v51;
    v53 = *(v75 + 8);
    v53(v5, v77);
    v54 = sub_22960(v50, v52, &v78);

    *(v48 + 14) = v54;
    *(v48 + 22) = 2080;
    sub_33ED0();
    sub_33E00();
    (v72)(v10, v6);
    v55 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
    v57 = v56;
    v53(v5, v77);
    v58 = sub_22960(v55, v57, &v78);

    *(v48 + 24) = v58;
    v59 = v74;
    _os_log_impl(&dword_0, v74, v76, "%s: siri locale / siri voice locale pair %s / %s isn't supported", v48, 0x20u);
    swift_arrayDestroy();

    return 0;
  }

  v22 = v1[17];
  sub_30C0(v1 + 13, v1[16]);
  if ((sub_33C50() & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v60 = sub_342A0();
    sub_3034(v60, qword_53A18);
    v46 = sub_34280();
    v61 = sub_345C0();
    if (!os_log_type_enabled(v46, v61))
    {
      goto LABEL_35;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v78 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_22960(0xD00000000000003DLL, v76 | 0x8000000000000000, &v78);
    _os_log_impl(&dword_0, v46, v61, "%s: TMDCRuntime trial flag are both disabled", v62, 0xCu);
    sub_3364(v63);
LABEL_34:

LABEL_35:

    return 0;
  }

  (*(v12 + 104))(v20, enum case for PrivateLearningPluginRunContext.maintenance(_:), v11);
  v23 = v73;
  v24 = sub_33CF0();
  v25 = *(v12 + 8);
  v25(v20, v11);
  if ((v24 & 1) == 0)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v64 = sub_342A0();
    sub_3034(v64, qword_53A18);
    (*(v12 + 16))(v17, v23, v11);
    v46 = sub_34280();
    v65 = sub_345C0();
    if (!os_log_type_enabled(v46, v65))
    {

      v25(v17, v11);
      return 0;
    }

    v66 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v66 = 136315394;
    *(v66 + 4) = sub_22960(0xD00000000000003DLL, v76 | 0x8000000000000000, &v78);
    *(v66 + 12) = 2080;
    sub_23460(&qword_4F748, &type metadata accessor for PrivateLearningPluginRunContext);
    v67 = sub_34BB0();
    v69 = v68;
    v25(v17, v11);
    v70 = sub_22960(v67, v69, &v78);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_0, v46, v65, "%s: context is %s", v66, 0x16u);
    swift_arrayDestroy();
    goto LABEL_34;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v26 = sub_342A0();
  sub_3034(v26, qword_53A18);
  v27 = sub_34280();
  v28 = sub_345D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "SiriPrivateLearningTTSMispronunciationPlugin is enabled", v29, 2u);
  }

  return 1;
}

uint64_t sub_223E8()
{
  v1 = v0;
  v2 = *(v0 + 136);
  sub_30C0((v0 + 104), *(v0 + 128));
  if ((sub_33CA0() & 1) != 0 || *(v0 + 352) == 1)
  {
    sub_3204(&qword_4F728, &unk_37838);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_361D0;
    sub_23160(v1 + 184, v3 + 32);
    v4 = v3 + 72;
    v5 = 224;
  }

  else
  {
    sub_3204(&qword_4F728, &unk_37838);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_35920;
    v4 = v3 + 32;
    v5 = 184;
  }

  sub_23160(v1 + v5, v4);
  return v3;
}

uint64_t *SiriPrivateLearningTTSMispronunciationPlugin.deinit()
{
  sub_3364(v0 + 2);
  v1 = v0[7];

  sub_3364(v0 + 8);
  sub_3364(v0 + 13);
  sub_3364(v0 + 18);
  sub_3364(v0 + 23);
  sub_3364(v0 + 28);
  sub_3364(v0 + 33);
  sub_3364(v0 + 38);
  v2 = v0[43];

  return v0;
}

uint64_t SiriPrivateLearningTTSMispronunciationPlugin.__deallocating_deinit()
{
  SiriPrivateLearningTTSMispronunciationPlugin.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22568()
{
  type metadata accessor for SiriPrivateLearningTTSMispronunciationPlugin();
  v0 = swift_allocObject();
  SiriPrivateLearningTTSMispronunciationPlugin.init()();
  return v0;
}

uint64_t sub_225A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_225F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2260C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22658@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227E4;

  return v7(a1);
}

uint64_t sub_227E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22904(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22960(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22960(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22A2C(v11, 0, 0, 1, a1, a2);
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
    sub_13DCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3364(v11);
  return v7;
}

unint64_t sub_22A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B38(a5, a6);
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
    result = sub_34900();
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

char *sub_22B38(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B84(a1, a2);
  sub_22CB4(&off_45518);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_22B84(uint64_t a1, unint64_t a2)
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

  v6 = sub_22DA0(v5, 0);
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

  result = sub_34900();
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
        v10 = sub_34470();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_22DA0(v10, 0);
        result = sub_34860();
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

uint64_t sub_22CB4(uint64_t result)
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

  result = sub_22E14(result, v12, 1, v3);
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

void *sub_22DA0(uint64_t a1, uint64_t a2)
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

  sub_3204(&qword_4F750, &qword_37878);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F750, &qword_37878);
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

_BYTE **sub_22F08(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22F18(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22FB4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t *sub_22FEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23050()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_23098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14454;

  return sub_1F770(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23160(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23274(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_232B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_147C4;

  return sub_226EC(a1, v5);
}

uint64_t sub_23370()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_233A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_14454;

  return sub_226EC(a1, v5);
}

uint64_t sub_23460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23530(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_235A8(void *a1)
{
  v2 = sub_343F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v8 = sub_342A0();
  v9 = sub_3034(v8, qword_53A18);
  v10 = a1;
  v11 = sub_34280();
  v12 = sub_345D0();

  if (os_log_type_enabled(v11, v12))
  {
    v68 = v2;
    v69 = v9;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72[0] = v14;
    *v13 = 136315138;
    v15 = [v10 phonemeData];
    if (v15)
    {
      v16 = v15;
      v17 = sub_343B0();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v70 = v17;
    v71 = v19;
    sub_3204(&qword_4F828, "x(");
    v20 = sub_34400();
    v22 = sub_22960(v20, v21, v72);

    *(v13 + 4) = v22;
    _os_log_impl(&dword_0, v11, v12, "Begin parsing phonemeData: %s", v13, 0xCu);
    sub_3364(v14);

    v2 = v68;
  }

  else
  {
  }

  v23 = [v10 phonemeData];
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = v23;
  sub_343B0();

  sub_343E0();
  v25 = sub_343C0();
  v27 = v26;

  (*(v3 + 8))(v7, v2);
  if (v27 >> 60 == 15)
  {
LABEL_11:
    v28 = v10;
    v29 = sub_34280();
    v30 = sub_345D0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v70 = v32;
      *v31 = 136315138;
      v33 = [v28 identifier];
      v34 = sub_343B0();
      v36 = v35;

      v37 = sub_22960(v34, v36, &v70);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_0, v29, v30, "phonemeData string is empty for contact: %s", v31, 0xCu);
      sub_3364(v32);
    }

    return 0;
  }

  if (qword_4E590 != -1)
  {
    swift_once();
  }

  sub_23DB0();
  sub_33A30();
  v38 = v70;
  v39 = v71;
  v40 = [objc_opt_self() stringFromContact:v10 style:0];
  if (!v40 || (v41 = v40, v42 = sub_343B0(), v44 = v43, v41, LODWORD(v41) = sub_EA90(v42, v44), , v39 != v41))
  {

    v58 = v10;
    v59 = sub_34280();
    v60 = sub_345E0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136315138;
      v63 = [v58 identifier];
      v64 = sub_343B0();
      v66 = v65;

      v67 = sub_22960(v64, v66, &v70);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_0, v59, v60, "phonemeData checksum is invalid for contact: %s", v61, 0xCu);
      sub_3364(v62);
    }

    sub_23E04(v25, v27);

    return 0;
  }

  v45 = v10;

  v46 = sub_34280();
  v47 = sub_345D0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v48 = 136315394;
    v70 = v38;
    LODWORD(v69) = v39;
    LODWORD(v71) = v39;

    v49 = sub_34400();
    v51 = sub_22960(v49, v50, v72);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    v52 = [v45 identifier];
    v53 = sub_343B0();
    v55 = v54;

    v56 = sub_22960(v53, v55, v72);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_0, v46, v47, "Parsed phonemeData: %s for contact: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  sub_23E04(v25, v27);

  return v38;
}

unint64_t sub_23DB0()
{
  result = qword_4F820;
  if (!qword_4F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F820);
  }

  return result;
}

uint64_t sub_23E04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23E18(a1, a2);
  }

  return a1;
}

uint64_t sub_23E18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23E6C()
{
  v0 = sub_343F0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_33A50();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  if (qword_4E598 != -1)
  {
    swift_once();
  }

  sub_33A40();
  sub_33A60();
  sub_2412C();
  v6 = sub_33A70();
  v8 = v7;
  sub_343E0();
  v9 = sub_343D0();
  sub_23E18(v6, v8);
  return v9;
}

unint64_t sub_2412C()
{
  result = qword_4F830;
  if (!qword_4F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F830);
  }

  return result;
}

uint64_t sub_2418C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2423C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_242D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 sub_24374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_244D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24530(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_24554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2460C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_2467C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4D4153585F535454;
    }

    else
    {
      v4 = 0x525341764ELL;
    }

    if (v2)
    {
      v3 = 0xEA00000000004150;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x41504D4153;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 726148684;
  }

  else
  {
    v4 = 0x746573656E6F6870;
    v3 = 0xED0000656D616E5FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x4D4153585F535454;
    }

    else
    {
      v9 = 0x525341764ELL;
    }

    if (a2)
    {
      v8 = 0xEA00000000004150;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 726148684;
    if (a2 != 3)
    {
      v6 = 0x746573656E6F6870;
      v5 = 0xED0000656D616E5FLL;
    }

    if (a2 == 2)
    {
      v7 = 0x41504D4153;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_34BC0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2480C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x69727265764F6975;
    }

    else
    {
      v3 = 7566452;
    }

    if (v2)
    {
      v4 = 0xEA00000000006564;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1667526004;
  }

  else if (a1 == 3)
  {
    v3 = 0x65764F6563696F76;
    v4 = 0xED00006564697272;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x69727265764F6975;
    }

    else
    {
      v9 = 7566452;
    }

    if (a2)
    {
      v8 = 0xEA00000000006564;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x65764F6563696F76;
    v6 = 0xED00006564697272;
    if (a2 != 3)
    {
      v5 = 0x6E776F6E6B6E75;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1667526004;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_34BC0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_249A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x525341766ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x61706D6173;
    }

    else
    {
      v4 = 6844012;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61706D617378;
    }

    else
    {
      v4 = 0x525341766ELL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x61706D6173;
  if (a2 != 2)
  {
    v8 = 6844012;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x61706D617378;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_34BC0();
  }

  return v11 & 1;
}

BOOL sub_24AC0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_34070() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_282F0(&qword_4FA28, &type metadata accessor for Locale);
  }

  while ((sub_34360() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_24BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_349A0();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_349A0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_27834(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_278D4(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_24CBC(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    v6 = 0x80000000000399C0;
    sub_281AC();
    swift_allocError();
    *v30 = 0xD000000000000012;
    v30[1] = 0x80000000000399C0;
LABEL_21:
    swift_willThrow();
    return v6;
  }

  v8 = v6;
  v113 = a4;
  v13 = sub_25AA8(a1, a2);
  if (!v7)
  {
    v14 = v13;
    if (v13)
    {
      v15 = sub_27D80(v13, a5, a6);
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v16 = sub_342A0();
      sub_3034(v16, qword_53A18);
      v17 = sub_34280();
      v18 = sub_345D0();
      if (os_log_type_enabled(v17, v18))
      {
        v83 = v14;
        v84 = a6;
        v19 = v15;
        v20 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v104 = v81;
        v82 = v19;
        v21 = 0xE300000000000000;
        v22 = 7566452;
        *v20 = 136315138;
        v23 = 0xE400000000000000;
        v24 = 1667526004;
        v25 = 0xED00006564697272;
        v26 = 0x65764F6563696F76;
        if (v19 != 3)
        {
          v26 = 0x6E776F6E6B6E75;
          v25 = 0xE700000000000000;
        }

        if (v19 != 2)
        {
          v24 = v26;
          v23 = v25;
        }

        if (v19)
        {
          v22 = 0x69727265764F6975;
          v21 = 0xEA00000000006564;
        }

        if (v19 <= 1u)
        {
          v27 = v22;
        }

        else
        {
          v27 = v24;
        }

        if (v19 <= 1u)
        {
          v28 = v21;
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_22960(v27, v28, &v104);

        *(v20 + 4) = v29;
        _os_log_impl(&dword_0, v17, v18, "Source of siri current pronunciation: %s", v20, 0xCu);
        sub_3364(v81);

        v14 = v83;
        a6 = v84;
        v15 = v82;
      }

      else
      {
      }

      if (v15 != 2)
      {
        if (!v15)
        {
          v38 = *sub_30C0(v8 + 3, v8[6]);
          v39 = sub_34050();
          v47 = sub_C6C8(a3, v113, v39, v40, 0);

          v48 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
          v6 = sub_26214(v47, 0);

          return v6;
        }

        v6 = 0x8000000000039A10;
        sub_281AC();
        swift_allocError();
        v46 = 0xD00000000000001FLL;
        goto LABEL_36;
      }

      v41 = sub_235A8(v14);
      if (!v41)
      {
        v6 = 0x8000000000039A30;
        sub_281AC();
        swift_allocError();
        v46 = 0xD000000000000035;
LABEL_36:
        *v45 = v46;
        v45[1] = v6;
LABEL_61:
        swift_willThrow();
LABEL_62:

        return v6;
      }

      v43 = v41;
      __chkstk_darwin(v41, v42);
      sub_257EC(sub_28264, v43, &v93);
      v44 = 0;

      v102[6] = v99;
      v102[7] = v100;
      v102[2] = v95;
      v102[3] = v96;
      v102[4] = v97;
      v102[5] = v98;
      v102[0] = v93;
      v102[1] = v94;
      v110 = v99;
      v111 = v100;
      v106 = v95;
      v107 = v96;
      v108 = v97;
      v109 = v98;
      v103 = v101;
      v112 = v101;
      v104 = v93;
      v105 = v94;
      if (sub_28284(&v104) == 1)
      {
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        sub_34890(40);

        *&v93 = 0xD000000000000026;
        *(&v93 + 1) = 0x8000000000039A70;
        sub_34070();
        sub_282F0(&qword_4FA08, &type metadata accessor for Locale);
        v115._countAndFlagsBits = sub_34BB0();
        sub_34460(v115);

LABEL_60:
        v67 = *(&v93 + 1);
        v6 = v93;
        sub_281AC();
        swift_allocError();
        *v68 = __PAIR128__(v67, v6);
        goto LABEL_61;
      }

      v85 = a6;
      if (a5)
      {
        if (a5 == 1)
        {
          v49 = *(&v107 + 1);
        }

        else
        {
          v49 = v110;
        }

        sub_1C9F0(v49);
        sub_A948(v102, &unk_4FA10, &qword_38180);
        if (!v49)
        {
          goto LABEL_49;
        }

        if (v49[2])
        {
          v56 = v49[5];
          v55 = v49[6];
          v52 = v49[7];
          v113 = 0;
          v57 = v49[11];

          v54 = v55;
          sub_FF98(v49);
          v44 = v113;

          goto LABEL_47;
        }
      }

      else
      {
        v49 = v105;
        sub_1C9F0(v105);
        sub_A948(v102, &unk_4FA10, &qword_38180);
        if (!v49)
        {
LABEL_49:
          v54 = 0;
          v52 = 0;
LABEL_50:
          v58 = v85;
          if (qword_4E588 != -1)
          {
            swift_once();
            v58 = v85;
          }

          v59 = sub_24AC0(v58, qword_53A10);
          if (!v52)
          {
            if (v59)
            {
              v66 = 2;
            }

            else
            {
              v66 = 3;
            }

            *&v93 = 0;
            *(&v93 + 1) = 0xE000000000000000;
            sub_34890(44);
            v116._countAndFlagsBits = 0x74276E646C756F43;
            v116._object = 0xEE0020646E696620;
            sub_34460(v116);
            LOBYTE(v90) = v66;
            sub_34980();
            v117._countAndFlagsBits = 0xD00000000000001CLL;
            v117._object = 0x8000000000039AA0;
            sub_34460(v117);
            goto LABEL_60;
          }

          if (v59)
          {
            v60 = sub_34BC0();

            if ((v60 & 1) == 0)
            {
              v61 = type metadata accessor for PhonemeString();
              v62 = objc_allocWithZone(v61);
              v63 = &v62[OBJC_IVAR___PhonemeString_symbols];
              *v63 = v54;
              v63[1] = v52;
              v62[OBJC_IVAR___PhonemeString_encoding] = 2;
              v64 = &v62[OBJC_IVAR___PhonemeString_boundary];
              *v64 = 32;
              v64[1] = 0xE100000000000000;
              v92.receiver = v62;
              v92.super_class = v61;
              v65 = objc_msgSendSuper2(&v92, "init", v81);
              goto LABEL_66;
            }
          }

          else
          {
          }

          *&v93 = v54;
          *(&v93 + 1) = v52;
          v90 = 32;
          v91 = 0xE100000000000000;
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_324C();
          v70 = sub_34710();
          v72 = v71;

          v73 = type metadata accessor for PhonemeString();
          v74 = objc_allocWithZone(v73);
          v75 = &v74[OBJC_IVAR___PhonemeString_symbols];
          *v75 = v70;
          v75[1] = v72;
          v74[OBJC_IVAR___PhonemeString_encoding] = 3;
          v76 = &v74[OBJC_IVAR___PhonemeString_boundary];
          *v76 = 0;
          v76[1] = 0xE000000000000000;
          v87.receiver = v74;
          v87.super_class = v73;
          v65 = objc_msgSendSuper2(&v87, "init", v81);
LABEL_66:
          v77 = v65;
          v78 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
          v79 = v77;
          v6 = v78;
          v80 = sub_26214(v79, 2);
          if (!v44)
          {
            v6 = v80;

            return v6;
          }

          goto LABEL_62;
        }

        if (v49[2])
        {
          v113 = 0;
          v51 = v49[5];
          v50 = v49[6];
          v52 = v49[7];
          v53 = v49[11];

          v54 = v50;
          sub_FF98(v49);

          v44 = v113;
LABEL_47:

          goto LABEL_50;
        }
      }

      sub_FF98(v49);
      goto LABEL_49;
    }

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v31 = sub_342A0();
    sub_3034(v31, qword_53A18);

    v32 = sub_34280();
    v33 = sub_345E0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v104 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22960(a1, a2, &v104);
      _os_log_impl(&dword_0, v32, v33, "Couldn't find contact for Siri's current pronunciation for contactID: %s", v34, 0xCu);
      sub_3364(v35);
    }

    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_34890(38);

    *&v104 = 0xD000000000000024;
    *(&v104 + 1) = 0x80000000000399E0;
    v114._countAndFlagsBits = a1;
    v114._object = a2;
    sub_34460(v114);
    v36 = *(&v104 + 1);
    v6 = v104;
    sub_281AC();
    swift_allocError();
    *v37 = __PAIR128__(v36, v6);
    goto LABEL_21;
  }

  return v6;
}

void sub_257EC(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a1;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a2 + 56) + 120 * v13;
      v18 = *(v17 + 48);
      v20 = *v17;
      v19 = *(v17 + 16);
      v51[2] = *(v17 + 32);
      v51[3] = v18;
      v51[0] = v20;
      v51[1] = v19;
      v22 = *(v17 + 80);
      v21 = *(v17 + 96);
      v23 = *(v17 + 64);
      v52 = *(v17 + 112);
      v51[5] = v22;
      v51[6] = v21;
      v51[4] = v23;
      v47 = *(v17 + 64);
      v48 = *(v17 + 80);
      v49 = *(v17 + 96);
      v50 = *(v17 + 112);
      v43 = *v17;
      v44 = *(v17 + 16);
      v45 = *(v17 + 32);
      v46 = *(v17 + 48);
      *&v42 = v16;
      *(&v42 + 1) = v15;

      sub_D934(v51, &v33);
      v24 = v53(&v42);
      if (v3)
      {
        v39 = v48;
        v40 = v49;
        v41 = v50;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v33 = v42;
        v34 = v43;
        sub_A948(&v33, &qword_4FA30, &qword_38188);

        return;
      }

      if (v24)
      {
        break;
      }

      v9 &= v9 - 1;
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v33 = v42;
      v34 = v43;
      sub_A948(&v33, &qword_4FA30, &qword_38188);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v39 = v48;
    v40 = v49;
    v41 = v50;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v33 = v42;
    v34 = v43;
    nullsub_1(&v33);
    v30 = v40;
    *(a3 + 96) = v39;
    *(a3 + 112) = v30;
    *(a3 + 128) = v41;
    v31 = v36;
    *(a3 + 32) = v35;
    *(a3 + 48) = v31;
    v32 = v38;
    *(a3 + 64) = v37;
    *(a3 + 80) = v32;
    v29 = v33;
    v28 = v34;
LABEL_13:
    *a3 = v29;
    *(a3 + 16) = v28;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        sub_28338(&v42);
        v25 = v49;
        *(a3 + 96) = v48;
        *(a3 + 112) = v25;
        *(a3 + 128) = v50;
        v26 = v45;
        *(a3 + 32) = v44;
        *(a3 + 48) = v26;
        v27 = v47;
        *(a3 + 64) = v46;
        *(a3 + 80) = v27;
        v29 = v42;
        v28 = v43;
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_25AA8(uint64_t a1, void *a2)
{
  sub_3204(&unk_4F4B0, &qword_36C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_37540;
  v5 = CNContactPhonemeDataKey;
  *(v4 + 32) = CNContactPhonemeDataKey;
  *(v4 + 40) = CNContactGivenNameKey;
  *(v4 + 48) = CNContactFamilyNameKey;
  *(v4 + 56) = CNContactNicknameKey;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = CNContactGivenNameKey;
  v9 = CNContactFamilyNameKey;
  v10 = CNContactNicknameKey;
  *(v4 + 64) = [v6 descriptorForRequiredKeysForStyle:0];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_37550;
  v12 = CNContactPronunciationGivenNameKey;
  v13 = CNContactPronunciationFamilyNameKey;
  *(inited + 32) = CNContactPronunciationGivenNameKey;
  *(inited + 40) = v13;
  v14 = v12;
  v15 = v13;
  v16 = a1;
  v17 = a2;
  sub_24BCC(inited);
  v18 = objc_opt_self();
  sub_3204(&qword_4F100, &qword_36CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_35920;
  *(v19 + 32) = v16;
  *(v19 + 40) = a2;

  isa = sub_344F0().super.isa;

  v21 = [v18 predicateForContactsWithIdentifiers:isa];

  v22 = *(v40 + 16);
  sub_3204(&qword_4F4C0, &unk_37670);
  v23 = sub_344F0().super.isa;

  v41 = 0;
  v24 = [v22 unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:&v41];

  v25 = v41;
  if (!v24)
  {
    v32 = v41;
    sub_33AC0();

    goto LABEL_6;
  }

  sub_7F10(0, &qword_4F4C8, CNContact_ptr);
  v26 = sub_34500();
  v27 = v25;

  if (v26 >> 62)
  {
    if (sub_349A0() >= 2)
    {
      goto LABEL_4;
    }

    v28 = sub_349A0();
  }

  else
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28 > 1)
    {
LABEL_4:

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_34890(42);

      v41 = 0xD000000000000028;
      v42 = 0x8000000000039990;
      v43._countAndFlagsBits = v16;
      v43._object = v17;
      sub_34460(v43);
      v29 = v41;
      v30 = v42;
      sub_281AC();
      swift_allocError();
      *v31 = v29;
      v31[1] = v30;
LABEL_6:
      swift_willThrow();

      return v17;
    }
  }

  if (v28)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v33 = sub_348C0();
      goto LABEL_13;
    }

    if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      v33 = *(v26 + 32);
LABEL_13:
      v17 = v33;

      return v17;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_4E5A8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v34 = sub_342A0();
  sub_3034(v34, qword_53A18);

  v35 = sub_34280();
  v36 = sub_345E0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22960(v16, v17, &v41);
    _os_log_impl(&dword_0, v35, v36, "No matching contacts found for Siri current pronunciation for %s", v37, 0xCu);
    sub_3364(v38);
  }

  return 0;
}

uint64_t sub_25FA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_34BC0();
  }

  return v5 & 1;
}

uint64_t sub_2601C()
{
  sub_3364((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_26098(void *a1)
{
  v2 = v1;
  type metadata accessor for PhonemeString();
  v4 = sub_34660();
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v5 = sub_34660();
  if (v5)
  {
    v6 = v5;
    v7 = sub_343B0();
    v9 = v8;

    if (v4)
    {
      if (v9)
      {
        v10 = sub_280B8(v7, v9);
        if (v10 != 5)
        {
          *&v2[OBJC_IVAR___ContactPronunciation_phonemeString] = v4;
          v2[OBJC_IVAR___ContactPronunciation_source] = v10;
          v13.receiver = v2;
          v13.super_class = type metadata accessor for ContactPronunciation();
          v11 = objc_msgSendSuper2(&v13, "init");

          return v11;
        }
      }

      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_7:

LABEL_9:
  type metadata accessor for ContactPronunciation();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_26214(_BYTE *a1, char a2)
{
  if (a2 == 2)
  {
    v5 = OBJC_IVAR___PhonemeString_encoding;
    if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u && a1[OBJC_IVAR___PhonemeString_encoding] != 2)
    {
      goto LABEL_15;
    }

    v9 = sub_34BC0();

    if (v9)
    {
      goto LABEL_16;
    }

    if (a1[v5] == 2)
    {
LABEL_15:

      goto LABEL_16;
    }

    v11 = sub_34BC0();

    if ((v11 & 1) == 0)
    {
      v8 = " phonemes inside phonemeData";
      v7 = 0xD000000000000029;
      goto LABEL_19;
    }

LABEL_16:
    *&v2[OBJC_IVAR___ContactPronunciation_phonemeString] = a1;
    v2[OBJC_IVAR___ContactPronunciation_source] = a2;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for ContactPronunciation();
    return objc_msgSendSuper2(&v14, "init");
  }

  if (a2)
  {
    goto LABEL_16;
  }

  if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u && a1[OBJC_IVAR___PhonemeString_encoding] == 2)
  {
    goto LABEL_15;
  }

  v6 = sub_34BC0();

  if (v6)
  {
    goto LABEL_16;
  }

  v7 = 0xD000000000000021;
  v8 = "on is not in L&H or sampa";
LABEL_19:
  v12 = v8 | 0x8000000000000000;
  sub_2829C();
  swift_allocError();
  *v13 = v7;
  v13[1] = v12;
  swift_willThrow();

  type metadata accessor for ContactPronunciation();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_2651C()
{
  v1 = v0;
  BYTE8(v7) = 0;
  sub_34890(33);
  v8._object = 0x8000000000039970;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_34460(v8);
  v2 = [*(v0 + OBJC_IVAR___ContactPronunciation_phonemeString) description];
  v3 = sub_343B0();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_34460(v9);

  v10._countAndFlagsBits = 0x656372756F73202CLL;
  v10._object = 0xEA0000000000203ALL;
  sub_34460(v10);
  *&v7 = *(v1 + OBJC_IVAR___ContactPronunciation_source);
  sub_34980();
  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_34460(v11);
  return *(&v7 + 1);
}

uint64_t sub_2663C(uint64_t a1)
{
  sub_7734(a1, v9);
  if (!v10)
  {
    sub_A948(v9, &qword_4EA18, &qword_38170);
    goto LABEL_7;
  }

  type metadata accessor for ContactPronunciation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___ContactPronunciation_phonemeString);
  v4 = *&v8[OBJC_IVAR___ContactPronunciation_phonemeString];
  v5 = sub_34680();

  if ((v5 & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = sub_2480C(*(v2 + OBJC_IVAR___ContactPronunciation_source), v8[OBJC_IVAR___ContactPronunciation_source]);

  return v6 & 1;
}

void sub_267D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___ContactPronunciation_phonemeString);
  v4 = sub_34380();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___ContactPronunciation_source) > 1u)
  {
    *(v1 + OBJC_IVAR___ContactPronunciation_source);
  }

  v5 = sub_34380();

  v6 = sub_34380();
  [a1 encodeObject:v5 forKey:v6];
}

uint64_t sub_269E4()
{
  if (*v0)
  {
    result = 0x656372756F73;
  }

  else
  {
    result = 0x53656D656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_26A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53656D656E6F6870 && a2 == 0xED0000676E697274;
  if (v6 || (sub_34BC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_34BC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26B08(uint64_t a1)
{
  v2 = sub_2778C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_26B44(uint64_t a1)
{
  v2 = sub_2778C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_26B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactPronunciation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_26BE8(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&unk_4F9C0, &qword_38168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_2778C();
  sub_34CA0();
  v14 = *(v3 + OBJC_IVAR___ContactPronunciation_phonemeString);
  v13[7] = 0;
  type metadata accessor for PhonemeString();
  sub_282F0(&qword_4EA10, type metadata accessor for PhonemeString);
  sub_34B70();
  if (!v2)
  {
    v13[6] = *(v3 + OBJC_IVAR___ContactPronunciation_source);
    v13[5] = 1;
    sub_28158();
    sub_34B70();
  }

  return (*(v6 + 8))(v10, v5);
}

id sub_26DC4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F988, &unk_38150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_2778C();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for ContactPronunciation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PhonemeString();
    v16 = 0;
    sub_282F0(&qword_4E9E0, type metadata accessor for PhonemeString);
    sub_34AB0();
    *&v1[OBJC_IVAR___ContactPronunciation_phonemeString] = v17;
    v16 = 1;
    sub_277E0();
    sub_34AB0();
    v1[OBJC_IVAR___ContactPronunciation_source] = v17;
    v13 = type metadata accessor for ContactPronunciation();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, "init");
    (*(v6 + 8))(v10, v5);
    sub_3364(a1);
  }

  return v3;
}

id sub_27050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ContactPronunciation());
  result = sub_26DC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_270D4()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_271B8()
{
  *v0;
  *v0;
  *v0;
  sub_34430();
}

Swift::Int sub_27288()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_27368@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_280B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_27398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7566452;
  v5 = 0xE400000000000000;
  v6 = 1667526004;
  v7 = 0xED00006564697272;
  v8 = 0x65764F6563696F76;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69727265764F6975;
    v3 = 0xEA00000000006564;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ContactPronunciationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPronunciationSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27738()
{
  result = qword_4F980;
  if (!qword_4F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F980);
  }

  return result;
}