char *sub_10005C508()
{
  v0 = Substring.distance(from:to:)();
  if (v0)
  {
    v1 = v0;
    result = sub_100147100(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v4 = Substring.subscript.getter();
      v5 = v3;
      if (v4 == 45 && v3 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 43;
      }

      else if (v4 == 95 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 47;
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100147100((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v4;
      v8[5] = v5;
      Substring.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_10000CDE0(&qword_10023AED0, &qword_1001B7AF0);
  sub_10005CC5C();
  String.init<A>(_:)();

  v9 = String.count.getter();

  v10 = v9 & 3;
  if (v9 <= 0)
  {
    v10 = -(-v9 & 3);
  }

  if (v10)
  {
    v11._countAndFlagsBits = 61;
    v11._object = 0xE100000000000000;
    v12 = String.init(repeating:count:)(v11, 4 - v10);
    String.append(_:)(v12);
  }

  v13 = Data.init(base64Encoded:options:)();

  return v13;
}

uint64_t sub_10005C798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100055148();
}

unint64_t sub_10005C830()
{
  result = qword_10023AE90;
  if (!qword_10023AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AE90);
  }

  return result;
}

uint64_t sub_10005C8D8(uint64_t a1)
{
  v2 = type metadata accessor for RegisterConversionTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10005C944@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  result = sub_1000C1204();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10005C97C()
{
  result = qword_10023AE98;
  if (!qword_10023AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AE98);
  }

  return result;
}

uint64_t *sub_10005CA24(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10005CA88()
{
  result = qword_10023AEA0;
  if (!qword_10023AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEA0);
  }

  return result;
}

uint64_t sub_10005CB30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001BABC(a1, a2);
  }

  return a1;
}

uint64_t sub_10005CB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005CBB4()
{
  result = qword_10023AEB0;
  if (!qword_10023AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEB0);
  }

  return result;
}

unint64_t sub_10005CC08()
{
  result = qword_10023AEC8;
  if (!qword_10023AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AEC8);
  }

  return result;
}

unint64_t sub_10005CC5C()
{
  result = qword_10023AED8;
  if (!qword_10023AED8)
  {
    sub_10000CCC0(&qword_10023AED0, &qword_1001B7AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AED8);
  }

  return result;
}

uint64_t sub_10005CCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10005CD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10005CD74(uint64_t a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10005CDC8(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_10005CE24@<D0>(uint64_t a1@<X8>)
{
  v4 = [v1 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_100085D4C(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v17 = 1;
  v13[2] = &v14;
  sub_10003576C(sub_10005D078, v13, v8);

  if (!v2)
  {
    v10 = v16;
    v11 = v17;
    result = *&v14;
    v12 = v15;
    *a1 = v14;
    *(a1 + 16) = v12;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
  }

  return result;
}

id sub_10005D020()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversionTagDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10005D078(__n128 *a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(v3 + 16);
  v5 = a1->n128_u8[8];
  v6 = a1[2].n128_u64[0];
  v4->n128_u64[0] = a1->n128_u64[0];
  v4->n128_u64[1] = v5;
  result = a1[1];
  v4[1] = result;
  v4[2].n128_u64[0] = v6;
  v4[2].n128_u8[8] = 0;
  *a3 = 1;
  return result;
}

unint64_t sub_10005D0AC()
{
  result = qword_10023AF08;
  if (!qword_10023AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF08);
  }

  return result;
}

unint64_t sub_10005D104()
{
  result = qword_10023AF10;
  if (!qword_10023AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF10);
  }

  return result;
}

unint64_t sub_10005D158(uint64_t a1)
{
  *(a1 + 8) = sub_10003C2F0();
  result = sub_10005D188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10005D188()
{
  result = qword_10023AF60;
  if (!qword_10023AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF60);
  }

  return result;
}

uint64_t sub_10005D1DC(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023AF90, &qword_1001B7DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10005D104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v15[15] = 1;
    type metadata accessor for Decimal(0);
    sub_10005DD6C(&qword_10023AF98);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 56);
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005D3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001001CA600;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001001CA600;
  }

  else
  {
    v6 = 0x80000001001CA620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79636E6572727563;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED000065646F635FLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x80000001001CA620;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x79636E6572727563;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED000065646F635FLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10005D490()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005D540()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10005D5DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10005D688@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D9B0(*a1);
  *a2 = result;
  return result;
}

void sub_10005D6B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000065646F635FLL;
  v4 = 0xD000000000000011;
  v5 = 0x80000001001CA600;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001001CA620;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x79636E6572727563;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005D724()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

unint64_t sub_10005D78C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10005D9B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005D7C4(uint64_t a1)
{
  v2 = sub_10005D104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D800(uint64_t a1)
{
  v2 = sub_10005D104();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005D83C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005D9FC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_10005D89C()
{
  result = qword_10023AF68;
  if (!qword_10023AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF68);
  }

  return result;
}

unint64_t sub_10005D8F4()
{
  result = qword_10023AF70;
  if (!qword_10023AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF70);
  }

  return result;
}

unint64_t sub_10005D94C()
{
  result = qword_10023AF78;
  if (!qword_10023AF78)
  {
    sub_10000CCC0(&qword_10023AF80, &qword_1001B7D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AF78);
  }

  return result;
}

unint64_t sub_10005D9B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002144C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005D9FC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AF88, &qword_1001B7DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v40 = 1;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10005D104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v25) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  type metadata accessor for Decimal(0);
  v34 = 1;
  sub_10005DD6C(&qword_10023A6C0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v35;
  v38 = v36;
  v33 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *&v21 = 0;
  v16 = v40;
  BYTE8(v21) = v40;
  *(&v21 + 9) = *v39;
  HIDWORD(v21) = *&v39[3];
  *&v22 = v14;
  *(&v22 + 1) = v13;
  v23 = v37;
  LODWORD(v24) = v38;
  *(&v24 + 1) = v15;
  sub_10005DD10(&v21, &v25);
  sub_10000DB58(a1);
  v25 = 0;
  v26 = v16;
  *v27 = *v39;
  *&v27[3] = *&v39[3];
  v28 = v14;
  v29 = v13;
  v30 = v37;
  v31 = v38;
  v32 = v15;
  result = sub_10003C344(&v25);
  v18 = v22;
  *a2 = v21;
  a2[1] = v18;
  v19 = v24;
  a2[2] = v23;
  a2[3] = v19;
  return result;
}

uint64_t sub_10005DD10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[3];
  *(a2 + 16) = a1[2];
  *(a2 + 24) = v4;
  v5 = *(a1 + 2);
  *(a2 + 48) = *(a1 + 12);
  *(a2 + 32) = v5;
  *(a2 + 56) = a1[7];

  return a2;
}

uint64_t sub_10005DD6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CurrencyExchangeRateModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t initializeWithCopy for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for CurrencyExchangeRateModel(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = a2[2];
  v5 = *(a1 + 24);
  *(a1 + 24) = a2[3];

  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 18);
  *(a1 + 38) = *(a2 + 19);
  *(a1 + 40) = *(a2 + 20);
  *(a1 + 42) = *(a2 + 21);
  *(a1 + 44) = *(a2 + 22);
  *(a1 + 46) = *(a2 + 23);
  *(a1 + 48) = *(a2 + 24);
  *(a1 + 50) = *(a2 + 25);
  *(a1 + 56) = a2[7];
  return a1;
}

__n128 initializeWithTake for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for CurrencyExchangeRateModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for CurrencyExchangeRateModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005E020()
{
  result = qword_10023AFA0;
  if (!qword_10023AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AFA0);
  }

  return result;
}

__n128 sub_10005E074@<Q0>(uint64_t a1@<X8>)
{
  v4 = [v1 connection];
  v5 = String._bridgeToObjectiveC()();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_100085FF0(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  v19 = 0u;
  memset(v20, 0, 19);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[2] = &v15;
  sub_100035B70(sub_10005F1D4, v12, v8);

  if (v2)
  {
    v13[4] = v19;
    v14[0] = v20[0];
    *(v14 + 15) = *(v20 + 15);
    v13[0] = v15;
    v13[1] = v16;
    v13[2] = v17;
    v13[3] = v18;
    sub_10005F0A8(v13);
  }

  else
  {
    v10 = v20[0];
    *(a1 + 64) = v19;
    *(a1 + 80) = v10;
    *(a1 + 95) = *(v20 + 15);
    v11 = v16;
    *a1 = v15;
    *(a1 + 16) = v11;
    result = v18;
    *(a1 + 32) = v17;
    *(a1 + 48) = result;
  }

  return result;
}

__n128 sub_10005E248@<Q0>(uint64_t a1@<X8>)
{
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = objc_opt_self();
  v8 = [v7 predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(inited + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 predicateWithProperty:v9 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  *(inited + 48) = sub_100113A70(6, &off_100214580);
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v12 = [v1 connection];
  v13 = v11;
  v14 = sub_100085FF0(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18[2] = &v21;
  sub_100035B70(sub_10005F1D4, v18, v14);

  if (v2)
  {
    v19[4] = v25;
    v20[0] = *v26;
    *(v20 + 15) = *&v26[15];
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    sub_10005F0A8(v19);
  }

  else
  {
    v16 = *v26;
    *(a1 + 64) = v25;
    *(a1 + 80) = v16;
    *(a1 + 95) = *&v26[15];
    v17 = v22;
    *a1 = v21;
    *(a1 + 16) = v17;
    result = v24;
    *(a1 + 32) = v23;
    *(a1 + 48) = result;
  }

  return result;
}

void sub_10005E514(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v31 = a4;
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B7EC0;
  v7 = String._bridgeToObjectiveC()();
  *&v36 = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  LOBYTE(v36) = 0;
  v12 = [v9 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  if (a2)
  {
    v13 = 0x69746375646F7270;
  }

  else
  {
    v13 = 0x6D706F6C65766564;
  }

  if (a2)
  {
    v14 = 0xEA00000000006E6FLL;
  }

  else
  {
    v14 = 0xEB00000000746E65;
  }

  v15 = String._bridgeToObjectiveC()();
  *&v36 = v13;
  *(&v36 + 1) = v14;

  v16 = [v9 predicateWithProperty:v15 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v16;
  Date.timeIntervalSince1970.getter();
  v18 = v17 * 1000.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v18 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v9 predicateWithProperty:v19 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 56) = v20;
  v21 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v22 = [v32 connection];
  v23 = v21;
  v24 = sub_100085FF0(v22, v21, _swiftEmptyArrayStorage, 0, 0);
  v40 = 0u;
  memset(v41, 0, 19);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  __chkstk_darwin(v24);
  v30[2] = &v36;
  v25 = v33;
  sub_100035B70(sub_10005F0A4, v30, v24);
  if (v25)
  {

    v34[4] = v40;
    v35[0] = v41[0];
    *(v35 + 15) = *(v41 + 15);
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_10005F0A8(v34);
  }

  else
  {

    v26 = v41[0];
    v27 = v31;
    *(v31 + 64) = v40;
    *(v27 + 80) = v26;
    *(v27 + 95) = *(v41 + 15);
    v28 = v37;
    *v27 = v36;
    *(v27 + 16) = v28;
    v29 = v39;
    *(v27 + 32) = v38;
    *(v27 + 48) = v29;
  }
}

uint64_t sub_10005E974()
{
  v1 = v0;
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  result = Date.timeIntervalSince1970.getter();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 1.84467441e19)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = objc_opt_self();
    v9 = [v8 predicateWithProperty:v6 value:v7 comparisonType:6];
    swift_unknownObjectRelease();

    *(inited + 32) = v9;
    v10 = String._bridgeToObjectiveC()();

    v11 = [v8 predicateWithProperty:v10 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    *(inited + 40) = v11;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v8 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    *(inited + 48) = v13;
    v14 = sub_10004FB24(inited);
    swift_setDeallocating();
    sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
    swift_arrayDestroy();
    v15 = [v1 connection];
    v16 = v14;
    v17 = sub_100086388(v15, v14, _swiftEmptyArrayStorage, 0, 0);
    v18 = [v17 countOfEntities];

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10005ECD8(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  result = Date.timeIntervalSince1970.getter();
  v8 = v7 * 1000.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v23 = v9;
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = objc_opt_self();
  v13 = [v12 predicateWithProperty:v10 value:v11 comparisonType:{6, v23}];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  if (a2)
  {
    if (a2 == 1)
    {
      v14 = 0x6F6C6E776F646572;
    }

    else
    {
      v14 = 0x6761676E652D6572;
    }

    if (a2 == 1)
    {
      v15 = 0xEA00000000006461;
    }

    else
    {
      v15 = 0xED0000746E656D65;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
    v14 = 0x64616F6C6E776F64;
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [v12 predicateWithProperty:v16 equalToValue:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v14, v15}];
  swift_unknownObjectRelease();

  *(inited + 40) = v17;
  v18 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
  swift_arrayDestroy();
  v19 = [v3 connection];
  v20 = v18;
  v21 = sub_100086388(v19, v18, _swiftEmptyArrayStorage, 0, 0);
  v22 = [v21 countOfEntities];

  return v22;
}

id sub_10005F04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005F0A8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023AFD8, qword_1001B7F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F110(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[5];
  v25 = a1[4];
  v26[0] = v6;
  *(v26 + 15) = *(a1 + 95);
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v8 = a1[3];
  v23 = a1[2];
  v24 = v8;
  v10 = v5[4];
  v9 = v5[5];
  v11 = v5[3];
  *(v28 + 15) = *(v5 + 95);
  v27[3] = v11;
  v27[4] = v10;
  v28[0] = v9;
  v12 = *v5;
  v13 = v5[2];
  v27[1] = v5[1];
  v27[2] = v13;
  v27[0] = v12;
  sub_10005F0A8(v27);
  v14 = v23;
  v15 = v22;
  *v5 = v21;
  v5[1] = v15;
  v5[2] = v14;
  v17 = v25;
  v16 = v26[0];
  v18 = v24;
  *(v5 + 95) = *(v26 + 15);
  v5[4] = v17;
  v5[5] = v16;
  v5[3] = v18;
  *a3 = 1;
  return sub_10001B9B0(&v21, v20);
}

uint64_t type metadata accessor for BarktivityType()
{
  result = qword_10023B050;
  if (!qword_10023B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F274()
{
  sub_10005F2E8();
  if (v0 <= 0x3F)
  {
    sub_10005F330();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10005F2E8()
{
  if (!qword_10023B060)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_10023B060);
    }
  }
}

void *sub_10005F330()
{
  result = qword_10023B068;
  if (!qword_10023B068)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_10023B068);
  }

  return result;
}

uint64_t sub_10005F370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10005F410();
}

uint64_t sub_10005F42C()
{
  v15 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound();
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v13[3] = &type metadata for ActivityManager;
  v13[4] = &off_100223E90;
  v8 = swift_allocObject();
  v13[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v14[3] = &type metadata for LaunchServicesRecordFactory;
  v14[4] = &off_10021CBA8;
  sub_1000B8524(v13, v14, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager();
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = sub_1000286A4(&off_1002145A8);
  *(v0 + 616) = v10;
  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_10005F820;

  return sub_10010B00C(v10);
}

uint64_t sub_10005F820()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v4 = *v0;

  return _swift_task_switch(sub_10004E764, 0, 0);
}

uint64_t sub_10005F938()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10005F974()
{
  result = qword_10023B098;
  if (!qword_10023B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B098);
  }

  return result;
}

unint64_t sub_10005F9CC()
{
  result = qword_10023B0A0;
  if (!qword_10023B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B0A0);
  }

  return result;
}

uint64_t sub_10005FA20(uint64_t a1)
{
  *(a1 + 8) = sub_100060B88(&qword_10023A828, type metadata accessor for ImpressionModel);
  result = sub_100060B88(&qword_10023B0F0, type metadata accessor for ImpressionModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ImpressionModel()
{
  result = qword_10023B180;
  if (!qword_10023B180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FAF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B63696C63;
  }

  else
  {
    v4 = 2003134838;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B63696C63;
  }

  else
  {
    v6 = 2003134838;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10005FB8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005FC04()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10005FC68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005FCDC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100214368, *a1);

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

void sub_10005FD3C(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10005FE60(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6973736572706D69;
    v6 = 0x6F7774656E5F6461;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5F746361706D6F63;
    v2 = 0x6D6E6F7269766E65;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 == 4)
    {
      v3 = 0x6D617473656D6974;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10005FFA4(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B120, &qword_1001B8148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10005F9CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for ImpressionModel();
  v12 = v11[5];
  v24[15] = 0;
  type metadata accessor for UUID();
  sub_100060B88(&qword_10023A108, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + v11[6]);
    v24[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + v11[7]);
    v24[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    v24[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[9]);
    v24[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24[10] = *(v3 + v11[10]);
    v24[9] = 5;
    sub_10004CE54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = (v3 + v11[11]);
    v20 = *v19;
    v21 = v19[1];
    v24[8] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v11[12]);
    v24[7] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24[6] = *(v3 + v11[13]);
    v24[5] = 8;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000602E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000CDE0(&qword_10023B118, &qword_1001B8140);
  v30 = *(v34 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v34);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ImpressionModel();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  v13[8] = 1;
  v14 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10005F9CC();
  v33 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v15 = a1;
  v17 = v30;
  v16 = v31;
  v45 = 0;
  sub_100060B88(&qword_10023A0E0, &type metadata accessor for UUID);
  v18 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v16 + 32);
  v20 = &v13[v10[5]];
  v32 = v4;
  v19(v20, v18, v4);
  v44 = 1;
  *&v13[v10[6]] = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = 2;
  *&v13[v10[7]] = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = &v13[v10[8]];
  *v22 = v21;
  v22[1] = v23;
  v41 = 4;
  *&v13[v10[9]] = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 5;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[v10[10]] = v40;
  v38 = 6;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = &v13[v10[11]];
  *v25 = v24;
  v25[1] = v26;
  v37 = 7;
  *&v13[v10[12]] = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 8;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v33, v34);
  v13[v10[13]] = v36;
  sub_10004C9B4(v13, v29);
  sub_10000DB58(v15);
  return sub_10004CA18(v13);
}

Swift::Int sub_100060838()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F098();
  return Hasher._finalize()();
}

Swift::Int sub_100060888()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F098();
  return Hasher._finalize()();
}

unint64_t sub_1000608CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060B3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000608FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005FE60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100060944@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100060B3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006097C(uint64_t a1)
{
  v2 = sub_10005F9CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000609B8(uint64_t a1)
{
  v2 = sub_10005F9CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100060A28()
{
  result = qword_10023B0F8;
  if (!qword_10023B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B0F8);
  }

  return result;
}

unint64_t sub_100060A80()
{
  result = qword_10023B100;
  if (!qword_10023B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B100);
  }

  return result;
}

unint64_t sub_100060AD8()
{
  result = qword_10023B108;
  if (!qword_10023B108)
  {
    sub_10000CCC0(&qword_10023B110, &qword_1001B8100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B108);
  }

  return result;
}

unint64_t sub_100060B3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002145D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100060B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100060CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100060D9C()
{
  sub_100060E58();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060E58()
{
  if (!qword_10023A188)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023A188);
    }
  }
}

unint64_t sub_100060EAC()
{
  result = qword_10023B1D8;
  if (!qword_10023B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1D8);
  }

  return result;
}

unint64_t sub_100060F00()
{
  result = qword_10023B1E0;
  if (!qword_10023B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1E0);
  }

  return result;
}

unint64_t sub_100060F58()
{
  result = qword_10023B1E8;
  if (!qword_10023B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1E8);
  }

  return result;
}

double sub_100060FB4@<D0>(_OWORD *a1@<X8>)
{
  v4 = [v1 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_100086658(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12[2] = &v14;
  sub_100036028(sub_100061220, v12, v8);

  if (v2)
  {
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    sub_1000612A0(v13);
  }

  else
  {
    v10 = v15;
    *a1 = v14;
    a1[1] = v10;
    result = *&v16;
    v11 = v17;
    a1[2] = v16;
    a1[3] = v11;
  }

  return result;
}

id sub_1000611C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100061220(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 4);
  v8 = v6[3];
  v10 = *v6;
  v9 = v6[1];
  v13[2] = v6[2];
  v13[3] = v8;
  v13[0] = v10;
  v13[1] = v9;
  sub_1000612A0(v13);
  v11 = a1[1];
  *v6 = *a1;
  v6[1] = v11;
  *(v6 + 4) = v7;
  *(v6 + 40) = *(a1 + 40);
  *(v6 + 7) = *(a1 + 7);
  *a3 = 1;
}

uint64_t sub_1000612A0(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023B218, qword_1001B83B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100061318(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection] = a1;
  v15 = a1;
  UUID.init()();
  v16 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID;
  (*(v11 + 32))(&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID], v14, v10);
  v17 = sub_10000CDE0(&unk_10023B2E8, &unk_1001B8460);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_dispatchKey] = DispatchSpecificKey.init()();
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue] = a2;
  (*(v11 + 16))(v9, &v3[v16], v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  v20 = a2;
  OS_dispatch_queue.setSpecific<A>(key:value:)();

  sub_10000DAF8(v9, &qword_10023B2E0, &qword_1001B8458);
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames] = &_swiftEmptySetSingleton;
  v21 = type metadata accessor for SQLiteDatabase();
  v26.receiver = v3;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, "init");
  v23 = *&v22[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection];
  v24 = v22;
  sub_1001AC8B8(v23, v24);

  return v24;
}

