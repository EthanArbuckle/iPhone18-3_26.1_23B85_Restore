uint64_t sub_100084158(uint64_t a1)
{
  v2 = sub_100085740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084194(uint64_t a1)
{
  v2 = sub_100085740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000841E8()
{
  String.hash(into:)();
}

unint64_t sub_1000842F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000853F0(*a1);
  *a2 = result;
  return result;
}

void sub_100084328(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_10008440C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000844CC()
{
  String.hash(into:)();
}

Swift::Int sub_100084578()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100084634@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008543C(*a1);
  *a2 = result;
  return result;
}

void sub_100084664(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E61707865;
  if (*v1 != 2)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x746361706D6F63;
    v2 = 0xE700000000000000;
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

uint64_t sub_1000846FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100084798(uint64_t a1)
{
  v2 = sub_100085B80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000847D4(uint64_t a1)
{
  v2 = sub_100085B80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084810(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7368801;
  }

  else
  {
    v3 = 0x6C61646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7368801;
  }

  else
  {
    v5 = 0x6C61646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000848AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100084924()
{
  String.hash(into:)();
}

Swift::Int sub_100084988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100084A08@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_100084A64(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (!*v1)
  {
    v2 = 0x6C61646F6DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100084AA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];

  v19._countAndFlagsBits = v8;
  v19._object = v9;
  result = sub_1000853F0(v19);
  if (result == 7)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v17 = 0xD000000000000018;
    v18 = 0x80000001001BF410;
    v11._countAndFlagsBits = v8;
    v11._object = v9;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6F6E2073656F6420;
    v12._object = 0xEF74736978652074;
    String.append(_:)(v12);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    v16 = *(sub_100009F70(&qword_10021BA80) + 48);
    *v15 = &type metadata for ViewModulesConfiguration.Name;
    (*(v5 + 16))(&v15[v16], v7, v4);
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100084CE0(void *a1, char a2)
{
  v5 = sub_100009F70(&qword_10021BA88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100028124(a1, a1[3]);
  sub_100085740();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000857E8();
  v11 = Dictionary.mapKeys<A>(_:)();
  v10[15] = 0;
  sub_100009F70(&qword_10021BA58);
  sub_100085890(&qword_10021BA90, sub_100085914);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v10[14] = a2 & 1;
    v10[13] = 1;
    sub_100085968();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_100084F24@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*result <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*result)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*result <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*result > 2u)
  {
    v3 = v5;
  }

  *a2 = v10;
  a2[1] = v3;
  return result;
}

void *sub_100084FFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100085488(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100085100(void *a1, char a2)
{
  v4 = sub_100009F70(&qword_10021BAC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100028124(a1, a1[3]);
  sub_100085B80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_100085C28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100085248@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100085A10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000853F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209320, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008543C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002093E8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_100085488(void *a1)
{
  v3 = sub_100009F70(&qword_10021BA48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100028124(a1, a1[3]);
  sub_100085740();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100009F70(&qword_10021BA58);
    v9[7] = 0;
    sub_100085890(&qword_10021BA60, sub_100085794);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000857E8();
    Dictionary.mapKeys<A>(_:)();

    v9[5] = 1;
    sub_10008583C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[6];
  }

  sub_100021498(a1);
  return v7;
}

unint64_t sub_100085740()
{
  result = qword_10021BA50;
  if (!qword_10021BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BA50);
  }

  return result;
}

unint64_t sub_100085794()
{
  result = qword_10021BA68;
  if (!qword_10021BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BA68);
  }

  return result;
}

unint64_t sub_1000857E8()
{
  result = qword_10021BA70;
  if (!qword_10021BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BA70);
  }

  return result;
}

unint64_t sub_10008583C()
{
  result = qword_10021BA78;
  if (!qword_10021BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BA78);
  }

  return result;
}

uint64_t sub_100085890(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_10021BA58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100085914()
{
  result = qword_10021BA98;
  if (!qword_10021BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BA98);
  }

  return result;
}

unint64_t sub_100085968()
{
  result = qword_10021BAA0;
  if (!qword_10021BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAA0);
  }

  return result;
}

unint64_t sub_1000859BC()
{
  result = qword_10021BAA8;
  if (!qword_10021BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAA8);
  }

  return result;
}

void *sub_100085A10(void *a1)
{
  v3 = sub_100009F70(&qword_10021BAB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_100028124(a1, a1[3]);
  sub_100085B80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100021498(a1);
  }

  else
  {
    sub_100085BD4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100021498(a1);
  }

  return v7;
}

unint64_t sub_100085B80()
{
  result = qword_10021BAB8;
  if (!qword_10021BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAB8);
  }

  return result;
}

unint64_t sub_100085BD4()
{
  result = qword_10021BAC0;
  if (!qword_10021BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAC0);
  }

  return result;
}

unint64_t sub_100085C28()
{
  result = qword_10021BAD0;
  if (!qword_10021BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAD0);
  }

  return result;
}

unint64_t sub_100085C7C()
{
  result = qword_10021BAD8;
  if (!qword_10021BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAD8);
  }

  return result;
}

unint64_t sub_100085CD0()
{
  result = qword_10021BAE0;
  if (!qword_10021BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlaybackState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ViewModulesConfiguration.Name(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewModulesConfiguration.Name(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100086018()
{
  result = qword_10021BAE8;
  if (!qword_10021BAE8)
  {
    sub_10000B3DC(&qword_10021BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAE8);
  }

  return result;
}

unint64_t sub_100086080()
{
  result = qword_10021BAF8;
  if (!qword_10021BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BAF8);
  }

  return result;
}

unint64_t sub_1000860D8()
{
  result = qword_10021BB00;
  if (!qword_10021BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB00);
  }

  return result;
}

unint64_t sub_100086130()
{
  result = qword_10021BB08;
  if (!qword_10021BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB08);
  }

  return result;
}

unint64_t sub_100086188()
{
  result = qword_10021BB10;
  if (!qword_10021BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB10);
  }

  return result;
}

unint64_t sub_1000861E0()
{
  result = qword_10021BB18;
  if (!qword_10021BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB18);
  }

  return result;
}

unint64_t sub_100086238()
{
  result = qword_10021BB20;
  if (!qword_10021BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB20);
  }

  return result;
}

unint64_t sub_100086290()
{
  result = qword_10021BB28;
  if (!qword_10021BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB28);
  }

  return result;
}

unint64_t sub_1000862E8()
{
  result = qword_10021BB30;
  if (!qword_10021BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BB30);
  }

  return result;
}

unint64_t sub_100086340()
{
  result = qword_10021BB38[0];
  if (!qword_10021BB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021BB38);
  }

  return result;
}

uint64_t sub_1000863B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for PromotionalAssetsEntryViewModel();
  v9 = v8[13];
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a5 + v9, a2, v10);
  *(a5 + v8[14]) = a3 & 1;
  v11 = a5 + v8[15];
  *v11 = LocalizedStringKey.init(stringLiteral:)();
  *(v11 + 8) = v12;
  *(v11 + 16) = v13 & 1;
  *(v11 + 24) = v14;
  v15 = a5 + v8[16];
  result = LocalizedStringKey.init(stringLiteral:)();
  *v15 = result;
  *(v15 + 8) = v17;
  *(v15 + 16) = v18 & 1;
  *(v15 + 24) = v19;
  return result;
}