uint64_t sub_10006158C(void *a1, int a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  p_aBlock = *&v4[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  *v11 = p_aBlock;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = p_aBlock;
  v14 = _dispatchPreconditionTest(_:)();
  v16 = *(v8 + 8);
  v15 = (v8 + 8);
  v16(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LODWORD(v52) = a2;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames;
  swift_beginAccess();
  v18 = *&v4[v17];
  v19 = a1[3];
  v20 = a1[4];
  sub_10000DA7C(a1, v19);
  v21 = *(v20 + 40);

  v22 = v21(v19, v20);
  LOBYTE(v19) = sub_1000C20E0(v22, v23, v18);

  if (v19)
  {
    return result;
  }

  v51 = v3;
  v25 = *&v4[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection];
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100062BF0;
  *(v27 + 24) = v26;
  v59 = sub_100062C08;
  v60 = v27;
  p_aBlock = &aBlock;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v15 = &v57;
  v57 = sub_100121018;
  v58 = &unk_100219C98;
  v28 = _Block_copy(&aBlock);
  v29 = v25;

  sub_1000064FC(v29, v28);

  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    goto LABEL_17;
  }

  v54 = 0;
  sub_10000CE28(a1, v53);
  v30 = swift_allocObject();
  sub_10000DA64(v53, v30 + 16);
  *(v30 + 56) = v29;
  *(v30 + 64) = &v54;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_100062C68;
  *(v31 + 24) = v30;
  v59 = sub_100062E28;
  v60 = v31;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100121018;
  v58 = &unk_100219D10;
  v32 = _Block_copy(&aBlock);
  LODWORD(p_aBlock) = v60;
  v15 = v29;

  sub_1000064FC(v15, v32);
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v54)
  {
    swift_errorRetain();
    LODWORD(p_aBlock) = static os_log_type_t.fault.getter();
    if (qword_100239CD8 == -1)
    {
LABEL_7:
      v34 = type metadata accessor for Logger();
      sub_10000DAC0(v34, qword_10023FCB8);
      sub_10000CE28(a1, &aBlock);
      swift_errorRetain();
      v35 = Logger.logObject.getter();

      if (os_log_type_enabled(v35, p_aBlock))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        LODWORD(v51) = p_aBlock;
        v39 = v38;
        *v36 = 136315394;
        v52 = v15;
        *&v53[0] = v38;
        v41 = v58;
        v40 = v59;
        sub_10000DA7C(&aBlock, v58);
        v42 = (*(v40 + 5))(v41, v40);
        v44 = v43;
        sub_10000DB58(&aBlock);
        v45 = sub_10017AD04(v42, v44, v53);

        *(v36 + 4) = v45;
        v15 = v52;
        *(v36 + 12) = 2112;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v46;
        *v37 = v46;
        sub_10000DAF8(v37, &qword_100239F10, &qword_1001B4FD0);

        sub_10000DB58(v39);
      }

      else
      {

        sub_10000DB58(&aBlock);
      }

      swift_willThrow();
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  if (v52)
  {
  }

  else
  {
    sub_10000CE28(a1, v53);
    v47 = swift_allocObject();
    *(v47 + 16) = v4;
    sub_10000DA64(v53, v47 + 24);
    v59 = sub_100062CB4;
    v60 = v47;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_10001F3F8;
    v58 = &unk_100219D60;
    v48 = _Block_copy(&aBlock);
    v49 = v4;

    sub_1001AB644(v15, v48);

    _Block_release(v48);
  }
}

BOOL sub_100061C88(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000DA7C(a1, v5);
  sub_1000CBB80(v7, a2, v5, v6);
  return *a3 == 0;
}

void sub_100061CF8(uint64_t a1, void *a2)
{
  sub_10006158C(a2, 1);
  if (v2)
  {
    v4 = static os_log_type_t.fault.getter();
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FCB8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v4))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v6, v4, "Failed to migrate after transaction: %@", v7, 0xCu);
      sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }
  }

  else
  {
    v10 = a2[3];
    v11 = a2[4];
    sub_10000DA7C(a2, v10);
    v12 = (*(v11 + 40))(v10, v11);
    v14 = v13;
    swift_beginAccess();
    sub_100021FF4(&v15, v12, v14);
    swift_endAccess();
  }
}

uint64_t sub_100061F08@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v41 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v36 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000CDE0(&qword_10023B2F8, &qword_1001B8470);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v34[-v11];
  v13 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v38 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v19 = &v34[-v18];
  __chkstk_darwin(v17);
  v21 = &v34[-v20];
  sub_10003E61C();
  v22 = *(v3 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_dispatchKey);
  static OS_dispatch_queue.getSpecific<A>(key:)();
  v23 = *(v5 + 16);
  v37 = v3;
  v23(v19, v3 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID, v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v24 = *(v9 + 56);
  sub_100062D2C(v21, v12);
  sub_100062D2C(v19, &v12[v24]);
  v25 = *(v5 + 48);
  if (v25(v12, 1, v4) != 1)
  {
    sub_100062D2C(v12, v38);
    if (v25(&v12[v24], 1, v4) != 1)
    {
      v30 = &v12[v24];
      v31 = v36;
      (*(v5 + 32))(v36, v30, v4);
      sub_100062DC4();
      v32 = v38;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v5 + 8);
      v33(v31, v4);
      sub_10000DAF8(v19, &qword_10023B2E0, &qword_1001B8458);
      sub_10000DAF8(v21, &qword_10023B2E0, &qword_1001B8458);
      v33(v32, v4);
      v26 = sub_10000DAF8(v12, &qword_10023B2E0, &qword_1001B8458);
      if (v35)
      {
        return v40(v26);
      }

LABEL_7:
      v27 = *(v37 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue);
      __chkstk_darwin(v26);
      v28 = v39;
      *&v34[-16] = v40;
      *&v34[-8] = v28;
      return OS_dispatch_queue.sync<A>(execute:)();
    }

    sub_10000DAF8(v19, &qword_10023B2E0, &qword_1001B8458);
    sub_10000DAF8(v21, &qword_10023B2E0, &qword_1001B8458);
    (*(v5 + 8))(v38, v4);
LABEL_6:
    v26 = sub_10000DAF8(v12, &qword_10023B2F8, &qword_1001B8470);
    goto LABEL_7;
  }

  sub_10000DAF8(v19, &qword_10023B2E0, &qword_1001B8458);
  sub_10000DAF8(v21, &qword_10023B2E0, &qword_1001B8458);
  if (v25(&v12[v24], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v26 = sub_10000DAF8(v12, &qword_10023B2E0, &qword_1001B8458);
  return v40(v26);
}

id sub_1000623D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteDatabase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SQLiteDatabase()
{
  result = qword_10023B270;
  if (!qword_10023B270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100062510()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000625CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100239CD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000DAC0(v11, qword_10023FCB8);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = sub_1001AC8C8(v12);
    v19 = sub_1001AB480(v17, v18);

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10017AD04(v20, v22, &v28);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Requiring all stores to migrate after truncating corrupt database at: %s", v15, 0xCu);
    sub_10000DB58(v16);
  }

  v24 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames;
  swift_beginAccess();
  v25 = *(v2 + v24);
  *(v2 + v24) = &_swiftEmptySetSingleton;

  return 1;
}

void sub_1000628C4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v7, v3);
  if (v8)
  {
    v12 = sub_1001AC8C8(a1);
    v14 = sub_1001AB480(v12, v13);

    v3 = v14;
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v15;
    if (qword_100239CD8 == -1)
    {
LABEL_5:
      v16 = type metadata accessor for Logger();
      sub_10000DAC0(v16, qword_10023FCB8);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23 = v20;
        *v19 = 136315138;
        v21 = sub_10017AD04(v10, v7, &v23);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Exiting after deleting corrupt database at: %s", v19, 0xCu);
        sub_10000DB58(v20);
      }

      else
      {
      }

      sub_1001AB5C8(a1);
      SQLiteDeleteDatabase(v3, 0);

      exit(0);
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
  goto LABEL_5;
}

uint64_t sub_100062BB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062C28()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100062C74()
{
  sub_10000DB58((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062CB4()
{
  v3 = *(v0 + 16);
  v4 = v0 + 24;
  return sub_100061F08(sub_100062D10, &v2, v3);
}

uint64_t sub_100062D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062D9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100062DC4()
{
  result = qword_10023B308;
  if (!qword_10023B308)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B308);
  }

  return result;
}

uint64_t sub_100062E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v5 = type metadata accessor for Calendar.Component();
  v4[107] = v5;
  v6 = *(v5 - 8);
  v4[108] = v6;
  v7 = *(v6 + 64) + 15;
  v4[109] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[110] = v8;
  v9 = *(v8 - 8);
  v4[111] = v9;
  v10 = *(v9 + 64) + 15;
  v4[112] = swift_task_alloc();

  return _swift_task_switch(sub_100062F5C, 0, 0);
}

uint64_t sub_100062F5C()
{
  v1 = *(v0 + 824);
  if (v1 < 0)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000DAC0(v15, qword_10023FCE8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 824);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not convert itemID: %llu to required Int types", v19, 0xCu);
    }

    v66 = (v0 + 1017);
    v67 = (v0 + 1042);
    v64 = (v0 + 1009);
    v65 = (v0 + 1025);
    v62 = (v0 + 1030);
    v63 = (v0 + 1001);
    sub_10006DEA4();
    v20 = swift_allocError();
    *v21 = 0;
    swift_willThrow();
    *(v0 + 984) = v20;
    v22 = *(v0 + 896);
    v23 = *(v0 + 888);
    v24 = *(v0 + 880);
    v25 = *(v0 + 872);
    v26 = *(v0 + 864);
    v27 = *(v0 + 856);
    v68 = *(v0 + 848);
    v56 = *(v0 + 840);
    v61 = *(v0 + 832);
    swift_errorRetain();
    v28 = sub_1000C7C10(v20);
    v59 = v29;
    v60 = v28;
    v57 = v31;
    v58 = v30;

    static Date.now.getter();
    (*(v26 + 104))(v25, enum case for Calendar.Component.hour(_:), v27);
    v32 = sub_100025808(v22, v25);
    v34 = v33;
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    if (v34)
    {
      v32 = 0;
    }

    v35 = [objc_opt_self() buildVersion];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v0 + 1000) = 1;
    *(v0 + 1008) = 1;
    *(v0 + 1016) = 1;
    *(v0 + 1024) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 16) = 0;
    *(v0 + 18) = *v62;
    *(v0 + 22) = *(v0 + 1034);
    *(v0 + 24) = v60;
    *(v0 + 32) = v59;
    *(v0 + 40) = v58;
    *(v0 + 48) = v57;
    *(v0 + 56) = v61;
    *(v0 + 64) = v56;
    *(v0 + 72) = v32;
    *(v0 + 80) = v36;
    *(v0 + 88) = v38;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    v39 = *(v0 + 1000);
    *(v0 + 112) = v39;
    *(v0 + 113) = *v63;
    *(v0 + 116) = *(v0 + 1004);
    *(v0 + 120) = 0;
    v40 = *(v0 + 1008);
    *(v0 + 128) = v40;
    *(v0 + 129) = 3;
    *(v0 + 130) = *(v0 + 1036);
    *(v0 + 134) = *(v0 + 1040);
    *(v0 + 136) = 0;
    v41 = *(v0 + 1016);
    *(v0 + 144) = v41;
    *(v0 + 148) = *(v0 + 1012);
    *(v0 + 145) = *v64;
    *(v0 + 152) = 0;
    v42 = *(v0 + 1024);
    *(v0 + 160) = v42;
    *(v0 + 161) = 770;
    *(v0 + 167) = *(v0 + 1029);
    *(v0 + 163) = *v65;
    *(v0 + 168) = 0;
    v43 = *(v0 + 1048);
    *(v0 + 176) = v43;
    v44 = *v66;
    *(v0 + 180) = *(v0 + 1020);
    *(v0 + 177) = v44;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v45 = *v67;
    *(v0 + 207) = *(v0 + 1046);
    *(v0 + 203) = v45;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    v46 = *v62;
    *(v0 + 246) = *(v0 + 1034);
    *(v0 + 242) = v46;
    *(v0 + 248) = v60;
    *(v0 + 256) = v59;
    *(v0 + 264) = v58;
    *(v0 + 272) = v57;
    *(v0 + 280) = v61;
    *(v0 + 288) = v56;
    *(v0 + 296) = v32;
    *(v0 + 304) = v36;
    *(v0 + 312) = v38;
    *(v0 + 320) = 0;
    *(v0 + 325) = 2;
    *(v0 + 321) = 33686018;
    *(v0 + 328) = 0;
    *(v0 + 336) = v39;
    v47 = *v63;
    *(v0 + 340) = *(v0 + 1004);
    *(v0 + 337) = v47;
    *(v0 + 344) = 0;
    *(v0 + 352) = v40;
    *(v0 + 353) = 3;
    v48 = *(v0 + 1036);
    *(v0 + 358) = *(v0 + 1040);
    *(v0 + 354) = v48;
    *(v0 + 360) = 0;
    *(v0 + 368) = v41;
    v49 = *v64;
    *(v0 + 372) = *(v0 + 1012);
    *(v0 + 369) = v49;
    *(v0 + 376) = 0;
    *(v0 + 384) = v42;
    *(v0 + 385) = 770;
    v50 = *v65;
    *(v0 + 391) = *(v0 + 1029);
    *(v0 + 387) = v50;
    *(v0 + 392) = 0;
    *(v0 + 400) = v43;
    v51 = *v66;
    *(v0 + 404) = *(v0 + 1020);
    *(v0 + 401) = v51;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 424) = 514;
    *(v0 + 426) = 2;
    v52 = *v67;
    *(v0 + 431) = *(v0 + 1046);
    *(v0 + 427) = v52;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 16, v0 + 464);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v68 + 184), *(v68 + 208));
    v53 = type metadata accessor for SnoutManager();
    v54 = swift_task_alloc();
    *(v0 + 992) = v54;
    *v54 = v0;
    v54[1] = sub_100064448;
    v55 = *(v0 + 824);

    return (sub_10016E27C)(v0 + 16, v55, 0, 0, v53, &off_100223858);
  }

  else
  {
    v2 = *(v0 + 848);
    v3 = [objc_allocWithZone(ASCAdamID) initWithInt64:v1];
    v4 = [objc_opt_self() _requestWithID:v3 kind:ASCLockupKindApp context:ASCLockupContextStandard enableAppDistribution:1];
    *(v0 + 904) = v4;

    v5 = sub_10000DA7C((v2 + 24), *(v2 + 48));
    sub_10000CDE0(&qword_10023B328, qword_1001B84D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B5820;
    v7 = _ASCLockupKeyDistributorBundleId;
    *(v0 + 912) = _ASCLockupKeyDistributorBundleId;
    *(inited + 32) = v7;
    v8 = _ASCLockupKeyAppVersionId;
    *(v0 + 920) = _ASCLockupKeyAppVersionId;
    *(inited + 40) = v8;
    v9 = v7;
    v10 = v8;
    v11 = sub_100028984(inited);
    *(v0 + 928) = v11;
    swift_setDeallocating();
    type metadata accessor for _ASCLockupKey(0);
    swift_arrayDestroy();
    v12 = *v5;
    v13 = swift_task_alloc();
    *(v0 + 936) = v13;
    *v13 = v0;
    v13[1] = sub_1000636D0;

    return sub_10001FDF4(v4, v11);
  }
}

uint64_t sub_1000636D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 936);
  v6 = *v2;
  *(v4 + 944) = a1;
  *(v4 + 952) = v1;

  v7 = *(v3 + 928);

  if (v1)
  {
    v8 = sub_100063CD8;
  }

  else
  {
    v8 = sub_100063810;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100063810()
{
  v42 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16) && (v2 = sub_1000C3DAC(*(v0 + 912)), (v3 & 1) != 0))
  {
    sub_10002036C(*(*(v0 + 944) + 56) + 32 * v2, v0 + 736);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = *(v0 + 800);
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = *(v0 + 808);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (*(v1 + 16))
  {
    v7 = sub_1000C3DAC(*(v0 + 920));
    if (v8)
    {
      sub_10002036C(*(*(v0 + 944) + 56) + 32 * v7, v0 + 768);

      v9 = swift_dynamicCast();
      if (v9)
      {
        v10 = *(v0 + 816);
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 ^ 1;
      if (!v6)
      {
        goto LABEL_16;
      }

LABEL_24:
      v18 = qword_100239CE8;

      if (v18 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

    v17 = *(v0 + 944);
  }

  else
  {
    v16 = *(v0 + 944);
  }

  v10 = 0;
  v11 = 1;
  if (v6)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000DAC0(v12, qword_10023FCE8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No distributor bundle ID received from app fetch", v15, 2u);
  }

  v6 = 0x80000001001CB3C0;
  v5 = 0xD000000000000012;
  while (1)
  {
    v25 = *(v0 + 896);
    v26 = *(v0 + 888);
    v27 = *(v0 + 880);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v29 = v28;
    (*(v26 + 8))(v25, v27);
    v30 = v29 * 1000.0;
    if (COERCE__INT64(fabs(v29 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v30 <= -1.0)
    {
      goto LABEL_36;
    }

    if (v30 < 1.84467441e19)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_25:
    v19 = type metadata accessor for Logger();
    sub_10000DAC0(v19, qword_10023FCE8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      v24 = sub_10017AD04(v5, v6, &v41);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received distributor bundle ID '%s' from app fetch", v22, 0xCu);
      sub_10000DB58(v23);
    }

    else
    {
    }
  }

  v31 = *(v0 + 848);
  v32 = *(v0 + 824);
  v33 = v30;
  *(v0 + 1056) = 1;
  *(v0 + 1064) = v11;
  v34 = *(v0 + 1064);
  v39 = v31[1];
  v40 = *v31;
  v35 = v31[2];
  v36 = swift_allocObject();
  *(v0 + 960) = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = 1;
  *(v36 + 32) = v32;
  *(v36 + 40) = v5;
  *(v36 + 48) = v6;
  *(v36 + 56) = v10;
  *(v36 + 64) = v34;
  *(v36 + 72) = v33;
  v37 = swift_task_alloc();
  *(v0 + 968) = v37;
  *v37 = v0;
  v37[1] = sub_1000641CC;

  return sub_10010F0D0(sub_10010F0D0, sub_10006E028, v36, v40, v39, v35);
}

uint64_t sub_100063CD8()
{
  v44 = (v0 + 1001);
  v45 = (v0 + 1009);
  v43 = (v0 + 1030);
  v46 = (v0 + 1025);
  v47 = (v0 + 1017);
  v48 = (v0 + 1042);

  v1 = *(v0 + 952);
  *(v0 + 984) = v1;
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v49 = *(v0 + 848);
  v37 = *(v0 + 840);
  v42 = *(v0 + 832);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v40 = v9;
  v41 = v8;
  v38 = v11;
  v39 = v10;

  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v12 = 0;
  }

  v15 = [objc_opt_self() buildVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v0 + 1000) = 1;
  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1024) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 0;
  *(v0 + 18) = *v43;
  *(v0 + 22) = *(v0 + 1034);
  *(v0 + 24) = v41;
  *(v0 + 32) = v40;
  *(v0 + 40) = v39;
  *(v0 + 48) = v38;
  *(v0 + 56) = v42;
  *(v0 + 64) = v37;
  *(v0 + 72) = v12;
  *(v0 + 80) = v16;
  *(v0 + 88) = v18;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  v19 = *(v0 + 1000);
  *(v0 + 112) = v19;
  *(v0 + 113) = *v44;
  *(v0 + 116) = *(v0 + 1004);
  *(v0 + 120) = 0;
  v20 = *(v0 + 1008);
  *(v0 + 128) = v20;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 1036);
  *(v0 + 134) = *(v0 + 1040);
  *(v0 + 136) = 0;
  v21 = *(v0 + 1016);
  *(v0 + 144) = v21;
  *(v0 + 148) = *(v0 + 1012);
  *(v0 + 145) = *v45;
  *(v0 + 152) = 0;
  v22 = *(v0 + 1024);
  *(v0 + 160) = v22;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 1029);
  *(v0 + 163) = *v46;
  *(v0 + 168) = 0;
  v23 = *(v0 + 1048);
  *(v0 + 176) = v23;
  v24 = *v47;
  *(v0 + 180) = *(v0 + 1020);
  *(v0 + 177) = v24;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v25 = *v48;
  *(v0 + 207) = *(v0 + 1046);
  *(v0 + 203) = v25;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  v26 = *v43;
  *(v0 + 246) = *(v0 + 1034);
  *(v0 + 242) = v26;
  *(v0 + 248) = v41;
  *(v0 + 256) = v40;
  *(v0 + 264) = v39;
  *(v0 + 272) = v38;
  *(v0 + 280) = v42;
  *(v0 + 288) = v37;
  *(v0 + 296) = v12;
  *(v0 + 304) = v16;
  *(v0 + 312) = v18;
  *(v0 + 320) = 0;
  *(v0 + 325) = 2;
  *(v0 + 321) = 33686018;
  *(v0 + 328) = 0;
  *(v0 + 336) = v19;
  v27 = *v44;
  *(v0 + 340) = *(v0 + 1004);
  *(v0 + 337) = v27;
  *(v0 + 344) = 0;
  *(v0 + 352) = v20;
  *(v0 + 353) = 3;
  v28 = *(v0 + 1036);
  *(v0 + 358) = *(v0 + 1040);
  *(v0 + 354) = v28;
  *(v0 + 360) = 0;
  *(v0 + 368) = v21;
  v29 = *v45;
  *(v0 + 372) = *(v0 + 1012);
  *(v0 + 369) = v29;
  *(v0 + 376) = 0;
  *(v0 + 384) = v22;
  *(v0 + 385) = 770;
  v30 = *v46;
  *(v0 + 391) = *(v0 + 1029);
  *(v0 + 387) = v30;
  *(v0 + 392) = 0;
  *(v0 + 400) = v23;
  v31 = *v47;
  *(v0 + 404) = *(v0 + 1020);
  *(v0 + 401) = v31;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v32 = *v48;
  *(v0 + 431) = *(v0 + 1046);
  *(v0 + 427) = v32;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v49 + 184), *(v49 + 208));
  v33 = type metadata accessor for SnoutManager();
  v34 = swift_task_alloc();
  *(v0 + 992) = v34;
  *v34 = v0;
  v34[1] = sub_100064448;
  v35 = *(v0 + 824);

  return (sub_10016E27C)(v0 + 16, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_1000641CC()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v4 = *v1;
  *(*v1 + 976) = v0;

  v5 = *(v2 + 960);

  if (v0)
  {
    v6 = sub_1000645D0;
  }

  else
  {
    v6 = sub_100064300;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100064300()
{
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 824);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Distributor metadata cached for item ID %llu", v5, 0xCu);
  }

  v6 = *(v0 + 896);
  v7 = *(v0 + 872);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100064448()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10006454C, 0, 0);
}

uint64_t sub_10006454C()
{
  v1 = v0[123];
  v2 = v0[112];
  v3 = v0[109];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[123];

  return v4();
}

uint64_t sub_1000645D0()
{
  v44 = (v0 + 1001);
  v45 = (v0 + 1009);
  v43 = (v0 + 1030);
  v46 = (v0 + 1025);
  v47 = (v0 + 1017);
  v48 = (v0 + 1042);

  v1 = *(v0 + 976);
  *(v0 + 984) = v1;
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v49 = *(v0 + 848);
  v37 = *(v0 + 840);
  v42 = *(v0 + 832);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v40 = v9;
  v41 = v8;
  v38 = v11;
  v39 = v10;

  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v12 = 0;
  }

  v15 = [objc_opt_self() buildVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v0 + 1000) = 1;
  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1024) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 0;
  *(v0 + 18) = *v43;
  *(v0 + 22) = *(v0 + 1034);
  *(v0 + 24) = v41;
  *(v0 + 32) = v40;
  *(v0 + 40) = v39;
  *(v0 + 48) = v38;
  *(v0 + 56) = v42;
  *(v0 + 64) = v37;
  *(v0 + 72) = v12;
  *(v0 + 80) = v16;
  *(v0 + 88) = v18;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  v19 = *(v0 + 1000);
  *(v0 + 112) = v19;
  *(v0 + 113) = *v44;
  *(v0 + 116) = *(v0 + 1004);
  *(v0 + 120) = 0;
  v20 = *(v0 + 1008);
  *(v0 + 128) = v20;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 1036);
  *(v0 + 134) = *(v0 + 1040);
  *(v0 + 136) = 0;
  v21 = *(v0 + 1016);
  *(v0 + 144) = v21;
  *(v0 + 148) = *(v0 + 1012);
  *(v0 + 145) = *v45;
  *(v0 + 152) = 0;
  v22 = *(v0 + 1024);
  *(v0 + 160) = v22;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 1029);
  *(v0 + 163) = *v46;
  *(v0 + 168) = 0;
  v23 = *(v0 + 1048);
  *(v0 + 176) = v23;
  v24 = *v47;
  *(v0 + 180) = *(v0 + 1020);
  *(v0 + 177) = v24;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v25 = *v48;
  *(v0 + 207) = *(v0 + 1046);
  *(v0 + 203) = v25;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  v26 = *v43;
  *(v0 + 246) = *(v0 + 1034);
  *(v0 + 242) = v26;
  *(v0 + 248) = v41;
  *(v0 + 256) = v40;
  *(v0 + 264) = v39;
  *(v0 + 272) = v38;
  *(v0 + 280) = v42;
  *(v0 + 288) = v37;
  *(v0 + 296) = v12;
  *(v0 + 304) = v16;
  *(v0 + 312) = v18;
  *(v0 + 320) = 0;
  *(v0 + 325) = 2;
  *(v0 + 321) = 33686018;
  *(v0 + 328) = 0;
  *(v0 + 336) = v19;
  v27 = *v44;
  *(v0 + 340) = *(v0 + 1004);
  *(v0 + 337) = v27;
  *(v0 + 344) = 0;
  *(v0 + 352) = v20;
  *(v0 + 353) = 3;
  v28 = *(v0 + 1036);
  *(v0 + 358) = *(v0 + 1040);
  *(v0 + 354) = v28;
  *(v0 + 360) = 0;
  *(v0 + 368) = v21;
  v29 = *v45;
  *(v0 + 372) = *(v0 + 1012);
  *(v0 + 369) = v29;
  *(v0 + 376) = 0;
  *(v0 + 384) = v22;
  *(v0 + 385) = 770;
  v30 = *v46;
  *(v0 + 391) = *(v0 + 1029);
  *(v0 + 387) = v30;
  *(v0 + 392) = 0;
  *(v0 + 400) = v23;
  v31 = *v47;
  *(v0 + 404) = *(v0 + 1020);
  *(v0 + 401) = v31;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v32 = *v48;
  *(v0 + 431) = *(v0 + 1046);
  *(v0 + 427) = v32;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v49 + 184), *(v49 + 208));
  v33 = type metadata accessor for SnoutManager();
  v34 = swift_task_alloc();
  *(v0 + 992) = v34;
  *v34 = v0;
  v34[1] = sub_100064448;
  v35 = *(v0 + 824);

  return (sub_10016E27C)(v0 + 16, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_100064AC4(uint64_t a1)
{
  v2[95] = v1;
  v2[94] = a1;
  v3 = type metadata accessor for Calendar.Component();
  v2[96] = v3;
  v4 = *(v3 - 8);
  v2[97] = v4;
  v5 = *(v4 + 64) + 15;
  v2[98] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[99] = v6;
  v7 = *(v6 - 8);
  v2[100] = v7;
  v8 = *(v7 + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return _swift_task_switch(sub_100064BF0, 0, 0);
}

uint64_t sub_100064BF0()
{
  v1 = v0[94];
  if (v1 == 915061776)
  {
    v2 = v0[102];
    v3 = v0[101];
    v4 = v0[98];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[95];
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = swift_allocObject();
    v0[103] = v11;
    *(v11 + 16) = v1;
    v12 = swift_task_alloc();
    v0[104] = v12;
    *v12 = v0;
    v12[1] = sub_100064D68;

    return sub_1001107D4((v0 + 86), sub_10006E394, v11, v9, v8, v10);
  }
}

uint64_t sub_100064D68()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;
  *(*v1 + 840) = v0;

  v5 = *(v2 + 824);

  if (v0)
  {
    v6 = sub_10006575C;
  }

  else
  {
    v6 = sub_100064E9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100064E9C()
{
  if (*(v0 + 720))
  {
    v1 = *(v0 + 816);
    v2 = *(v0 + 808);
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 744) / 1000.0;
    Date.init(timeIntervalSince1970:)();
    sub_10000DAF8(v0 + 688, &qword_10023B218, qword_1001B83B0);
    Date.init(timeIntervalSinceNow:)();
    v6 = static Date.> infix(_:_:)();
    v7 = *(v3 + 8);
    v7(v2, v4);
    v7(v1, v4);
    if (v6)
    {
      v8 = *(v0 + 816);
      v9 = *(v0 + 808);
      v10 = *(v0 + 784);

      v11 = *(v0 + 8);

      return v11();
    }

    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  sub_10006DEA4();
  v14 = swift_allocError();
  *v15 = v13;
  swift_willThrow();
  *(v0 + 848) = v14;
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000DAC0(v16, qword_10023FCE8);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 752);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 134218242;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Encountered error while validating distributor metadata for app %llu, error: %@", v20, 0x16u);
    sub_10000DAF8(v21, &qword_100239F10, &qword_1001B4FD0);
  }

  v63 = (v0 + 881);
  v64 = (v0 + 906);
  v23 = *(v0 + 816);
  v24 = *(v0 + 800);
  v61 = (v0 + 873);
  v62 = (v0 + 889);
  v59 = (v0 + 894);
  v60 = (v0 + 865);
  v25 = *(v0 + 792);
  v26 = *(v0 + 784);
  v27 = *(v0 + 776);
  v28 = *(v0 + 768);
  v65 = *(v0 + 760);

  swift_errorRetain();
  v29 = sub_1000C7C10(v14);
  v57 = v30;
  v58 = v29;
  v55 = v32;
  v56 = v31;
  static Date.now.getter();
  (*(v27 + 104))(v26, enum case for Calendar.Component.hour(_:), v28);
  v33 = sub_100025808(v23, v26);
  v35 = v34;
  (*(v27 + 8))(v26, v28);
  (*(v24 + 8))(v23, v25);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v37 = [objc_opt_self() buildVersion];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *(v0 + 864) = 1;
  *(v0 + 872) = 1;
  *(v0 + 880) = 1;
  *(v0 + 888) = 1;
  *(v0 + 912) = 1;
  *(v0 + 16) = 771;
  *(v0 + 18) = *v59;
  *(v0 + 22) = *(v0 + 898);
  *(v0 + 24) = v58;
  *(v0 + 32) = v57;
  *(v0 + 40) = v56;
  *(v0 + 48) = v55;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v36;
  *(v0 + 80) = v38;
  *(v0 + 88) = v40;
  *(v0 + 96) = 16908800;
  *(v0 + 100) = 514;
  *(v0 + 104) = 0;
  v41 = *(v0 + 864);
  *(v0 + 112) = v41;
  *(v0 + 113) = *v60;
  *(v0 + 116) = *(v0 + 868);
  *(v0 + 120) = 0;
  v42 = *(v0 + 872);
  *(v0 + 128) = v42;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 900);
  *(v0 + 134) = *(v0 + 904);
  *(v0 + 136) = 0;
  v43 = *(v0 + 880);
  *(v0 + 144) = v43;
  v44 = *v61;
  *(v0 + 148) = *(v0 + 876);
  *(v0 + 145) = v44;
  *(v0 + 152) = 0;
  LOBYTE(v44) = *(v0 + 888);
  *(v0 + 160) = v44;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 893);
  *(v0 + 163) = *v62;
  *(v0 + 168) = 0;
  v45 = *(v0 + 912);
  *(v0 + 176) = v45;
  *(v0 + 177) = *v63;
  *(v0 + 180) = *(v0 + 884);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  *(v0 + 207) = *(v0 + 910);
  *(v0 + 203) = *v64;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 771;
  *(v0 + 246) = *(v0 + 898);
  *(v0 + 242) = *v59;
  *(v0 + 248) = v58;
  *(v0 + 256) = v57;
  *(v0 + 264) = v56;
  *(v0 + 272) = v55;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = v36;
  *(v0 + 304) = v38;
  *(v0 + 312) = v40;
  *(v0 + 320) = 16908800;
  *(v0 + 324) = 514;
  *(v0 + 328) = 0;
  *(v0 + 336) = v41;
  v46 = *v60;
  *(v0 + 340) = *(v0 + 868);
  *(v0 + 337) = v46;
  *(v0 + 344) = 0;
  *(v0 + 352) = v42;
  *(v0 + 353) = 3;
  v47 = *(v0 + 900);
  *(v0 + 358) = *(v0 + 904);
  *(v0 + 354) = v47;
  *(v0 + 360) = 0;
  *(v0 + 368) = v43;
  v48 = *v61;
  *(v0 + 372) = *(v0 + 876);
  *(v0 + 369) = v48;
  *(v0 + 376) = 0;
  *(v0 + 384) = v44;
  *(v0 + 385) = 770;
  v49 = *v62;
  *(v0 + 391) = *(v0 + 893);
  *(v0 + 387) = v49;
  *(v0 + 392) = 0;
  *(v0 + 400) = v45;
  v50 = *v63;
  *(v0 + 404) = *(v0 + 884);
  *(v0 + 401) = v50;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v51 = *v64;
  *(v0 + 431) = *(v0 + 910);
  *(v0 + 427) = v51;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v65 + 184), *(v65 + 208));
  v52 = type metadata accessor for SnoutManager();
  v53 = swift_task_alloc();
  *(v0 + 856) = v53;
  *v53 = v0;
  v53[1] = sub_1000655C0;
  v54 = *(v0 + 752);

  return (sub_10016E27C)(v0 + 16, v54, 0, 0, v52, &off_100223858);
}