uint64_t sub_100086530()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000865D0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  if (v11 < a2)
  {
    v15 = (((((v14 & ~v12) + v13) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_27:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v11 + (v23 | v22) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  v26 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v28 = (*(v8 + 48))(v26);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = *(((v26 + v13) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

_DWORD *sub_1000867E4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(v5 - 8) + 64) + v10;
  if (!v9)
  {
    ++v11;
  }

  v15 = (((((v14 & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v16 = a3 - v13 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v13 < a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a2 > v13)
  {
    if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v20 = a2 - v13;
    }

    else
    {
      v20 = 1;
    }

    if ((((((v14 & ~v10) + v11) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v21 = ~v13 + a2;
      v22 = result;
      bzero(result, (((((v14 & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v22;
      *v22 = v21;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(result + v15) = v20;
      }

      else
      {
        *(result + v15) = v20;
      }
    }

    else if (v19)
    {
      *(result + v15) = v20;
    }

    return result;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(result + v15) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v15) = 0;
  }

  else if (v19)
  {
    *(result + v15) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v13)
  {
    v23 = *(v6 + 56);

    return v23();
  }

  else
  {
    result = ((result + v14) & ~v10);
    if (v12 == v13)
    {
      v24 = *(v8 + 56);
      v25 = a2 + 1;

      return v24(result, v25, v9);
    }

    else
    {
      v26 = ((result + v11) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v26[3] = 0;
        v26[4] = 0;
        v26[1] = a2 & 0x7FFFFFFF;
        v26[2] = 0;
      }

      else
      {
        v26[2] = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_100086A70()
{
  result = qword_10021BBC0;
  if (!qword_10021BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBC0);
  }

  return result;
}

uint64_t sub_100086AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v1 + 56))(v2, v1);
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    v9 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v5 = v8;
    v4 = AssociatedTypeWitness;
  }

  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_100086C80(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x80000001001BF460;
  v3._countAndFlagsBits = 0xD000000000000030;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = (*(*(a1 + 32) + 48))(*(a1 + 16));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_100086D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v8 = *(a3 + 24);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  (*(v10 + 16))(v17 - v11, v4 + *(a3 + 52), v9);
  v13 = *(v8 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v8 = v9;
  }

  else
  {
    (*(*(a3 + 40) + 32))(a1, v17[0], v8);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, v8);
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a4, v14, 1, v15);
}

__n128 sub_100086F60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100086F8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_100086FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100087040()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021BBC8 = result;
  unk_10021BBD0 = v1;
  byte_10021BBD8 = v2 & 1;
  qword_10021BBE0 = v3;
  return result;
}

uint64_t sub_100087088()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021BBE8 = result;
  unk_10021BBF0 = v1;
  byte_10021BBF8 = v2 & 1;
  qword_10021BC00 = v3;
  return result;
}

uint64_t sub_1000870D0()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021BC08 = result;
  unk_10021BC10 = v1;
  byte_10021BC18 = v2 & 1;
  qword_10021BC20 = v3;
  return result;
}

uint64_t sub_100087118()
{
  v0 = [objc_opt_self() systemGray5Color];
  result = Color.init(uiColor:)();
  qword_10021BC28 = result;
  return result;
}

uint64_t sub_100087158()
{
  v1 = v0;
  v2 = sub_100009F70(&qword_10021B910);
  __chkstk_darwin(v2 - 8);
  v4 = &v47[-1] - v3;
  v5 = v0[11];
  if (!v5)
  {
    return 3;
  }

  v6 = v0[10] == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 3;
  }

  if (qword_100218358 != -1)
  {
    swift_once();
  }

  v7 = *(qword_1002305A0 + 16);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_getKeyPath();
  v47[0] = v8;
  sub_10008815C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC15ShazamEventsAppP33_1C7073CF0CC1C2E3B987F96E1178132819SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_10007E890(v8 + v9, v4);
  os_unfair_lock_unlock((v7 + 24));
  v10 = type metadata accessor for MusicSubscription();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_10000D52C(v4, &qword_10021B910);
    return 3;
  }

  v12 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v11 + 8))(v4, v10);
  if ((v12 & 1) == 0)
  {
    return 3;
  }

  v13 = v1[8];
  v14 = v1[9];
  sub_100028124(v1 + 5, v13);
  (*(v14 + 104))(v13, v14);
  swift_getAssociatedTypeWitness();
  sub_100009F70(&qword_10021BC30);
  v15 = _arrayForceCast<A, B>(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_1001444DC(0, v16, 0);
    v17 = v50;
    v18 = v15 + 32;
    do
    {
      sub_10005DA94(v18, v47);
      v19 = v48;
      v20 = v49;
      sub_100028124(v47, v48);
      v21 = (*(v20 + 88))(v19, v20);
      v23 = v22;
      sub_100021498(v47);
      v50 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1001444DC((v24 > 1), v25 + 1, 1);
        v17 = v50;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  v28 = *v1;
  v29 = *(*v1 + 40);
  v30 = v28[6];
  sub_100028124(v28 + 2, v29);
  v31 = (*(v30 + 8))(v29, v30);
  v32 = *(v31 + 16);
  if (v32)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_1001444DC(0, v32, 0);
    v33 = v50;
    v46 = v31;
    v34 = v31 + 32;
    do
    {
      sub_10005DA94(v34, v47);
      v35 = v48;
      v36 = v49;
      sub_100028124(v47, v48);
      v37 = (*(v36 + 88))(v35, v36);
      v39 = v38;
      sub_100021498(v47);
      v50 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_1001444DC((v40 > 1), v41 + 1, 1);
        v33 = v50;
      }

      v33[2] = v41 + 1;
      v42 = &v33[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = &_swiftEmptyArrayStorage;
  }

  v43 = sub_1000E5FF4(v33, v17);

  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v44 = v28[5];
  v45 = v28[6];
  sub_100028124(v28 + 2, v44);
  return 0x10200u >> (8 * (*(v45 + 32))(v44, v45));
}

uint64_t sub_100087690()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_100028124(v0 + 5, v1);
  v3 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - v7;
  v3(v1, v2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[4] = AssociatedConformanceWitness;
    sub_100043D3C(v14);
    (*(v9 + 32))();
    v11 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_100021498(v14);
    if (v11)
    {
      return Color.init(cgColor:)();
    }
  }

  if (qword_100218378 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000878D4@<X0>(char *a1@<X8>)
{
  v3 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[8];
  v11 = v1[9];
  sub_100028124(v1 + 5, v10);
  (*(v11 + 96))(v10, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000D52C(v5, qword_100218748);
    v12 = 1;
  }

  else
  {
    v13 = *(v7 + 32);
    v13(v9, v5, v6);
    if (*(v1[12] + 16))
    {
      URL.appending(queryItems:)();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13(a1, v9, v6);
    }

    v12 = 0;
  }

  return (*(v7 + 56))(a1, v12, 1, v6);
}

void sub_100087AEC(void *a1)
{
  sub_100009F70(qword_100218F38);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001AD7C0;
  v5 = a1[2];
  v4 = a1[3];
  *(v3 + 56) = &type metadata for AnalyticsString;
  *(v3 + 64) = &off_10021CBD0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;
  *(v3 + 96) = &type metadata for AnalyticsModuleName;
  *(v3 + 104) = &off_10021CC30;
  *(v3 + 72) = 3;
  *(v3 + 136) = &type metadata for AnalyticsModuleAction;
  *(v3 + 144) = &off_10021CC08;
  *(v3 + 112) = xmmword_1001AF560;
  *(v3 + 128) = 3;
  v6 = *(v1 + 105);

  if (v6 != 15)
  {
    v3 = sub_1001666DC(1, 4, 1, v3);
    v21 = &type metadata for AnalyticsPageName;
    v22 = &off_10021CBA8;
    LOBYTE(aBlock) = v6;
    *(v3 + 16) = 4;
    sub_100071318(&aBlock, v3 + 152);
  }

  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v21 = &type metadata for AnalyticsString;
  v22 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v7;
  v20 = v8;
  v24 = v3;
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);

  if (v10 >= v9 >> 1)
  {
    v3 = sub_1001666DC((v9 > 1), v10 + 1, 1, v3);
    v24 = v3;
  }

  v11 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_1000EB0D0(v10, v13, &v24, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v3;
  v22 = sub_100038F2C;
  v23 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v20 = sub_1000DCA40;
  v21 = &unk_10020C8D8;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void sub_100087E00(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_100028124((*v1 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  sub_100009F70(qword_100218F38);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AD7C0;
  v8 = a1[2];
  v7 = a1[3];
  *(v6 + 56) = &type metadata for AnalyticsString;
  *(v6 + 64) = &off_10021CBD0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;
  *(v6 + 96) = &type metadata for AnalyticsModuleName;
  *(v6 + 104) = &off_10021CC30;
  *(v6 + 72) = 3;
  v9 = 19;
  if (v5 == 2)
  {
    v9 = 20;
  }

  *(v6 + 136) = &type metadata for AnalyticsModuleAction;
  *(v6 + 144) = &off_10021CC08;
  *(v6 + 112) = v9;
  *(v6 + 120) = 0;
  *(v6 + 128) = 3;
  v10 = v1[105];

  if (v10 != 15)
  {
    v6 = sub_1001666DC(1, 4, 1, v6);
    v25 = &type metadata for AnalyticsPageName;
    v26 = &off_10021CBA8;
    LOBYTE(aBlock) = v10;
    *(v6 + 16) = 4;
    sub_100071318(&aBlock, v6 + 152);
  }

  if (a1[9])
  {
    v11 = a1[8];
    v12 = a1[9];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v25 = &type metadata for AnalyticsString;
  v26 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v11;
  v24 = v12;
  v28 = v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);

  if (v13 >= v14 >> 1)
  {
    v6 = sub_1001666DC((v14 > 1), v13 + 1, 1, v6);
    v28 = v6;
  }

  v15 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_1000EB0D0(v13, v17, &v28, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001BDDE0;
  v20[4] = v6;
  v26 = sub_100010AAC;
  v27 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020C888;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

unint64_t sub_10008815C()
{
  result = qword_10021B918;
  if (!qword_10021B918)
  {
    type metadata accessor for SubscriptionUpdater(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B918);
  }

  return result;
}

uint64_t sub_1000881B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000881E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008820C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100088254(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1000882D0()
{
  result = static Color.white.getter();
  qword_10021BC38 = result;
  return result;
}

uint64_t sub_1000882F0()
{
  result = static Solarium.isEnabled.getter();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_10021BC40 = *&v1;
  return result;
}

uint64_t sub_100088334()
{
  result = static Solarium.isEnabled.getter();
  v1 = 6.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_10021BC50 = *&v1;
  return result;
}

uint64_t sub_100088364()
{
  result = static Solarium.isEnabled.getter();
  v1 = 14.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_10021BC58 = *&v1;
  return result;
}

uint64_t sub_1000883A8(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000883F0@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_100009F70(&qword_10021BD58);
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v60 = &v54 - v3;
  v4 = sub_100009F70(&qword_1002184B0);
  __chkstk_darwin(v4 - 8);
  v64 = &v54 - v5;
  v6 = sub_100009F70(&qword_10021BD60);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_100009F70(&qword_10021BD68);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for PromotionalPlaylistModule();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PromotionalPlaylistModule;
  v56 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  sub_10008E9FC(v1, v16, type metadata accessor for PromotionalPlaylistModule);
  v17 = *(v14 + 80);
  v18 = swift_allocObject();
  v59 = (v17 + 16) & ~v17;
  sub_10008DE20(v16, v18 + v59);
  v66 = v1;
  sub_100009F70(&qword_10021BD70);
  sub_10008DEE8();
  v19 = v12;
  Button.init(action:label:)();
  v20 = type metadata accessor for PlainButtonStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  v24 = sub_10000D1EC(&qword_10021BE00, &qword_10021BD68);
  v25 = sub_10008E2E0(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v21 + 8))(v23, v20);
  (*(v54 + 8))(v19, v10);
  v68 = v10;
  v69 = v20;
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v57;
  View.accessibilityIdentifier(_:)();
  v27 = (*(v58 + 8))(v9, v26);
  __chkstk_darwin(v27);
  v28 = (&v54 - v56);
  sub_10008E9FC(v65, &v54 - v56, v55);
  type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v30 = (v17 + 32) & ~v17;
  v57 = v15;
  v58 = v17;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_10008DE20(v28, v31 + v30);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v54 - v35;
  static TaskPriority.userInitiated.getter();
  if (sub_1001A7444(2, 26, 4, 0))
  {
    v55 = type metadata accessor for _TaskModifier2();
    v56 = &v54;
    v54 = *(v55 - 1);
    __chkstk_darwin(v55);
    v38 = &v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v68 = 0xD00000000000003CLL;
    v69 = 0x80000001001BF5B0;
    v67 = 161;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    __chkstk_darwin(v40);
    (*(v33 + 16))(&v54 - v35, v36, v32);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v33 + 8))(v36, v32);
    v41 = v60;
    sub_10000F618(v64, v60, &qword_1002184B0);
    v42 = sub_100009F70(&qword_1002184B8);
    v43 = (*(v54 + 32))(v41 + *(v42 + 36), v38, v55);
  }

  else
  {
    v44 = sub_100009F70(&qword_1002184C0);
    v41 = v60;
    v45 = (v60 + *(v44 + 36));
    v46 = type metadata accessor for _TaskModifier();
    (*(v33 + 32))(&v45[*(v46 + 20)], &v54 - v35, v32);
    *v45 = &unk_1001B2430;
    *(v45 + 1) = v31;
    v43 = sub_10000F618(v64, v41, &qword_1002184B0);
  }

  v47 = v57;
  __chkstk_darwin(v43);
  v48 = &v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E9FC(v65, v48, type metadata accessor for PromotionalPlaylistModule);
  v49 = v59;
  v50 = swift_allocObject();
  sub_10008DE20(v48, v50 + v49);
  v51 = v61;
  (*(v62 + 32))(v61, v41, v63);
  result = sub_100009F70(&qword_10021BE08);
  v53 = (v51 + *(result + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_10008E880;
  v53[3] = v50;
  return result;
}

void sub_100088D2C()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  __chkstk_darwin(v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000878D4(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000D52C(v9, qword_100218748);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10001FDF4(v14, qword_100230610);
    v15 = v26;
    sub_10008E9FC(v0, v26, type metadata accessor for PromotionalPlaylistModule);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      sub_100028124((v15 + 40), *(v15 + 64));
      v27[3] = swift_getAssociatedTypeWitness();
      v27[4] = swift_getAssociatedConformanceWitness();
      sub_100043D3C(v27);
      dispatch thunk of Identifiable.id.getter();
      sub_100009F70(&qword_10021BF78);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_10008EEB8(v15, type metadata accessor for PromotionalPlaylistModule);
      v23 = sub_10005D4E8(v20, v22, &v28);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Promotional playlist URL missing. ID: %s", v18, 0xCu);
      sub_100021498(v19);
    }

    else
    {

      sub_10008EEB8(v15, type metadata accessor for PromotionalPlaylistModule);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100023FD4(v6);
    OpenURLAction.callAsFunction(_:)();
    (*(v4 + 8))(v6, v3);
    if (*(v0 + 112))
    {

      sub_100087AEC(v24);

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10008E2E0(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100089240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v71 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100009F70(&qword_10021BE10);
  __chkstk_darwin(v4 - 8);
  v69 = &v65 - v5;
  v6 = sub_100009F70(&qword_10021BDC8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = sub_100009F70(&qword_10021BDB8);
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v66 = sub_100009F70(&qword_10021BDA8);
  __chkstk_darwin(v66);
  v14 = &v65 - v13;
  v67 = sub_100009F70(&qword_10021BD98);
  __chkstk_darwin(v67);
  v16 = &v65 - v15;
  v68 = sub_100009F70(&qword_10021BD88);
  __chkstk_darwin(v68);
  v72 = &v65 - v17;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v18 = sub_100009F70(&qword_10021BE18);
  v19 = a1;
  sub_100089A20(a1, &v9[*(v18 + 44)]);
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = &v9[*(v7 + 44)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v26 = static Edge.Set.trailing.getter();
  *(inited + 32) = v26;
  v27 = static Edge.Set.vertical.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_10000F618(v9, v12, &qword_10021BDC8);
  v29 = &v12[*(v10 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v12, v14, &qword_10021BDB8);
  v30 = &v14[*(v66 + 36)];
  v31 = v79;
  *(v30 + 4) = v78;
  *(v30 + 5) = v31;
  *(v30 + 6) = v80;
  v32 = v75;
  *v30 = v74;
  *(v30 + 1) = v32;
  v33 = v77;
  *(v30 + 2) = v76;
  *(v30 + 3) = v33;
  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = &v16[*(v67 + 36)];
  sub_10008C798(v19, v37);
  v38 = (v37 + *(sub_100009F70(&qword_10021BDE8) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_10000F618(v14, v16, &qword_10021BDA8);
  if (qword_100218388 != -1)
  {
    swift_once();
  }

  v39 = qword_10021BC40;
  v40 = v72;
  v41 = &v72[*(v68 + 36)];
  v42 = v70;
  v43 = *(v70 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = *(*(v45 - 8) + 104);
  v46(v41 + v43, v44, v45);
  *v41 = v39;
  v41[1] = v39;
  *(v41 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  sub_10000F618(v16, v40, &qword_10021BD98);
  v47 = v71;
  v46(v71 + *(v42 + 20), v44, v45);
  *v47 = v39;
  v47[1] = v39;
  if (*(v19 + 104) == 1)
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v48 = Color.opacity(_:)();
  }

  else
  {
    v48 = static Color.clear.getter();
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v49 = v69;
  sub_10008E9FC(v47, v69, &type metadata accessor for RoundedRectangle);
  v50 = v49 + *(sub_100009F70(&qword_10021BE20) + 36);
  v51 = v82;
  *v50 = v81;
  *(v50 + 16) = v51;
  *(v50 + 32) = v83;
  v52 = sub_100009F70(&qword_10021BE28);
  *(v49 + *(v52 + 52)) = v48;
  *(v49 + *(v52 + 56)) = 256;
  v53 = static Alignment.center.getter();
  v55 = v54;
  sub_10008EEB8(v47, &type metadata accessor for RoundedRectangle);
  v56 = (v49 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = static Alignment.center.getter();
  v59 = v58;
  v60 = sub_100009F70(&qword_10021BD70);
  v61 = v73;
  v62 = v73 + *(v60 + 36);
  sub_10000F618(v49, v62, &qword_10021BE10);
  v63 = (v62 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v63 = v57;
  v63[1] = v59;
  return sub_10000F618(v40, v61, &qword_10021BD88);
}

uint64_t sub_100089A20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_100009F70(&qword_10021BE50);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = (&v44 - v6);
  v44 = sub_100009F70(&qword_10021BE58);
  v7 = __chkstk_darwin(v44);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v45 = &v44 - v12;
  v14 = a1[8];
  v13 = a1[9];
  v46 = a1;
  sub_100028124(a1 + 5, v14);
  v15 = *(v13 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v15(v14, v13);
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v20, v17);
    *&v55 = 0;
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    *(&v54 + 1) = AssociatedTypeWitness;
    *&v55 = swift_getAssociatedConformanceWitness();
    v22 = sub_100043D3C(&v53);
    (*(v21 + 32))(v22, v20, AssociatedTypeWitness);
  }

  v23 = v46;
  v24 = sub_100087690();
  KeyPath = swift_getKeyPath();
  v52 = 0;
  *&v51[7] = v53;
  *&v51[23] = v54;
  *&v51[39] = v55;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v52;
  if (qword_100218398 != -1)
  {
    swift_once();
  }

  v27 = qword_10021BC50;
  v28 = &v11[*(v44 + 36)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = v27;
  v28[1] = v27;
  *(v28 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  v32 = *&v51[16];
  *(v11 + 9) = *v51;
  *(v11 + 25) = v32;
  *(v11 + 40) = *&v51[31];
  v33 = v54;
  *(v11 + 72) = v53;
  *v11 = KeyPath;
  v11[8] = v26;
  *(v11 + 7) = 96;
  *(v11 + 8) = v24;
  *(v11 + 88) = v33;
  *(v11 + 104) = v55;
  v34 = v11;
  v35 = v45;
  sub_10000F618(v34, v45, &qword_10021BE58);
  v36 = static HorizontalAlignment.leading.getter();
  v37 = v48;
  *v48 = v36;
  *(v37 + 8) = 0x4020000000000000;
  *(v37 + 16) = 0;
  v38 = sub_100009F70(&qword_10021BE60);
  sub_100089FAC(v23, v37 + *(v38 + 44));
  v39 = v47;
  sub_10000D58C(v35, v47, &qword_10021BE58);
  v40 = v50;
  sub_10000D58C(v37, v50, &qword_10021BE50);
  v41 = v49;
  sub_10000D58C(v39, v49, &qword_10021BE58);
  v42 = sub_100009F70(&qword_10021BE68);
  sub_10000D58C(v40, v41 + *(v42 + 48), &qword_10021BE50);
  sub_10000D52C(v37, &qword_10021BE50);
  sub_10000D52C(v35, &qword_10021BE58);
  sub_10000D52C(v40, &qword_10021BE50);
  return sub_10000D52C(v39, &qword_10021BE58);
}

uint64_t sub_100089FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v48 = type metadata accessor for PlainButtonStyle();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromotionalPlaylistModule();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4 - 8);
  v50 = sub_100009F70(&qword_10021BE70);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v46 - v6;
  v55 = sub_100009F70(&qword_10021BE78);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v46 - v8;
  v10 = sub_100009F70(&qword_10021BE80);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v46 - v13;
  v14 = sub_100009F70(&qword_10021BE88);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_100009F70(&qword_10021BE90);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v46 - v23;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v27 = sub_100009F70(&qword_10021BE98);
  sub_10008A7D0(a1, &v16[*(v27 + 44)]);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v16, v24, &qword_10021BE88);
  v28 = &v24[*(v18 + 44)];
  v29 = v68;
  *(v28 + 4) = v67;
  *(v28 + 5) = v29;
  *(v28 + 6) = v69;
  v30 = v64;
  *v28 = v63;
  *(v28 + 1) = v30;
  v31 = v66;
  *(v28 + 2) = v65;
  *(v28 + 3) = v31;
  v32 = v24;
  v33 = v48;
  sub_10000F618(v32, v26, &qword_10021BE90);
  sub_10008E9FC(a1, &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromotionalPlaylistModule);
  v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v35 = swift_allocObject();
  sub_10008DE20(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v58 = a1;
  sub_100009F70(&qword_10021BEA0);
  sub_10008EAD4();
  Button.init(action:label:)();
  v36 = v49;
  PlainButtonStyle.init()();
  v37 = sub_10000D1EC(&qword_10021BF00, &qword_10021BE70);
  v38 = sub_10008E2E0(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v39 = v50;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v36, v33);
  (*(v51 + 8))(v7, v39);
  sub_100087158();
  v59 = v39;
  v60 = v33;
  v61 = v37;
  v62 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v54;
  v41 = v55;
  View.accessibilityIdentifier(_:)();

  (*(v52 + 8))(v9, v41);
  sub_10000D58C(v26, v21, &qword_10021BE90);
  v42 = v56;
  sub_10000D58C(v40, v56, &qword_10021BE80);
  v43 = v57;
  sub_10000D58C(v21, v57, &qword_10021BE90);
  v44 = sub_100009F70(&qword_10021BF08);
  sub_10000D58C(v42, v43 + *(v44 + 48), &qword_10021BE80);
  sub_10000D52C(v40, &qword_10021BE80);
  sub_10000D52C(v26, &qword_10021BE90);
  sub_10000D52C(v42, &qword_10021BE80);
  return sub_10000D52C(v21, &qword_10021BE90);
}

uint64_t sub_10008A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = __chkstk_darwin(v3);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v74 - v6;
  v7 = sub_100009F70(&qword_1002197C0);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v74 - v10;
  v75 = sub_100009F70(&qword_10021BF80) - 8;
  __chkstk_darwin(v75);
  v12 = &v74 - v11;
  v78 = sub_100009F70(&qword_10021BF88);
  __chkstk_darwin(v78);
  v76 = &v74 - v13;
  v79 = sub_100009F70(&qword_10021BF90);
  __chkstk_darwin(v79);
  v77 = &v74 - v14;
  v15 = sub_100009F70(&qword_10021BF98);
  v16 = __chkstk_darwin(v15 - 8);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v74 - v18;
  v89 = a1;

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v12[*(sub_100009F70(&qword_100219820) + 36)];
  v27 = *(sub_100009F70(&qword_100219828) + 28);
  v28 = enum case for Text.Case.uppercase(_:);
  v29 = type metadata accessor for Text.Case();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v26 + v27, v28, v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  *v26 = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 1) = v21;
  v12[16] = v23 & 1;
  *(v12 + 3) = v25;
  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = &v12[*(v75 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v89 + 104);
  if (v34 == 1)
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v35 = qword_10021BC38;
  }

  else
  {
    v35 = static Color.primary.getter();
  }

  v36 = v12;
  v37 = v76;
  sub_10000F618(v36, v76, &qword_10021BF80);
  *(v37 + *(v78 + 36)) = v35;
  v38 = v77;
  sub_10000F618(v37, v77, &qword_10021BF88);
  *(v38 + *(v79 + 36)) = 0x3FE0000000000000;
  sub_10008EF20();
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v38, &qword_10021BF90);
  v39 = *(v89 + 64);
  v40 = *(v89 + 72);
  sub_100028124((v89 + 40), v39);
  v90 = (*(v40 + 64))(v39, v40);
  v91 = v41;
  sub_100027068();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  LOBYTE(v38) = v45;
  static Font.subheadline.getter();
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10000D60C(v42, v44, v38 & 1);

  if (v34)
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v51 = qword_10021BC38;
  }

  else
  {
    v51 = static Color.primary.getter();
  }

  v90 = v51;
  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_10000D60C(v46, v48, v50 & 1);

  type metadata accessor for PromotionalPlaylistModule();
  v59 = v80;
  sub_100024890(v80);
  v61 = v83;
  v60 = v84;
  v62 = v81;
  (*(v83 + 104))(v81, enum case for ContentSizeCategory.accessibilityMedium(_:), v84);
  v63 = sub_1000B06A0(v59, v62);
  v64 = *(v61 + 8);
  v64(v62, v60);
  v64(v59, v60);
  if (v63)
  {
    v65 = 3;
  }

  else
  {
    v65 = 2;
  }

  v66 = swift_getKeyPath();
  v90 = v52;
  v91 = v54;
  v92 = v56 & 1;
  v93 = v58;
  v94 = v66;
  v95 = v65;
  v96 = 0;
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  v67 = v85;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v52, v54, v56 & 1);

  v68 = v88;
  v69 = v82;
  sub_10000D58C(v88, v82, &qword_10021BF98);
  v70 = v86;
  sub_10000D58C(v67, v86, &qword_1002197C0);
  v71 = v87;
  sub_10000D58C(v69, v87, &qword_10021BF98);
  v72 = sub_100009F70(&qword_10021BFC8);
  sub_10000D58C(v70, v71 + *(v72 + 48), &qword_1002197C0);
  sub_10000D52C(v67, &qword_1002197C0);
  sub_10000D52C(v68, &qword_10021BF98);
  sub_10000D52C(v70, &qword_1002197C0);
  return sub_10000D52C(v69, &qword_10021BF98);
}

void sub_10008B094(void *a1)
{
  if (sub_100087158() > 2u)
  {
    sub_100088D2C();
  }

  else
  {
    v2 = a1[8];
    v3 = a1[9];
    sub_100028124(a1 + 5, v2);
    (*(v3 + 104))(v2, v3);
    swift_getAssociatedTypeWitness();
    sub_100009F70(&qword_10021BC30);
    v4 = _arrayForceCast<A, B>(_:)();

    sub_10014F9E8(v4);

    if (a1[14])
    {

      sub_100087E00(v5);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10008E2E0(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_10008B21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_100009F70(&qword_10021BED8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v57 = sub_100009F70(&qword_10021BEC8);
  __chkstk_darwin(v57);
  v17 = &v56 - v16;
  v61 = sub_100009F70(&qword_10021BEB0);
  __chkstk_darwin(v61);
  v19 = &v56 - v18;
  v20 = sub_100009F70(&qword_10021BF10);
  v63 = *(v20 - 8);
  v64 = v20;
  __chkstk_darwin(v20);
  v62 = &v56 - v21;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = sub_100009F70(&qword_10021BF18);
  sub_10008B9E8(a1, &v15[*(v22 + 44)]);
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v15[*(sub_100009F70(&qword_10021BEE8) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = &v15[*(v13 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if (*(a1 + 104) == 1)
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v39 = Color.opacity(_:)();
    v41 = v61;
    v40 = v62;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule();
    v56 = a1;
    sub_100024640(v11);
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
    v42 = static ColorScheme.== infix(_:_:)();
    v43 = *(v6 + 8);
    v43(v9, v5);
    v43(v11, v5);
    if (v42)
    {
      v41 = v61;
      v40 = v62;
      if (qword_1002183A8 != -1)
      {
        swift_once();
      }

      v39 = qword_10021BC60;
    }

    else
    {
      v41 = v61;
      v40 = v62;
      if (qword_100218380 != -1)
      {
        swift_once();
      }

      v39 = Color.opacity(_:)();
    }
  }

  v44 = static Edge.Set.all.getter();
  sub_10000F618(v15, v17, &qword_10021BED8);
  v45 = &v17[*(v57 + 36)];
  *v45 = v39;
  v45[8] = v44;
  if (qword_1002183A0 != -1)
  {
    swift_once();
  }

  v46 = qword_10021BC58;
  v47 = &v19[*(v41 + 36)];
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v46;
  v47[1] = v46;
  *(v47 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  sub_10000F618(v17, v19, &qword_10021BEC8);
  v51 = v58;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = sub_10008EBCC();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v51, v60);
  sub_10000D52C(v19, &qword_10021BEB0);
  v53 = sub_100087158();
  if ((v53 - 1) < 2)
  {
    if (qword_100218368 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!v53)
  {
    if (qword_100218360 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (qword_100218370 != -1)
  {
LABEL_22:
    swift_once();
  }

LABEL_21:

  v66 = v41;
  v67 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v64;
  View.accessibilityLabel(_:)();

  return (*(v63 + 8))(v40, v54);
}

uint64_t sub_10008B9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for ColorScheme();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v48 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = v46 - v6;
  v7 = sub_100009F70(&qword_10021BF20);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (v46 - v10);
  *v11 = static Alignment.leading.getter();
  v11[1] = v12;
  v13 = sub_100009F70(&qword_10021BF28);
  sub_10008BF14(a1, (v11 + *(v13 + 44)));
  v51 = a1;
  v14 = sub_100087158();
  if ((v14 - 1) < 2)
  {
    if (qword_100218368 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    if (qword_100218370 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (qword_100218360 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_8:

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000D60C(v15, v17, v19 & 1);

  if (*(v51 + 104))
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v27 = qword_10021BC38;
  }

  else
  {
    v46[1] = v26;
    type metadata accessor for PromotionalPlaylistModule();
    v28 = v47;
    sub_100024640(v47);
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 104))(v48, enum case for ColorScheme.light(_:), v50);
    v32 = static ColorScheme.== infix(_:_:)();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v33(v28, v31);
    if (v32)
    {
      v34 = static Color.blue.getter();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v27 = v34;
  }

  v54 = v27;
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10000D60C(v20, v22, v24 & 1);

  v42 = v52;
  sub_10000D58C(v11, v52, &qword_10021BF20);
  v43 = v53;
  sub_10000D58C(v42, v53, &qword_10021BF20);
  v44 = v43 + *(sub_100009F70(&qword_10021BF30) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  v39 &= 1u;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  sub_10000D5FC(v35, v37, v39);

  sub_10000D52C(v11, &qword_10021BF20);
  sub_10000D60C(v35, v37, v39);

  return sub_10000D52C(v42, &qword_10021BF20);
}

uint64_t sub_10008BF14@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v3 = sub_100009F70(&qword_10021BF38);
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_100009F70(&qword_10021BF40);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_100087158();
  if ((v11 - 1) >= 2 && v11)
  {
    v48 = 0;
    v49 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v46 = 0;
    v47 = 0;
    v12 = 0;
  }

  else
  {
    v49 = static VerticalAlignment.center.getter();
    v56 = 0;
    sub_10008C42C(a1, &v51);
    v59 = v53;
    v60 = v54;
    *&v61 = v55;
    v57 = v51;
    v58 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v63 = v51;
    v64 = v52;
    sub_10000D58C(&v57, &v50, &qword_10021BF70);
    sub_10000D52C(&v63, &qword_10021BF70);

    v42 = *(&v57 + 1);
    v43 = v57;
    v41 = v58;
    v38 = *(&v59 + 1);
    v39 = *(&v58 + 1);
    v47 = *(&v60 + 1);
    v37 = v60;
    v48 = v59;
    v46 = v61;
    v12 = v56;
  }

  if (sub_100087158() == 2)
  {
    ProgressView<>.init<>()();
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v13 = qword_10021BC38;
    KeyPath = swift_getKeyPath();
    *&v63 = v13;

    v15 = AnyShapeStyle.init<A>(_:)();
    v16 = &v5[*(sub_100009F70(&qword_10021BF58) + 36)];
    *v16 = KeyPath;
    v16[1] = v15;
    *&v5[*(sub_100009F70(&qword_10021BF60) + 36)] = 257;
    v17 = &v5[*(v3 + 36)];
    v18 = *(sub_100009F70(&qword_10021BF68) + 28);
    v19 = enum case for ControlSize.small(_:);
    v20 = type metadata accessor for ControlSize();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    sub_10000F618(v5, v10, &qword_10021BF38);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v44 + 56))(v10, v21, 1, v3);
  v22 = v45;
  sub_10000D58C(v10, v45, &qword_10021BF40);
  v57 = v49;
  v23 = v43;
  *&v58 = v12;
  *(&v58 + 1) = v43;
  v36 = v10;
  v24 = v42;
  v44 = v12;
  v26 = v40;
  v25 = v41;
  *&v59 = v42;
  *(&v59 + 1) = v41;
  v28 = v38;
  v27 = v39;
  *&v60 = v39;
  *(&v60 + 1) = v48;
  v29 = v37;
  *&v61 = v38;
  *(&v61 + 1) = v37;
  *&v62 = v47;
  *(&v62 + 1) = v46;
  v30 = v60;
  v40[2] = v59;
  v26[3] = v30;
  v31 = v62;
  v26[4] = v61;
  v26[5] = v31;
  v32 = v58;
  *v26 = v57;
  v26[1] = v32;
  v33 = sub_100009F70(&qword_10021BF48);
  sub_10000D58C(v22, v26 + *(v33 + 48), &qword_10021BF40);
  sub_10000D58C(&v57, &v63, &qword_10021BF50);
  sub_10000D52C(v36, &qword_10021BF40);
  sub_10000D52C(v22, &qword_10021BF40);
  v63 = v49;
  *&v64 = v44;
  *(&v64 + 1) = v23;
  *&v65 = v24;
  *(&v65 + 1) = v25;
  *&v66 = v27;
  *(&v66 + 1) = v48;
  v67 = v28;
  v68 = v29;
  v69 = v47;
  v70 = v46;
  return sub_10000D52C(&v63, &qword_10021BF50);
}

uint64_t sub_10008C42C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;

  v36 = Image.init(systemName:)();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v35 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  if (*(a1 + 104) == 1)
  {
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    v33 = qword_10021BC38;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule();
    sub_100024640(v10);
    (*(v5 + 104))(v8, enum case for ColorScheme.light(_:), v4);
    v11 = static ColorScheme.== infix(_:_:)();
    v12 = *(v5 + 8);
    v12(v8, v4);
    v12(v10, v4);
    if (v11)
    {
      v13 = static Color.blue.getter();
    }

    else
    {
      v13 = static Color.primary.getter();
    }

    v33 = v13;
  }

  if (sub_100087158() == 2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v37 = 32;
  v38 = 0xE100000000000000;
  sub_100027068();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000D60C(v15, v17, v19 & 1);

  v27 = v24 & 1;
  LOBYTE(v37) = v24 & 1;
  v28 = v35;
  v30 = v33;
  v29 = KeyPath;
  *a2 = v36;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 32) = v14;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 56) = v27;
  *(a2 + 64) = v26;

  sub_10000D5FC(v20, v22, v27);

  sub_10000D60C(v20, v22, v27);
}

uint64_t sub_10008C798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BlendMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021BE38);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v34 = sub_100009F70(&qword_10021BE40);
  v10 = __chkstk_darwin(v34);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(a1 + 104);
  if (v17 == 1)
  {
    if (qword_100218390 != -1)
    {
      swift_once();
    }

    v35 = qword_10021BC48;

    sub_100087690();
    v18 = Color.opacity(_:)();

    v19 = &enum case for BlendMode.plusDarker(_:);
  }

  else
  {
    v35 = static Color.clear.getter();
    v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = &enum case for BlendMode.normal(_:);
  }

  (*(v4 + 104))(v6, *v19, v3);
  (*(v4 + 32))(&v9[*(v7 + 36)], v6, v3);
  *v9 = v18;
  *(v9 + 4) = 256;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_100009F70(&qword_1002199C0);
  if (v17)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001ACB00;
    if (qword_100218380 != -1)
    {
      swift_once();
    }

    *(v24 + 32) = Color.opacity(_:)();
    *(v24 + 40) = Color.opacity(_:)();
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001AEB90;
    *(v25 + 32) = static Color.clear.getter();
  }

  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = v38;
  sub_10000F618(v9, v14, &qword_10021BE38);
  v27 = &v14[*(v34 + 36)];
  *v27 = v26;
  v28 = v39;
  *(v27 + 24) = v40;
  *(v27 + 8) = v28;
  *(v27 + 5) = v21;
  *(v27 + 6) = v23;
  sub_10000F618(v14, v16, &qword_10021BE40);
  v29 = v36;
  sub_10000D58C(v16, v36, &qword_10021BE40);
  v30 = v37;
  *v37 = v35;
  *(v30 + 4) = 256;
  v31 = sub_100009F70(&qword_10021BE48);
  sub_10000D58C(v29, v30 + *(v31 + 48), &qword_10021BE40);

  sub_10000D52C(v16, &qword_10021BE40);
  sub_10000D52C(v29, &qword_10021BE40);
}

uint64_t sub_10008CC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008CCE0);
}

uint64_t sub_10008CCE0()
{
  v1 = *(v0 + 16);

  sub_10004FF88();
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  sub_100028124((*v1 + 16), v2);
  (*(v3 + 72))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

void *sub_10008CD84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D58C(v1 + 16, v23, &qword_100219768);
  if (!v24)
  {
    sub_10000D52C(v23, &qword_100219768);
    v18 = type metadata accessor for URL();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  v21 = a1;
  v7 = v25;
  result = sub_100028124(v23, v24);
  v20[1] = result;
  v9 = *(v1 + 56);
  v10 = *v1;
  v11 = *(v1 + 8);
  if (v11 == 1)
  {
    v12 = *v1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v12 = v22;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v9 * v12;
  if ((v9 * v12) >> 64 != v14 >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11)
  {
    v15 = *&v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v15 = v22;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v9 * v15) >> 64 != (v9 * v15) >> 63)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = v21;
  (*(v7 + 40))(v14);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  return sub_100021498(v23);
}

uint64_t sub_10008D160()
{
  v1 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_100009F70(&qword_10021BC68);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_10008CD84(v3);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10008D66C(v0, v13);
  v7 = swift_allocObject();
  v8 = v13[3];
  *(v7 + 48) = v13[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  v9 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v9;
  sub_100009F70(&qword_10021A7A0);
  sub_10004F9BC();
  AsyncImage.init(url:scale:transaction:content:)();
  v10 = &v6[*(sub_100009F70(&qword_10021BC70) + 36)];
  *v10 = 0x3FF0000000000000;
  *(v10 + 4) = 0;
  v6[*(v4 + 36)] = 1;
  sub_10008D700();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v6, &qword_10021BC68);
}

uint64_t sub_10008D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v18 = v14;
    v19 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v16 = v20;
    v17 = v21;
  }

  else
  {
    v18 = *(a2 + 64);
    v19 = 1;

    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v16 = v20;
    v17 = v21;
    result = (*(v11 + 8))(v13, v10);
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  return result;
}

uint64_t sub_10008D6A4()
{
  sub_100027EB0(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    sub_100021498(v0 + 32);
  }

  return swift_deallocObject();
}

unint64_t sub_10008D700()
{
  result = qword_10021BC78;
  if (!qword_10021BC78)
  {
    sub_10000B3DC(&qword_10021BC68);
    sub_10008D78C();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BC78);
  }

  return result;
}

unint64_t sub_10008D78C()
{
  result = qword_10021BC80;
  if (!qword_10021BC80)
  {
    sub_10000B3DC(&qword_10021BC70);
    sub_10000D1EC(&qword_10021BC88, &qword_10021BC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BC80);
  }

  return result;
}

unint64_t sub_10008D848()
{
  result = qword_10021BC98;
  if (!qword_10021BC98)
  {
    sub_10000B3DC(&qword_10021BCA0);
    sub_10008D700();
    sub_10008E2E0(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BC98);
  }

  return result;
}

uint64_t sub_10008D918(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009F70(&qword_100218D00);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100009F70(&qword_10021BCA8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

char *sub_10008DABC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_100218D00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100009F70(&qword_10021BCA8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PromotionalPlaylistModule()
{
  result = qword_10021BD08;
  if (!qword_10021BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008DC98()
{
  sub_10000B304();
  if (v0 <= 0x3F)
  {
    sub_10008DDB0(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
    if (v1 <= 0x3F)
    {
      sub_10008DDB0(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10008DDB0(319, &qword_10021BD18, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10008DDB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10008DE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotionalPlaylistModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008DEE8()
{
  result = qword_10021BD78;
  if (!qword_10021BD78)
  {
    sub_10000B3DC(&qword_10021BD70);
    sub_10008DFA0();
    sub_10000D1EC(&qword_10021BDF0, &qword_10021BDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BD78);
  }

  return result;
}

unint64_t sub_10008DFA0()
{
  result = qword_10021BD80;
  if (!qword_10021BD80)
  {
    sub_10000B3DC(&qword_10021BD88);
    sub_10008E058();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BD80);
  }

  return result;
}

unint64_t sub_10008E058()
{
  result = qword_10021BD90;
  if (!qword_10021BD90)
  {
    sub_10000B3DC(&qword_10021BD98);
    sub_10008E110();
    sub_10000D1EC(&qword_10021BDE0, &qword_10021BDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BD90);
  }

  return result;
}

unint64_t sub_10008E110()
{
  result = qword_10021BDA0;
  if (!qword_10021BDA0)
  {
    sub_10000B3DC(&qword_10021BDA8);
    sub_10008E19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BDA0);
  }

  return result;
}

unint64_t sub_10008E19C()
{
  result = qword_10021BDB0;
  if (!qword_10021BDB0)
  {
    sub_10000B3DC(&qword_10021BDB8);
    sub_10008E228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BDB0);
  }

  return result;
}

unint64_t sub_10008E228()
{
  result = qword_10021BDC0;
  if (!qword_10021BDC0)
  {
    sub_10000B3DC(&qword_10021BDC8);
    sub_10000D1EC(&qword_10021BDD0, &qword_10021BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BDC0);
  }

  return result;
}

uint64_t sub_10008E2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E328()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_100021498(v0 + v2 + 40);

  v4 = v1[6];
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008E568()
{
  v2 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000D890;

  return sub_10008CC48(v4, v5, v0 + v3);
}

uint64_t sub_10008E648()
{
  v1 = type metadata accessor for PromotionalPlaylistModule();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_100021498(v2 + 40);

  v3 = v1[6];
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008E880()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[5];
  v4 = v2[6];
  sub_100028124(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

uint64_t sub_10008E934(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

uint64_t sub_10008E9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10008EA6C()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10008B094(v2);
}

unint64_t sub_10008EAD4()
{
  result = qword_10021BEA8;
  if (!qword_10021BEA8)
  {
    sub_10000B3DC(&qword_10021BEA0);
    sub_10000B3DC(&qword_10021BEB0);
    sub_10008EBCC();
    swift_getOpaqueTypeConformance2();
    sub_10008E2E0(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BEA8);
  }

  return result;
}

unint64_t sub_10008EBCC()
{
  result = qword_10021BEB8;
  if (!qword_10021BEB8)
  {
    sub_10000B3DC(&qword_10021BEB0);
    sub_10008EC84();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BEB8);
  }

  return result;
}

unint64_t sub_10008EC84()
{
  result = qword_10021BEC0;
  if (!qword_10021BEC0)
  {
    sub_10000B3DC(&qword_10021BEC8);
    sub_10008ED3C();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BEC0);
  }

  return result;
}

unint64_t sub_10008ED3C()
{
  result = qword_10021BED0;
  if (!qword_10021BED0)
  {
    sub_10000B3DC(&qword_10021BED8);
    sub_10008EDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BED0);
  }

  return result;
}

unint64_t sub_10008EDC8()
{
  result = qword_10021BEE0;
  if (!qword_10021BEE0)
  {
    sub_10000B3DC(&qword_10021BEE8);
    sub_10000D1EC(&qword_10021BEF0, &qword_10021BEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BEE0);
  }

  return result;
}

uint64_t sub_10008EEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10008EF20()
{
  result = qword_10021BFA0;
  if (!qword_10021BFA0)
  {
    sub_10000B3DC(&qword_10021BF90);
    sub_10008EFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFA0);
  }

  return result;
}

unint64_t sub_10008EFAC()
{
  result = qword_10021BFA8;
  if (!qword_10021BFA8)
  {
    sub_10000B3DC(&qword_10021BF88);
    sub_10008F064();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFA8);
  }

  return result;
}

unint64_t sub_10008F064()
{
  result = qword_10021BFB0;
  if (!qword_10021BFB0)
  {
    sub_10000B3DC(&qword_10021BF80);
    sub_10008F11C();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFB0);
  }

  return result;
}

unint64_t sub_10008F11C()
{
  result = qword_10021BFB8;
  if (!qword_10021BFB8)
  {
    sub_10000B3DC(&qword_100219820);
    sub_10000D1EC(&qword_10021BFC0, &qword_100219828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFB8);
  }

  return result;
}

unint64_t sub_10008F1E0()
{
  result = qword_10021BFD0;
  if (!qword_10021BFD0)
  {
    sub_10000B3DC(&qword_10021BE08);
    sub_10000B3DC(&qword_1002184B0);
    sub_10008F2A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFD0);
  }

  return result;
}

unint64_t sub_10008F2A8()
{
  result = qword_10021BFD8[0];
  if (!qword_10021BFD8[0])
  {
    sub_10000B3DC(&qword_1002184B0);
    sub_10000B3DC(&qword_10021BD68);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021BE00, &qword_10021BD68);
    sub_10008E2E0(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10008E2E0(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021BFD8);
  }

  return result;
}

__n128 sub_10008F42C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100009F70(&qword_10021C060);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = static VerticalAlignment.center.getter();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *v8 = v9;
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v12 = sub_100009F70(&qword_10021C068);
  sub_10008F58C(v3, v11, v10, &v8[*(v12 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100091158(v8, a2);
  v13 = a2 + *(sub_100009F70(&qword_10021C070) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_10008F58C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a4;
  v7 = type metadata accessor for AccessibilityTraits();
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v97 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AccessibilityChildBehavior();
  v91 = *(v95 - 8);
  __chkstk_darwin(v95);
  v88 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100009F70(&qword_10021C078);
  __chkstk_darwin(v89);
  v86 = (v81 - v10);
  v93 = sub_100009F70(&qword_10021C080);
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = v81 - v11;
  v12 = sub_100009F70(&qword_10021C088);
  v13 = __chkstk_darwin(v12 - 8);
  v96 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = v81 - v15;
  v101 = a3;
  v102 = a2;
  v16 = type metadata accessor for ArtistEventListHeader();
  v17 = *(v16 - 8);
  v81[1] = *(v17 + 64);
  __chkstk_darwin(v16);
  v82 = v81 - v18;
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v23 - 8);
  v81[0] = v81 - v24;
  v83 = sub_100009F70(&qword_10021C090);
  v25 = __chkstk_darwin(v83);
  v85 = v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v25);
  v84 = v81 - v28;
  v29 = *(v16 + 36);
  v100 = a1;
  v30 = (a1 + v29);
  v31 = *v30;
  v32 = *(v30 + 8);
  if (v32 == 1)
  {
    v33 = *v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v31, 0);
    result = (*(v20 + 8))(v22, v19);
    v33 = v114;
  }

  v35 = v33 * 60.0;
  if (COERCE__INT64(fabs(v33 * 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v32)
  {
    v129 = *&v31;
    v36 = *&v31;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v31, 0);
    result = (*(v20 + 8))(v22, v19);
    v36 = v129;
  }

  v38 = v36 * 60.0;
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v38 < 9.22337204e18)
  {
    v39 = v38;
    v40 = v102;
    v41 = v101;
    v42 = type metadata accessor for ArtistEventListHeaderViewModel();
    v43 = v39;
    v44 = v100;
    sub_10016E9F0(v35, v43, v42, v81[0]);
    static Animation.easeInOut.getter();
    Transaction.init(animation:)();
    v45 = v82;
    (*(v17 + 16))(v82, v44, v16);
    v46 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    *(v47 + 24) = v41;
    (*(v17 + 32))(v47 + v46, v45, v16);
    sub_100009F70(&qword_10021C098);
    sub_1000913C4();
    v48 = v84;
    AsyncImage.init(url:scale:transaction:content:)();
    v49 = static HierarchicalShapeStyle.primary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v50 = v130;
    v51 = v131;
    LODWORD(v41) = v132;
    v52 = v133;
    v53 = v134;
    v54 = v135;
    v55 = static Alignment.center.getter();
    v57 = v56;
    v58 = static Alignment.center.getter();
    v60 = v59;
    *&v108 = v50;
    *(&v108 + 1) = __PAIR64__(v41, v51);
    *&v109 = v52;
    *(&v109 + 1) = v53;
    *&v110 = v54;
    *(&v110 + 1) = v49 | 0x3DCCCCCD00000000;
    LOWORD(v111) = 256;
    *(&v111 + 2) = v106;
    WORD3(v111) = v107;
    *(&v111 + 1) = v55;
    *&v112 = v57;
    *(&v112 + 1) = v58;
    v113 = v59;
    v61 = &v48[*(sub_100009F70(&qword_10021C100) + 36)];
    v62 = v111;
    *(v61 + 2) = v110;
    *(v61 + 3) = v62;
    *(v61 + 4) = v112;
    *(v61 + 10) = v113;
    v63 = v109;
    *v61 = v108;
    *(v61 + 1) = v63;
    v114 = v50;
    v115 = v51;
    v116 = v41;
    v117 = v52;
    v118 = v53;
    v119 = v54;
    v120 = v49;
    v121 = 1036831949;
    v122 = 256;
    v124 = v107;
    v123 = v106;
    v125 = v55;
    v126 = v57;
    v127 = v58;
    v128 = v60;
    sub_10000D58C(&v108, v105, &qword_1002199B0);
    sub_10000D52C(&v114, &qword_1002199B0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v64 = &v48[*(sub_100009F70(&qword_10021C108) + 36)];
    v65 = v105[1];
    *v64 = v105[0];
    *(v64 + 1) = v65;
    *(v64 + 2) = v105[2];
    v48[*(v83 + 36)] = 1;
    v66 = v48;
    v67 = static HorizontalAlignment.leading.getter();
    v68 = v86;
    *v86 = v67;
    *(v68 + 8) = 0;
    *(v68 + 16) = 1;
    v69 = sub_100009F70(&qword_10021C110);
    sub_100090634(v100, v68 + *(v69 + 44));
    v70 = v88;
    static AccessibilityChildBehavior.combine.getter();
    v71 = sub_10000D1EC(&qword_10021C118, &qword_10021C078);
    v72 = v87;
    v73 = v89;
    View.accessibilityElement(children:)();
    (*(v91 + 8))(v70, v95);
    sub_10000D52C(v68, &qword_10021C078);
    v74 = v97;
    static AccessibilityTraits.isHeader.getter();
    v103 = v73;
    v104 = v71;
    swift_getOpaqueTypeConformance2();
    v76 = v92;
    v75 = v93;
    View.accessibility(addTraits:)();
    (*(v98 + 8))(v74, v99);
    (*(v90 + 8))(v72, v75);
    v77 = v85;
    sub_10000D58C(v66, v85, &qword_10021C090);
    v78 = v96;
    sub_1000916F0(v76, v96);
    v79 = v94;
    sub_10000D58C(v77, v94, &qword_10021C090);
    v80 = sub_100009F70(&qword_10021C120);
    sub_1000916F0(v78, v79 + *(v80 + 48));
    sub_100091760(v76);
    sub_10000D52C(v66, &qword_10021C090);
    sub_100091760(v78);
    return sub_10000D52C(v77, &qword_10021C090);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000900D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a2;
  v27 = a5;
  v26 = sub_100009F70(&qword_10021C0E0);
  __chkstk_darwin(v26);
  v7 = v23 - v6;
  v24 = sub_100009F70(&qword_10021C180);
  __chkstk_darwin(v24);
  v9 = v23 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009F70(&qword_10021C0B0);
  __chkstk_darwin(v25);
  v15 = v23 - v14;
  v16 = type metadata accessor for AsyncImagePhase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16);
  if ((*(v17 + 88))(v19, v16) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v20 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v28 = v20;
    sub_100009F70(&qword_10021C0C0);
    sub_10009152C();
    View.accessibilityIdentifier(_:)();

    sub_10000D58C(v15, v9, &qword_10021C0B0);
    swift_storeEnumTagMultiPayload();
    sub_1000914A8(&qword_10021C0A8, &qword_10021C0B0, &unk_1001B27F0, sub_10009152C);
    sub_1000914A8(&qword_10021C0D8, &qword_10021C0E0, &unk_1001B2808, sub_1000915E4);
    _ConditionalContent<>.init(storage:)();

    return sub_10000D52C(v15, &qword_10021C0B0);
  }

  else
  {
    v22 = type metadata accessor for ArtistEventListHeaderViewModel();
    v28 = sub_10016EBE4(v22);
    sub_100009F70(&qword_10021C0F0);
    sub_1000915E4();
    View.accessibilityIdentifier(_:)();

    sub_10000D58C(v7, v9, &qword_10021C0E0);
    swift_storeEnumTagMultiPayload();
    sub_1000914A8(&qword_10021C0A8, &qword_10021C0B0, &unk_1001B27F0, sub_10009152C);
    sub_1000914A8(&qword_10021C0D8, &qword_10021C0E0, &unk_1001B2808, sub_1000915E4);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v7, &qword_10021C0E0);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_100090634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_100009F70(&qword_10021C128);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v37 - v6;
  v38 = sub_100009F70(&qword_10021C130);
  __chkstk_darwin(v38);
  v8 = &v37 - v7;
  v9 = sub_100009F70(&qword_10021C138);
  v10 = __chkstk_darwin(v9 - 8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v37 - v12;
  v14 = a1[2];
  v13 = a1[3];
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(sub_100009F70(&qword_10021C140) + 36)];
  v17 = *(sub_100009F70(&qword_100219828) + 28);
  v18 = enum case for Text.Case.uppercase(_:);
  v19 = type metadata accessor for Text.Case();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v16 + v17, v18, v19);
  (*(v20 + 56))(v16 + v17, 0, 1, v19);
  *v16 = swift_getKeyPath();
  *v8 = v14;
  *(v8 + 1) = v13;
  v8[16] = 0;
  *(v8 + 3) = &_swiftEmptyArrayStorage;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;

  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v21 = Font.weight(_:)();

  v22 = swift_getKeyPath();
  v23 = &v8[*(sub_100009F70(&qword_10021C148) + 36)];
  *v23 = v22;
  v23[1] = v21;
  v24 = [objc_opt_self() secondaryLabelColor];
  *&v8[*(v38 + 36)] = Color.init(uiColor:)();
  sub_1000917E0();
  v25 = v37;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v8, &qword_10021C130);
  v27 = *a1;
  v26 = a1[1];
  v28 = swift_getKeyPath();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  v29 = Font.weight(_:)();

  v30 = swift_getKeyPath();
  v49 = 0;
  v48 = 0;
  *&v43 = v27;
  *(&v43 + 1) = v26;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = *v51;
  DWORD1(v44) = *&v51[3];
  *(&v44 + 1) = &_swiftEmptyArrayStorage;
  *&v45 = v28;
  *(&v45 + 1) = 2;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = *v50;
  DWORD1(v46) = *&v50[3];
  *(&v46 + 1) = v30;
  v47 = v29;
  sub_100009F70(&qword_10021C168);
  sub_100091A08();
  v31 = v40;
  View.accessibilityIdentifier(_:)();
  v52[2] = v45;
  v52[3] = v46;
  v53 = v47;
  v52[0] = v43;
  v52[1] = v44;
  sub_10000D52C(v52, &qword_10021C168);
  v32 = v39;
  sub_10000D58C(v25, v39, &qword_10021C138);
  v33 = v41;
  sub_10000D58C(v31, v41, &qword_10021C128);
  v34 = v42;
  sub_10000D58C(v32, v42, &qword_10021C138);
  v35 = sub_100009F70(&qword_10021C178);
  sub_10000D58C(v33, v34 + *(v35 + 48), &qword_10021C128);
  sub_10000D52C(v31, &qword_10021C128);
  sub_10000D52C(v25, &qword_10021C138);
  sub_10000D52C(v33, &qword_10021C128);
  return sub_10000D52C(v32, &qword_10021C138);
}

uint64_t sub_100090B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtistEventListHeaderViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = a2 + *(type metadata accessor for ArtistEventListHeader() + 36);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

void sub_100090C60()
{
  type metadata accessor for ArtistEventListHeaderViewModel();
  if (v0 <= 0x3F)
  {
    sub_100027AA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100090CE8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
  if (v10 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = a1[v10]) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 1);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_100090E88(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + ((v11 + 32) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
        if (v9 >= a2)
        {
          v23 = *(v7 + 56);
          v24 = a2 + 1;
          v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

          v23(v25, v24);
        }

        else
        {
          if (v12 <= 3)
          {
            v20 = ~(-1 << (8 * v12));
          }

          else
          {
            v20 = -1;
          }

          if (v12)
          {
            v21 = v20 & (~v9 + a2);
            if (v12 <= 3)
            {
              v22 = v12;
            }

            else
            {
              v22 = 4;
            }

            bzero(v19, v12);
            if (v22 > 2)
            {
              if (v22 == 3)
              {
                *v19 = v21;
                v19[2] = BYTE2(v21);
              }

              else
              {
                *v19 = v21;
              }
            }

            else if (v22 == 1)
            {
              *v19 = v21;
            }

            else
            {
              *v19 = v21;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

uint64_t sub_100091158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021C060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000911C8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ArtistEventListHeader();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  v4 = *(type metadata accessor for ArtistEventListHeaderViewModel() + 40);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  sub_100027EB0(*(v3 + *(v2 + 36)), *(v3 + *(v2 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_100091328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ArtistEventListHeader() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000900D0(a1, v8, v5, v6, a2);
}

unint64_t sub_1000913C4()
{
  result = qword_10021C0A0;
  if (!qword_10021C0A0)
  {
    sub_10000B3DC(&qword_10021C098);
    sub_1000914A8(&qword_10021C0A8, &qword_10021C0B0, &unk_1001B27F0, sub_10009152C);
    sub_1000914A8(&qword_10021C0D8, &qword_10021C0E0, &unk_1001B2808, sub_1000915E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C0A0);
  }

  return result;
}

uint64_t sub_1000914A8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009152C()
{
  result = qword_10021C0B8;
  if (!qword_10021C0B8)
  {
    sub_10000B3DC(&qword_10021C0C0);
    sub_10000D1EC(&qword_10021C0C8, &qword_10021C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C0B8);
  }

  return result;
}

unint64_t sub_1000915E4()
{
  result = qword_10021C0E8;
  if (!qword_10021C0E8)
  {
    sub_10000B3DC(&qword_10021C0F0);
    sub_10009169C();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C0E8);
  }

  return result;
}

unint64_t sub_10009169C()
{
  result = qword_10021C0F8;
  if (!qword_10021C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C0F8);
  }

  return result;
}

uint64_t sub_1000916F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021C088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091760(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021C088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000917E0()
{
  result = qword_10021C150;
  if (!qword_10021C150)
  {
    sub_10000B3DC(&qword_10021C130);
    sub_100091898();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C150);
  }

  return result;
}

unint64_t sub_100091898()
{
  result = qword_10021C158;
  if (!qword_10021C158)
  {
    sub_10000B3DC(&qword_10021C148);
    sub_100091950();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C158);
  }

  return result;
}

unint64_t sub_100091950()
{
  result = qword_10021C160;
  if (!qword_10021C160)
  {
    sub_10000B3DC(&qword_10021C140);
    sub_10002764C();
    sub_10000D1EC(&qword_10021BFC0, &qword_100219828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C160);
  }

  return result;
}

unint64_t sub_100091A08()
{
  result = qword_10021C170;
  if (!qword_10021C170)
  {
    sub_10000B3DC(&qword_10021C168);
    sub_10002764C();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C170);
  }

  return result;
}

unint64_t sub_100091AC4()
{
  result = qword_10021C188;
  if (!qword_10021C188)
  {
    sub_10000B3DC(&qword_10021C070);
    sub_10000D1EC(qword_10021C190, &qword_10021C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C188);
  }

  return result;
}

uint64_t sub_100091B7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100091BB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = *(a1 - 1);
  v72 = *(v66 + 64);
  __chkstk_darwin(a1);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationPath();
  v4 = a1[3];
  v5 = type metadata accessor for Array();
  *&v68 = a1[5];
  *&v69 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_10000B3DC(&qword_10021C218);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = v5;
  v82 = AssociatedTypeWitness;
  v83 = v7;
  v84 = WitnessTable;
  v85 = AssociatedConformanceWitness;
  v10 = type metadata accessor for ForEach();
  v80 = sub_10000D1EC(&qword_10021C220, &qword_10021C218);
  v11 = swift_getWitnessTable();
  v81 = v10;
  v82 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C228);
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v13 = swift_getWitnessTable();
  v81 = &type metadata for Never;
  v82 = v12;
  v83 = &protocol witness table for Never;
  v84 = v13;
  v14 = type metadata accessor for List();
  v15 = type metadata accessor for PlainListStyle();
  v16 = swift_getWitnessTable();
  v81 = v14;
  v82 = v15;
  v83 = v16;
  v84 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C230);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v17 = type metadata accessor for VStack();
  v18 = swift_getWitnessTable();
  v81 = v17;
  v82 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = v17;
  v82 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = sub_10000B3DC(&qword_10021C238);
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_10000B3DC(&qword_10021A3F0);
  v25 = sub_10000D1EC(&qword_10021C240, &qword_10021A3F0);
  v81 = v24;
  v82 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = v26;
  swift_getOpaqueTypeMetadata2();
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for NavigationStack();
  v59 = *(v27 - 8);
  __chkstk_darwin(v27);
  v56 = &v56 - v28;
  v60 = type metadata accessor for ModifiedContent();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v70 = &v56 - v29;
  v62 = type metadata accessor for ModifiedContent();
  v64 = *(v62 - 8);
  v30 = __chkstk_darwin(v62);
  v58 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v61 = &v56 - v32;
  v33 = a1;
  *&v34 = a1[2];
  *(&v34 + 1) = v69;
  v69 = v34;
  *&v35 = a1[4];
  *(&v35 + 1) = v68;
  v68 = v35;
  v73 = v34;
  v74 = v35;
  v36 = v71;
  v75 = v71;
  NavigationStack.init<>(root:)();
  v37 = v66;
  v57 = *(v66 + 16);
  v38 = v65;
  v57(v65, v36, a1);
  v39 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  *(v40 + 16) = v69;
  *(v40 + 32) = v41;
  v66 = *(v37 + 32);
  (v66)(v40 + v39, v38, v33);
  v42 = v27;
  v43 = swift_getWitnessTable();
  v44 = v56;
  View.onAppear(perform:)();

  (*(v59 + 8))(v44, v42);
  v57(v38, v71, v33);
  v45 = swift_allocObject();
  v46 = v68;
  *(v45 + 16) = v69;
  *(v45 + 32) = v46;
  (v66)(v45 + v39, v38, v33);
  v78 = v43;
  v79 = &protocol witness table for _AppearanceActionModifier;
  v47 = v60;
  v48 = swift_getWitnessTable();
  v49 = v58;
  v50 = v70;
  View.onDisappear(perform:)();

  (*(v63 + 8))(v50, v47);
  v76 = v48;
  v77 = &protocol witness table for _AppearanceActionModifier;
  v51 = v62;
  v52 = swift_getWitnessTable();
  v53 = v61;
  sub_100157EFC(v49, v51, v52);
  v54 = *(v64 + 8);
  v54(v49, v51);
  sub_100157EFC(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_100092588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a5;
  v83 = a4;
  v82 = a2;
  v89 = a1;
  v87 = a6;
  v86 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v88 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_10000B3DC(&qword_10021C218);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v8;
  v102 = AssociatedTypeWitness;
  v103 = v10;
  v104 = WitnessTable;
  v105 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v100 = sub_10000D1EC(&qword_10021C220, &qword_10021C218);
  v14 = swift_getWitnessTable();
  v101 = v13;
  v102 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C228);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v16 = swift_getWitnessTable();
  v101 = &type metadata for Never;
  v102 = v15;
  v103 = &protocol witness table for Never;
  v104 = v16;
  v17 = type metadata accessor for List();
  v18 = type metadata accessor for PlainListStyle();
  v19 = swift_getWitnessTable();
  v101 = v17;
  v102 = v18;
  v103 = v19;
  v104 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C230);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v78 = swift_getWitnessTable();
  v20 = type metadata accessor for VStack();
  v80 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  v23 = swift_getWitnessTable();
  v101 = v20;
  v102 = v23;
  v24 = v20;
  v75 = v20;
  v25 = v23;
  v76 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v74 = &v62 - v27;
  v101 = v24;
  v102 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v67 = v30;
  v77 = *(v30 - 8);
  __chkstk_darwin(v30);
  v73 = &v62 - v31;
  v32 = sub_10000B3DC(&qword_10021C238);
  v66 = v32;
  v101 = OpaqueTypeMetadata2;
  v102 = v29;
  v33 = swift_getOpaqueTypeConformance2();
  v65 = v33;
  v34 = sub_10000B3DC(&qword_10021A3F0);
  v35 = sub_10000D1EC(&qword_10021C240, &qword_10021A3F0);
  v101 = v34;
  v102 = v35;
  v64 = swift_getOpaqueTypeConformance2();
  v101 = v30;
  v102 = v32;
  v103 = v33;
  v104 = v64;
  v68 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v69 = swift_getOpaqueTypeMetadata2();
  v70 = *(v69 - 8);
  v36 = __chkstk_darwin(v69);
  v62 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v63 = &v62 - v38;
  v39 = v82;
  v95 = v82;
  v96 = v88;
  v40 = v83;
  v41 = v81;
  v97 = v83;
  v98 = v81;
  v99 = v89;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v42 = v85;
  v43 = v84;
  v44 = v86;
  (*(v85 + 104))(v84, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v86);
  v45 = v74;
  v46 = v75;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v42 + 8))(v43, v44);
  (*(v80 + 8))(v22, v46);
  v47 = v88;
  v101 = v39;
  v102 = v88;
  v103 = v40;
  v104 = v41;
  v48 = v41;
  type metadata accessor for TicketViewModel();
  v49 = v89;
  v50 = v73;
  v51 = v71;
  View.navigationTitle(_:)();
  (*(v79 + 8))(v45, v51);
  v90 = v39;
  v91 = v47;
  v92 = v40;
  v93 = v48;
  v94 = v49;
  v52 = v62;
  v53 = v67;
  v54 = v66;
  v55 = v65;
  v56 = v64;
  View.toolbar<A>(content:)();
  (*(v77 + 8))(v50, v53);
  v101 = v53;
  v102 = v54;
  v103 = v55;
  v104 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v63;
  v59 = v69;
  sub_100157EFC(v52, v69, v57);
  v60 = *(v70 + 8);
  v60(v52, v59);
  sub_100157EFC(v58, v59, v57);
  return (v60)(v58, v59);
}

uint64_t sub_100092F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a1;
  v63 = a4;
  *&v68 = a2;
  v65 = a6;
  OpaqueTypeConformance2 = type metadata accessor for PlainListStyle();
  v64 = *(OpaqueTypeConformance2 - 8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  *(&v68 + 1) = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_10000B3DC(&qword_10021C218);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v94 = v8;
  *(&v94 + 1) = AssociatedTypeWitness;
  *&v95 = v10;
  *(&v95 + 1) = WitnessTable;
  *&v96 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v87[5] = sub_10000D1EC(&qword_10021C220, &qword_10021C218);
  v14 = swift_getWitnessTable();
  *&v94 = v13;
  *(&v94 + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C228);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v57 = swift_getWitnessTable();
  *&v94 = &type metadata for Never;
  *(&v94 + 1) = v15;
  *&v95 = &protocol witness table for Never;
  *(&v95 + 1) = v57;
  v16 = type metadata accessor for List();
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  v19 = swift_getWitnessTable();
  v20 = OpaqueTypeConformance2;
  *&v94 = v16;
  *(&v94 + 1) = OpaqueTypeConformance2;
  *&v95 = v19;
  *(&v95 + 1) = &protocol witness table for PlainListStyle;
  v56 = &opaque type descriptor for <<opaque return type of View.listStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v66 = OpaqueTypeMetadata2;
  v67 = v22;
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v60 = &v56 - v26;
  v71 = v68;
  v27 = v63;
  v72 = v63;
  v73 = v69;
  v74 = v70;
  List<>.init(content:)();
  v28 = v62;
  PlainListStyle.init()();
  View.listStyle<A>(_:)();
  v64[1](v28, v20);
  (*(v58 + 8))(v18, v16);
  *&v94 = v16;
  *(&v94 + 1) = v20;
  *&v95 = v19;
  *(&v95 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v25;
  v29 = v66;
  sub_100157EFC(v25, v66, OpaqueTypeConformance2);
  v30 = *(v67 + 8);
  v62 = (v67 + 8);
  v64 = v30;
  (v30)(v25, v29);
  v94 = v68;
  *&v95 = v27;
  *(&v95 + 1) = v69;
  type metadata accessor for TicketViewModel();

  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  v35 = v34;
  static Font.Weight.regular.getter();
  v36 = Text.fontWeight(_:)();
  v38 = v37;
  LOBYTE(v29) = v39;
  sub_10000D60C(v31, v33, v35 & 1);

  static Font.footnote.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  LOBYTE(v27) = v43;
  v45 = v44;

  sub_10000D60C(v36, v38, v29 & 1);

  LOBYTE(v29) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v87[0]) = v27 & 1;
  LOBYTE(v78[0]) = 0;
  *&v88 = v40;
  *(&v88 + 1) = v42;
  LOBYTE(v89) = v27 & 1;
  *(&v89 + 1) = v94;
  DWORD1(v89) = *(&v94 + 3);
  *(&v89 + 1) = v45;
  *&v90 = 0x3FE0000000000000;
  BYTE8(v90) = v29;
  HIDWORD(v90) = *(&v79 + 3);
  *(&v90 + 9) = v79;
  *&v91 = v46;
  *(&v91 + 1) = v47;
  *&v92 = v48;
  *(&v92 + 1) = v49;
  v93 = 0;
  v50 = v66;
  v52 = v59;
  v51 = v60;
  (*(v67 + 16))(v59, v60, v66);
  v85 = 0;
  v86 = 1;
  v87[0] = v52;
  v87[1] = &v85;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v79 = v88;
  v80 = v89;
  v87[2] = &v79;
  sub_10000D58C(&v88, &v94, &qword_10021C230);
  v78[0] = v50;
  v78[1] = &type metadata for Spacer;
  v78[2] = sub_100009F70(&qword_10021C230);
  v75 = OpaqueTypeConformance2;
  v76 = &protocol witness table for Spacer;
  v77 = sub_100095C88();
  sub_100151024(v87, 3uLL, v78);
  sub_10000D52C(&v88, &qword_10021C230);
  v53 = v51;
  v54 = v64;
  (v64)(v53, v50);
  v96 = v81;
  v97 = v82;
  v98 = v83;
  v99 = v84;
  v94 = v79;
  v95 = v80;
  sub_10000D52C(&v94, &qword_10021C230);
  return (v54)(v52, v50);
}

uint64_t sub_100093710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a4;
  v118 = a1;
  v108 = a6;
  v10 = sub_100009F70(&qword_10021C218);
  v117 = v10;
  v107 = *(v10 - 8);
  __chkstk_darwin(v10);
  v86 = &v78 - v11;
  v102 = type metadata accessor for Optional();
  v99 = *(v102 - 8);
  v12 = __chkstk_darwin(v102);
  v100 = &v78 - v13;
  v110 = *(a2 - 8);
  v14 = __chkstk_darwin(v12);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v15;
  __chkstk_darwin(v14);
  v103 = &v78 - v16;
  v104 = sub_100009F70(&qword_10021C228);
  v17 = __chkstk_darwin(v104);
  v106 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v78 - v19;
  v122 = a2;
  v123 = a3;
  v124 = a4;
  v125 = a5;
  v111 = type metadata accessor for TicketView();
  v20 = *(v111 - 8);
  v101 = *(v20 + 64);
  __chkstk_darwin(v111);
  v109 = &v78 - v21;
  v22 = type metadata accessor for Array();
  v94 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = AssociatedTypeWitness;
  v97 = v22;
  WitnessTable = swift_getWitnessTable();
  v95 = WitnessTable;
  v112 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = v22;
  v123 = AssociatedTypeWitness;
  v124 = v10;
  v125 = WitnessTable;
  v126 = AssociatedConformanceWitness;
  v26 = type metadata accessor for ForEach();
  v98 = *(v26 - 8);
  __chkstk_darwin(v26);
  v93 = &v78 - v27;
  v91 = sub_10000D1EC(&qword_10021C220, &qword_10021C218);
  v121[2] = v91;
  v90 = swift_getWitnessTable();
  v122 = v26;
  v123 = v90;
  v92 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = *(OpaqueTypeMetadata2 - 8);
  v28 = __chkstk_darwin(OpaqueTypeMetadata2);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v115 = &v78 - v31;
  v88 = a2;
  v122 = a2;
  v123 = a3;
  v32 = v113;
  v124 = v113;
  v125 = a5;
  v33 = a5;
  v89 = type metadata accessor for TicketViewModel();
  v34 = v118;
  v122 = sub_100097438();
  v35 = *(v20 + 16);
  v36 = v109;
  v37 = v111;
  v80 = v20 + 16;
  v78 = v35;
  v35(v109, v34, v111);
  v38 = *(v20 + 80);
  v39 = (v38 + 48) & ~v38;
  v79 = &v101[v39];
  v81 = v38 | 7;
  v40 = swift_allocObject();
  v41 = v112;
  *(v40 + 2) = a2;
  *(v40 + 3) = v41;
  *(v40 + 4) = v32;
  *(v40 + 5) = v33;
  v87 = v33;
  v42 = *(v20 + 32);
  v82 = v39;
  v83 = v20 + 32;
  v42(&v40[v39], v36, v37);
  v76 = v94;
  v43 = v93;
  ForEach<>.init(_:content:)();
  static VerticalEdge.Set.top.getter();
  v44 = v90;
  View.listSectionSeparator(_:edges:)();
  v45 = v100;
  v98[1](v43, v26);
  v122 = v26;
  v123 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = OpaqueTypeMetadata2;
  sub_100157EFC(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = v114 + 8;
  v48 = *(v114 + 8);
  v101 = v30;
  v98 = v48;
  (v48)(v30, v47);
  v50 = v102;
  v51 = v99;
  v52 = v118;
  (*(v99 + 2))(v45, v118 + *(v89 + 52), v102);
  v53 = v110;
  v54 = v88;
  if ((*(v110 + 48))(v45, 1) == 1)
  {
    (*(v51 + 1))(v45, v50);
    v55 = v105;
    (*(v107 + 56))(v105, 1, 1, v117);
  }

  else
  {
    v99 = v42;
    v97 = *(v53 + 32);
    v56 = v103;
    v97(v103, v45, v54);
    v102 = v49;
    v57 = v109;
    v58 = v111;
    v78(v109, v52, v111);
    v59 = v85;
    (*(v53 + 16))(v85, v56, v54);
    v60 = &v79[*(v53 + 80)] & ~*(v53 + 80);
    v61 = swift_allocObject();
    v63 = v112;
    v62 = v113;
    *(v61 + 2) = v54;
    *(v61 + 3) = v63;
    v100 = OpaqueTypeConformance2;
    v64 = v87;
    *(v61 + 4) = v62;
    *(v61 + 5) = v64;
    v99(&v61[v82], v57, v58);
    v65 = (v97)(&v61[v60], v59, v54);
    __chkstk_darwin(v65);
    *(&v78 - 6) = v54;
    *(&v78 - 5) = v63;
    *(&v78 - 4) = v62;
    *(&v78 - 3) = v64;
    OpaqueTypeConformance2 = v100;
    v66 = v103;
    v76 = v118;
    v77 = v103;
    sub_1000965AC();
    v67 = v86;
    Button.init(action:label:)();
    v68 = v107;
    v55 = v105;
    v69 = v117;
    (*(v107 + 32))(v105, v67, v117);
    (*(v68 + 56))(v55, 0, 1, v69);
    (*(v110 + 8))(v66, v54);
  }

  v70 = v115;
  v71 = v101;
  v72 = OpaqueTypeMetadata2;
  (*(v114 + 16))(v101, v115, OpaqueTypeMetadata2);
  v122 = v71;
  v73 = v106;
  sub_10000D58C(v55, v106, &qword_10021C228);
  v123 = v73;
  v121[0] = v72;
  v121[1] = v104;
  v119 = OpaqueTypeConformance2;
  v120 = sub_1000960F4();
  sub_100151024(&v122, 2uLL, v121);
  sub_10000D52C(v55, &qword_10021C228);
  v74 = v98;
  (v98)(v70, v72);
  sub_10000D52C(v73, &qword_10021C228);
  return (v74)(v71, v72);
}

uint64_t sub_100094284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v29 = a1;
  v30 = a2;
  v33 = a6;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v27 = v10;
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v40 = v11;
  v12 = v10;
  v41 = v13;
  v42 = v14;
  v15 = type metadata accessor for TicketView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  (*(v16 + 16))(&v26 - v18, v30, v15);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v12;
  *(v22 + 3) = a3;
  v23 = v31;
  v24 = v32;
  *(v22 + 4) = v31;
  *(v22 + 5) = v24;
  (*(v16 + 32))(&v22[v20], v19, v15);
  (*(v8 + 32))(&v22[v21], v28, a3);
  v34 = v27;
  v35 = a3;
  v36 = v23;
  v37 = v24;
  v38 = v29;
  sub_1000965AC();
  return Button.init(action:label:)();
}

uint64_t sub_1000944EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = type metadata accessor for URL();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v17 = type metadata accessor for TicketView();
  sub_100023FD4(v16);
  (*(a6 + 40))(a4, a6);
  OpenURLAction.callAsFunction(_:)();
  (*(v11 + 8))(v13, v27);
  (*(v14 + 8))(v16, v25);
  v18 = (*(a6 + 32))(a4, a6);
  v20 = *(a1 + *(v17 + 52));
  if (v20)
  {
    v21 = v18;
    v22 = v19;

    v30 = v28;
    v31 = a4;
    v32 = v29;
    v33 = a6;
    type metadata accessor for TicketViewModel();
    sub_1000974E8(v21, v22, v20);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10000E5F0();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100094774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = type metadata accessor for URL();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v31 = a4;
  v28 = a4;
  v29 = a6;
  v32 = a5;
  v33 = a6;
  v17 = type metadata accessor for TicketView();
  sub_100023FD4(v16);
  (*(a5 + 24))(a3, a5);
  OpenURLAction.callAsFunction(_:)();
  (*(v11 + 8))(v13, v27);
  (*(v14 + 8))(v16, v25);
  v18 = (*(a5 + 16))(a3, a5);
  v20 = *(a1 + *(v17 + 52));
  if (v20)
  {
    v21 = v18;
    v22 = v19;

    v30 = a3;
    v31 = v28;
    v32 = a5;
    v33 = v29;
    type metadata accessor for TicketViewModel();
    sub_1000974E8(v21, v22, v20);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10000E5F0();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000949FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  type metadata accessor for TicketViewModel();
  sub_100009F70(&qword_100219EF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AEB90;
  v7 = (*(a2 + 16))(a1, a2);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100096600();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  result = String.init(format:_:)();
  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t sub_100094AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009F70(&qword_10021A3F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16[-v13];
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  sub_100009F70(&qword_100218930);
  sub_10000D1EC(&qword_10021A480, &qword_100218930);
  ToolbarItem<>.init(placement:content:)();
  sub_10000D1EC(&qword_10021C240, &qword_10021A3F0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100094CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v18 = a4;
  type metadata accessor for TicketView();
  sub_100024868(v17);
  v19 = *(v12 + 32);
  v19(v15, v17, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v19((v21 + v20), v15, v11);
  v27 = a2;
  v28 = v24;
  v29 = v18;
  v30 = v25;
  v31 = a1;
  return Button.init(action:label:)();
}

uint64_t sub_100094EC0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TicketViewModel();

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100094F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v7 = *(a1 + *(type metadata accessor for TicketView() + 52));
  if (v7)
  {

    v8 = type metadata accessor for TicketViewModel();
    a6(v7, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10000E5F0();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TicketViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for TicketView();
  v6 = (a2 + v5[13]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10000E5F0();
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = v5[14];
  *(a2 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  swift_storeEnumTagMultiPayload();
  v9 = v5[15];
  *(a2 + v9) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  return swift_storeEnumTagMultiPayload();
}

void sub_1000951B4()
{
  type metadata accessor for TicketViewModel();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_1000959F0(319, &qword_10021A308, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000959F0(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000952AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v26 = *(a3 + 16);
  v5 = *(v26 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(type metadata accessor for DismissAction() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v27 = v10;
  v11 = *(type metadata accessor for OpenURLAction() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  if (v6)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_37;
  }

  v15 = (((((((((((v14 + *(v5 + 64) + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + ((v27 + v17 + ((v16 + v15 + 16) & ~v16) + 1) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_37:
      if ((v7 & 0x80000000) != 0)
      {
        v25 = (*(v5 + 48))((a1 + v13 + 16) & ~v13, v6, v26);
        if (v25 >= 2)
        {
          return v25 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_37;
  }

LABEL_26:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v8 + (v18 | v23) + 1;
}

void sub_1000955B8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v34 = v6;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for DismissAction() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for OpenURLAction();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  if (v13)
  {
    v18 = *(v6 + 64);
  }

  else
  {
    v18 = *(v6 + 64) + 1;
  }

  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = *(v15 + 80) & 0xF8 | 7;
  v21 = v16 + ((v11 + v20 + ((v19 + ((((((((((((v18 + ((v17 + 16) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v19) + 1) & ~v20) + 1;
  if (a3 <= v9)
  {
    goto LABEL_27;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v9 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v14 = 4;
      if (v9 >= a2)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

LABEL_27:
    if (v9 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v14 = 1;
  if (v9 >= a2)
  {
LABEL_37:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v21] = 0;
    }

    else if (v14)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

LABEL_44:
      if ((v8 & 0x80000000) != 0)
      {
        v27 = ~v17;
        v28 = &a1[v17 + 16];
        v29 = (v28 & v27);
        if (v8 >= a2)
        {
          v33 = *(v34 + 56);

          v33(v28 & v27, a2 + 1);
        }

        else
        {
          if (v18 <= 3)
          {
            v30 = ~(-1 << (8 * v18));
          }

          else
          {
            v30 = -1;
          }

          if (v18)
          {
            v31 = v30 & (~v8 + a2);
            if (v18 <= 3)
            {
              v32 = v18;
            }

            else
            {
              v32 = 4;
            }

            bzero(v29, v18);
            if (v32 > 2)
            {
              if (v32 == 3)
              {
                *v29 = v31;
                v29[2] = BYTE2(v31);
              }

              else
              {
                *v29 = v31;
              }
            }

            else if (v32 == 1)
            {
              *v29 = v31;
            }

            else
            {
              *v29 = v31;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_28:
  v24 = ~v9 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v14 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_65:
    if (v14 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_65;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v14 > 1)
    {
LABEL_69:
      if (v14 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v14 > 1)
    {
      goto LABEL_69;
    }
  }

LABEL_66:
  if (v14)
  {
    a1[v21] = v25;
  }
}

void sub_1000959F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100095AD8(void (*a1)(uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for TicketView() - 8);
  return sub_100094F74(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_100095BC0()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_100095C88()
{
  result = qword_10021C248;
  if (!qword_10021C248)
  {
    sub_10000B3DC(&qword_10021C230);
    sub_100095D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C248);
  }

  return result;
}

unint64_t sub_100095D14()
{
  result = qword_10021C250;
  if (!qword_10021C250)
  {
    sub_10000B3DC(&qword_10021C258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C250);
  }

  return result;
}

uint64_t sub_100095D98()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TicketView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(type metadata accessor for TicketViewModel() + 52);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  v6 = *(v2 + 56);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v2 + 60);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100096038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for TicketView() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_100094284(a1, v9, v5, v6, v7, a2);
}

unint64_t sub_1000960F4()
{
  result = qword_10021C260;
  if (!qword_10021C260)
  {
    sub_10000B3DC(&qword_10021C228);
    sub_10000D1EC(&qword_10021C220, &qword_10021C218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C260);
  }

  return result;
}

uint64_t sub_1000961A4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TicketView();
  v3 = *(*(v2 - 8) + 80);
  v13 = *(*(v2 - 8) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v3 + 48) & ~v3);

  v7 = *(type metadata accessor for TicketViewModel() + 52);
  if (!(*(v4 + 48))(v6 + v7, 1, v1))
  {
    (*(v4 + 8))(v6 + v7, v1);
  }

  v8 = *(v2 + 56);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = *(v2 + 60);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((((v3 + 48) & ~v3) + v13 + v5) & ~v5), v1);
  return swift_deallocObject();
}

uint64_t sub_1000964A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TicketView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100094774(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_1000965AC()
{
  result = qword_10021C268;
  if (!qword_10021C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C268);
  }

  return result;
}

unint64_t sub_100096600()
{
  result = qword_10021C270;
  if (!qword_10021C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C270);
  }

  return result;
}

uint64_t sub_100096654()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for TicketView();
  v16 = *(*(v3 - 8) + 80);
  v14 = *(*(v3 - 8) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v15 = (v16 + 48) & ~v16;
  v6 = v0 + v15;

  v7 = *(type metadata accessor for TicketViewModel() + 52);
  v8 = *(v2 - 8);
  if (!(*(v8 + 48))(v0 + v15 + v7, 1, v2))
  {
    (*(v8 + 8))(v6 + v7, v2);
  }

  v9 = *(v3 + 56);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = *(v3 + 60);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v15 + v14 + v5) & ~v5), v1);
  return swift_deallocObject();
}

uint64_t sub_10009697C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TicketView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_1000944EC(v0 + v6, v7, v1, v2, v3, v4);
}

uint64_t sub_100096A74@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 40) + 32))(*(v1 + 24));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100096AC4()
{
  type metadata accessor for NavigationPath();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021C218);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_10000D1EC(&qword_10021C220, &qword_10021C218);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C228);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C230);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021C238);
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A3F0);
  sub_10000D1EC(&qword_10021C240, &qword_10021A3F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100096FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v21 = 1;
  sub_100097130(a1, a2, &v15);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v22 = v15;
  v27[1] = v16;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[0] = v15;
  sub_10000D58C(&v22, v14, &qword_10021C278);
  sub_10000D52C(v27, &qword_10021C278);
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[7] = v22;
  LOBYTE(a1) = v21;
  LOBYTE(a2) = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  v8 = *&v20[48];
  *(a3 + 49) = *&v20[32];
  *(a3 + 65) = v8;
  *(a3 + 81) = *&v20[64];
  v9 = *&v20[16];
  *(a3 + 17) = *v20;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 96) = *&v20[79];
  *(a3 + 33) = v9;
  *(a3 + 104) = a2;
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  *(a3 + 128) = v12;
  *(a3 + 136) = v13;
  *(a3 + 144) = 0;
  return result;
}

uint64_t sub_100097130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100009F70(&qword_10021B4D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v30 = a1;
  v31 = a2;
  sub_100027068();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.callout.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v28 = v17;
  v19 = v18;

  sub_10000D60C(v9, v11, v13 & 1);

  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  v21 = Image.symbolRenderingMode(_:)();

  sub_10000D52C(v8, &qword_10021B4D8);
  v22 = static Color.blue.getter();
  v23 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v25 = v28 & 1;
  LOBYTE(v30) = v28 & 1;
  v29 = 1;
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v25;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = v23;
  sub_10000D5FC(v14, v16, v25);

  sub_10000D60C(v14, v16, v25);
}

unint64_t sub_100097378()
{
  result = qword_10021C280;
  if (!qword_10021C280)
  {
    sub_10000B3DC(&qword_10021C288);
    sub_10000D1EC(&qword_10021C290, qword_10021C298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C280);
  }

  return result;
}

uint64_t sub_100097438()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  return _ArrayProtocol.filter(_:)();
}

void sub_1000974E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD7C0;
  v9 = *v3;
  v8 = v3[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleAction;
  *(inited + 144) = &off_10021CC08;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = 1;
  if (*(a3 + 72))
  {
    v10 = *(a3 + 64);
    v11 = *(a3 + 72);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v18 = v10;
  v19 = v11;

  v12 = sub_1001666DC(1, 4, 1, inited);
  v16 = v12;
  sub_1000109BC(&aBlock, v23);
  sub_1000EB0D0(3, v23, &v16, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  v14[2] = 0xD00000000000001ELL;
  v14[3] = 0x80000001001BDDE0;
  v14[4] = v12;
  v21 = sub_100038F2C;
  v22 = v14;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000DCA40;
  v20 = &unk_10020CD88;
  v15 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

void sub_100097744(uint64_t a1)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v5 = *v1;
  v4 = v1[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 0;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001B2B70;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001666DC(1, 5, 1, inited);
  v12 = v8;
  sub_1000109BC(&aBlock, v19);
  sub_1000EB0D0(4, v19, &v12, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001BDDE0;
  v10[4] = v8;
  v17 = sub_100010AAC;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000DCA40;
  v16 = &unk_10020CD38;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

void sub_1000979A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TicketViewModel();
  v9 = v8[13];
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[v8[14]] = a4;
  v11 = &a5[v8[15]];
  *v11 = LocalizedStringKey.init(stringLiteral:)();
  *(v11 + 1) = v12;
  v11[16] = v13 & 1;
  *(v11 + 3) = v14;
  v15 = &a5[v8[16]];
  *v15 = LocalizedStringKey.init(stringLiteral:)();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  v19 = &a5[v8[17]];
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  v23 = &a5[v8[18]];
  v24 = [objc_opt_self() mainBundle];
  v28._object = 0xE000000000000000;
  v25._object = 0x80000001001BF830;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v28);

  *v23 = v27;
}

uint64_t sub_100097B7C()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100097C34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_100097DD4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t sub_100098058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  (*(a6 + 32))(a4, a6);
  v22 = String.lowercased()();

  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v15 = type metadata accessor for TicketViewModel();
  (*(v12 + 16))(v14, a2 + *(v15 + 52), v11);
  v16 = *(a3 - 8);
  if ((*(v16 + 48))(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);

    v17 = 1;
  }

  else
  {
    (*(a5 + 16))(a3, a5);
    (*(v16 + 8))(v14, a3);
    v18 = String.lowercased()();

    if (v22._countAndFlagsBits == v18._countAndFlagsBits && v22._object == v18._object)
    {

      v17 = 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v20 ^ 1;
    }
  }

  return v17 & 1;
}

uint64_t sub_1000982CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100098318(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3838383736343436;
  }

  else
  {
    v3 = 0x3534333939343832;
  }

  if (v2)
  {
    v4 = 0xE900000000000039;
  }

  else
  {
    v4 = 0xEA00000000003932;
  }

  if (*a2)
  {
    v5 = 0x3838383736343436;
  }

  else
  {
    v5 = 0x3534333939343832;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003932;
  }

  else
  {
    v6 = 0xE900000000000039;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000983C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100098454()
{
  String.hash(into:)();
}

Swift::Int sub_1000984CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100098554@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002094E0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000985B4(uint64_t *a1@<X8>)
{
  v2 = 0x3534333939343832;
  if (*v1)
  {
    v2 = 0x3838383736343436;
  }

  v3 = 0xE900000000000039;
  if (*v1)
  {
    v3 = 0xEA00000000003932;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10009860C()
{
  v1 = (v0 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
  v2 = *(v0 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8);
  if (!v2)
  {

LABEL_15:

    return v2 & 1;
  }

  v3 = *v1;
  if (*v1 == 0x3534333939343832 && v2 == 0xE900000000000039)
  {
LABEL_14:
    LOBYTE(v2) = 1;
    goto LABEL_15;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    if (v3 != 0x3838383736343436 || v2 != 0xEA00000000003932)
    {
      LOBYTE(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  LOBYTE(v2) = 1;
  return v2 & 1;
}

uint64_t sub_100098748()
{
  v1[10] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v1[15] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;

  return _swift_task_switch(sub_100098860);
}

uint64_t sub_100098860()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_10009898C;

  return sub_10013AF88(v0 + 16, v4, v6);
}

uint64_t sub_10009898C()
{

  return _swift_task_switch(sub_100098AAC);
}

uint64_t sub_100098AAC()
{

  v1 = v0[5];
  if (v1 && v0[9])
  {
    sub_100009F70(&qword_10021C438);
    type metadata accessor for URLQueryItem();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001ACB00;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v3[2];

  if (v4)
  {
    URLComponents.init()();
    if (v1 && v0[9])
    {
      sub_100009F70(&qword_10021C438);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001ACB00;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
    }

    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    sub_1000831F8((v0 + 2));
    URLComponents.queryItems.setter();
    v4 = URLComponents.percentEncodedQuery.getter();
    v9 = v8;
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    sub_1000831F8((v0 + 2));
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v4, v9);
}

void sub_100098D54(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v11 = *(v4 + 24);
  v10 = *(v4 + 32);
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v10;
  v12 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_analyticsPageNameType);
  if (v12 == 15)
  {
    LOBYTE(v12) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v12;
  if (*(v4 + 16))
  {
    v13 = 8;
  }

  else
  {
    v13 = 6;
  }

  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = v13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v14 = *(a4 + 64);
    v15 = *(a4 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v22 = v14;
  v23 = v15;

  sub_1000109A4(a1, a2, a3);

  v16 = sub_1001666DC(1, 5, 1, inited);
  v20 = v16;
  sub_1000109BC(&aBlock, v27);
  sub_1000EB0D0(4, v27, &v20, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000001ELL;
  v18[3] = 0x80000001001BDDE0;
  v18[4] = v16;
  v25 = sub_100010AAC;
  v26 = v18;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000DCA40;
  v24 = &unk_10020CE68;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_100098FEC()
{

  sub_10000F6F0(v0 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL);

  v1 = OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppViewModel()
{
  result = qword_10021C358;
  if (!qword_10021C358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100099148()
{
  sub_100010780();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100099258()
{
  result = qword_10021C420;
  if (!qword_10021C420)
  {
    sub_10000B3DC(&qword_10021C428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C420);
  }

  return result;
}

unint64_t sub_1000992C0()
{
  result = qword_10021C430;
  if (!qword_10021C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C430);
  }

  return result;
}

uint64_t sub_100099314()
{

  return swift_deallocObject();
}

uint64_t sub_100099354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009936C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_100099450()
{
  swift_getKeyPath();
  sub_100099DC4();

  return *(v0 + 264);
}

void sub_1000995D0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 224);
  v9 = *(v4 + 232);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_1000109A4(a1, a2, a3);

  v14 = sub_1001666DC(1, 5, 1, inited);
  v18 = v14;
  sub_1000109BC(&aBlock, v25);
  sub_1000EB0D0(4, v25, &v18, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v14;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_10020CF70;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1000998CC(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 265) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099E54();
  }

  return result;
}

uint64_t sub_100099A10()
{
  swift_getKeyPath();
  sub_100099DC4();

  return *(v0 + 265);
}

uint64_t sub_100099A84()
{
  v0 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v0;
  String.append(_:)(v5);

  URL.init(string:)();
}

uint64_t sub_100099B88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v12 = swift_allocObject();
  sub_10009A21C(a1, a2, a3, a4, a5, a6);
  return v12;
}

double sub_100099C08()
{
  swift_getKeyPath();
  sub_100099DC4();

  return *(v0 + 248);
}

uint64_t sub_100099C7C(double a1)
{
  sub_10001EA38();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 248) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099E54();
  }

  return result;
}

double sub_100099F1C()
{
  swift_getKeyPath();
  sub_100099DC4();

  return *(v0 + 256);
}

uint64_t sub_100099F90(double a1)
{
  sub_10001EA38();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 256) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099E54();
  }

  return result;
}

uint64_t sub_10009A0D8(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 264) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099E54();
  }

  return result;
}

uint64_t sub_10009A21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A6542656E6F6870;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  *(v6 + 96) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 104) = v19;
  *(v6 + 112) = v20 & 1;
  *(v6 + 120) = v21;
  *(v6 + 128) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 136) = v22;
  *(v6 + 144) = v23 & 1;
  *(v6 + 152) = v24;
  *(v6 + 160) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 168) = v25;
  *(v6 + 176) = v26 & 1;
  *(v6 + 184) = v27;
  *(v6 + 192) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 200) = v28;
  *(v6 + 208) = v29 & 1;
  *(v6 + 216) = v30;
  *(v6 + 265) = 0;
  ObservationRegistrar.init()();
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 248) = a5;
  *(v6 + 256) = a6;
  *(v6 + 264) = a4;
  return v6;
}

uint64_t sub_10009A3A8()
{

  v1 = qword_10021C440;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10009A498()
{
  sub_10009A3A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10009A508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100099450();
  *a1 = result & 1;
  return result;
}

__n128 sub_10009A56C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10009A588()
{

  return swift_deallocObject();
}

uint64_t sub_10009A5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10009A640()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 248) = result;
  return result;
}

double sub_10009A6B0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 256) = result;
  return result;
}

uint64_t sub_10009A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v3[11] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v4;

  return _swift_task_switch(sub_10009A780);
}

uint64_t sub_10009A780()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_100043D3C((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_10009A860;

  return sub_1000346AC(v0 + 16);
}

uint64_t sub_10009A860()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10009A9E0;
  }

  else
  {
    sub_100021498(v2 + 16);
    v3 = sub_10009A97C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_10009A97C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009A9E0()
{

  sub_100021498(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009AB30()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100009F70(&qword_10021C630);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Sport.League();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10009AC84);
}

uint64_t sub_10009AC84()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  Sport.league.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10009B4BC(v0[6]);

    v4 = v0[1];

    return v4(&_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    if (qword_100218350 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for EventService();
    v7 = sub_10001FDF4(v6, qword_100230588);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_10009AE20;

    return Sport.League.eventSchedule(service:)(v7);
  }
}

uint64_t sub_10009AE20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_10009B06C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_10009AF48;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10009AF48()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  v9 = sub_1000FAE0C(sub_10009B524, v8, v1);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10009B06C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10009B118(uint64_t a1)
{
  result = sub_10009B474(&qword_10021C548, &type metadata accessor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009B320@<X0>(uint64_t *a1@<X8>)
{
  result = Sport.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_10009B364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FC70;

  return sub_10009AB30();
}

uint64_t sub_10009B3F0(uint64_t a1)
{
  *(a1 + 8) = sub_10009B474(&qword_10021C620, &type metadata accessor for Sport);
  result = sub_10009B474(&qword_10021C628, &type metadata accessor for Sport);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10009B474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009B4BC(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021C630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009B59C(uint64_t a1)
{
  *(a1 + 8) = sub_10009B680(&qword_10021C688, &type metadata accessor for Venue);
  result = sub_10009B680(&qword_10021C690, &type metadata accessor for Venue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10009B628(uint64_t a1)
{
  result = sub_10009B680(&qword_10021C698, &type metadata accessor for Venue.StructuredAddress);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009B680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009B710()
{
  Music.Artist.id.getter();

  return ResourceID.init(_:)();
}

uint64_t sub_10009B740(uint64_t a1)
{
  *(a1 + 8) = sub_10009B7C4(&qword_10021C6E8, &type metadata accessor for Music.Artist);
  result = sub_10009B7C4(&qword_10021C6F0, &type metadata accessor for Music.Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10009B7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021C748);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009B8F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_10021C748);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayButtonView()
{
  result = qword_10021C7A8;
  if (!qword_10021C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009B9EC()
{
  sub_10009BA68();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10009BA68()
{
  if (!qword_10021C7B8)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10021C7B8);
    }
  }
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for DynamicTypeSize();
  sub_1000758A8(v5, a2);
  v6 = sub_10001FDF4(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_10009BBBC()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_10021C738 = result;
  return result;
}

uint64_t sub_10009BBF4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10021C740 = result;
  return result;
}

uint64_t sub_10009BCDC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlayButtonView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_100009F70(&qword_10021C7E8);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_100009F70(&qword_10021C7F0);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v39 = sub_100009F70(&qword_10021C7F8);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v21 = &v35 - v20;
  v40 = sub_100009F70(&qword_10021C800);
  __chkstk_darwin(v40);
  v23 = &v35 - v22;
  sub_10009DBCC(v1, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_10009DD4C(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v51 = v1;
  sub_100009F70(&qword_10021C808);
  sub_10009DE1C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v26 = sub_10000D1EC(&qword_10021C858, &qword_10021C7E8);
  v27 = sub_10009E78C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v28 = v42;
  View.buttonStyle<A>(_:)();
  (*(v43 + 8))(v9, v28);
  (*(v36 + 8))(v15, v13);
  v29 = v44;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = v13;
  v53 = v28;
  v54 = v26;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v29, v46);
  (*(v38 + 8))(v19, v31);
  v32 = v47;
  static AccessibilityTraits.isButton.getter();
  v52 = v31;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  View.accessibilityAddTraits(_:)();
  (*(v48 + 8))(v32, v49);
  (*(v41 + 8))(v21, v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10009E030(v23);
}

uint64_t sub_10009C37C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021C860);
  v5 = __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_100009F70(&qword_10021C830);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v51 = sub_100009F70(&qword_10021C828);
  __chkstk_darwin(v51);
  v14 = (&v46 - v13);
  *v14 = static Alignment.center.getter();
  v14[1] = v15;
  v16 = v14 + *(sub_100009F70(&qword_10021C868) + 44);
  v50 = a1;
  sub_10009C9A4(a1, v16);
  if (qword_1002183B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for DynamicTypeSize();
  v18 = sub_10001FDF4(v17, qword_10021C6F8);
  if (qword_1002183C0 != -1)
  {
    swift_once();
  }

  v19 = sub_10001FDF4(v17, qword_10021C718);
  sub_10009E78C(&qword_10021C870, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = *(v17 - 8);
  v49 = a2;
  v48 = v14;
  v21 = v20;
  v22 = *(v20 + 16);
  v47 = v10;
  v22(v9, v18, v17);
  v22(&v9[*(v4 + 48)], v19, v17);
  sub_10000D58C(v9, v7, &qword_10021C860);
  v23 = *(v4 + 48);
  v24 = *(v21 + 32);
  v24(v12, v7, v17);
  v25 = v12;
  v26 = *(v21 + 8);
  v26(&v7[v23], v17);
  sub_10000F618(v9, v7, &qword_10021C860);
  v24((v25 + *(v47 + 36)), &v7[*(v4 + 48)], v17);
  v26(v7, v17);
  v14 = v49;
  sub_10000D1EC(&qword_10021C838, &qword_10021C828);
  sub_10000D1EC(&qword_10021C840, &qword_10021C830);
  v27 = v48;
  View.dynamicTypeSize<A>(_:)();
  sub_10000D52C(v25, &qword_10021C830);
  sub_10000D52C(v27, &qword_10021C828);
  sub_10009D6C8();
  LOBYTE(v25) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v14 + *(sub_100009F70(&qword_10021C820) + 36);
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v17 = static Alignment.center.getter();
  v9 = v37;
  if (qword_1002183D8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v38 = Color.opacity(_:)();
  v39 = static Alignment.center.getter();
  v41 = v40;
  *&v55 = v17;
  *(&v55 + 1) = v9;
  *&v56 = 11;
  WORD4(v56) = 256;
  *(&v56 + 10) = v53;
  HIWORD(v56) = v54;
  *&v57 = v38;
  WORD4(v57) = 256;
  *&v58 = v39;
  *(&v58 + 1) = v40;
  v42 = (v14 + *(sub_100009F70(&qword_10021C808) + 36));
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v44 = v58;
  v42[2] = v57;
  v42[3] = v44;
  v59[0] = v17;
  v59[1] = v9;
  v59[2] = 11;
  v60 = 256;
  v61 = v53;
  v62 = v54;
  v63 = v38;
  v64 = 256;
  v65 = v39;
  v66 = v41;
  sub_10000D58C(&v55, v52, &qword_10021C850);
  return sub_10000D52C(v59, &qword_10021C850);
}

uint64_t sub_10009C9A4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v136 = a2;
  v131 = sub_100009F70(&qword_10021C890);
  __chkstk_darwin(v131);
  v129 = &v108 - v2;
  v3 = sub_100009F70(&qword_10021C898);
  __chkstk_darwin(v3 - 8);
  v127 = &v108 - v4;
  v125 = sub_100009F70(&qword_10021C8A0);
  __chkstk_darwin(v125);
  v124 = &v108 - v5;
  v123 = sub_100009F70(&qword_10021C8A8);
  __chkstk_darwin(v123);
  v122 = &v108 - v6;
  v120 = sub_100009F70(&qword_10021C8B0);
  v7 = __chkstk_darwin(v120);
  v135 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v108 - v10;
  __chkstk_darwin(v9);
  v139 = &v108 - v11;
  v12 = sub_100009F70(&qword_10021C8B8);
  __chkstk_darwin(v12);
  v14 = (&v108 - v13);
  v15 = sub_100009F70(&qword_10021C8C0);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v108 - v18;
  v138 = sub_100009F70(&qword_10021C8C8);
  v19 = __chkstk_darwin(v138);
  v126 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v108 - v21;
  v137 = sub_100009F70(&qword_10021C8D0);
  v23 = __chkstk_darwin(v137);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v108 - v25;
  v119 = sub_100009F70(&qword_10021C8D8);
  v27 = __chkstk_darwin(v119);
  v133 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v134 = &v108 - v30;
  v31 = __chkstk_darwin(v29);
  v117 = &v108 - v32;
  v33 = __chkstk_darwin(v31);
  v128 = &v108 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v108 - v36;
  __chkstk_darwin(v35);
  v140 = &v108 - v38;
  v39 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v115 = sub_100009F70(&qword_10021C8E0);
  v42 = (v14 + *(v115 + 36));
  v114 = sub_100009F70(&qword_10021C8E8);
  v43 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v44 = type metadata accessor for SymbolRenderingMode();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v113 = v44;
  v112 = v46;
  v111 = v45 + 56;
  (v46)(v42 + v43, 0, 1);
  *v42 = swift_getKeyPath();
  *v14 = v39;
  v14[1] = KeyPath;
  v14[2] = v40;
  *(v14 + *(v12 + 36)) = static Color.white.getter();
  v47 = sub_10009E170();
  v48 = v109;
  v132 = v12;
  v110 = v47;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v14, &qword_10021C8B8);
  v49 = *v116;
  v50 = 0.0;
  if (v49 == 2)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  sub_10000F618(v48, v22, &qword_10021C8C0);
  *&v22[*(v138 + 36)] = v51;
  static UnitPoint.center.getter();
  v53 = v52;
  v55 = v54;
  sub_10000F618(v22, v26, &qword_10021C8C8);
  v56 = &v26[*(v137 + 36)];
  *v56 = v51;
  *(v56 + 1) = v51;
  *(v56 + 2) = v53;
  *(v56 + 3) = v55;
  if (qword_1002183D0 != -1)
  {
    swift_once();
  }

  v57 = qword_10021C738;
  sub_10000F618(v26, v37, &qword_10021C8D0);
  v58 = v119;
  v59 = &v37[*(v119 + 36)];
  *v59 = v57;
  v59[8] = v49 == 2;
  sub_10000F618(v37, v140, &qword_10021C8D8);

  v60 = v129;
  ProgressView<>.init<>()();
  v61 = static Color.white.getter();
  v62 = swift_getKeyPath();
  v63 = (v60 + *(sub_100009F70(&qword_10021C918) + 36));
  *v63 = v62;
  v63[1] = v61;
  *(v60 + *(sub_100009F70(&qword_10021C920) + 36)) = 257;
  v64 = (v60 + *(v131 + 36));
  v65 = *(sub_100009F70(&qword_10021BF68) + 28);
  v66 = enum case for ControlSize.small(_:);
  v67 = type metadata accessor for ControlSize();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  sub_10009E3A8();
  v68 = v127;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v60, &qword_10021C890);
  if (v49 == 1)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v124;
  sub_10000F618(v68, v124, &qword_10021C898);
  *(v70 + *(v125 + 36)) = v69;
  static UnitPoint.center.getter();
  v72 = v71;
  v74 = v73;
  v75 = v70;
  v76 = v122;
  sub_10000F618(v75, v122, &qword_10021C8A0);
  v77 = v76 + *(v123 + 36);
  *v77 = v69;
  *(v77 + 8) = v69;
  *(v77 + 16) = v72;
  *(v77 + 24) = v74;
  v78 = v76;
  v79 = v118;
  sub_10000F618(v78, v118, &qword_10021C8A8);
  v80 = v79 + *(v120 + 36);
  *v80 = v57;
  *(v80 + 8) = v49 == 1;
  sub_10000F618(v79, v139, &qword_10021C8B0);
  v116 = v57;

  v81 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v82 = Font.weight(_:)();

  v83 = swift_getKeyPath();
  v84 = (v14 + *(v115 + 36));
  v85 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v112(v84 + v85, 0, 1, v113);
  *v84 = swift_getKeyPath();
  *v14 = v81;
  v14[1] = v83;
  v14[2] = v82;
  *(v14 + *(v132 + 36)) = static Color.white.getter();
  v86 = v130;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v14, &qword_10021C8B8);
  v87 = v49 == 3 || v49 == 0;
  v88 = v87;
  if (v87)
  {
    v50 = 1.0;
  }

  v89 = v126;
  sub_10000F618(v86, v126, &qword_10021C8C0);
  *(v89 + *(v138 + 36)) = v50;
  static UnitPoint.center.getter();
  v91 = v90;
  v93 = v92;
  v94 = v89;
  v95 = v121;
  sub_10000F618(v94, v121, &qword_10021C8C8);
  v96 = v95 + *(v137 + 36);
  *v96 = v50;
  *(v96 + 8) = v50;
  *(v96 + 16) = v91;
  *(v96 + 24) = v93;
  v97 = v95;
  v98 = v117;
  sub_10000F618(v97, v117, &qword_10021C8D0);
  v99 = v98 + *(v58 + 36);
  *v99 = v57;
  *(v99 + 8) = v88;
  v100 = v128;
  sub_10000F618(v98, v128, &qword_10021C8D8);
  v101 = v134;
  sub_10000D58C(v140, v134, &qword_10021C8D8);
  v102 = v139;
  v103 = v135;
  sub_10000D58C(v139, v135, &qword_10021C8B0);
  v104 = v133;
  sub_10000D58C(v100, v133, &qword_10021C8D8);
  v105 = v136;
  sub_10000D58C(v101, v136, &qword_10021C8D8);
  v106 = sub_100009F70(&qword_10021C958);
  sub_10000D58C(v103, v105 + *(v106 + 48), &qword_10021C8B0);
  sub_10000D58C(v104, v105 + *(v106 + 64), &qword_10021C8D8);

  sub_10000D52C(v100, &qword_10021C8D8);
  sub_10000D52C(v102, &qword_10021C8B0);
  sub_10000D52C(v140, &qword_10021C8D8);
  sub_10000D52C(v104, &qword_10021C8D8);
  sub_10000D52C(v103, &qword_10021C8B0);
  return sub_10000D52C(v101, &qword_10021C8D8);
}

double sub_10009D6C8()
{
  v0 = sub_100009F70(&qword_10021C878);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_100009F70(&qword_10021C880);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayButtonView();
  sub_1000248B8(v9);
  if (qword_1002183B0 != -1)
  {
    swift_once();
  }

  v10 = sub_10001FDF4(v6, qword_10021C6F8);
  sub_10009E78C(&qword_10021C888, &type metadata accessor for DynamicTypeSize);
  v11 = v6;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v7 + 16);
  v12(v5, v10, v6);
  sub_10009E78C(&qword_10021C870, &type metadata accessor for DynamicTypeSize);
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000D52C(v5, &qword_10021C880);
  if ((v13 & 1) == 0)
  {
    if (qword_1002183C0 != -1)
    {
      swift_once();
    }

    v16 = sub_10001FDF4(v6, qword_10021C718);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v12(v2, v16, v6);
      v17 = dispatch thunk of static Comparable.<= infix(_:_:)();
      sub_10000D52C(v2, &qword_10021C878);
      (*(v7 + 8))(v9, v6);
      v18 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      v2 = v18;
      if ((v17 & 1) == 0)
      {
        [v18 scaledValueForValue:1.0];
        v15 = v21;
        goto LABEL_14;
      }

      if (qword_1002183C8 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_12:
    v19 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_10021C730];
    [v2 scaledValueForValue:v19 compatibleWithTraitCollection:1.0];
    v15 = v20;

    v2 = v19;
    goto LABEL_14;
  }

  (*(v7 + 8))(v9, v6);
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  if (qword_1002183B8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_10021C710];
  [v11 scaledValueForValue:v2 compatibleWithTraitCollection:1.0];
  v15 = v14;

LABEL_14:
  return v15;
}

uint64_t sub_10009DBCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DC30()
{
  v1 = (type metadata accessor for PlayButtonView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_100009F70(&qword_100219728);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009DD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009DE1C()
{
  result = qword_10021C810;
  if (!qword_10021C810)
  {
    sub_10000B3DC(&qword_10021C808);
    sub_10009DED4();
    sub_10000D1EC(&qword_10021C848, &qword_10021C850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C810);
  }

  return result;
}

unint64_t sub_10009DED4()
{
  result = qword_10021C818;
  if (!qword_10021C818)
  {
    sub_10000B3DC(&qword_10021C820);
    sub_10000B3DC(&qword_10021C828);
    sub_10000B3DC(&qword_10021C830);
    sub_10000D1EC(&qword_10021C838, &qword_10021C828);
    sub_10000D1EC(&qword_10021C840, &qword_10021C830);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C818);
  }

  return result;
}

uint64_t sub_10009E030(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021C800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E0C4(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B4D8);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_10021B4D8);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t sub_10009E170()
{
  result = qword_10021C8F0;
  if (!qword_10021C8F0)
  {
    sub_10000B3DC(&qword_10021C8B8);
    sub_10009E228();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C8F0);
  }

  return result;
}

unint64_t sub_10009E228()
{
  result = qword_10021C8F8;
  if (!qword_10021C8F8)
  {
    sub_10000B3DC(&qword_10021C8E0);
    sub_10009E2E0();
    sub_10000D1EC(&qword_10021C910, &qword_10021C8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C8F8);
  }

  return result;
}

unint64_t sub_10009E2E0()
{
  result = qword_10021C900;
  if (!qword_10021C900)
  {
    sub_10000B3DC(&qword_10021C908);
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C900);
  }

  return result;
}

unint64_t sub_10009E3A8()
{
  result = qword_10021C928;
  if (!qword_10021C928)
  {
    sub_10000B3DC(&qword_10021C890);
    sub_10009E460();
    sub_10000D1EC(&qword_10021C950, &qword_10021BF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C928);
  }

  return result;
}

unint64_t sub_10009E460()
{
  result = qword_10021C930;
  if (!qword_10021C930)
  {
    sub_10000B3DC(&qword_10021C920);
    sub_10009E4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C930);
  }

  return result;
}

unint64_t sub_10009E4EC()
{
  result = qword_10021C938;
  if (!qword_10021C938)
  {
    sub_10000B3DC(&qword_10021C918);
    sub_10000D1EC(&qword_10021C940, &qword_10021C948);
    sub_10000D1EC(&qword_100219128, &qword_100219130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C938);
  }

  return result;
}

unint64_t sub_10009E5D4()
{
  result = qword_10021C960[0];
  if (!qword_10021C960[0])
  {
    sub_10000B3DC(&qword_10021C800);
    sub_10000B3DC(&qword_10021C7F0);
    sub_10000B3DC(&qword_10021C7E8);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021C858, &qword_10021C7E8);
    sub_10009E78C(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009E78C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021C960);
  }

  return result;
}

uint64_t sub_10009E78C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009E7D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10009E810(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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