uint64_t sub_1000655C0()
{
  v1 = *v0;
  v2 = *(*v0 + 856);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000656C4, 0, 0);
}

uint64_t sub_1000656C4()
{
  v1 = v0[106];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[98];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[106];

  return v5();
}

uint64_t sub_10006575C()
{
  v1 = *(v0 + 840);
  *(v0 + 848) = v1;
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FCE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 752);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 134218242;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while validating distributor metadata for app %llu, error: %@", v6, 0x16u);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v50 = (v0 + 881);
  v51 = (v0 + 906);
  v9 = *(v0 + 816);
  v10 = *(v0 + 800);
  v48 = (v0 + 873);
  v49 = (v0 + 889);
  v46 = (v0 + 894);
  v47 = (v0 + 865);
  v11 = *(v0 + 792);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v52 = *(v0 + 760);

  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v44 = v16;
  v45 = v15;
  v42 = v18;
  v43 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v9, v12);
  v21 = v20;
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v0 + 864) = 1;
  *(v0 + 872) = 1;
  *(v0 + 880) = 1;
  *(v0 + 888) = 1;
  *(v0 + 912) = 1;
  *(v0 + 16) = 771;
  *(v0 + 18) = *v46;
  *(v0 + 22) = *(v0 + 898);
  *(v0 + 24) = v45;
  *(v0 + 32) = v44;
  *(v0 + 40) = v43;
  *(v0 + 48) = v42;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v22;
  *(v0 + 80) = v24;
  *(v0 + 88) = v26;
  *(v0 + 96) = 16908800;
  *(v0 + 100) = 514;
  *(v0 + 104) = 0;
  v27 = *(v0 + 864);
  *(v0 + 112) = v27;
  *(v0 + 113) = *v47;
  *(v0 + 116) = *(v0 + 868);
  *(v0 + 120) = 0;
  v28 = *(v0 + 872);
  *(v0 + 128) = v28;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 900);
  *(v0 + 134) = *(v0 + 904);
  *(v0 + 136) = 0;
  v29 = *(v0 + 880);
  *(v0 + 144) = v29;
  v30 = *v48;
  *(v0 + 148) = *(v0 + 876);
  *(v0 + 145) = v30;
  *(v0 + 152) = 0;
  LOBYTE(v30) = *(v0 + 888);
  *(v0 + 160) = v30;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 893);
  *(v0 + 163) = *v49;
  *(v0 + 168) = 0;
  v31 = *(v0 + 912);
  *(v0 + 176) = v31;
  *(v0 + 177) = *v50;
  *(v0 + 180) = *(v0 + 884);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  *(v0 + 207) = *(v0 + 910);
  *(v0 + 203) = *v51;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 771;
  *(v0 + 246) = *(v0 + 898);
  *(v0 + 242) = *v46;
  *(v0 + 248) = v45;
  *(v0 + 256) = v44;
  *(v0 + 264) = v43;
  *(v0 + 272) = v42;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = v22;
  *(v0 + 304) = v24;
  *(v0 + 312) = v26;
  *(v0 + 320) = 16908800;
  *(v0 + 324) = 514;
  *(v0 + 328) = 0;
  *(v0 + 336) = v27;
  v32 = *v47;
  *(v0 + 340) = *(v0 + 868);
  *(v0 + 337) = v32;
  *(v0 + 344) = 0;
  *(v0 + 352) = v28;
  *(v0 + 353) = 3;
  v33 = *(v0 + 900);
  *(v0 + 358) = *(v0 + 904);
  *(v0 + 354) = v33;
  *(v0 + 360) = 0;
  *(v0 + 368) = v29;
  v34 = *v48;
  *(v0 + 372) = *(v0 + 876);
  *(v0 + 369) = v34;
  *(v0 + 376) = 0;
  *(v0 + 384) = v30;
  *(v0 + 385) = 770;
  v35 = *v49;
  *(v0 + 391) = *(v0 + 893);
  *(v0 + 387) = v35;
  *(v0 + 392) = 0;
  *(v0 + 400) = v31;
  v36 = *v50;
  *(v0 + 404) = *(v0 + 884);
  *(v0 + 401) = v36;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v37 = *v51;
  *(v0 + 431) = *(v0 + 910);
  *(v0 + 427) = v37;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v52 + 184), *(v52 + 208));
  v38 = type metadata accessor for SnoutManager();
  v39 = swift_task_alloc();
  *(v0 + 856) = v39;
  *v39 = v0;
  v39[1] = sub_1000655C0;
  v40 = *(v0 + 752);

  return (sub_10016E27C)(v0 + 16, v40, 0, 0, v38, &off_100223858);
}

uint64_t sub_100065D48(uint64_t a1, uint64_t a2)
{
  v3[388] = v2;
  v3[387] = a2;
  v3[386] = a1;
  v4 = type metadata accessor for Calendar.Component();
  v3[389] = v4;
  v5 = *(v4 - 8);
  v3[390] = v5;
  v6 = *(v5 + 64) + 15;
  v3[391] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[392] = v7;
  v8 = *(v7 - 8);
  v3[393] = v8;
  v9 = *(v8 + 64) + 15;
  v3[394] = swift_task_alloc();
  v10 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v3[395] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v3[396] = v11;
  v12 = *(v11 - 8);
  v3[397] = v12;
  v13 = *(v12 + 64) + 15;
  v3[398] = swift_task_alloc();

  return _swift_task_switch(sub_100065F2C, 0, 0);
}

uint64_t sub_100065F2C()
{
  v1 = *(v0 + 3088);
  *(v0 + 2960) = 0u;
  *(v0 + 2976) = 0u;
  *(v0 + 2992) = 0;
  if (v1 == 915061776)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
    v3 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
    v4 = sub_10006DF54();
LABEL_5:
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 2960) = v3;
    *(v0 + 2984) = v4;
    *(v0 + 2992) = &off_10021F840;
    goto LABEL_8;
  }

  v5 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 3080) = 0;
  v6 = [v5 initWithStoreItemIdentifier:v1 error:v0 + 3080];
  v7 = *(v0 + 3080);
  if (v6)
  {
    v3 = v6;
    v4 = sub_10006DF54();
    v8 = v7;
    goto LABEL_5;
  }

  v9 = v7;
  v10 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *(v0 + 3320) = v10;
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  if (v12 != -10814)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000DAC0(v67, qword_10023FCE8);
    swift_errorRetain();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v0 + 3088);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 134218242;
      *(v71 + 4) = v70;
      *(v71 + 12) = 2112;
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 14) = v73;
      *v72 = v73;
      _os_log_impl(&_mh_execute_header, v68, v69, "Unexpected error fetching LSApplicationRecord for itemID: %llu, error: %@", v71, 0x16u);
      sub_10000DAF8(v72, &qword_100239F10, &qword_1001B4FD0);
    }

    v142 = (v0 + 3550);
    v144 = (v0 + 3465);
    v74 = *(v0 + 3152);
    v75 = *(v0 + 3144);
    v136 = (v0 + 3470);
    v138 = (v0 + 3433);
    v132 = (v0 + 3506);
    v134 = (v0 + 3385);
    v76 = *(v0 + 3136);
    v140 = (v0 + 3377);
    v77 = *(v0 + 3128);
    v78 = *(v0 + 3120);
    v79 = *(v0 + 3112);
    v146 = *(v0 + 3104);

    swift_errorRetain();
    v80 = sub_1000C7C10(v10);
    v128 = v81;
    v130 = v80;
    v125 = v83;
    v126 = v82;
    static Date.now.getter();
    (*(v78 + 104))(v77, enum case for Calendar.Component.hour(_:), v79);
    v84 = sub_100025808(v74, v77);
    v86 = v85;
    (*(v78 + 8))(v77, v79);
    (*(v75 + 8))(v74, v76);
    if (v86)
    {
      v87 = 0;
    }

    else
    {
      v87 = v84;
    }

    v88 = [objc_opt_self() buildVersion];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    *(v0 + 3424) = 1;
    *(v0 + 3376) = 1;
    *(v0 + 3392) = 1;
    *(v0 + 3408) = 1;
    *(v0 + 3592) = 1;
    *(v0 + 2256) = 771;
    *(v0 + 2258) = *v132;
    *(v0 + 2262) = *(v0 + 3510);
    *(v0 + 2264) = v130;
    *(v0 + 2272) = v128;
    *(v0 + 2280) = v126;
    *(v0 + 2288) = v125;
    *(v0 + 2296) = 0u;
    *(v0 + 2312) = v87;
    *(v0 + 2320) = v89;
    *(v0 + 2328) = v91;
    *(v0 + 2336) = 16908800;
    *(v0 + 2340) = 514;
    *(v0 + 2344) = 0;
    v92 = *(v0 + 3424);
    *(v0 + 2352) = v92;
    *(v0 + 2353) = *v134;
    *(v0 + 2356) = *(v0 + 3388);
    *(v0 + 2360) = 0;
    v93 = *(v0 + 3376);
    *(v0 + 2368) = v93;
    *(v0 + 2369) = 3;
    *(v0 + 2370) = *v136;
    *(v0 + 2374) = *(v0 + 3474);
    *(v0 + 2376) = 0;
    v94 = *(v0 + 3392);
    *(v0 + 2384) = v94;
    v95 = *v138;
    *(v0 + 2388) = *(v0 + 3436);
    *(v0 + 2385) = v95;
    *(v0 + 2392) = 0;
    v96 = *(v0 + 3408);
    *(v0 + 2400) = v96;
    *(v0 + 2401) = 770;
    *(v0 + 2407) = *(v0 + 3554);
    *(v0 + 2403) = *v142;
    *(v0 + 2408) = 0;
    v97 = *(v0 + 3592);
    *(v0 + 2416) = v97;
    *(v0 + 2417) = *v140;
    *(v0 + 2420) = *(v0 + 3380);
    *(v0 + 2424) = 0u;
    *(v0 + 2440) = 514;
    *(v0 + 2442) = 2;
    *(v0 + 2447) = *(v0 + 3469);
    *(v0 + 2443) = *v144;
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 240) = 771;
    *(v0 + 246) = *(v0 + 3510);
    *(v0 + 242) = *v132;
    *(v0 + 248) = v130;
    *(v0 + 256) = v128;
    *(v0 + 264) = v126;
    *(v0 + 272) = v125;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = v87;
    *(v0 + 304) = v89;
    *(v0 + 312) = v91;
    *(v0 + 320) = 16908800;
    *(v0 + 324) = 514;
    *(v0 + 328) = 0;
    *(v0 + 336) = v92;
    v98 = *v134;
    *(v0 + 340) = *(v0 + 3388);
    *(v0 + 337) = v98;
    *(v0 + 344) = 0;
    *(v0 + 352) = v93;
    *(v0 + 353) = 3;
    v99 = *v136;
    *(v0 + 358) = *(v0 + 3474);
    *(v0 + 354) = v99;
    *(v0 + 360) = 0;
    *(v0 + 368) = v94;
    v100 = *v138;
    *(v0 + 372) = *(v0 + 3436);
    *(v0 + 369) = v100;
    *(v0 + 376) = 0;
    *(v0 + 384) = v96;
    *(v0 + 385) = 770;
    v101 = *v142;
    *(v0 + 391) = *(v0 + 3554);
    *(v0 + 387) = v101;
    *(v0 + 392) = 0;
    *(v0 + 400) = v97;
    v102 = *v140;
    *(v0 + 404) = *(v0 + 3380);
    *(v0 + 401) = v102;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 424) = 514;
    *(v0 + 426) = 2;
    v103 = *v144;
    *(v0 + 431) = *(v0 + 3469);
    *(v0 + 427) = v103;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 2256, v0 + 2480);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v146 + 184), *(v146 + 208));
    v63 = type metadata accessor for SnoutManager();
    v104 = swift_task_alloc();
    *(v0 + 3328) = v104;
    *v104 = v0;
    v104[1] = sub_1000698D0;
    v65 = *(v0 + 3088);
    v66 = v0 + 2256;
    goto LABEL_34;
  }

LABEL_8:
  sub_100014B50(v0 + 2960, v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 3024))
  {
    v13 = *(v0 + 3176);
    v14 = *(v0 + 3168);
    v15 = *(v0 + 3160);
    v16 = *(v0 + 3096);
    sub_10000DA64((v0 + 3000), v0 + 3040);
    sub_100014B50(v16, v15, &qword_10023C230, &qword_1001B4FB0);
    if ((*(v13 + 48))(v15, 1, v14) == 1)
    {
      sub_10000DAF8(*(v0 + 3160), &qword_10023C230, &qword_1001B4FB0);
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000DAC0(v17, qword_10023FCE8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 3088);
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v18, v19, "Launching itemID: %llu", v21, 0xCu);
      }

      v22 = swift_task_alloc();
      *(v0 + 3232) = v22;
      *v22 = v0;
      v22[1] = sub_1000678FC;
      v23 = *(v0 + 3104);
      v24 = *(v0 + 3088);

      return sub_10006D948(v0 + 3040, v24);
    }

    else
    {
      (*(*(v0 + 3176) + 32))(*(v0 + 3184), *(v0 + 3160), *(v0 + 3168));
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      *(v0 + 3192) = sub_10000DAC0(v105, qword_10023FCE8);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = *(v0 + 3088);
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        *(v109 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v106, v107, "Opening universal link for app: %llu", v109, 0xCu);
      }

      v110 = *(v0 + 3088);

      v111 = swift_task_alloc();
      if (v110 == 915061776)
      {
        *(v0 + 3200) = v111;
        *v111 = v0;
        v111[1] = sub_100067170;
        v112 = *(v0 + 3104);
        v113 = 0x80000001001CB3C0;
        v114 = *(v0 + 3184);
        v115 = 0xD000000000000012;
        v116 = 1;
      }

      else
      {
        *(v0 + 3216) = v111;
        *v111 = v0;
        v111[1] = sub_1000677BC;
        v124 = *(v0 + 3104);
        v115 = *(v0 + 3088);
        v114 = *(v0 + 3184);
        v113 = 0;
        v116 = 0;
      }

      return sub_10006C9E8(v114, v115, v113, v116);
    }
  }

  v26 = *(v0 + 3088);
  sub_10000DAF8(v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (v26 == 915061776)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000DAC0(v27, qword_10023FCE8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = 915061776;
      _os_log_impl(&_mh_execute_header, v28, v29, "Distributor launch not valid for itemID: %llu", v30, 0xCu);
    }

    v137 = (v0 + 3482);
    v139 = (v0 + 3417);
    v135 = (v0 + 3401);
    v141 = (v0 + 3369);
    v143 = (v0 + 3513);
    sub_10006DEA4();
    v31 = swift_allocError();
    *v32 = 7;
    swift_willThrow();
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 3304) = v31;
    v33 = *(v0 + 3152);
    v34 = *(v0 + 3144);
    v35 = *(v0 + 3136);
    v36 = *(v0 + 3128);
    v37 = *(v0 + 3120);
    v38 = *(v0 + 3112);
    v145 = *(v0 + 3104);
    swift_errorRetain();
    v39 = sub_1000C7C10(v31);
    v131 = v40;
    v133 = v39;
    v127 = v42;
    v129 = v41;
    static Date.now.getter();
    (*(v37 + 104))(v36, enum case for Calendar.Component.hour(_:), v38);
    v43 = sub_100025808(v33, v36);
    v45 = v44;
    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v43;
    }

    v47 = [objc_opt_self() buildVersion];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v0 + 3576) = 1;
    *(v0 + 3488) = 1;
    *(v0 + 3456) = 1;
    *(v0 + 3440) = 1;
    *(v0 + 3416) = 1;
    *(v0 + 464) = 771;
    *(v0 + 466) = *(v0 + 3476);
    *(v0 + 470) = *(v0 + 3480);
    *(v0 + 472) = v133;
    *(v0 + 480) = v131;
    *(v0 + 488) = v129;
    *(v0 + 496) = v127;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v46;
    *(v0 + 528) = v48;
    *(v0 + 536) = v50;
    *(v0 + 544) = 16908800;
    *(v0 + 548) = 514;
    *(v0 + 552) = 0;
    v51 = *(v0 + 3576);
    *(v0 + 560) = v51;
    *(v0 + 561) = *v135;
    *(v0 + 564) = *(v0 + 3404);
    *(v0 + 568) = 0;
    v52 = *(v0 + 3488);
    *(v0 + 576) = v52;
    *(v0 + 577) = 3;
    *(v0 + 578) = *v137;
    *(v0 + 582) = *(v0 + 3486);
    *(v0 + 584) = 0;
    v53 = *(v0 + 3456);
    *(v0 + 592) = v53;
    v54 = *v139;
    *(v0 + 596) = *(v0 + 3420);
    *(v0 + 593) = v54;
    *(v0 + 600) = 0;
    v55 = *(v0 + 3440);
    *(v0 + 608) = v55;
    *(v0 + 609) = 770;
    *(v0 + 615) = *(v0 + 3544);
    *(v0 + 611) = *(v0 + 3540);
    *(v0 + 616) = 0;
    v56 = *(v0 + 3416);
    *(v0 + 624) = v56;
    *(v0 + 625) = *v141;
    *(v0 + 628) = *(v0 + 3372);
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    *(v0 + 655) = *(v0 + 3517);
    *(v0 + 651) = *v143;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 1808) = 771;
    *(v0 + 1814) = *(v0 + 3480);
    *(v0 + 1810) = *(v0 + 3476);
    *(v0 + 1816) = v133;
    *(v0 + 1824) = v131;
    *(v0 + 1832) = v129;
    *(v0 + 1840) = v127;
    *(v0 + 1848) = 0u;
    *(v0 + 1864) = v46;
    *(v0 + 1872) = v48;
    *(v0 + 1880) = v50;
    *(v0 + 1888) = 16908800;
    *(v0 + 1892) = 514;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v51;
    v57 = *v135;
    *(v0 + 1908) = *(v0 + 3404);
    *(v0 + 1905) = v57;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v52;
    *(v0 + 1921) = 3;
    v58 = *v137;
    *(v0 + 1926) = *(v0 + 3486);
    *(v0 + 1922) = v58;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v53;
    v59 = *v139;
    *(v0 + 1940) = *(v0 + 3420);
    *(v0 + 1937) = v59;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v55;
    *(v0 + 1953) = 770;
    v60 = *(v0 + 3540);
    *(v0 + 1959) = *(v0 + 3544);
    *(v0 + 1955) = v60;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v56;
    v61 = *v141;
    *(v0 + 1972) = *(v0 + 3372);
    *(v0 + 1969) = v61;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v62 = *v143;
    *(v0 + 1999) = *(v0 + 3517);
    *(v0 + 1995) = v62;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 464, v0 + 1584);
    sub_10003AE8C(v0 + 1808);
    sub_10000DA7C((v145 + 184), *(v145 + 208));
    v63 = type metadata accessor for SnoutManager();
    v64 = swift_task_alloc();
    *(v0 + 3312) = v64;
    *v64 = v0;
    v64[1] = sub_1000696D0;
    v65 = *(v0 + 3088);
    v66 = v0 + 464;
LABEL_34:

    return (sub_10016E27C)(v66, v65, 0, 0, v63, &off_100223858);
  }

  v117 = *(v0 + 3104);
  v118 = *(v0 + 3088);
  v120 = *v117;
  v119 = v117[1];
  v121 = v117[2];
  v122 = swift_allocObject();
  *(v0 + 3248) = v122;
  *(v122 + 16) = v118;
  v123 = swift_task_alloc();
  *(v0 + 3256) = v123;
  *v123 = v0;
  v123[1] = sub_100067F34;

  return sub_1001107D4(v0 + 2704, sub_10006DE8C, v122, v120, v119, v121);
}

uint64_t sub_100067170()
{
  v2 = *(*v1 + 3200);
  v5 = *v1;
  *(*v1 + 3208) = v0;

  if (v0)
  {
    v3 = sub_10006AD54;
  }

  else
  {
    v3 = sub_1000672B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000672B0()
{
  v1 = (v0 + 3457);
  v31 = (v0 + 3518);
  v32 = (v0 + 3449);
  v33 = (v0 + 3489);
  v34 = (v0 + 3441);
  v35 = (v0 + 3545);
  (*(*(v0 + 3176) + 8))(*(v0 + 3184), *(v0 + 3168));
  sub_10000DB58((v0 + 3040));
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v36 = *(v0 + 3104);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v8 = sub_100025808(v2, v5);
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 512;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v16 = *(v0 + 3560);
  *(v0 + 800) = v16;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v31;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v17 = *(v0 + 3400);
  *(v0 + 816) = v17;
  v18 = *v32;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 3368);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v33;
  *(v0 + 840) = 0;
  v20 = *(v0 + 3384);
  *(v0 + 848) = v20;
  *(v0 + 849) = *v34;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v35;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v11;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = v15;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 512;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v21 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v21;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v16;
  *(v0 + 1473) = 3;
  v22 = *v31;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v22;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v17;
  v23 = *v32;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v23;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v19;
  *(v0 + 1505) = 770;
  v24 = *v33;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v24;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v20;
  v25 = *v34;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v25;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v26 = *v35;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v26;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v36 + 184), *(v36 + 208));
  v27 = type metadata accessor for SnoutManager();
  v28 = swift_task_alloc();
  *(v0 + 3296) = v28;
  *v28 = v0;
  v28[1] = sub_1000694C0;
  v29 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v29, 0, 0, v27, &off_100223858);
}

uint64_t sub_1000677BC()
{
  v2 = *(*v1 + 3216);
  v5 = *v1;
  *(*v1 + 3224) = v0;

  if (v0)
  {
    v3 = sub_10006B368;
  }

  else
  {
    v3 = sub_10006E320;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000678FC()
{
  v2 = *(*v1 + 3232);
  v5 = *v1;
  *(*v1 + 3240) = v0;

  if (v0)
  {
    v3 = sub_10006BEF0;
  }

  else
  {
    v3 = sub_100067A3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100067A3C()
{
  v34 = (v0 + 3441);
  v32 = (v0 + 3449);
  v1 = (v0 + 3457);
  v31 = (v0 + 3518);
  v33 = (v0 + 3489);
  v35 = (v0 + 3545);
  sub_10000DB58((v0 + 3040));
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v36 = *(v0 + 3104);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v8 = sub_100025808(v2, v5);
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 513;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v16 = *(v0 + 3560);
  *(v0 + 800) = v16;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v31;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v17 = *(v0 + 3400);
  *(v0 + 816) = v17;
  v18 = *v32;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 3368);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v33;
  *(v0 + 840) = 0;
  v20 = *(v0 + 3384);
  *(v0 + 848) = v20;
  *(v0 + 849) = *v34;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v35;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v11;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = v15;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 513;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v21 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v21;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v16;
  *(v0 + 1473) = 3;
  v22 = *v31;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v22;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v17;
  v23 = *v32;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v23;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v19;
  *(v0 + 1505) = 770;
  v24 = *v33;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v24;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v20;
  v25 = *v34;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v25;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v26 = *v35;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v26;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v36 + 184), *(v36 + 208));
  v27 = type metadata accessor for SnoutManager();
  v28 = swift_task_alloc();
  *(v0 + 3296) = v28;
  *v28 = v0;
  v28[1] = sub_1000694C0;
  v29 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v29, 0, 0, v27, &off_100223858);
}

uint64_t sub_100067F34()
{
  v2 = *v1;
  v3 = *(*v1 + 3256);
  v7 = *v1;
  *(*v1 + 3264) = v0;

  v4 = *(v2 + 3248);
  if (v0)
  {

    v5 = sub_10006C43C;
  }

  else
  {
    *(v2 + 2896) = *(v2 + 2704);
    *(v2 + 2912) = *(v2 + 2720);
    *(v2 + 2928) = *(v2 + 2736);
    *(v2 + 2944) = *(v2 + 2752);

    v5 = sub_1000680AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000680AC()
{
  v1 = *(v0 + 2736);
  if (v1)
  {
    v2 = *(v0 + 2728);
    v3 = *(v0 + 2744);
    *(v0 + 3584) = *(v0 + 2752);
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 3272) = sub_10000DAC0(v4, qword_10023FCE8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 3088);
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Launching distributor for itemID: %llu", v8, 0xCu);
    }

    v9 = *(v0 + 3584);
    v10 = *(v0 + 2912);
    *(v0 + 2832) = *(v0 + 2896);
    *(v0 + 2848) = v10;
    v11 = *(v0 + 2944);
    *(v0 + 2864) = *(v0 + 2928);
    *(v0 + 2880) = v11;
    sub_10006DEF8(v0 + 2832, v0 + 2768);
    v12 = async function pointer to static AppDistributor.requestProductPage(_:itemID:versionID:)[1];
    v13 = swift_task_alloc();
    *(v0 + 3280) = v13;
    *v13 = v0;
    v13[1] = sub_100068888;
    v14 = *(v0 + 3088);

    return static AppDistributor.requestProductPage(_:itemID:versionID:)(v2, v1, v14, v3, v9);
  }

  else
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000DAC0(v15, qword_10023FCE8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 3088);
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to retrieve app distributor metadata for itemID: %llu", v19, 0xCu);
    }

    v61 = (v0 + 3482);
    v62 = (v0 + 3417);
    v60 = (v0 + 3401);
    v63 = (v0 + 3369);
    v64 = (v0 + 3513);
    sub_10006DEA4();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 3304) = v20;
    v22 = *(v0 + 3152);
    v23 = *(v0 + 3144);
    v24 = *(v0 + 3136);
    v25 = *(v0 + 3128);
    v26 = *(v0 + 3120);
    v27 = *(v0 + 3112);
    v65 = *(v0 + 3104);
    swift_errorRetain();
    v28 = sub_1000C7C10(v20);
    v58 = v29;
    v59 = v28;
    v56 = v31;
    v57 = v30;
    static Date.now.getter();
    (*(v26 + 104))(v25, enum case for Calendar.Component.hour(_:), v27);
    v32 = sub_100025808(v22, v25);
    v34 = v33;
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    v36 = [objc_opt_self() buildVersion];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v0 + 3576) = 1;
    *(v0 + 3488) = 1;
    *(v0 + 3456) = 1;
    *(v0 + 3440) = 1;
    *(v0 + 3416) = 1;
    *(v0 + 464) = 771;
    *(v0 + 466) = *(v0 + 3476);
    *(v0 + 470) = *(v0 + 3480);
    *(v0 + 472) = v59;
    *(v0 + 480) = v58;
    *(v0 + 488) = v57;
    *(v0 + 496) = v56;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v35;
    *(v0 + 528) = v37;
    *(v0 + 536) = v39;
    *(v0 + 544) = 16908800;
    *(v0 + 548) = 514;
    *(v0 + 552) = 0;
    v40 = *(v0 + 3576);
    *(v0 + 560) = v40;
    *(v0 + 561) = *v60;
    *(v0 + 564) = *(v0 + 3404);
    *(v0 + 568) = 0;
    v41 = *(v0 + 3488);
    *(v0 + 576) = v41;
    *(v0 + 577) = 3;
    *(v0 + 578) = *v61;
    *(v0 + 582) = *(v0 + 3486);
    *(v0 + 584) = 0;
    v42 = *(v0 + 3456);
    *(v0 + 592) = v42;
    v43 = *v62;
    *(v0 + 596) = *(v0 + 3420);
    *(v0 + 593) = v43;
    *(v0 + 600) = 0;
    v44 = *(v0 + 3440);
    *(v0 + 608) = v44;
    *(v0 + 609) = 770;
    *(v0 + 615) = *(v0 + 3544);
    *(v0 + 611) = *(v0 + 3540);
    *(v0 + 616) = 0;
    v45 = *(v0 + 3416);
    *(v0 + 624) = v45;
    *(v0 + 625) = *v63;
    *(v0 + 628) = *(v0 + 3372);
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    *(v0 + 655) = *(v0 + 3517);
    *(v0 + 651) = *v64;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 1808) = 771;
    *(v0 + 1814) = *(v0 + 3480);
    *(v0 + 1810) = *(v0 + 3476);
    *(v0 + 1816) = v59;
    *(v0 + 1824) = v58;
    *(v0 + 1832) = v57;
    *(v0 + 1840) = v56;
    *(v0 + 1848) = 0u;
    *(v0 + 1864) = v35;
    *(v0 + 1872) = v37;
    *(v0 + 1880) = v39;
    *(v0 + 1888) = 16908800;
    *(v0 + 1892) = 514;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v40;
    v46 = *v60;
    *(v0 + 1908) = *(v0 + 3404);
    *(v0 + 1905) = v46;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v41;
    *(v0 + 1921) = 3;
    v47 = *v61;
    *(v0 + 1926) = *(v0 + 3486);
    *(v0 + 1922) = v47;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v42;
    v48 = *v62;
    *(v0 + 1940) = *(v0 + 3420);
    *(v0 + 1937) = v48;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v44;
    *(v0 + 1953) = 770;
    v49 = *(v0 + 3540);
    *(v0 + 1959) = *(v0 + 3544);
    *(v0 + 1955) = v49;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v45;
    v50 = *v63;
    *(v0 + 1972) = *(v0 + 3372);
    *(v0 + 1969) = v50;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v51 = *v64;
    *(v0 + 1999) = *(v0 + 3517);
    *(v0 + 1995) = v51;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 464, v0 + 1584);
    sub_10003AE8C(v0 + 1808);
    sub_10000DA7C((v65 + 184), *(v65 + 208));
    v52 = type metadata accessor for SnoutManager();
    v53 = swift_task_alloc();
    *(v0 + 3312) = v53;
    *v53 = v0;
    v53[1] = sub_1000696D0;
    v54 = *(v0 + 3088);

    return (sub_10016E27C)(v0 + 464, v54, 0, 0, v52, &off_100223858);
  }
}

uint64_t sub_100068888()
{
  v2 = *v1;
  v3 = *(*v1 + 3280);
  v6 = *v1;
  *(v2 + 3288) = v0;

  sub_10000DAF8(v2 + 2704, &qword_10023B218, qword_1001B83B0);
  if (v0)
  {
    v4 = sub_100068F68;
  }

  else
  {
    sub_10000DAF8(v2 + 2704, &qword_10023B218, qword_1001B83B0);
    v4 = sub_100068A00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100068A00()
{
  v1 = *(v0 + 3272);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3088);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Distributor launch completed for item ID: %llu", v5, 0xCu);
  }

  v40 = (v0 + 3489);
  v41 = (v0 + 3545);
  v6 = (v0 + 3457);
  v7 = *(v0 + 3152);
  v8 = *(v0 + 3144);
  v37 = (v0 + 3518);
  v38 = (v0 + 3449);
  v39 = (v0 + 3441);
  v9 = *(v0 + 3136);
  v10 = *(v0 + 3128);
  v11 = *(v0 + 3120);
  v12 = *(v0 + 3112);
  v42 = *(v0 + 3104);
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v13 = sub_100025808(v7, v10);
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = [objc_opt_self() buildVersion];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v16;
  *(v0 + 752) = v18;
  *(v0 + 760) = v20;
  *(v0 + 768) = 16908544;
  *(v0 + 772) = 514;
  *(v0 + 776) = 0;
  v21 = *(v0 + 3600);
  *(v0 + 784) = v21;
  *(v0 + 785) = *v6;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v22 = *(v0 + 3560);
  *(v0 + 800) = v22;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v37;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v23 = *(v0 + 3400);
  *(v0 + 816) = v23;
  v24 = *v38;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v24;
  *(v0 + 824) = 0;
  v25 = *(v0 + 3368);
  *(v0 + 832) = v25;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v40;
  *(v0 + 840) = 0;
  v26 = *(v0 + 3384);
  *(v0 + 848) = v26;
  *(v0 + 849) = *v39;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v41;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v16;
  *(v0 + 1424) = v18;
  *(v0 + 1432) = v20;
  *(v0 + 1440) = 16908544;
  *(v0 + 1444) = 514;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = v21;
  v27 = *v6;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v27;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v22;
  *(v0 + 1473) = 3;
  v28 = *v37;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v28;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v23;
  v29 = *v38;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v29;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v25;
  *(v0 + 1505) = 770;
  v30 = *v40;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v30;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v26;
  v31 = *v39;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v31;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v32 = *v41;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v32;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v42 + 184), *(v42 + 208));
  v33 = type metadata accessor for SnoutManager();
  v34 = swift_task_alloc();
  *(v0 + 3296) = v34;
  *v34 = v0;
  v34[1] = sub_1000694C0;
  v35 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_100068F68()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DAF8(v0 + 2704, &qword_10023B218, qword_1001B83B0);
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3288);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908544;
  *(v0 + 548) = 514;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908544;
  *(v0 + 1892) = 514;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager();
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

uint64_t sub_1000694C0()
{
  v1 = *v0;
  v2 = *(*v0 + 3296);
  v4 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_1000695F0, 0, 0);
}

uint64_t sub_1000695F0()
{
  v1 = v0[398];
  v2 = v0[395];
  v3 = v0[394];
  v4 = v0[391];
  sub_10000DAF8((v0 + 370), &qword_10023A7E0, &qword_1001B5850);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000696D0()
{
  v1 = *v0;
  v2 = *(*v0 + 3312);
  v4 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100069800, 0, 0);
}

uint64_t sub_100069800()
{
  v1 = v0[413];
  v2 = v0[398];
  v3 = v0[395];
  v4 = v0[394];
  v5 = v0[391];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[413];

  return v6();
}

uint64_t sub_1000698D0()
{
  v1 = *v0;
  v2 = *(*v0 + 3328);
  v4 = *v0;

  sub_10003AE8C(v1 + 2256);

  return _swift_task_switch(sub_100069A00, 0, 0);
}

uint64_t sub_100069A00()
{
  v1 = *(v0 + 3320);

  sub_100014B50(v0 + 2960, v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 3024))
  {
    v2 = *(v0 + 3176);
    v3 = *(v0 + 3168);
    v4 = *(v0 + 3160);
    v5 = *(v0 + 3096);
    sub_10000DA64((v0 + 3000), v0 + 3040);
    sub_100014B50(v5, v4, &qword_10023C230, &qword_1001B4FB0);
    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_10000DAF8(*(v0 + 3160), &qword_10023C230, &qword_1001B4FB0);
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000DAC0(v6, qword_10023FCE8);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 3088);
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v7, v8, "Launching itemID: %llu", v10, 0xCu);
      }

      v11 = swift_task_alloc();
      *(v0 + 3232) = v11;
      *v11 = v0;
      v11[1] = sub_1000678FC;
      v12 = *(v0 + 3104);
      v13 = *(v0 + 3088);

      return sub_10006D948(v0 + 3040, v13);
    }

    else
    {
      (*(*(v0 + 3176) + 32))(*(v0 + 3184), *(v0 + 3160), *(v0 + 3168));
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      *(v0 + 3192) = sub_10000DAC0(v55, qword_10023FCE8);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 3088);
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        *(v59 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v56, v57, "Opening universal link for app: %llu", v59, 0xCu);
      }

      v60 = *(v0 + 3088);

      v61 = swift_task_alloc();
      if (v60 == 915061776)
      {
        *(v0 + 3200) = v61;
        *v61 = v0;
        v61[1] = sub_100067170;
        v62 = *(v0 + 3104);
        v63 = 0x80000001001CB3C0;
        v64 = *(v0 + 3184);
        v65 = 0xD000000000000012;
        v66 = 1;
      }

      else
      {
        *(v0 + 3216) = v61;
        *v61 = v0;
        v61[1] = sub_1000677BC;
        v74 = *(v0 + 3104);
        v65 = *(v0 + 3088);
        v64 = *(v0 + 3184);
        v63 = 0;
        v66 = 0;
      }

      return sub_10006C9E8(v64, v65, v63, v66);
    }
  }

  else
  {
    v15 = *(v0 + 3088);
    sub_10000DAF8(v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
    if (v15 == 915061776)
    {
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000DAC0(v16, qword_10023FCE8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = 915061776;
        _os_log_impl(&_mh_execute_header, v17, v18, "Distributor launch not valid for itemID: %llu", v19, 0xCu);
      }

      v80 = (v0 + 3482);
      v81 = (v0 + 3417);
      v79 = (v0 + 3401);
      v82 = (v0 + 3369);
      v83 = (v0 + 3513);
      sub_10006DEA4();
      v20 = swift_allocError();
      *v21 = 7;
      swift_willThrow();
      sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
      *(v0 + 3304) = v20;
      v22 = *(v0 + 3152);
      v23 = *(v0 + 3144);
      v24 = *(v0 + 3136);
      v25 = *(v0 + 3128);
      v26 = *(v0 + 3120);
      v27 = *(v0 + 3112);
      v84 = *(v0 + 3104);
      swift_errorRetain();
      v28 = sub_1000C7C10(v20);
      v77 = v29;
      v78 = v28;
      v75 = v31;
      v76 = v30;
      static Date.now.getter();
      (*(v26 + 104))(v25, enum case for Calendar.Component.hour(_:), v27);
      v32 = sub_100025808(v22, v25);
      v34 = v33;
      (*(v26 + 8))(v25, v27);
      (*(v23 + 8))(v22, v24);
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = v32;
      }

      v36 = [objc_opt_self() buildVersion];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v0 + 3576) = 1;
      *(v0 + 3488) = 1;
      *(v0 + 3456) = 1;
      *(v0 + 3440) = 1;
      *(v0 + 3416) = 1;
      *(v0 + 464) = 771;
      *(v0 + 466) = *(v0 + 3476);
      *(v0 + 470) = *(v0 + 3480);
      *(v0 + 472) = v78;
      *(v0 + 480) = v77;
      *(v0 + 488) = v76;
      *(v0 + 496) = v75;
      *(v0 + 504) = 0u;
      *(v0 + 520) = v35;
      *(v0 + 528) = v37;
      *(v0 + 536) = v39;
      *(v0 + 544) = 16908800;
      *(v0 + 548) = 514;
      *(v0 + 552) = 0;
      v40 = *(v0 + 3576);
      *(v0 + 560) = v40;
      *(v0 + 561) = *v79;
      *(v0 + 564) = *(v0 + 3404);
      *(v0 + 568) = 0;
      v41 = *(v0 + 3488);
      *(v0 + 576) = v41;
      *(v0 + 577) = 3;
      *(v0 + 578) = *v80;
      *(v0 + 582) = *(v0 + 3486);
      *(v0 + 584) = 0;
      v42 = *(v0 + 3456);
      *(v0 + 592) = v42;
      v43 = *v81;
      *(v0 + 596) = *(v0 + 3420);
      *(v0 + 593) = v43;
      *(v0 + 600) = 0;
      v44 = *(v0 + 3440);
      *(v0 + 608) = v44;
      *(v0 + 609) = 770;
      *(v0 + 615) = *(v0 + 3544);
      *(v0 + 611) = *(v0 + 3540);
      *(v0 + 616) = 0;
      v45 = *(v0 + 3416);
      *(v0 + 624) = v45;
      *(v0 + 625) = *v82;
      *(v0 + 628) = *(v0 + 3372);
      *(v0 + 632) = 0u;
      *(v0 + 648) = 514;
      *(v0 + 650) = 2;
      *(v0 + 655) = *(v0 + 3517);
      *(v0 + 651) = *v83;
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      *(v0 + 1808) = 771;
      *(v0 + 1814) = *(v0 + 3480);
      *(v0 + 1810) = *(v0 + 3476);
      *(v0 + 1816) = v78;
      *(v0 + 1824) = v77;
      *(v0 + 1832) = v76;
      *(v0 + 1840) = v75;
      *(v0 + 1848) = 0u;
      *(v0 + 1864) = v35;
      *(v0 + 1872) = v37;
      *(v0 + 1880) = v39;
      *(v0 + 1888) = 16908800;
      *(v0 + 1892) = 514;
      *(v0 + 1896) = 0;
      *(v0 + 1904) = v40;
      v46 = *v79;
      *(v0 + 1908) = *(v0 + 3404);
      *(v0 + 1905) = v46;
      *(v0 + 1912) = 0;
      *(v0 + 1920) = v41;
      *(v0 + 1921) = 3;
      v47 = *v80;
      *(v0 + 1926) = *(v0 + 3486);
      *(v0 + 1922) = v47;
      *(v0 + 1928) = 0;
      *(v0 + 1936) = v42;
      v48 = *v81;
      *(v0 + 1940) = *(v0 + 3420);
      *(v0 + 1937) = v48;
      *(v0 + 1944) = 0;
      *(v0 + 1952) = v44;
      *(v0 + 1953) = 770;
      v49 = *(v0 + 3540);
      *(v0 + 1959) = *(v0 + 3544);
      *(v0 + 1955) = v49;
      *(v0 + 1960) = 0;
      *(v0 + 1968) = v45;
      v50 = *v82;
      *(v0 + 1972) = *(v0 + 3372);
      *(v0 + 1969) = v50;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 514;
      *(v0 + 1994) = 2;
      v51 = *v83;
      *(v0 + 1999) = *(v0 + 3517);
      *(v0 + 1995) = v51;
      *(v0 + 2016) = 0u;
      *(v0 + 2000) = 0u;
      sub_100010568(v0 + 464, v0 + 1584);
      sub_10003AE8C(v0 + 1808);
      sub_10000DA7C((v84 + 184), *(v84 + 208));
      v52 = type metadata accessor for SnoutManager();
      v53 = swift_task_alloc();
      *(v0 + 3312) = v53;
      *v53 = v0;
      v53[1] = sub_1000696D0;
      v54 = *(v0 + 3088);

      return (sub_10016E27C)(v0 + 464, v54, 0, 0, v52, &off_100223858);
    }

    else
    {
      v67 = *(v0 + 3104);
      v68 = *(v0 + 3088);
      v70 = *v67;
      v69 = v67[1];
      v71 = v67[2];
      v72 = swift_allocObject();
      *(v0 + 3248) = v72;
      *(v72 + 16) = v68;
      v73 = swift_task_alloc();
      *(v0 + 3256) = v73;
      *v73 = v0;
      v73[1] = sub_100067F34;

      return sub_1001107D4(v0 + 2704, sub_10006DE8C, v72, v70, v69, v71);
    }
  }
}

uint64_t sub_10006A570()
{
  v1 = *v0;
  v2 = *(*v0 + 3344);
  v3 = *v0;

  sub_10003AE8C((v1 + 254));
  v4 = swift_task_alloc();
  v1[419] = v4;
  *v4 = v3;
  v4[1] = sub_10006A700;
  v5 = v1[388];
  v6 = v1[386];

  return sub_10006D948((v1 + 380), v6);
}

uint64_t sub_10006A700()
{
  v2 = *(*v1 + 3352);
  v5 = *v1;
  *(*v1 + 3360) = v0;

  if (v0)
  {
    v3 = sub_10006B97C;
  }

  else
  {
    v3 = sub_10006A840;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006A840()
{
  v1 = (v0 + 3457);
  v32 = (v0 + 3518);
  v33 = (v0 + 3449);
  v34 = (v0 + 3489);
  v35 = (v0 + 3441);
  v36 = (v0 + 3545);
  v2 = *(v0 + 3336);

  (*(*(v0 + 3176) + 8))(*(v0 + 3184), *(v0 + 3168));
  sub_10000DB58((v0 + 3040));
  v3 = *(v0 + 3152);
  v4 = *(v0 + 3144);
  v5 = *(v0 + 3136);
  v6 = *(v0 + 3128);
  v7 = *(v0 + 3120);
  v8 = *(v0 + 3112);
  v37 = *(v0 + 3104);
  static Date.now.getter();
  (*(v7 + 104))(v6, enum case for Calendar.Component.hour(_:), v8);
  v9 = sub_100025808(v3, v6);
  v11 = v10;
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = [objc_opt_self() buildVersion];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v12;
  *(v0 + 752) = v14;
  *(v0 + 760) = v16;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 513;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v17 = *(v0 + 3560);
  *(v0 + 800) = v17;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v32;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v18 = *(v0 + 3400);
  *(v0 + 816) = v18;
  v19 = *v33;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v19;
  *(v0 + 824) = 0;
  v20 = *(v0 + 3368);
  *(v0 + 832) = v20;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v34;
  *(v0 + 840) = 0;
  v21 = *(v0 + 3384);
  *(v0 + 848) = v21;
  *(v0 + 849) = *v35;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v36;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v12;
  *(v0 + 1424) = v14;
  *(v0 + 1432) = v16;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 513;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v22 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v22;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v17;
  *(v0 + 1473) = 3;
  v23 = *v32;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v23;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v18;
  v24 = *v33;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v24;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v20;
  *(v0 + 1505) = 770;
  v25 = *v34;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v25;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v21;
  v26 = *v35;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v26;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v27 = *v36;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v27;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v37 + 184), *(v37 + 208));
  v28 = type metadata accessor for SnoutManager();
  v29 = swift_task_alloc();
  *(v0 + 3296) = v29;
  *v29 = v0;
  v29[1] = sub_1000694C0;
  v30 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v30, 0, 0, v28, &off_100223858);
}

uint64_t sub_10006AD54()
{
  v1 = *(v0 + 3208);
  *(v0 + 3336) = v1;
  v2 = *(v0 + 3192);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to open universal link with error: %@. Falling back to regular app open", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v50 = (v0 + 3535);
  v51 = (v0 + 3530);
  v46 = (v0 + 3425);
  v47 = (v0 + 3494);
  v8 = *(v0 + 3152);
  v9 = *(v0 + 3144);
  v48 = (v0 + 3409);
  v49 = (v0 + 3393);
  v10 = *(v0 + 3136);
  v11 = *(v0 + 3128);
  v12 = *(v0 + 3120);
  v13 = *(v0 + 3112);
  v52 = *(v0 + 3104);

  swift_errorRetain();
  v14 = sub_1000C7C10(v1);
  v44 = v15;
  v45 = v14;
  v42 = v17;
  v43 = v16;
  static Date.now.getter();
  (*(v12 + 104))(v11, enum case for Calendar.Component.hour(_:), v13);
  v18 = sub_100025808(v8, v11);
  v20 = v19;
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 3432) = 1;
  *(v0 + 3448) = 1;
  *(v0 + 3464) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3568) = 1;
  *(v0 + 2032) = 771;
  *(v0 + 2034) = *(v0 + 3500);
  *(v0 + 2038) = *(v0 + 3504);
  *(v0 + 2040) = v45;
  *(v0 + 2048) = v44;
  *(v0 + 2056) = v43;
  *(v0 + 2064) = v42;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v21;
  *(v0 + 2096) = v23;
  *(v0 + 2104) = v25;
  *(v0 + 2112) = 16908288;
  *(v0 + 2116) = 512;
  *(v0 + 2120) = 0;
  v26 = *(v0 + 3432);
  *(v0 + 2128) = v26;
  *(v0 + 2129) = *v46;
  *(v0 + 2132) = *(v0 + 3428);
  *(v0 + 2136) = 0;
  v27 = *(v0 + 3448);
  *(v0 + 2144) = v27;
  *(v0 + 2145) = 3;
  *(v0 + 2146) = *v47;
  *(v0 + 2150) = *(v0 + 3498);
  *(v0 + 2152) = 0;
  v28 = *(v0 + 3464);
  *(v0 + 2160) = v28;
  v29 = *v48;
  *(v0 + 2164) = *(v0 + 3412);
  *(v0 + 2161) = v29;
  *(v0 + 2168) = 0;
  v30 = *(v0 + 3512);
  *(v0 + 2176) = v30;
  *(v0 + 2177) = 770;
  *(v0 + 2183) = *(v0 + 3539);
  *(v0 + 2179) = *v50;
  *(v0 + 2184) = 0;
  v31 = *(v0 + 3568);
  *(v0 + 2192) = v31;
  *(v0 + 2193) = *v49;
  *(v0 + 2196) = *(v0 + 3396);
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  *(v0 + 2223) = *(v0 + 3534);
  *(v0 + 2219) = *v51;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = 0u;
  *(v0 + 912) = 771;
  *(v0 + 918) = *(v0 + 3504);
  *(v0 + 914) = *(v0 + 3500);
  *(v0 + 920) = v45;
  *(v0 + 928) = v44;
  *(v0 + 936) = v43;
  *(v0 + 944) = v42;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v21;
  *(v0 + 976) = v23;
  *(v0 + 984) = v25;
  *(v0 + 992) = 16908288;
  *(v0 + 996) = 512;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v26;
  v32 = *v46;
  *(v0 + 1012) = *(v0 + 3428);
  *(v0 + 1009) = v32;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = v27;
  *(v0 + 1025) = 3;
  v33 = *v47;
  *(v0 + 1030) = *(v0 + 3498);
  *(v0 + 1026) = v33;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v28;
  v34 = *v48;
  *(v0 + 1044) = *(v0 + 3412);
  *(v0 + 1041) = v34;
  *(v0 + 1048) = 0;
  *(v0 + 1056) = v30;
  *(v0 + 1057) = 770;
  v35 = *v50;
  *(v0 + 1063) = *(v0 + 3539);
  *(v0 + 1059) = v35;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = v31;
  v36 = *v49;
  *(v0 + 1076) = *(v0 + 3396);
  *(v0 + 1073) = v36;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v37 = *v51;
  *(v0 + 1103) = *(v0 + 3534);
  *(v0 + 1099) = v37;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  sub_100010568(v0 + 2032, v0 + 16);
  sub_10003AE8C(v0 + 912);
  sub_10000DA7C((v52 + 184), *(v52 + 208));
  v38 = type metadata accessor for SnoutManager();
  v39 = swift_task_alloc();
  *(v0 + 3344) = v39;
  *v39 = v0;
  v39[1] = sub_10006A570;
  v40 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 2032, v40, 0, 0, v38, &off_100223858);
}

uint64_t sub_10006B368()
{
  v1 = *(v0 + 3224);
  *(v0 + 3336) = v1;
  v2 = *(v0 + 3192);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to open universal link with error: %@. Falling back to regular app open", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v50 = (v0 + 3535);
  v51 = (v0 + 3530);
  v46 = (v0 + 3425);
  v47 = (v0 + 3494);
  v8 = *(v0 + 3152);
  v9 = *(v0 + 3144);
  v48 = (v0 + 3409);
  v49 = (v0 + 3393);
  v10 = *(v0 + 3136);
  v11 = *(v0 + 3128);
  v12 = *(v0 + 3120);
  v13 = *(v0 + 3112);
  v52 = *(v0 + 3104);

  swift_errorRetain();
  v14 = sub_1000C7C10(v1);
  v44 = v15;
  v45 = v14;
  v42 = v17;
  v43 = v16;
  static Date.now.getter();
  (*(v12 + 104))(v11, enum case for Calendar.Component.hour(_:), v13);
  v18 = sub_100025808(v8, v11);
  v20 = v19;
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 3432) = 1;
  *(v0 + 3448) = 1;
  *(v0 + 3464) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3568) = 1;
  *(v0 + 2032) = 771;
  *(v0 + 2034) = *(v0 + 3500);
  *(v0 + 2038) = *(v0 + 3504);
  *(v0 + 2040) = v45;
  *(v0 + 2048) = v44;
  *(v0 + 2056) = v43;
  *(v0 + 2064) = v42;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v21;
  *(v0 + 2096) = v23;
  *(v0 + 2104) = v25;
  *(v0 + 2112) = 16908288;
  *(v0 + 2116) = 512;
  *(v0 + 2120) = 0;
  v26 = *(v0 + 3432);
  *(v0 + 2128) = v26;
  *(v0 + 2129) = *v46;
  *(v0 + 2132) = *(v0 + 3428);
  *(v0 + 2136) = 0;
  v27 = *(v0 + 3448);
  *(v0 + 2144) = v27;
  *(v0 + 2145) = 3;
  *(v0 + 2146) = *v47;
  *(v0 + 2150) = *(v0 + 3498);
  *(v0 + 2152) = 0;
  v28 = *(v0 + 3464);
  *(v0 + 2160) = v28;
  v29 = *v48;
  *(v0 + 2164) = *(v0 + 3412);
  *(v0 + 2161) = v29;
  *(v0 + 2168) = 0;
  v30 = *(v0 + 3512);
  *(v0 + 2176) = v30;
  *(v0 + 2177) = 770;
  *(v0 + 2183) = *(v0 + 3539);
  *(v0 + 2179) = *v50;
  *(v0 + 2184) = 0;
  v31 = *(v0 + 3568);
  *(v0 + 2192) = v31;
  *(v0 + 2193) = *v49;
  *(v0 + 2196) = *(v0 + 3396);
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  *(v0 + 2223) = *(v0 + 3534);
  *(v0 + 2219) = *v51;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = 0u;
  *(v0 + 912) = 771;
  *(v0 + 918) = *(v0 + 3504);
  *(v0 + 914) = *(v0 + 3500);
  *(v0 + 920) = v45;
  *(v0 + 928) = v44;
  *(v0 + 936) = v43;
  *(v0 + 944) = v42;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v21;
  *(v0 + 976) = v23;
  *(v0 + 984) = v25;
  *(v0 + 992) = 16908288;
  *(v0 + 996) = 512;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v26;
  v32 = *v46;
  *(v0 + 1012) = *(v0 + 3428);
  *(v0 + 1009) = v32;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = v27;
  *(v0 + 1025) = 3;
  v33 = *v47;
  *(v0 + 1030) = *(v0 + 3498);
  *(v0 + 1026) = v33;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v28;
  v34 = *v48;
  *(v0 + 1044) = *(v0 + 3412);
  *(v0 + 1041) = v34;
  *(v0 + 1048) = 0;
  *(v0 + 1056) = v30;
  *(v0 + 1057) = 770;
  v35 = *v50;
  *(v0 + 1063) = *(v0 + 3539);
  *(v0 + 1059) = v35;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = v31;
  v36 = *v49;
  *(v0 + 1076) = *(v0 + 3396);
  *(v0 + 1073) = v36;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v37 = *v51;
  *(v0 + 1103) = *(v0 + 3534);
  *(v0 + 1099) = v37;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  sub_100010568(v0 + 2032, v0 + 16);
  sub_10003AE8C(v0 + 912);
  sub_10000DA7C((v52 + 184), *(v52 + 208));
  v38 = type metadata accessor for SnoutManager();
  v39 = swift_task_alloc();
  *(v0 + 3344) = v39;
  *v39 = v0;
  v39[1] = sub_10006A570;
  v40 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 2032, v40, 0, 0, v38, &off_100223858);
}

uint64_t sub_10006B97C()
{
  v45 = (v0 + 3417);
  v46 = (v0 + 3369);
  v43 = (v0 + 3401);
  v44 = (v0 + 3482);
  v47 = (v0 + 3513);
  v1 = *(v0 + 3336);
  v2 = *(v0 + 3184);
  v3 = *(v0 + 3176);
  v4 = *(v0 + 3168);

  (*(v3 + 8))(v2, v4);
  sub_10000DB58((v0 + 3040));
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v5 = *(v0 + 3360);
  *(v0 + 3304) = v5;
  v6 = *(v0 + 3152);
  v7 = *(v0 + 3144);
  v8 = *(v0 + 3136);
  v9 = *(v0 + 3128);
  v10 = *(v0 + 3120);
  v11 = *(v0 + 3112);
  v48 = *(v0 + 3104);
  swift_errorRetain();
  v12 = sub_1000C7C10(v5);
  v41 = v13;
  v42 = v12;
  v39 = v15;
  v40 = v14;
  static Date.now.getter();
  (*(v10 + 104))(v9, enum case for Calendar.Component.hour(_:), v11);
  v16 = sub_100025808(v6, v9);
  LOBYTE(v4) = v17;
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  if (v4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = [objc_opt_self() buildVersion];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v42;
  *(v0 + 480) = v41;
  *(v0 + 488) = v40;
  *(v0 + 496) = v39;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v18;
  *(v0 + 528) = v20;
  *(v0 + 536) = v22;
  *(v0 + 544) = 16908288;
  *(v0 + 548) = 513;
  *(v0 + 552) = 0;
  v23 = *(v0 + 3576);
  *(v0 + 560) = v23;
  *(v0 + 561) = *v43;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v24 = *(v0 + 3488);
  *(v0 + 576) = v24;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v44;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v25 = *(v0 + 3456);
  *(v0 + 592) = v25;
  v26 = *v45;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v26;
  *(v0 + 600) = 0;
  v27 = *(v0 + 3440);
  *(v0 + 608) = v27;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v28 = *(v0 + 3416);
  *(v0 + 624) = v28;
  *(v0 + 625) = *v46;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v47;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v42;
  *(v0 + 1824) = v41;
  *(v0 + 1832) = v40;
  *(v0 + 1840) = v39;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v18;
  *(v0 + 1872) = v20;
  *(v0 + 1880) = v22;
  *(v0 + 1888) = 16908288;
  *(v0 + 1892) = 513;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v23;
  v29 = *v43;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v29;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v24;
  *(v0 + 1921) = 3;
  v30 = *v44;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v30;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v25;
  v31 = *v45;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v31;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v27;
  *(v0 + 1953) = 770;
  v32 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v32;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v28;
  v33 = *v46;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v33;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v34 = *v47;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v34;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v48 + 184), *(v48 + 208));
  v35 = type metadata accessor for SnoutManager();
  v36 = swift_task_alloc();
  *(v0 + 3312) = v36;
  *v36 = v0;
  v36[1] = sub_1000696D0;
  v37 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v37, 0, 0, v35, &off_100223858);
}

uint64_t sub_10006BEF0()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DB58((v0 + 3040));
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3240);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908288;
  *(v0 + 548) = 513;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908288;
  *(v0 + 1892) = 513;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager();
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

uint64_t sub_10006C43C()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3264);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908800;
  *(v0 + 548) = 514;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908800;
  *(v0 + 1892) = 514;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager();
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

void sub_10006C97C(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000ED7C4(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10006C9E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 528) = a4;
  *(v4 + 456) = a2;
  *(v4 + 464) = a3;
  v6 = swift_task_alloc();
  *(v4 + 472) = v6;
  *v6 = v4;
  v6[1] = sub_10006CA98;

  return sub_1000E5C08(a1);
}

uint64_t sub_10006CA98(uint64_t a1)
{
  v3 = *(*v2 + 472);
  v4 = *v2;
  *(v4 + 480) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10006CBCC, 0, 0);
  }
}

uint64_t sub_10006CBCC()
{
  if (qword_100239CE8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = type metadata accessor for Logger();
  *(v0 + 488) = sub_10000DAC0(v2, qword_10023FCE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 480);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Found %ld matching app links for url", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 480);
  }

  v9 = *(v0 + 480);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v23 = *(v0 + 480);

    sub_10006DEA4();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    goto LABEL_47;
  }

  if (*(v0 + 528))
  {
    v11 = 0;
    v12 = *(v0 + 464);
    v13 = v9 + 32;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_51;
      }

      sub_10000CE28(v13, v0 + 256);
      v14 = *(v0 + 280);
      v15 = *(v0 + 288);
      sub_10000DA7C((v0 + 256), v14);
      (*(v15 + 8))(v14, v15);
      v16 = *(v0 + 320);
      v17 = *(v0 + 328);
      sub_10000DA7C((v0 + 296), v16);
      v18 = (*(v17 + 24))(v16, v17);
      if (v19)
      {
        if (v18 == *(v0 + 456) && v19 == *(v0 + 464))
        {
          v44 = *(v0 + 480);

          sub_10000DB58((v0 + 296));
LABEL_30:

          sub_10000DA64((v0 + 256), v0 + 216);
LABEL_31:
          sub_100014B50(v0 + 216, v0 + 376, &qword_10023B320, &qword_1001B84B8);
          if (!*(v0 + 400))
          {
            sub_10000DAF8(v0 + 376, &qword_10023B320, &qword_1001B84B8);
            sub_10006DEA4();
            swift_allocError();
            *v51 = 6;
            swift_willThrow();
            v43 = v0 + 216;
            goto LABEL_37;
          }

          sub_10000DA64((v0 + 376), v0 + 336);
          v45 = *(v0 + 360);
          v46 = *(v0 + 368);
          sub_10000DA7C((v0 + 336), v45);
          (*(v46 + 8))(v45, v46);
          v47 = *(v0 + 440);
          v48 = *(v0 + 448);
          sub_10000DA7C((v0 + 416), v47);
          v49 = (*(v48 + 24))(v47, v48);
          if (v50)
          {
            if (v49 == 0xD000000000000012 && v50 == 0x80000001001CB3C0)
            {

              sub_10000DB58((v0 + 416));
LABEL_40:
              v35 = *(v0 + 360);
              v36 = *(v0 + 368);
              sub_10000DA7C((v0 + 336), v35);
              v53 = *(v36 + 16);
              v61 = (v53 + *v53);
              v54 = v53[1];
              v39 = swift_task_alloc();
              *(v0 + 496) = v39;
              *v39 = v0;
              v40 = sub_10006D418;
              goto LABEL_41;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000DB58((v0 + 416));
            if (v52)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_10000DB58((v0 + 416));
          }

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "App link bundle ID does not match target bundle ID", v58, 2u);
          }

          sub_10006DEA4();
          swift_allocError();
          *v59 = 8;
          swift_willThrow();
          sub_10000DAF8(v0 + 216, &qword_10023B320, &qword_1001B84B8);
          sub_10000DB58((v0 + 336));
LABEL_47:
          v60 = *(v0 + 8);

          return v60();
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000DB58((v0 + 296));
        if (v21)
        {
          v22 = *(v0 + 480);
          goto LABEL_30;
        }
      }

      else
      {
        sub_10000DB58((v0 + 296));
      }

      ++v11;
      sub_10000DB58((v0 + 256));
      v13 += 40;
      if (v10 == v11)
      {
        v41 = *(v0 + 480);

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;
        goto LABEL_31;
      }
    }
  }

  v25 = 0;
  v26 = v9 + 32;
  while (1)
  {
    if (v25 >= *(v9 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v27 = *(v0 + 456);
    sub_10000CE28(v26, v0 + 56);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    sub_10000DA7C((v0 + 56), v28);
    (*(v29 + 8))(v28, v29);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    sub_10000DA7C((v0 + 96), v30);
    v32 = (*(v31 + 16))(v30, v31);
    sub_10000DB58((v0 + 96));
    if (v32 == v27)
    {
      break;
    }

    ++v25;
    sub_10000DB58((v0 + 56));
    v26 += 40;
    if (v10 == v25)
    {
      v33 = *(v0 + 480);

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      goto LABEL_25;
    }
  }

  v34 = *(v0 + 480);

  sub_10000DA64((v0 + 56), v0 + 16);
LABEL_25:
  sub_100014B50(v0 + 16, v0 + 176, &qword_10023B320, &qword_1001B84B8);
  if (!*(v0 + 200))
  {
    sub_10000DAF8(v0 + 176, &qword_10023B320, &qword_1001B84B8);
    sub_10006DEA4();
    swift_allocError();
    *v42 = 6;
    swift_willThrow();
    v43 = v0 + 16;
LABEL_37:
    sub_10000DAF8(v43, &qword_10023B320, &qword_1001B84B8);
    goto LABEL_47;
  }

  sub_10000DA64((v0 + 176), v0 + 136);
  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  sub_10000DA7C((v0 + 136), v35);
  v37 = *(v36 + 16);
  v61 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 512) = v39;
  *v39 = v0;
  v40 = sub_10006D634;
LABEL_41:
  v39[1] = v40;

  return v61(v35, v36);
}

uint64_t sub_10006D418(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 496);
  v7 = *v2;
  *(v3 + 529) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v5 = sub_10006D850;
  }

  else
  {
    v5 = sub_10006D530;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006D530()
{
  v1 = *(v0 + 488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 529);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opened App Store universal link with result: %{BOOL}d", v5, 8u);
  }

  sub_10000DAF8(v0 + 216, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v0 + 336));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006D634(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 512);
  v7 = *v2;
  *(v3 + 530) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v5 = sub_10006D8CC;
  }

  else
  {
    v5 = sub_10006D74C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006D74C()
{
  v1 = *(v0 + 488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 530);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opened universal link with result: %{BOOL}d", v5, 8u);
  }

  sub_10000DAF8(v0 + 16, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v0 + 136));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006D850()
{
  sub_10000DAF8((v0 + 27), &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58(v0 + 42);
  v1 = v0[63];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10006D8CC()
{
  sub_10000DAF8((v0 + 2), &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58(v0 + 17);
  v1 = v0[65];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10006D948(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10006D96C, 0, 0);
}

uint64_t sub_10006D96C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[4];
    v9 = [objc_allocWithZone(_LSOpenConfiguration) init];
    v0[6] = v9;
    v10 = *sub_10000DA7C((v8 + 64), *(v8 + 88));
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_10006DBB8;

    return sub_1000E57D4(v6, v7, v9, v10);
  }

  else
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000DAC0(v13, qword_10023FCE8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[3];
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve bundleID for itemID: %llu", v17, 0xCu);
    }

    sub_10006DEA4();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10006DBB8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10006DE18;
  }

  else
  {
    v4 = sub_10006DCE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006DCE8()
{
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "App launch completed for item ID: %llu", v5, 0xCu);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006DE18()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10006DEA4()
{
  result = qword_10023B310;
  if (!qword_10023B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B310);
  }

  return result;
}

unint64_t sub_10006DF54()
{
  result = qword_10023B318;
  if (!qword_10023B318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023B318);
  }

  return result;
}

double sub_10006DFA0@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  result = sub_100060FB4(v8);
  if (!v2)
  {
    v6 = v8[1];
    *a1 = v8[0];
    a1[1] = v6;
    result = *&v9;
    v7 = v10;
    a1[2] = v9;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10006DFF0()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for SnoutEvent.ResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEvent.ResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10006E194(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10006E1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_10006E218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006E2A0(uint64_t a1)
{
  result = sub_10006DEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006E2CC()
{
  result = qword_10023B330[0];
  if (!qword_10023B330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023B330);
  }

  return result;
}

uint64_t sub_10006E320()
{

  return sub_1000672B0();
}

uint64_t sub_10006E3C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10006E444()
{
  v1[31] = v0;
  Task = type metadata accessor for PostbackFetchTask();
  v1[32] = Task;
  v3 = *(*(Task - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[34] = v4;
  v5 = *(v4 - 8);
  v1[35] = v5;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v7 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10006E584, 0, 0);
}

uint64_t sub_10006E584()
{
  sub_10000DA7C((v0[31] + 160), *(v0[31] + 184));
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_10006E62C;
  v2 = v0[38];

  return sub_100157BD8(v2, 11);
}

uint64_t sub_10006E62C()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_10006E728, 0, 0);
}

uint64_t sub_10006E728()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 312);
  if (v5 == 1)
  {
    v7 = *(v0 + 312);
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10001B884(*(v0 + 304));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 312), v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v8 = *(v0 + 296);
  v9 = *(v0 + 272);
  sub_10001B8EC(*(v0 + 312), v8);
  if (v4(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 312);
    sub_10001B884(*(v0 + 296));
    sub_10001B95C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    sub_10001B884(v10);
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v16 = *(v0 + 264);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 288);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    (*(v21 + 32))(v19, *(v0 + 296), v20);
    (*(v21 + 16))(v22, v19, v20);
    v26 = *(v24 + 1);
    v25 = *(v24 + 2);
    *(v0 + 16) = *v24;
    *(v0 + 32) = v26;
    *(v0 + 48) = v25;
    v28 = *(v24 + 4);
    v27 = *(v24 + 5);
    v29 = *(v24 + 3);
    *(v0 + 111) = *(v24 + 95);
    *(v0 + 80) = v28;
    *(v0 + 96) = v27;
    *(v0 + 64) = v29;
    v30 = *(v24 + 13);
    v31 = *(v24 + 14);
    v32 = *(v24 + 15);
    v33 = *(v24 + 16);
    v34 = *(v24 + 17);
    v39 = *(v24 + 9);
    memmove((v22 + v23[5]), v24, 0x63uLL);
    *(v22 + v23[6]) = v30;
    *(v22 + v23[7]) = _swiftEmptyArrayStorage;
    v35 = (v22 + v23[8]);
    *v35 = v31;
    v35[1] = v32;
    *(v22 + v23[9]) = v39;
    *(v22 + v23[10]) = 2;
    v36 = (v22 + v23[11]);
    *v36 = v33;
    v36[1] = v34;
    sub_10001B9B0(v0 + 16, v0 + 120);

    v37 = swift_task_alloc();
    *(v0 + 328) = v37;
    *v37 = v0;
    v37[1] = sub_10001B2D4;
    v38 = *(v0 + 264);

    return sub_10007CF2C();
  }
}

uint64_t sub_10006EA88(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001B760;

  return sub_10006E444();
}

__n128 sub_10006EB18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10006EB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_10006EBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006EC24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006EC6C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

id sub_10006EE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversionHistoryEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10006EEC4()
{
  result = qword_10023B3F8;
  if (!qword_10023B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B3F8);
  }

  return result;
}

unint64_t sub_10006EF3C()
{
  result = qword_10023B418;
  if (!qword_10023B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B418);
  }

  return result;
}

Swift::Int sub_10006EF90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 17400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10006EFE0()
{
  if (*v0)
  {
    v1 = 17400;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006F018()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 17400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10006F064@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 17400)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_10006F088(uint64_t *a1@<X8>)
{
  v2 = 17400;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_10006F0B0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    v3 = [type metadata accessor for ItemIdentifierBundleIDMapEntity() databaseTable];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006F35C(v4, v6);

    v7 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a2, v7);
  }
}

unint64_t sub_10006F168(void *a1)
{
  a1[1] = sub_10006F1A0();
  a1[2] = sub_10006F1F4();
  result = sub_10006F248();
  a1[3] = result;
  return result;
}

unint64_t sub_10006F1A0()
{
  result = qword_10023B460;
  if (!qword_10023B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B460);
  }

  return result;
}

unint64_t sub_10006F1F4()
{
  result = qword_10023B468;
  if (!qword_10023B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B468);
  }

  return result;
}

unint64_t sub_10006F248()
{
  result = qword_10023B470;
  if (!qword_10023B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B470);
  }

  return result;
}

unint64_t sub_10006F2A0()
{
  result = qword_10023B478;
  if (!qword_10023B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B478);
  }

  return result;
}

unint64_t sub_10006F2F8()
{
  result = qword_10023B480;
  if (!qword_10023B480)
  {
    sub_10000CCC0(&qword_10023B488, &qword_1001B8A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B480);
  }

  return result;
}

uint64_t sub_10006F35C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(89);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64695F6D657469;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x52454745544E4920;
  v8._object = 0xEA00000000000A2CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x695F656C646E7562;
  v9._object = 0xE900000000000064;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x550A2C5458455420;
  v10._object = 0xEE0028455551494ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x64695F6D657469;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x695F656C646E7562;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._object = 0x80000001001CB550;
  v14._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v14);
  return 0;
}

unint64_t sub_10006F4EC()
{
  result = qword_10023B490;
  if (!qword_10023B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B490);
  }

  return result;
}

unint64_t sub_10006F544()
{
  result = qword_10023B498;
  if (!qword_10023B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B498);
  }

  return result;
}

unint64_t sub_10006F598(uint64_t a1)
{
  *(a1 + 8) = sub_10003BBCC();
  result = sub_10006F5C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006F5C8()
{
  result = qword_10023B4E8;
  if (!qword_10023B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4E8);
  }

  return result;
}

unint64_t sub_10006F620(char a1)
{
  result = 0x656B636F6C5F7369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7265747369676572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6D69745F6B636F6CLL;
      break;
    case 8:
      result = 0x69745F6863746566;
      break;
    case 9:
      result = 0x63616274736F6867;
      break;
    case 10:
    case 14:
      result = 0x69737265766E6F63;
      break;
    case 11:
      result = 0x6D6E6F7269766E65;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6C7074656B72616DLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10006F850(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10006F620(*a1);
  v5 = v4;
  if (v3 == sub_10006F620(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10006F8D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006F620(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006F93C()
{
  sub_10006F620(*v0);
  String.hash(into:)();
}

Swift::Int sub_10006F990()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006F620(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10006F9F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000707BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006FA20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10006F620(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10006FA68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000707BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006FAAC(uint64_t a1)
{
  v2 = sub_10006F544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006FAE8(uint64_t a1)
{
  v2 = sub_10006F544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FB24()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v14 - v8;
  if (!*(v0 + 136))
  {
    static Date.now.getter();
    if ((sub_1000BAF6C(*(v0 + 73)) & 0x100000000) != 0)
    {
      arc4random_uniform(0x15180u);
    }

    Date.addingTimeInterval(_:)();
    v10 = *(v2 + 8);
    v10(v6, v1);
    Date.timeIntervalSince1970.getter();
    v12 = v11;
    result = (v10)(v9, v1);
    v13 = v12 * 1000.0;
    if (COERCE__INT64(fabs(v12 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -1.0)
    {
      if (v13 < 1.84467441e19)
      {
        *(v0 + 136) = v13;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10006FCD8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v4);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = *(v2 + 96) / 1000.0;
  Date.init(timeIntervalSince1970:)();
  v19 = *(v2 + 72);
  v20 = *(type metadata accessor for PostbackUpdateData() + 32);
  v21 = v19;
  v22 = v10;
  ConversionType.isInstall.getter(v21);
  v51 = v17;
  Date.addingTimeInterval(_:)();
  sub_100070F78();
  LOBYTE(v17) = dispatch thunk of static Comparable.< infix(_:_:)();
  v23 = *(v11 + 8);
  v52 = v11 + 8;
  v23(v15, v22);
  if ((v17 & 1) == 0)
  {
    v32 = v53;
    v31 = v54;
    if (*(v2 + 112) != 1)
    {
      goto LABEL_10;
    }

    result = Date.timeIntervalSince1970.getter();
    v34 = v33 * 1000.0;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -1.0)
    {
      if (v34 < 1.84467441e19)
      {
        *(v2 + 104) = v34;
        *(v2 + 112) = 0;
LABEL_10:
        if (*(v2 + 51))
        {
          v36 = *(v2 + 56);
          v35 = *(v2 + 64);
          v37 = Logger.ghostback.unsafeMutableAddressor();
          v38 = v50;
          (*(v32 + 16))(v50, v37, v31);

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v48 = v36;
            v42 = v41;
            v43 = swift_slowAlloc();
            v49 = v23;
            v44 = v43;
            v55 = v43;
            *v42 = 136315138;
            *(v42 + 4) = sub_10017AD04(v48, v35, &v55);
            _os_log_impl(&_mh_execute_header, v39, v40, "Ghostback %s is locked, skipping update", v42, 0xCu);
            sub_10000DB58(v44);

            (*(v32 + 8))(v38, v31);
            return v49(v51, v22);
          }

          (*(v32 + 8))(v38, v31);
          return (v23)(v51, v22);
        }

        *(v2 + 50) = 1;
        *(v2 + 40) = *a1;
        *(v2 + 48) = 0;
        *(v2 + 49) = *(a1 + 8);
        if (*(a1 + 9) != 1)
        {
          return (v23)(v51, v22);
        }

        *(v2 + 51) = 1;
        Date.timeIntervalSince1970.getter();
        v46 = v45;
        result = (v23)(v51, v22);
        v47 = v46 * 1000.0;
        if (COERCE__INT64(fabs(v46 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v47 > -1.0)
          {
            if (v47 < 1.84467441e19)
            {
              *(v2 + 120) = v47;
              *(v2 + 128) = 0;
              *(v2 + 74) = 0;
              return result;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  v24 = Logger.ghostback.unsafeMutableAddressor();
  v25 = v53;
  v26 = v54;
  (*(v53 + 16))(v9, v24, v54);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Ghostback is past activation window, skipping update", v29, 2u);
  }

  (*(v25 + 8))(v9, v26);
  sub_100070FD0();
  swift_allocError();
  swift_willThrow();
  return (v23)(v51, v22);
}

uint64_t sub_100070284(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B520, qword_1001B8C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10006F544();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v32 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 40);
    v13 = *(v3 + 48);
    v32 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 49);
    v31 = 2;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 51);
    v32 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 50);
    v32 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 96);
    v32 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 104);
    v18 = *(v3 + 112);
    v32 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 120);
    v20 = *(v3 + 128);
    v32 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 136);
    v32 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 56);
    v23 = *(v3 + 64);
    v32 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v3 + 72);
    v31 = 10;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32 = *(v3 + 73);
    v31 = 11;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + 74);
    v32 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + 24);
    v26 = *(v3 + 32);
    v32 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + 80);
    v28 = *(v3 + 88);
    v32 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_100070630@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100070808(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1000706A8()
{
  result = qword_10023B4F0;
  if (!qword_10023B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4F0);
  }

  return result;
}

unint64_t sub_100070700()
{
  result = qword_10023B4F8;
  if (!qword_10023B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4F8);
  }

  return result;
}

unint64_t sub_100070758()
{
  result = qword_10023B500;
  if (!qword_10023B500)
  {
    sub_10000CCC0(&qword_10023B508, &qword_1001B8BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B500);
  }

  return result;
}

unint64_t sub_1000707BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215478, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100070808@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v106 = sub_10000CDE0(&qword_10023B510, &qword_1001B8C30);
  v5 = *(v106 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v106);
  v8 = &v36 - v7;
  v105 = 1;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10006F544();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v10 = v5;
  LOBYTE(v65) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65) = 1;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v12 & 1;
  LOBYTE(v56) = 2;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v65;
  LOBYTE(v65) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = v13;
  v15 = v14 == 1;
  LOBYTE(v65) = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = v15;
  v17 = v16 == 1;
  LOBYTE(v65) = 5;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65) = 6;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v98 = v18 & 1;
  LOBYTE(v65) = 7;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v17;
  v50 = v19;
  v96 = v20 & 1;
  LOBYTE(v65) = 8;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65) = 9;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v22;
  v23 = v21;
  LOBYTE(v56) = 10;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v65;
  LOBYTE(v56) = 11;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v65;
  LOBYTE(v65) = 12;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65) = 13;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v24;
  v94 = 14;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v25;
  v44 &= 1u;
  (*(v10 + 8))(v8, v106);
  v100 = v26 & 1;
  v27 = v26 & 1;
  v39 = v26 & 1;
  *&v56 = 0;
  v28 = v105;
  BYTE8(v56) = v105;
  v38 = v11;
  *&v57 = v11;
  *(&v57 + 1) = v42;
  *&v58 = v43;
  *(&v58 + 1) = v55;
  v37 = v103;
  LOBYTE(v59) = v103;
  LOBYTE(v11) = v53;
  v29 = v54;
  BYTE1(v59) = v54;
  LOBYTE(v10) = v48;
  BYTE2(v59) = v48;
  BYTE3(v59) = v53;
  v36 = v23;
  *(&v59 + 1) = v23;
  v30 = v47;
  *&v60 = v47;
  BYTE8(v60) = v46;
  BYTE9(v60) = v45;
  BYTE10(v60) = v44;
  *&v61 = v41;
  BYTE8(v61) = v27;
  *&v62 = v52;
  *(&v62 + 1) = v51;
  v40 = v98;
  LOBYTE(v63) = v98;
  *(&v63 + 1) = v50;
  LODWORD(v106) = v96;
  LOBYTE(v64) = v96;
  *(&v64 + 1) = v49;
  sub_100070EEC(&v56, &v65);
  sub_10000DB58(a1);
  v65 = 0;
  v66 = v28;
  *v67 = *v104;
  *&v67[3] = *&v104[3];
  v68 = v38;
  v69 = v42;
  v70 = v43;
  v71 = v55;
  v72 = v37;
  v73 = v29;
  v74 = v10;
  v75 = v11;
  v76 = v36;
  v77 = v30;
  v78 = v46;
  v79 = v45;
  v80 = v44;
  v82 = v102;
  v81 = v101;
  v83 = v41;
  v84 = v39;
  *v85 = *v99;
  *&v85[3] = *&v99[3];
  v86 = v52;
  v87 = v51;
  v88 = v40;
  *&v89[3] = *&v97[3];
  *v89 = *v97;
  v90 = v50;
  v91 = v106;
  *v92 = *v95;
  *&v92[3] = *&v95[3];
  v93 = v49;
  result = sub_10003BC20(&v65);
  v32 = v63;
  a2[6] = v62;
  a2[7] = v32;
  a2[8] = v64;
  v33 = v59;
  a2[2] = v58;
  a2[3] = v33;
  v34 = v61;
  a2[4] = v60;
  a2[5] = v34;
  v35 = v57;
  *a2 = v56;
  a2[1] = v35;
  return result;
}

unint64_t sub_100070E98()
{
  result = qword_10023B518;
  if (!qword_10023B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B518);
  }

  return result;
}

unint64_t sub_100070F24()
{
  result = qword_10023B528;
  if (!qword_10023B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B528);
  }

  return result;
}

unint64_t sub_100070F78()
{
  result = qword_10023B530;
  if (!qword_10023B530)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B530);
  }

  return result;
}

unint64_t sub_100070FD0()
{
  result = qword_10023B538;
  if (!qword_10023B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GhostbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GhostbackModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100071184(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000711B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000711F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100071270()
{
  result = qword_10023B540;
  if (!qword_10023B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B540);
  }

  return result;
}

unint64_t sub_1000712C4(uint64_t a1)
{
  result = sub_100070FD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000712F0()
{
  result = qword_10023B548;
  if (!qword_10023B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B548);
  }

  return result;
}

unint64_t sub_10007134C()
{
  result = qword_10023B550;
  if (!qword_10023B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B550);
  }

  return result;
}

unint64_t sub_1000713A4()
{
  result = qword_10023B558;
  if (!qword_10023B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B558);
  }

  return result;
}

unint64_t sub_1000713F8(uint64_t a1)
{
  *(a1 + 8) = sub_10003BD7C();
  result = sub_100071428();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100071428()
{
  result = qword_10023B5A8;
  if (!qword_10023B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5A8);
  }

  return result;
}

uint64_t sub_10007147C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B5E0, &qword_1001B8F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000713A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *(v3 + 16);
  v18 = *(v3 + 16);
  v17 = 0;
  sub_10007206C(&v20, v16);
  sub_1000720DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10005CB30(v18, *(&v18 + 1));
  if (!v2)
  {
    v18 = *(v3 + 32);
    v19 = v18;
    v17 = 1;
    sub_10007206C(&v19, v16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10005CB30(v18, *(&v18 + 1));
    v11 = *(v3 + 48);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000716A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007176C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100071824()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000718EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100071C5C(*a1);
  *a2 = result;
  return result;
}

void sub_10007191C(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000064695F6BLL;
  v3 = 0x63616274736F6867;
  v4 = 0xD000000000000012;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  v5 = 0x80000001001CAD90;
  if (*v1)
  {
    v4 = 0xD000000000000014;
    v5 = 0x80000001001CADB0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000719A4()
{
  v1 = 0x63616274736F6867;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100071A28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100071C5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100071A60(uint64_t a1)
{
  v2 = sub_1000713A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A9C(uint64_t a1)
{
  v2 = sub_1000713A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100071AD8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100071CA8(a1, v6);
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

unint64_t sub_100071B48()
{
  result = qword_10023B5B0;
  if (!qword_10023B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5B0);
  }

  return result;
}

unint64_t sub_100071BA0()
{
  result = qword_10023B5B8;
  if (!qword_10023B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5B8);
  }

  return result;
}

unint64_t sub_100071BF8()
{
  result = qword_10023B5C0;
  if (!qword_10023B5C0)
  {
    sub_10000CCC0(&qword_10023B5C8, &qword_1001B8F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5C0);
  }

  return result;
}

unint64_t sub_100071C5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215EB8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100071CA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023B5D0, &qword_1001B8F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v39 = 1;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000713A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v11 = a2;
  LOBYTE(v27) = 0;
  sub_100071FE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = *(&v32 + 1);
  v12 = v32;
  LOBYTE(v27) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v32;
  LOBYTE(v32) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *&v27 = 0;
  HIDWORD(v23) = v39;
  BYTE8(v27) = v39;
  v16 = v12;
  *&v28 = v12;
  v17 = v26;
  v18 = v25;
  *(&v28 + 1) = v26;
  v29 = v25;
  v19 = v24;
  *&v30 = v24;
  *(&v30 + 1) = v13;
  v31 = v15;
  sub_100072034(&v27, &v32);
  sub_10000DB58(a1);
  *&v32 = 0;
  BYTE8(v32) = BYTE4(v23);
  v33 = v16;
  v34 = v17;
  v35 = __PAIR128__(*(&v25 + 1), v18);
  v36 = v19;
  v37 = v13;
  v38 = v15;
  result = sub_10003BDD0(&v32);
  v21 = v30;
  *(v11 + 32) = v29;
  *(v11 + 48) = v21;
  *(v11 + 64) = v31;
  v22 = v28;
  *v11 = v27;
  *(v11 + 16) = v22;
  return result;
}

unint64_t sub_100071FE0()
{
  result = qword_10023B5D8;
  if (!qword_10023B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5D8);
  }

  return result;
}

uint64_t sub_10007206C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023B5E8, &qword_1001B8F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000720DC()
{
  result = qword_10023B5F0;
  if (!qword_10023B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5F0);
  }

  return result;
}

uint64_t sub_100072140(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100072168(uint64_t a1, int a2)
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

uint64_t sub_1000721B0(uint64_t result, int a2, int a3)
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

unint64_t sub_100072214()
{
  result = qword_10023B5F8;
  if (!qword_10023B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5F8);
  }

  return result;
}