_BYTE *storeEnumTagSinglePayload for AccountDataState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10012E3D8()
{
  result = qword_1002DDB58;
  if (!qword_1002DDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDB58);
  }

  return result;
}

unint64_t sub_10012E430()
{
  result = qword_1002DDB60;
  if (!qword_1002DDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDB60);
  }

  return result;
}

unint64_t sub_10012E488()
{
  result = qword_1002DDB68;
  if (!qword_1002DDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDB68);
  }

  return result;
}

unint64_t sub_10012E4E0()
{
  result = qword_1002DDB70;
  if (!qword_1002DDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDB70);
  }

  return result;
}

unint64_t sub_10012E658()
{
  result = qword_1002DDB98;
  if (!qword_1002DDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDB98);
  }

  return result;
}

unint64_t sub_10012E6B0()
{
  result = qword_1002DDBA0;
  if (!qword_1002DDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBA0);
  }

  return result;
}

unint64_t sub_10012E708()
{
  result = qword_1002DDBA8;
  if (!qword_1002DDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBA8);
  }

  return result;
}

unint64_t sub_10012E760()
{
  result = qword_1002DDBB0;
  if (!qword_1002DDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBB0);
  }

  return result;
}

unint64_t sub_10012E7B8()
{
  result = qword_1002DDBB8;
  if (!qword_1002DDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBB8);
  }

  return result;
}

unint64_t sub_10012E810()
{
  result = qword_1002DDBC0;
  if (!qword_1002DDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBC0);
  }

  return result;
}

unint64_t sub_10012E864()
{
  result = qword_1002DDBD0;
  if (!qword_1002DDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBD0);
  }

  return result;
}

uint64_t sub_10012E8B8()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_10012E910()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

_BYTE *sub_10012E968(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10012EA48()
{
  result = qword_1002DDBF8;
  if (!qword_1002DDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDBF8);
  }

  return result;
}

unint64_t sub_10012EAA0()
{
  result = qword_1002DDC00;
  if (!qword_1002DDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDC00);
  }

  return result;
}

unint64_t sub_10012EAF8()
{
  result = qword_1002DDC08;
  if (!qword_1002DDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDC08);
  }

  return result;
}

uint64_t sub_10012EB50()
{

  return sub_10012DAE4();
}

uint64_t sub_10012EBCC()
{

  return sub_10012DAE4();
}

void sub_10012EC00()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_10012EC18()
{
  result = v0[8];
  v2 = *(v0[7] + 8);
  v3 = v0[9];
  return result;
}

uint64_t sub_10012EC38()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void *sub_10012EC60(void *a1)
{

  return memcpy(a1, v1, 0x148uLL);
}

uint64_t sub_10012EC78()
{

  return sub_10003D1E4();
}

uint64_t sub_10012ECCC(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  v3 = sub_10000307C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for AccountDataServerRequest(0);
  v10 = sub_10000307C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  sub_1000CA2F8(a1, v14 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000066D4();
    sub_1001263B0(v15, v16);
    return 0;
  }

  else
  {
    sub_100006DD8();
    sub_10012FD78(v15, v8, v18);
    sub_100099DF4(&qword_1002DDC10, &unk_100239100);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10022E400;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 32) = 0xD000000000000013;
    *(v19 + 40) = 0x8000000100273E00;
    v20 = *(v8 + *(v2 + 20));
    *(v19 + 88) = &type metadata for UInt64;
    *(v19 + 64) = v20;
    sub_10012F650();
    v17 = NSDictionary.init(dictionaryLiteral:)();
    v21 = (v8 + *(v2 + 24));
    if (*v21 != 2)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v23 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_100006A28(v23);

      swift_unknownObjectRelease();
    }

    if (v21[1] != 2)
    {
      v24 = Bool._bridgeToObjectiveC()().super.super.isa;
      v25 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_100006A28(v25);

      swift_unknownObjectRelease();
    }

    sub_1001263B0(v8, type metadata accessor for AccountDataServerRequest.Put);
  }

  return v17;
}

void *sub_10012EF24()
{
  v0 = type metadata accessor for BagValueType();
  v1 = sub_100003724(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = (&v27 - v10);
  v12 = 0;
  v13 = 0;
  v29 = 0x80000001002722B0;
  v30 = enum case for BagValueType.string(_:);
  v14 = (v3 + 104);
  v28 = 0x80000001002722D0;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    v16 = v12;
    if (*(&off_1002B3710 + v13 + 32))
    {
      *v7 = 0xD000000000000013;
      v7[1] = v28;
      (*v14)(v7, v30, v0, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000731C();
        v15 = v22;
      }

      v18 = v15[2];
      v17 = v15[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_10000BA98(v17);
        v15 = v23;
      }

      v20 = v7;
    }

    else
    {
      *v11 = 0xD000000000000013;
      v11[1] = v29;
      (*v14)(v11, v30, v0, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000731C();
        v15 = v24;
      }

      v18 = v15[2];
      v21 = v15[3];
      v19 = v18 + 1;
      if (v18 >= v21 >> 1)
      {
        sub_10000BA98(v21);
        v15 = v25;
      }

      v20 = v11;
    }

    v15[2] = v19;
    (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v20, v0);
    v12 = 1;
    v13 = &_mh_execute_header.magic + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

id sub_10012F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for AccountDataServerRequest(0);
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v20 = v19 - v18;
  result = sub_10017A66C(a2);
  if (!v3)
  {
    v25 = result;
    v26 = v24;
    v33 = v23;
    v34 = v22;
    sub_1000CA2F8(a1, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v34;
      URL.init(string:)();
      v28 = type metadata accessor for URL();
      if (sub_100004DFC(v13, 1, v28) != 1)
      {

        (*(*(v28 - 8) + 32))(a3, v13, v28);
        goto LABEL_10;
      }

      v10 = v13;
    }

    else
    {
      URL.init(string:)();
      v29 = type metadata accessor for URL();
      if (sub_100004DFC(v10, 1, v29) != 1)
      {

        (*(*(v29 - 8) + 32))(a3, v10, v29);
        goto LABEL_10;
      }

      v27 = v26;
      v25 = v33;
    }

    sub_10012F694(v10);
    type metadata accessor for AccountDataNetworkingCore.Errors();
    sub_10012F748();
    swift_allocError();
    *v30 = v25;
    v30[1] = v27;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_10:
    sub_1000066D4();
    return sub_1001263B0(v20, v31);
  }

  return result;
}

uint64_t sub_10012F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountDataServerRequest.Put(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for AccountDataServerRequest.Get(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10000306C();
  v13 = v12 - v11;
  v14 = type metadata accessor for AccountDataServerRequest(0);
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v20 = v19 - v18;
  sub_1000CA2F8(a1, v19 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10012FD78(v20, v13, type metadata accessor for AccountDataServerRequest.Get);
  }

  else
  {
    sub_100006DD8();
    sub_10012FD78(v20, v8, v21);
    v13 = v8;
  }

  v22 = type metadata accessor for AccountIdentity.DSID();
  sub_10000307C(v22);
  return (*(v23 + 32))(a2, v13);
}

void *sub_10012F594@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10012DA3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    return memcpy(a1, __src, 0x148uLL);
  }

  return result;
}

unint64_t sub_10012F650()
{
  result = qword_1002DDC18;
  if (!qword_1002DDC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DDC18);
  }

  return result;
}

uint64_t sub_10012F694(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AccountDataNetworkingCore.Errors()
{
  result = qword_1002DDC90;
  if (!qword_1002DDC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10012F748()
{
  result = qword_1002DB9F0;
  if (!qword_1002DB9F0)
  {
    type metadata accessor for AccountDataNetworkingCore.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB9F0);
  }

  return result;
}

uint64_t sub_10012F7A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3C98, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = sub_100099DF4(&qword_1002DDCF0, &qword_100239280);
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10012FF24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v14, v7);
}

Swift::Int PIPersonalizedPrivateIdentifierMapping.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10012F9FC(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DDCE0, &qword_100239278);
  v4 = sub_100003724(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10012FF24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_100002960();
    v10(v9);
  }

  sub_100004118(a1);
  return v7;
}

uint64_t sub_10012FBE0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012F7A0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10012FC10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10012F7F4();
  *a1 = 0xD000000000000013;
  a1[1] = v5;
  return result;
}

unint64_t sub_10012FC44()
{
  v1 = *v0;
  sub_10012F7F4();
  return 0xD000000000000013;
}

uint64_t sub_10012FC68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10012F7A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012FCA4(uint64_t a1)
{
  v2 = sub_10012FF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FCE0(uint64_t a1)
{
  v2 = sub_10012FF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FD1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10012F9FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_10012FD6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return PIPersonalizedPrivateIdentifierMapping.Key.hashValue.getter();
}

uint64_t sub_10012FD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_10012FDE8()
{
  sub_10012FE5C();
  if (v0 <= 0x3F)
  {
    sub_10012FEA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10012FE5C()
{
  if (!qword_1002DDCA0)
  {
    v0 = type metadata accessor for AccountIdentity.DSID();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DDCA0);
    }
  }
}

void *sub_10012FEA4()
{
  result = qword_1002DDCA8;
  if (!qword_1002DDCA8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1002DDCA8);
  }

  return result;
}

unint64_t sub_10012FED0()
{
  result = qword_1002DDCD8;
  if (!qword_1002DDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDCD8);
  }

  return result;
}

unint64_t sub_10012FF24()
{
  result = qword_1002DDCE8;
  if (!qword_1002DDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDCE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountDataNetworkingBag.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100130058()
{
  result = qword_1002DDCF8;
  if (!qword_1002DDCF8)
  {
    sub_10009A468(&qword_1002DDD00, qword_100239310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDCF8);
  }

  return result;
}

unint64_t sub_1001300C0()
{
  result = qword_1002DDD08;
  if (!qword_1002DDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDD08);
  }

  return result;
}

unint64_t sub_100130118()
{
  result = qword_1002DDD10;
  if (!qword_1002DDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDD10);
  }

  return result;
}

unint64_t sub_100130170()
{
  result = qword_1002DDD18;
  if (!qword_1002DDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDD18);
  }

  return result;
}

void sub_1001301C4()
{
  sub_100004168();
  v70 = v1;
  v71 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DDD20, &unk_100239440);
  v7 = sub_1000030B8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v68[-v10];
  v12 = type metadata accessor for AccountDataServerResponse.Errors(0);
  v13 = sub_10000307C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v68[-v20];
  v22 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v23 = sub_1000030B8(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000308C();
  v72 = v26 - v27;
  sub_100005238();
  __chkstk_darwin(v28);
  v30 = &v68[-v29];
  v31 = type metadata accessor for AccountDataState(0);
  v32 = v31;
  v33 = *&v3[v31[8]];
  if (*&v3[v31[10]] == 3)
  {
    goto LABEL_10;
  }

  if (*&v3[v31[8]] == 3)
  {
    v34 = *&v3[v31[10]];
  }

  else
  {
    v35 = v33 >> 8;
    if (*&v3[v31[8]] == 2)
    {
      LOBYTE(v34) = *&v3[v31[10]];
    }

    else
    {
      LOBYTE(v34) = *&v3[v31[8]];
    }

    if (v35 != 2)
    {
      goto LABEL_9;
    }
  }

  v35 = HIBYTE(*&v3[v31[10]]);
LABEL_9:
  v33 = v34 | (v35 << 8);
LABEL_10:
  v69 = v33;
  v36 = v31[6];
  sub_10003D178(&v3[v36], v30, &qword_1002DA970, &qword_1002318B0);
  v74[0] = v71;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (swift_dynamicCast())
  {
    sub_100004E24(v30, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v37, v38, v39, v12);
    sub_1001306DC(v11, v21);
    sub_1001306DC(v21, v18);
    v40 = sub_100099DF4(&qword_1002DDA10, &qword_100238900);
    if (sub_100004DFC(v18, 1, v40) == 1)
    {
      sub_10003D178(&v3[v36], v30, &qword_1002DA970, &qword_1002318B0);
      sub_100131634(v18, type metadata accessor for AccountDataServerResponse.Errors);
    }

    else
    {
      v44 = type metadata accessor for Date();
      sub_10000307C(v44);
      (*(v45 + 32))(v30, v18, v44);
      sub_10000B7B0();
      sub_100002728(v46, v47, v48, v44);
    }
  }

  else
  {
    sub_100007B78();
    sub_100002728(v41, v42, v43, v12);
    sub_100004E24(v11, &qword_1002DDD20, &unk_100239440);
  }

  v49 = v70;
  v50 = type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v51, v52, v53, v50);
  if (static HTTPHelpers.isAuthError(error:)())
  {
    v54 = v72;
    sub_100004E24(v72, &qword_1002DA970, &qword_1002318B0);
    (*(*(v50 - 8) + 16))(v54, v49, v50);
    sub_10000B7B0();
    sub_100002728(v55, v56, v57, v50);
  }

  memcpy(v74, v3, 0x148uLL);
  sub_10003D178(&v3[v32[5]], &v5[v32[5]], &qword_1002DA970, &qword_1002318B0);
  v58 = *(*(v50 - 8) + 16);
  v58(&v5[v32[7]], &v3[v32[7]], v50);
  v59 = v32[9];
  sub_100007B78();
  sub_100002728(v60, v61, v62, v50);
  v58(&v5[v32[11]], v49, v50);
  sub_10000B7B0();
  sub_100002728(v63, v64, v65, v50);
  v66 = *&v3[v32[12]];
  v67 = v66 + 1;
  if (v66 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_10003D178(&v3[v32[13]], &v5[v32[13]], &qword_1002DB940, &qword_100232B48);
    memcpy(v5, v74, 0x148uLL);
    sub_100012CF4(v30, &v5[v32[6]], &qword_1002DA970, &qword_1002318B0);
    *&v5[v32[8]] = v69;
    *&v5[v32[10]] = 3;
    *&v5[v32[12]] = v67;
    sub_100012CF4(v72, &v5[v32[14]], &qword_1002DA970, &qword_1002318B0);
    sub_10003D178(v74, &v73, &qword_1002DB920, &qword_100238870);
    sub_1000027F8();
  }
}

uint64_t sub_1001306DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerResponse.Errors(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100130740()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Date();
  v9 = sub_100003724(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v16 = sub_1000030B8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000308C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v69 = v1;
  memcpy(v76, v1, 0x148uLL);
  if (sub_100013900(v76) == 1 || (memcpy(v75, v76, sizeof(v75)), sub_10012A39C(v3, v74), sub_10000A5A0(), memcpy(v25, v26, v27), v28 = sub_10012A608(v74), sub_1000CA2A4(v74), (v28 & 1) == 0))
  {
    sub_10000A5A0();
    memcpy(v48, v49, v50);
    v51 = type metadata accessor for AccountDataServerResponse(0);
    v52 = *(v51 + 20);
    v68 = v11;
    v53 = *(v11 + 16);
    v53(v24, v5 + v52, v8);
    sub_10000B7B0();
    sub_100002728(v54, v55, v56, v8);
    sub_100007B78();
    sub_100002728(v57, v58, v59, v8);
    v53(v70, v5 + *(v51 + 28), v8);
    v60 = type metadata accessor for AccountDataState(0);
    v61 = v60;
    v62 = v69;
    v63 = *&v69[*(v60 + 32)];
    v64 = v3;
    if (v63 == 3 || ((v65 = HIBYTE(*&v69[*(v60 + 32)]), v63 != 2) ? (v64 = *&v69[*(v60 + 32)]) : (v64 = v3), v65 == 2))
    {
      LOWORD(v65) = HIBYTE(v3);
    }

    v66 = v64 | (v65 << 8);
    sub_1000066EC(*(v60 + 36));
    sub_1000066EC(v61[11]);
    sub_10003D178(&v62[v61[13]], &v7[v61[13]], &qword_1002DB940, &qword_100232B48);
    sub_1000066EC(v61[14]);
    memcpy(v72, v73, sizeof(v72));
    PIScheduledRotationConfiguration.rotationInterval.getter(v72);
    memcpy(v7, v72, 0x148uLL);
    sub_100012CF4(v24, &v7[v61[5]], &qword_1002DA970, &qword_1002318B0);
    sub_100012CF4(v21, &v7[v61[6]], &qword_1002DA970, &qword_1002318B0);
    (*(v68 + 32))(&v7[v61[7]], v70, v8);
    *&v7[v61[8]] = v66;
    sub_100005354();
    v47 = v73;
  }

  else
  {
    sub_10000A5A0();
    memcpy(v29, v30, v31);
    sub_10000A5A0();
    memcpy(v32, v33, v34);
    PIScheduledRotationConfiguration.rotationInterval.getter(v73);
    v35 = type metadata accessor for AccountDataState(0);
    v36 = v35[5];
    v37 = type metadata accessor for AccountDataServerResponse(0);
    v38 = *(v11 + 16);
    v38(&v7[v36], v5 + *(v37 + 20), v8);
    sub_10000B7B0();
    sub_100002728(v39, v40, v41, v8);
    sub_1000066EC(v35[6]);
    v38(&v7[v35[7]], v5 + *(v37 + 28), v8);
    v42 = v35[9];
    v43 = v69;
    LOWORD(v37) = *&v69[v35[8]];
    sub_100007B78();
    sub_100002728(v44, v45, v46, v8);
    sub_1000066EC(v35[11]);
    sub_10003D178(&v43[v35[13]], &v7[v35[13]], &qword_1002DB940, &qword_100232B48);
    sub_1000066EC(v35[14]);
    memcpy(v7, v73, 0x148uLL);
    *&v7[v35[8]] = v37;
    sub_100005354();
    v47 = v72;
  }

  sub_10012627C(v47, &v71);
  sub_1000027F8();
}

void sub_100130B68()
{
  sub_100004168();
  v243 = v0;
  v244 = v1;
  v245 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v246 = type metadata accessor for Date();
  v9 = sub_100003724(v246);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000308C();
  v235 = v14 - v15;
  sub_100005238();
  __chkstk_darwin(v16);
  v236 = v233 - v17;
  sub_100005238();
  __chkstk_darwin(v18);
  v242 = v233 - v19;
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v21 = sub_1000030B8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000308C();
  v238 = v24 - v25;
  sub_100005238();
  __chkstk_darwin(v26);
  v239 = v233 - v27;
  sub_100005238();
  __chkstk_darwin(v28);
  v237 = v233 - v29;
  sub_100005238();
  __chkstk_darwin(v30);
  v241 = v233 - v31;
  v32 = type metadata accessor for AccountDataState(0);
  v33 = sub_10000307C(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_10000308C();
  v38 = v36 - v37;
  sub_100005238();
  __chkstk_darwin(v39);
  v41 = v233 - v40;
  v42 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  v43 = sub_1000030B8(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_10000308C();
  v48 = v46 - v47;
  __chkstk_darwin(v49);
  v51 = v233 - v50;
  v244 = v8;
  Date.timeIntervalSince(_:)();
  v240 = v4;
  if (v52 <= v4)
  {
    v107 = v11;
    v108 = v32[13];
    sub_100007664();
    sub_10003D178(v109, v110, v111, v112);
    sub_100007664();
    sub_10003D178(v113, v114, v115, v116);
    v117 = type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_1000071D8(v48);
    if (v89)
    {
      sub_100004E24(v51, &qword_1002DB940, &qword_100232B48);
      sub_100004E24(v48, &qword_1002DB940, &qword_100232B48);
      v175 = v246;
      (*(v107 + 16))(&v51[*(v117 + 20)], v244, v246);
      *v51 = v243;
      sub_10000B7B0();
      sub_100002728(v118, v119, v120, v117);
    }

    else
    {
      sub_100004E24(v48, &qword_1002DB940, &qword_100232B48);
      v175 = v246;
    }

    sub_10000A5A0();
    memcpy(v176, v177, v178);
    v179 = v32[5];
    v180 = v245;
    sub_100003924();
    sub_10003D178(v181, v182, v183, v184);
    v185 = v32[6];
    sub_100003924();
    sub_10003D178(v186, v187, v188, v189);
    (*(v107 + 16))(&v180[v32[7]], v6 + v32[7], v175);
    v190 = v32[9];
    v191 = *(v6 + v32[8]);
    sub_10000320C();
    sub_10003D178(v192, v193, v194, v195);
    v196 = v32[11];
    v197 = *(v6 + v32[10]);
    sub_10000320C();
    sub_10003D178(v198, v199, v200, v201);
    v202 = *(v6 + v32[12]);
    v203 = v32[14];
    sub_100003924();
    sub_10003D178(v204, v205, v206, v207);
    memcpy(v180, v250, 0x148uLL);
    *&v180[v32[8]] = v191;
    *&v180[v32[10]] = v197;
    *&v180[v32[12]] = v202;
    v208 = sub_100012CF4(v51, &v180[v32[13]], &qword_1002DB940, &qword_100232B48);
    sub_100131948(v208, v209, &qword_1002DB920, &qword_100238870);
  }

  else
  {
    v53 = *(v6 + v32[10]);
    v234 = v11;
    v54 = (v11 + 16);
    sub_10000A5A0();
    if (v58 == 3)
    {
      memcpy(v55, v56, v57);
      v59 = v38;
      v233[1] = v32[5];
      sub_100003924();
      sub_10003D178(v60, v61, v62, v63);
      v233[3] = v32[6];
      sub_100003924();
      sub_10003D178(v64, v65, v66, v67);
      v68 = v32[7];
      v69 = *v54;
      v233[4] = v68;
      v233[5] = v69;
      v70 = v246;
      v233[2] = v54;
      v69((v38 + v68), v6 + v68, v246);
      v71 = v32[9];
      v72 = *(v6 + v32[8]);
      sub_100007B78();
      sub_100002728(v73, v74, v75, v70);
      v76 = v32[11];
      v236 = v76;
      sub_10003D178(&v76[v6], &v76[v38], &qword_1002DA970, &qword_1002318B0);
      v77 = v32[13];
      v78 = *(v6 + v32[12]);
      type metadata accessor for CachedServerDataSyncAttempt(0);
      sub_100007B78();
      v237 = v79;
      sub_100002728(v80, v81, v82, v79);
      v83 = v32[14];
      v239 = v83;
      sub_10003D178(&v83[v6], &v83[v59], &qword_1002DA970, &qword_1002318B0);
      memcpy(v59, v250, 0x148uLL);
      v84 = v32[8];
      LODWORD(v242) = v72;
      *(v59 + v84) = v72;
      *(v59 + v32[10]) = v53;
      v85 = v32[12];
      v241 = v78;
      *(v59 + v85) = v78;
      v86 = v238;
      sub_10003D178(v59 + v71, v238, &qword_1002DA970, &qword_1002318B0);
      v87 = sub_1000071D8(v86);
      if (v89)
      {
        sub_100131948(v87, v88, &qword_1002DB920, &qword_100238870);
        sub_100004E24(v86, &qword_1002DA970, &qword_1002318B0);
        if (v242 == 3)
        {
          memcpy(v249, v59, sizeof(v249));
          if (sub_100013900(v249) == 1 || v249[264] != 1)
          {
            memcpy(v248, v59, sizeof(v248));
            v219 = v32[5];
            v91 = v245;
            sub_100007664();
            sub_10003D178(v220, v221, v222, v223);
            sub_100003C84();
            v224 = sub_10000C048();
            (qword_1002DA970)(v224);
            v225 = sub_1000045DC();
            (qword_1002DA970)(v225);
            sub_10000B7B0();
            sub_100002728(v226, v227, v228, v53);
            sub_100007340(v32[11]);
            v229 = v32[13];
            sub_100007B78();
            sub_100002728(v230, v231, v232, v237);
            sub_100007340(v32[14]);
            memcpy(v91, v248, 0x148uLL);
            *&v91[v32[8]] = 3;
            v105 = v32[10];
            v106 = v242;
          }

          else
          {
            memcpy(v248, v59, sizeof(v248));
            v90 = v32[5];
            v91 = v245;
            sub_100007664();
            sub_10003D178(v92, v93, v94, v95);
            sub_100003C84();
            v96 = sub_10000C048();
            (qword_1002DA970)(v96);
            v97 = sub_1000045DC();
            (qword_1002DA970)(v97);
            sub_10000B7B0();
            sub_100002728(v98, v99, v100, v53);
            sub_100007340(v32[11]);
            v101 = v32[13];
            sub_100007B78();
            sub_100002728(v102, v103, v104, v237);
            sub_100007340(v32[14]);
            memcpy(v91, v248, 0x148uLL);
            *&v91[v32[8]] = v242;
            v105 = v32[10];
            v106 = 3;
          }

          *&v91[v105] = v106;
          *&v91[v32[12]] = v241;
          sub_10003D178(v248, &v247, &qword_1002DB920, &qword_100238870);
        }

        else
        {
          sub_10013168C();
        }
      }

      else
      {
        v210 = v234;
        v211 = v235;
        v212 = (*(v234 + 32))(v235, v86, v70);
        sub_100131948(v212, v213, &qword_1002DB920, &qword_100238870);
        sub_100130B68(v244, v59, v240, v211, v243);
        (*(v210 + 8))(v211, v70);
      }

      sub_100006A4C();
      v218 = v59;
    }

    else
    {
      memcpy(v55, v56, v57);
      v121 = v32[5];
      sub_10000320C();
      sub_10003D178(v122, v123, v124, v125);
      v126 = v32[6];
      sub_10000320C();
      sub_10003D178(v127, v128, v129, v130);
      v131 = v246;
      (*v54)(v242, v6 + v32[7], v246);
      v132 = *(v6 + v32[8]);
      v133 = v53;
      if (v132 == 3 || ((v134 = HIBYTE(*(v6 + v32[8])), v132 != 2) ? (v133 = *(v6 + v32[8])) : (v133 = v53), v134 == 2))
      {
        v134 = v53 >> 8;
      }

      LODWORD(v238) = v133 | (v134 << 8);
      v135 = v32[9];
      sub_100007B78();
      sub_100002728(v136, v137, v138, v131);
      v139 = v32[11];
      sub_100007664();
      sub_10003D178(v140, v141, v142, v143);
      v144 = v32[13];
      v145 = *(v6 + v32[12]);
      type metadata accessor for CachedServerDataSyncAttempt(0);
      sub_100007B78();
      sub_100002728(v146, v147, v148, v149);
      v150 = v32[14];
      sub_100007664();
      sub_10003D178(v151, v152, v153, v154);
      memcpy(v41, v250, 0x148uLL);
      v155 = v32[5];
      sub_100007664();
      sub_100012CF4(v156, v157, v158, v159);
      v160 = v32[6];
      sub_100007664();
      sub_100012CF4(v161, v162, v163, v164);
      v165 = v234;
      v166 = *(v234 + 32);
      v166(&v41[v32[7]], v242, v246);
      *&v41[v32[8]] = v238;
      *&v41[v32[10]] = 3;
      *&v41[v32[12]] = v145;
      v167 = v239;
      sub_100007664();
      v168 = v246;
      sub_10003D178(v169, v170, v171, v172);
      v173 = sub_1000071D8(v167);
      if (v89)
      {
        sub_100131948(v173, v174, &qword_1002DB920, &qword_100238870);
        sub_100004E24(v167, &qword_1002DA970, &qword_1002318B0);
        sub_10013168C();
      }

      else
      {
        v214 = v236;
        v215 = (v166)(v236, v167, v168);
        sub_100131948(v215, v216, &qword_1002DB920, &qword_100238870);
        sub_100130B68(v244, v41, v240, v214, v243);
        (*(v165 + 8))(v214, v168);
      }

      sub_100006A4C();
      v218 = v41;
    }

    sub_100131634(v218, v217);
  }

  sub_1000027F8();
}

uint64_t sub_100131634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_10013168C()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  memcpy(__dst, v0, 0x148uLL);
  if (sub_100013900(__dst) == 1 || __dst[264] != 1)
  {
    memcpy(__src, v1, sizeof(__src));
    v21 = type metadata accessor for AccountDataState(0);
    sub_100006DF0(v21[5]);
    sub_100006DF0(v21[6]);
    v22 = v21[7];
    v23 = type metadata accessor for Date();
    sub_10000307C(v23);
    v25 = *(v24 + 16);
    v25(&v5[v22], &v1[v22], v23);
    v25(&v5[v21[9]], v3, v23);
    sub_10000B7B0();
    sub_100002728(v26, v27, v28, v23);
    v29 = *&v1[v21[8]];
    sub_100006DF0(v21[11]);
    v30 = v21[13];
    v31 = *&v1[v21[12]];
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_100007B78();
    sub_100002728(v32, v33, v34, v35);
    sub_100006DF0(v21[14]);
    memcpy(v5, __src, 0x148uLL);
    *&v5[v21[8]] = 3;
    *&v5[v21[10]] = v29;
    *&v5[v21[12]] = v31;
  }

  else
  {
    memcpy(__src, v1, sizeof(__src));
    v6 = type metadata accessor for AccountDataState(0);
    sub_100006DF0(v6[5]);
    sub_100006DF0(v6[6]);
    v7 = v6[7];
    v8 = type metadata accessor for Date();
    sub_10000307C(v8);
    v10 = *(v9 + 16);
    v10(&v5[v7], &v1[v7], v8);
    v11 = *&v1[v6[8]];
    v10(&v5[v6[9]], v3, v8);
    sub_10000B7B0();
    sub_100002728(v12, v13, v14, v8);
    sub_10003D178(&v1[v6[11]], &v5[v6[11]], &qword_1002DA970, &qword_1002318B0);
    v15 = v6[13];
    v16 = *&v1[v6[12]];
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_100007B78();
    sub_100002728(v17, v18, v19, v20);
    sub_10003D178(&v1[v6[14]], &v5[v6[14]], &qword_1002DA970, &qword_1002318B0);
    memcpy(v5, __src, 0x148uLL);
    *&v5[v6[8]] = v11;
    *&v5[v6[10]] = 3;
    *&v5[v6[12]] = v16;
  }

  sub_10003D178(__src, &v36, &qword_1002DB920, &qword_100238870);
  sub_1000027F8();
}

uint64_t sub_100131948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10003D178(v4 + 1136, v4 + 808, a3, a4);
}

uint64_t sub_100131960()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100003724(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v9 = v8 - v7;
  v27 = type metadata accessor for URL();
  v10 = sub_100003724(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  sub_100131FC4(v17);
  sub_100006E10();
  (*(v4 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v4 + 8))(v9, v1);
  v19 = dispatch thunk of FileStore.contents(at:)();
  if (v28)
  {
    return (*(v12 + 8))(v17, v27);
  }

  v22 = v19;
  v23 = v20;
  (*(v12 + 8))(v17, v27);
  v24 = type metadata accessor for JSONDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for AccountDataState(0);
  sub_1001321AC(&qword_1002DDD30);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000D170(v22, v23);
}

uint64_t sub_100131BD8()
{
  v1 = type metadata accessor for FileStoreProtectionType();
  v2 = sub_100003724(v1);
  v56 = v3;
  v57 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v58 = v7 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = sub_100003724(v8);
  v55 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  v17 = sub_100003724(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v47 - v24;
  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AccountDataState(0);
  sub_1001321AC(&qword_1002DDD28);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;

  if (!v0)
  {
    v53 = v29;
    v54 = v31;
    v51 = v15;
    v52 = v22;
    v33 = v8;
    v34 = v58;
    v35 = v60[4];
    sub_10000C4FC(v60, v60[3]);
    sub_100131FC4(v25);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v36 = *(v59 + 1);
    v50 = v16;
    v59 = v36;
    v36(v25, v16);
    v37 = v60[4];
    v48 = v60[3];
    v49 = v37;
    v47[1] = sub_10000C4FC(v60, v48);
    v38 = v52;
    sub_100131FC4(v52);
    sub_100006E10();
    v39 = v55;
    v40 = v51;
    (*(v55 + 104))(v51, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v39 + 8))(v40, v33);
    v41 = v56;
    v42 = v34;
    v43 = v38;
    v44 = v57;
    (*(v56 + 104))(v42, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v57);
    v46 = v53;
    v45 = v54;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v46, v45);
    (*(v41 + 8))(v42, v44);
    return v59(v43, v50);
  }

  return result;
}

uint64_t sub_100131FC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for AccountDataStoreFilesystemCore();
  v13 = *(v12 + 20);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 16))(a1, v1 + v13, v14);
  v15 = sub_10000C4FC((v1 + *(v12 + 24)), *(v1 + *(v12 + 24) + 24));
  v16 = [*(v15 + *(type metadata accessor for AMPAccount() + 20)) ams_isSandboxAccount];
  sub_10000F454(v15, v16);
  (*(v6 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v6 + 8))(v11, v3);
}

uint64_t type metadata accessor for AccountDataStoreFilesystemCore()
{
  result = qword_1002DDD90;
  if (!qword_1002DDD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001321AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccountDataState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100132218()
{
  result = sub_1001322D4(319, &qword_1002DB738);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = sub_1001322D4(319, &unk_1002DDDA0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001322D4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_100132328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  sub_1000A9914(a1, v10);
  if (sub_100004DFC(v10, 1, v11) == 1)
  {
    v7 = v10;
LABEL_5:
    sub_1000ACD3C(v7);
    return 0;
  }

  v19 = *(v12 + 32);
  v19(v18, v10, v11);
  sub_1000A9914(a2, v7);
  if (sub_100004DFC(v7, 1, v11) == 1)
  {
    (*(v12 + 8))(v18, v11);
    goto LABEL_5;
  }

  v19(v15, v7, v11);
  v21 = static Date.> infix(_:_:)();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v18, v11);
  return (v21 & 1) != 0;
}

void *sub_10013256C()
{
  v2 = type metadata accessor for BagValueType();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v76 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005238();
  __chkstk_darwin(v9);
  sub_100002DD0();
  v75 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v74 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v73 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v72 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  v19 = (&v65 - v18);
  v20 = 0;
  sub_100013BFC();
  v71 = v21;
  v22 = enum case for BagValueType.integer(_:);
  v23 = (v5 + 104);
  sub_100013BFC();
  v69 = v24;
  v70 = v25;
  sub_100013BFC();
  v67 = v26;
  v68 = v27;
  sub_100013BFC();
  v66 = v28;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    v30 = *(&off_1002B3CE8 + v20++ + 32);
    switch(v30)
    {
      case 1:
        sub_100003CB0();
        v46 = sub_100007C9C(v72, v67);
        v47(v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v60;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v48);
          v29 = v61;
        }

        v36 = v72;
        break;
      case 2:
        sub_100003CB0();
        v40 = sub_100007C9C(v73, v68);
        v41(v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v54;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v42);
          v29 = v55;
        }

        v36 = v73;
        break;
      case 3:
        sub_100003CB0();
        v43 = sub_100007C9C(v74, v69);
        v44(v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v56;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v45);
          v29 = v57;
        }

        v36 = v74;
        break;
      case 4:
        sub_100003CB0();
        v37 = sub_100007C9C(v75, v70);
        v38(v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v52;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v39);
          v29 = v53;
        }

        v36 = v75;
        break;
      case 5:
        sub_100003CB0();
        v49 = v76;
        *v76 = v50;
        v49[1] = v71;
        (*v23)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v62;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v51);
          v29 = v63;
        }

        v36 = v76;
        break;
      default:
        sub_100003CB0();
        v32 = v31 + 8;
        v33 = v66;
        *v19 = v32;
        v19[1] = v33;
        (*v23)(v19, v22, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v29 = v58;
        }

        sub_10000670C();
        if (v35)
        {
          sub_100006E30(v34);
          v29 = v59;
        }

        v36 = v19;
        break;
    }

    v29[2] = v0;
    (*(v5 + 32))(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v1, v36, v2);
  }

  while (v20 != 6);
  return v29;
}

unint64_t sub_1001329AC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3D10, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001329FC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100132A64()
{
  v2 = sub_100099DF4(&qword_1002DDEA0, &qword_100239AE0);
  sub_100003724(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_100002810();
  sub_10000CD50();
  sub_10000EE2C();
  v10 = *v0;
  v17[15] = 0;
  sub_100007360();
  if (!v1)
  {
    v11 = v0[1];
    v17[14] = 1;
    sub_100007360();
    v12 = v0[2];
    v17[13] = 2;
    sub_100007360();
    v13 = v0[3];
    v17[12] = 3;
    sub_100007360();
    v14 = v0[4];
    v17[11] = 4;
    sub_100007360();
    v15 = v0[5];
    v17[10] = 5;
    sub_100007360();
  }

  return (*(v4 + 8))(v9, v2);
}

void sub_100132BF4()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v0[3]);
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
}

Swift::Int sub_100132C48()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v0[3]);
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  return Hasher._finalize()();
}

unint64_t sub_100132CF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001329AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100132D20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000CDB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100132D4C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001329F8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100132D94(uint64_t a1)
{
  v2 = sub_10000CD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100132DD0(uint64_t a1)
{
  v2 = sub_10000CD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100132E30()
{
  v2 = type metadata accessor for BagValueType();
  v3 = sub_100003724(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000045F0();
  strcpy(v0, "account_data");
  *(v0 + 13) = 0;
  *(v0 + 14) = -5120;
  v6 = sub_10000B874();
  v7(v6);
  sub_10000B654(0, 1, 1, _swiftEmptyArrayStorage);
  sub_10000D05C(v8);
  if (v10)
  {
    sub_100008DE0(v9);
    v1 = v14;
  }

  v11 = sub_100006A64();
  v12(v11);
  return v1;
}

BOOL sub_100132F38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3DE8, v2);

  return v3 != 0;
}

uint64_t sub_100132F80()
{
  v0 = sub_100099DF4(&qword_1002DDE50, &qword_100239848);
  sub_100003724(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100002810();
  sub_10000CA6C();
  sub_10000EE2C();
  sub_100003E88();
  sub_100133844();
  sub_10000D528();
  v4 = sub_10000A260();
  return v5(v4);
}

BOOL sub_10013308C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100132F38(*a1);
  *a2 = result;
  return result;
}

void sub_1001330C0(uint64_t a1@<X8>)
{
  strcpy(a1, "account_data");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_1001330E4@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100132F38(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100133124(uint64_t a1)
{
  v2 = sub_10000CA6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100133160(uint64_t a1)
{
  v2 = sub_10000CA6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001331B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3E48, v2);

  return v3 != 0;
}

uint64_t sub_1001331FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100133250()
{
  v0 = sub_100099DF4(&qword_1002DDDF8, &qword_100239588);
  sub_100003724(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100002810();
  sub_10000C540();
  sub_10000EE2C();
  sub_100003E88();
  sub_100133648();
  sub_10000D528();
  v4 = sub_10000A260();
  return v5(v4);
}

void sub_100133350()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_1001333C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

BOOL sub_100133474@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001331B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001334A8@<X0>(void *a1@<X8>)
{
  result = sub_10000C7CC();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

BOOL sub_1001334D8@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001331B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100133518(uint64_t a1)
{
  v2 = sub_10000C540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100133554(uint64_t a1)
{
  v2 = sub_10000C540();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001335A8()
{
  Hasher.init(_seed:)();
  sub_100132BF4();
  return Hasher._finalize()();
}

unint64_t sub_1001335F4()
{
  result = qword_1002DDDD8;
  if (!qword_1002DDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDDD8);
  }

  return result;
}

unint64_t sub_100133648()
{
  result = qword_1002DDE00;
  if (!qword_1002DDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE00);
  }

  return result;
}

unint64_t sub_1001336B8()
{
  result = qword_1002DDE08;
  if (!qword_1002DDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE08);
  }

  return result;
}

unint64_t sub_100133740()
{
  result = qword_1002DDE20;
  if (!qword_1002DDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE20);
  }

  return result;
}

unint64_t sub_100133798()
{
  result = qword_1002DDE28;
  if (!qword_1002DDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE28);
  }

  return result;
}

unint64_t sub_1001337F0()
{
  result = qword_1002DDE30;
  if (!qword_1002DDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE30);
  }

  return result;
}

unint64_t sub_100133844()
{
  result = qword_1002DDE58;
  if (!qword_1002DDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE58);
  }

  return result;
}

unint64_t sub_1001338B4()
{
  result = qword_1002DDE60;
  if (!qword_1002DDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE60);
  }

  return result;
}

unint64_t sub_10013393C()
{
  result = qword_1002DDE78;
  if (!qword_1002DDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE78);
  }

  return result;
}

unint64_t sub_100133994()
{
  result = qword_1002DDE80;
  if (!qword_1002DDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE80);
  }

  return result;
}

unint64_t sub_1001339EC()
{
  result = qword_1002DDE88;
  if (!qword_1002DDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDE88);
  }

  return result;
}

unint64_t sub_100133A80()
{
  result = qword_1002DDEB8;
  if (!qword_1002DDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDEB8);
  }

  return result;
}

unint64_t sub_100133AD8()
{
  result = qword_1002DDEC0;
  if (!qword_1002DDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDEC0);
  }

  return result;
}

unint64_t sub_100133B30()
{
  result = qword_1002DDEC8;
  if (!qword_1002DDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDEC8);
  }

  return result;
}

uint64_t sub_100133BB4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100133C40(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a1;
  v6 = v5 == 2;
  v7 = *a2;
  v8 = *a2;
  if (v8 != 2)
  {
    v6 = 0;
  }

  if (v5 != 2 && v8 != 2)
  {
    v18 = v2;
    v19 = v3;
    v10 = *(a2 + 3);
    v16 = *(a2 + 1);
    v17[0] = v10;
    *(v17 + 12) = *(a2 + 36);
    v12 = v4;
    v13 = *(a1 + 1);
    v14[0] = *(a1 + 3);
    *(v14 + 12) = *(a1 + 36);
    v15 = v7;
    v6 = sub_1001B03D0(&v12, &v15);
  }

  return v6 & 1;
}

void sub_100133CD4(uint64_t a1)
{
  if (*v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v1 + 1);
    *v5 = *(v1 + 3);
    *&v5[12] = *(v1 + 36);
    v3 = *v1;
    Hasher._combine(_:)(1uLL);
    sub_1001B0534(a1);
  }
}

Swift::Int sub_100133D4C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 3);
    v5 = *(v0 + 1);
    v6[0] = v2;
    *(v6 + 12) = *(v0 + 36);
    v4[9] = v1;
    Hasher._combine(_:)(1uLL);
    sub_1001B0534(v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100133DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572656767697274 && a2 == 0xEB00000000744164)
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

uint64_t sub_100133EA0(char a1)
{
  if (a1)
  {
    return 0x6572656767697274;
  }

  else
  {
    return 0x72656767697274;
  }
}

uint64_t sub_100133EE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CachedServerDataSyncAttempt(0) + 20);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100133F40(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DDF88, &qword_100239E48);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  sub_100008B3C(a1, a1[3]);
  sub_100137D98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18[15] = *v3;
  v18[14] = 0;
  sub_100137EA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(type metadata accessor for CachedServerDataSyncAttempt(0) + 20);
    v18[13] = 1;
    type metadata accessor for Date();
    sub_100004BAC();
    sub_100137D50(v15, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1001340EC()
{
  Hasher._combine(_:)(*v0);
  v1 = *(type metadata accessor for CachedServerDataSyncAttempt(0) + 20);
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v2, v3);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100134174()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(type metadata accessor for CachedServerDataSyncAttempt(0) + 20);
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_100134214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_100004868();
  v17 = v16;
  v38 = v18;
  v40 = type metadata accessor for Date();
  v19 = sub_100003724(v40);
  v37 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  sub_1000051B0();
  v41 = sub_100099DF4(&qword_1002DDF70, &qword_100239E40);
  sub_100003724(v41);
  v39 = v23;
  v25 = *(v24 + 64);
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100005244();
  v27 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_10000B7EC(v27);
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_10000306C();
  v33 = (v32 - v31);
  v34 = v17[4];
  sub_100008B3C(v17, v17[3]);
  sub_100137D98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    sub_100137DEC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v33 = a13;
    sub_100004BAC();
    sub_100137D50(v35, v36);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 8))(v15, v41);
    (*(v37 + 32))(&v33[*(v27 + 20)], v14, v40);
    sub_100137E40(v33, v38);
  }

  sub_100004118(v17);
  sub_100005074();
}

uint64_t sub_1001344BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4674736575716572 && a2 == 0xED000064656C6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70556D6574737973 && a2 == 0xEC00000065746164;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001002740B0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646563726F66 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C6F486563616C70 && a2 == 0xEB00000000726564;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x41746E756F636361 && a2 == 0xEB00000000687475)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_100134838(char a1)
{
  result = 0x6970784561746164;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168436C61636F6CLL;
      break;
    case 3:
      result = 0x4674736575716572;
      break;
    case 4:
      result = 0x70556D6574737973;
      break;
    case 5:
      result = 0x676E696C6C6F70;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646563726F66;
      break;
    case 8:
      result = 0x6C6F486563616C70;
      break;
    case 9:
      result = 0x79536C61756E616DLL;
      break;
    case 10:
      result = 0x41746E756F636361;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1001349A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v145 = v30;
  v32 = v31;
  v33 = sub_100099DF4(&qword_1002DE058, &qword_100239EB8);
  v34 = sub_100003724(v33);
  v143 = v35;
  v144 = v34;
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  sub_100003018();
  v142 = v39;
  v40 = sub_100099DF4(&qword_1002DE060, &qword_100239EC0);
  v41 = sub_100003724(v40);
  v140 = v42;
  v141 = v41;
  v44 = *(v43 + 64);
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  v139 = v46;
  v47 = sub_100099DF4(&qword_1002DE068, &qword_100239EC8);
  v48 = sub_100003724(v47);
  v137 = v49;
  v138 = v48;
  v51 = *(v50 + 64);
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  v136 = v53;
  v54 = sub_100099DF4(&qword_1002DE070, &qword_100239ED0);
  v55 = sub_100003724(v54);
  v134 = v56;
  v135 = v55;
  v58 = *(v57 + 64);
  sub_100003774();
  __chkstk_darwin(v59);
  sub_100003018();
  v133 = v60;
  v61 = sub_100099DF4(&qword_1002DE078, &qword_100239ED8);
  v62 = sub_100003724(v61);
  v131 = v63;
  v132 = v62;
  v65 = *(v64 + 64);
  sub_100003774();
  __chkstk_darwin(v66);
  sub_100003018();
  v130 = v67;
  v129 = sub_100099DF4(&qword_1002DE080, &qword_100239EE0);
  sub_100003724(v129);
  v128 = v68;
  v70 = *(v69 + 64);
  sub_100003774();
  __chkstk_darwin(v71);
  sub_100003018();
  sub_10000A1C0(v72);
  v127 = sub_100099DF4(&qword_1002DE088, &qword_100239EE8);
  sub_100003724(v127);
  v126 = v73;
  v75 = *(v74 + 64);
  sub_100003774();
  __chkstk_darwin(v76);
  sub_100003018();
  sub_10000A1C0(v77);
  v125 = sub_100099DF4(&qword_1002DE090, &qword_100239EF0);
  sub_100003724(v125);
  v124 = v78;
  v80 = *(v79 + 64);
  sub_100003774();
  __chkstk_darwin(v81);
  sub_100003018();
  sub_10000A1C0(v82);
  v123 = sub_100099DF4(&qword_1002DE098, &qword_100239EF8);
  sub_100003724(v123);
  v122 = v83;
  v85 = *(v84 + 64);
  sub_100003774();
  __chkstk_darwin(v86);
  sub_100003018();
  sub_10000A1C0(v87);
  v88 = sub_100099DF4(&qword_1002DE0A0, &qword_100239F00);
  sub_100003724(v88);
  v121 = v89;
  v91 = *(v90 + 64);
  sub_100003774();
  __chkstk_darwin(v92);
  v93 = sub_100099DF4(&qword_1002DE0A8, &qword_100239F08);
  sub_100003724(v93);
  v120 = v94;
  v96 = *(v95 + 64);
  sub_100003774();
  __chkstk_darwin(v97);
  sub_100005244();
  v147 = sub_100099DF4(&qword_1002DE0B0, &unk_100239F10);
  sub_100003724(v147);
  v99 = v98;
  v101 = *(v100 + 64);
  sub_100003774();
  __chkstk_darwin(v102);
  v104 = &v119 - v103;
  v105 = v32[4];
  sub_100008B3C(v32, v32[3]);
  sub_100137EF8();
  v146 = v104;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v106 = (v99 + 8);
  switch(v145)
  {
    case 1:
      v148[6] = 1;
      sub_10013870C();
      sub_100003218();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v113 = sub_10000C068(v148);
      v114(v113, v88);
      v115 = *v106;
      v116 = sub_100005CD0();
      goto LABEL_17;
    case 2:
      v148[7] = 2;
      sub_1001386B8();
      sub_100003934();
      v107 = sub_10000C068(&a9);
      v109 = &a10;
      goto LABEL_7;
    case 3:
      a10 = 3;
      sub_100138664();
      sub_100003934();
      v107 = sub_10000C068(&a19);
      v109 = &a20;
      goto LABEL_7;
    case 4:
      a11 = 4;
      sub_100138610();
      sub_100003934();
      v107 = sub_10000C068(&a22);
      v109 = &a23;
LABEL_7:
      v111 = *(v109 - 32);
      goto LABEL_15;
    case 5:
      a12 = 5;
      sub_1001385BC();
      sub_100003934();
      v107 = sub_10000C068(&a25);
      v111 = v129;
      goto LABEL_15;
    case 6:
      a13 = 6;
      sub_100138568();
      v110 = v130;
      sub_100003934();
      v112 = v131;
      v111 = v132;
      goto LABEL_14;
    case 7:
      a14 = 7;
      sub_100138514();
      v110 = v133;
      sub_100003934();
      v112 = v134;
      v111 = v135;
      goto LABEL_14;
    case 8:
      a15 = 8;
      sub_1001384C0();
      v110 = v136;
      sub_100003934();
      v112 = v137;
      v111 = v138;
      goto LABEL_14;
    case 9:
      a16 = 9;
      sub_10013846C();
      v110 = v139;
      sub_100003934();
      v112 = v140;
      v111 = v141;
      goto LABEL_14;
    case 10:
      a17 = 10;
      sub_100138418();
      v110 = v142;
      sub_100003934();
      v112 = v143;
      v111 = v144;
LABEL_14:
      v108 = *(v112 + 8);
      v107 = v110;
LABEL_15:
      v108(v107, v111);
      break;
    default:
      v148[5] = 0;
      sub_100138760();
      v32 = v146;
      v88 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v120 + 8))(v27, v93);
      break;
  }

  v118 = *v106;
  v116 = v32;
  v117 = v88;
LABEL_17:
  v118(v116, v117);
  sub_100005074();
}

void sub_100135210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v162 = v27;
  v31 = v30;
  v32 = sub_100099DF4(&qword_1002DDF98, &qword_100239E50);
  v33 = sub_100003724(v32);
  v150 = v34;
  v151 = v33;
  v36 = *(v35 + 64);
  sub_100003774();
  __chkstk_darwin(v37);
  sub_100003018();
  v157 = v38;
  v39 = sub_100099DF4(&qword_1002DDFA0, &qword_100239E58);
  v40 = sub_100003724(v39);
  v148 = v41;
  v149 = v40;
  v43 = *(v42 + 64);
  sub_100003774();
  __chkstk_darwin(v44);
  sub_100003018();
  v156 = v45;
  v46 = sub_100099DF4(&qword_1002DDFA8, &qword_100239E60);
  v47 = sub_100003724(v46);
  v146 = v48;
  v147 = v47;
  v50 = *(v49 + 64);
  sub_100003774();
  __chkstk_darwin(v51);
  sub_100003018();
  v155 = v52;
  v53 = sub_100099DF4(&qword_1002DDFB0, &qword_100239E68);
  v54 = sub_100003724(v53);
  v144 = v55;
  v145 = v54;
  v57 = *(v56 + 64);
  sub_100003774();
  __chkstk_darwin(v58);
  sub_100003018();
  v160 = v59;
  v142 = sub_100099DF4(&qword_1002DDFB8, &qword_100239E70);
  sub_100003724(v142);
  v143 = v60;
  v62 = *(v61 + 64);
  sub_100003774();
  __chkstk_darwin(v63);
  sub_100003018();
  v159 = v64;
  v141 = sub_100099DF4(&qword_1002DDFC0, &qword_100239E78);
  sub_100003724(v141);
  v140 = v65;
  v67 = *(v66 + 64);
  sub_100003774();
  __chkstk_darwin(v68);
  sub_100003018();
  v158 = v69;
  v139 = sub_100099DF4(&qword_1002DDFC8, &qword_100239E80);
  sub_100003724(v139);
  v138 = v70;
  v72 = *(v71 + 64);
  sub_100003774();
  __chkstk_darwin(v73);
  sub_100003018();
  v154 = v74;
  v137 = sub_100099DF4(&qword_1002DDFD0, &qword_100239E88);
  sub_100003724(v137);
  v136 = v75;
  v77 = *(v76 + 64);
  sub_100003774();
  __chkstk_darwin(v78);
  sub_100003018();
  v153 = v79;
  v135 = sub_100099DF4(&qword_1002DDFD8, &qword_100239E90);
  sub_100003724(v135);
  v134 = v80;
  v82 = *(v81 + 64);
  sub_100003774();
  __chkstk_darwin(v83);
  sub_100003018();
  v152 = v84;
  v133 = sub_100099DF4(&qword_1002DDFE0, &qword_100239E98);
  sub_100003724(v133);
  v132[7] = v85;
  v87 = *(v86 + 64);
  sub_100003774();
  __chkstk_darwin(v88);
  v90 = v132 - v89;
  v91 = sub_100099DF4(&qword_1002DDFE8, &qword_100239EA0);
  sub_100003724(v91);
  v132[6] = v92;
  v94 = *(v93 + 64);
  sub_100003774();
  __chkstk_darwin(v95);
  v97 = v132 - v96;
  v98 = sub_100099DF4(&qword_1002DDFF0, &qword_100239EA8);
  sub_100003724(v98);
  v100 = v99;
  v102 = *(v101 + 64);
  sub_100003774();
  __chkstk_darwin(v103);
  sub_100005244();
  v105 = v31[3];
  v104 = v31[4];
  v161 = v31;
  sub_100008B3C(v31, v105);
  sub_100137EF8();
  sub_100008E04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_8;
  }

  v132[4] = v97;
  v132[3] = v91;
  v132[5] = v90;
  v106 = v159;
  v107 = v160;
  v162 = v100;
  v108 = KeyedDecodingContainer.allKeys.getter();
  sub_1000F8260(v108, 0);
  if (v110 == v111 >> 1)
  {
LABEL_7:
    v121 = type metadata accessor for DecodingError();
    swift_allocError();
    v123 = v122;
    v124 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v123 = &type metadata for CachedServerDataSyncTrigger;
    KeyedDecodingContainer.codingPath.getter();
    sub_10013A2BC();
    sub_10000B7EC(v121);
    (*(v125 + 104))(v123);
    swift_willThrow();
    swift_unknownObjectRelease();
    v126 = sub_10000A5AC();
    v127(v126);
LABEL_8:
    sub_100004118(v161);
LABEL_9:
    sub_100005074();
    return;
  }

  v132[2] = 0;
  if (v110 < (v111 >> 1))
  {
    v112 = *(v109 + v110);
    v113 = sub_1000F825C(v110 + 1);
    v115 = v114;
    v117 = v116;
    swift_unknownObjectRelease();
    if (v115 == v117 >> 1)
    {
      v132[1] = v113;
      switch(v112)
      {
        case 1:
          v163[6] = 1;
          sub_10013870C();
          sub_100006E54();
          sub_100004608();
          v118 = sub_10000BABC(&v164);
          v120 = &a9;
          goto LABEL_18;
        case 2:
          v163[7] = 2;
          sub_1001386B8();
          sub_100006E54();
          sub_100004608();
          v118 = sub_10000BABC(&a10);
          v120 = &a18;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_100138664();
          sub_100006E54();
          sub_100004608();
          v118 = sub_10000BABC(&a19);
          v120 = &a20;
          goto LABEL_18;
        case 4:
          a11 = 4;
          sub_100138610();
          sub_100006E54();
          sub_100004608();
          v118 = sub_10000BABC(&a21);
          v120 = &a22;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_1001385BC();
          sub_100007CB0();
          sub_100004608();
          v118 = sub_10000BABC(&a23);
          v120 = &a24;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_100138568();
          sub_100007CB0();
          sub_100004608();
          v119 = *(v143 + 8);
          v118 = v106;
          v120 = &a25;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_100138514();
          sub_100006E54();
          sub_100004608();
          v129 = v144;
          v128 = v145;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_1001384C0();
          v107 = v155;
          sub_100006E54();
          sub_100004608();
          v129 = v146;
          v128 = v147;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_10013846C();
          v107 = v156;
          sub_100006E54();
          sub_100004608();
          v129 = v148;
          v128 = v149;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_100138418();
          v107 = v157;
          sub_100006E54();
          sub_100004608();
          v129 = v150;
          v128 = v151;
LABEL_21:
          v119 = *(v129 + 8);
          v118 = v107;
          break;
        default:
          v163[5] = 0;
          sub_100138760();
          sub_100006E54();
          sub_100004608();
          v118 = sub_10000BABC(v163);
          v120 = &v160;
LABEL_18:
          v128 = *(v120 - 32);
          break;
      }

      v119(v118, v128);
      v130 = sub_10000A5AC();
      v131(v130);
      sub_100004118(v161);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100135C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xEC000000636E7953;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974706D65747461 && a2 == 0xEF746867696C666ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x797469726F697270 && a2 == 0xEC000000636E7953)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100135E2C(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x4974706D65747461;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0x676E696C6C6F70;
      break;
    case 4:
      result = 0x797469726F697270;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100135EE0()
{
  sub_100004868();
  v62 = v1;
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DE3A0, &qword_10023AC40);
  v5 = sub_100003724(v4);
  v60 = v6;
  v61 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v59 = v10;
  v11 = sub_100099DF4(&qword_1002DE3A8, &qword_10023AC48);
  v12 = sub_100003724(v11);
  v57 = v13;
  v58 = v12;
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_100003018();
  v56 = v17;
  v18 = sub_100099DF4(&qword_1002DE3B0, &qword_10023AC50);
  v19 = sub_100003724(v18);
  v54 = v20;
  v55 = v19;
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100003018();
  v53 = v24;
  v25 = sub_100099DF4(&qword_1002DE3B8, &qword_10023AC58);
  v26 = sub_100003724(v25);
  v51 = v27;
  v52 = v26;
  v29 = *(v28 + 64);
  sub_100003774();
  __chkstk_darwin(v30);
  sub_100005244();
  v31 = sub_100099DF4(&qword_1002DE3C0, &qword_10023AC60);
  sub_100003724(v31);
  v50 = v32;
  v34 = *(v33 + 64);
  sub_100003774();
  __chkstk_darwin(v35);
  v37 = &v50 - v36;
  v38 = sub_100099DF4(&qword_1002DE3C8, &qword_10023AC68);
  sub_100003724(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  sub_100003774();
  __chkstk_darwin(v43);
  v45 = &v50 - v44;
  v46 = v3[4];
  sub_100008B3C(v3, v3[3]);
  sub_1001399FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v62)
  {
    case 1:
      sub_100139B4C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v0, v52);
      break;
    case 2:
      sub_100139AF8();
      v47 = v53;
      sub_100003CBC();
      v49 = v54;
      v48 = v55;
      goto LABEL_6;
    case 3:
      sub_100139AA4();
      v47 = v56;
      sub_100003CBC();
      v49 = v57;
      v48 = v58;
      goto LABEL_6;
    case 4:
      sub_10000D548();
      sub_100139A50();
      v47 = v59;
      sub_100003CBC();
      v49 = v60;
      v48 = v61;
LABEL_6:
      (*(v49 + 8))(v47, v48);
      break;
    default:
      sub_100139BA0();
      sub_100003CBC();
      (*(v50 + 8))(v37, v31);
      break;
  }

  (*(v40 + 8))(v45, v38);
  sub_100005074();
}

void sub_100136320()
{
  sub_100004868();
  v87 = v0;
  v3 = v2;
  v86 = sub_100099DF4(&qword_1002DE340, &qword_10023AC10);
  sub_100003724(v86);
  v81 = v4;
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003018();
  v85 = v8;
  v9 = sub_100099DF4(&qword_1002DE348, &qword_10023AC18);
  v10 = sub_100003724(v9);
  v79 = v11;
  v80 = v10;
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100003018();
  v83 = v15;
  v16 = sub_100099DF4(&qword_1002DE350, &qword_10023AC20);
  v17 = sub_100003724(v16);
  v77 = v18;
  v78 = v17;
  v20 = *(v19 + 64);
  sub_100003774();
  __chkstk_darwin(v21);
  sub_100003018();
  v82 = v22;
  v23 = sub_100099DF4(&qword_1002DE358, &qword_10023AC28);
  v24 = sub_100003724(v23);
  v75 = v25;
  v76 = v24;
  v27 = *(v26 + 64);
  sub_100003774();
  __chkstk_darwin(v28);
  sub_1000051B0();
  v29 = sub_100099DF4(&qword_1002DE360, &qword_10023AC30);
  sub_100003724(v29);
  v74 = v30;
  v32 = *(v31 + 64);
  sub_100003774();
  __chkstk_darwin(v33);
  v35 = &v70 - v34;
  v36 = sub_100099DF4(&qword_1002DE368, &qword_10023AC38);
  sub_100003724(v36);
  v84 = v37;
  v39 = *(v38 + 64);
  sub_100003774();
  __chkstk_darwin(v40);
  v41 = v3[4];
  sub_100008B3C(v3, v3[3]);
  sub_1001399FC();
  v42 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {
    goto LABEL_8;
  }

  v71 = v29;
  v72 = v35;
  v73 = v1;
  v44 = v85;
  v43 = v86;
  v87 = v3;
  v45 = KeyedDecodingContainer.allKeys.getter();
  sub_1000F8260(v45, 0);
  if (v47 == v48 >> 1)
  {
LABEL_7:
    v56 = type metadata accessor for DecodingError();
    swift_allocError();
    v58 = v57;
    v59 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v58 = &type metadata for CachedServerDataSyncReason;
    KeyedDecodingContainer.codingPath.getter();
    sub_10013A2BC();
    sub_10000B7EC(v56);
    (*(v60 + 104))(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = *(v84 + 8);
    v62 = sub_100005CD0();
    v63(v62);
    v3 = v87;
LABEL_8:
    sub_100004118(v3);
LABEL_9:
    sub_100005074();
    return;
  }

  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_1000F825C(v47 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      v54 = v84;
      switch(v49)
      {
        case 1:
          sub_100139B4C();
          v64 = v73;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v66 = v75;
          v65 = v76;
          goto LABEL_14;
        case 2:
          sub_100139AF8();
          v64 = v82;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v66 = v77;
          v65 = v78;
          goto LABEL_14;
        case 3:
          sub_100139AA4();
          v64 = v83;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v66 = v79;
          v65 = v80;
LABEL_14:
          (*(v66 + 8))(v64, v65);
          break;
        case 4:
          sub_10000D548();
          sub_100139A50();
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v81 + 8))(v44, v43);
          break;
        default:
          sub_100139BA0();
          v55 = v72;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v74 + 8))(v55, v71);
          break;
      }

      v67 = *(v54 + 8);
      v68 = sub_100005CD0();
      v69(v68);
      sub_100004118(v87);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100136998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x44496B736174 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100136B48(char a1)
{
  result = 0x49746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x636E79537478656ELL;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F73616572;
      break;
    case 4:
      result = 0x44496B736174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100136BE4(uint64_t a1, uint64_t a2)
{
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  v5 = v4[5];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100136CB0(void *a1)
{
  v4 = v1;
  v6 = sub_100099DF4(&qword_1002DE330, &qword_10023AC08);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_1000051B0();
  v12 = a1[4];
  sub_100008B3C(a1, a1[3]);
  sub_100139840();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for AccountIdentity();
  sub_10000671C();
  sub_100137D50(v13, v14);
  sub_100014074();
  if (!v2)
  {
    v15 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
    v16 = v15[5];
    type metadata accessor for Date();
    sub_100004BAC();
    sub_100137D50(v17, v18);
    sub_100014074();
    v21 = *(v4 + v15[6]);
    sub_100137EA4();
    sub_10000AB74();
    v22 = *(v4 + v15[7]);
    sub_1001399A8();
    sub_10000AB74();
    v19 = (v4 + v15[8]);
    v23 = *v19;
    v24 = v19[1];
    sub_10000D548();
    sub_1000AEE94();
    sub_10000AB74();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_100136EEC()
{
  v1 = v0;
  type metadata accessor for AccountIdentity();
  sub_10000671C();
  sub_100137D50(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  v5 = v4[5];
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v6, v7);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v4[6]));
  Hasher._combine(_:)(*(v1 + v4[7]));
  v8 = (v1 + v4[8]);
  v9 = *v8;
  v10 = v8[1];

  return String.hash(into:)();
}

Swift::Int sub_100136FF0()
{
  Hasher.init(_seed:)();
  sub_100136EEC();
  return Hasher._finalize()();
}

void sub_100137030()
{
  sub_100004868();
  v3 = v2;
  v34 = v4;
  v5 = type metadata accessor for Date();
  v6 = sub_100003724(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = type metadata accessor for AccountIdentity();
  v14 = sub_100003724(v13);
  v35 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v39 = v19 - v18;
  v40 = sub_100099DF4(&qword_1002DE318, &qword_10023AC00);
  sub_100003724(v40);
  v38 = v20;
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100005244();
  v24 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  sub_10000B7EC(v24);
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  sub_10000306C();
  sub_1000051B0();
  v28 = v3[4];
  sub_100008B3C(v3, v3[3]);
  sub_100139840();
  sub_100008E04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v3);
  }

  else
  {
    sub_10000671C();
    sub_100137D50(v29, v30);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 32))(v1, v39);
    LOBYTE(v41) = 1;
    sub_100004BAC();
    sub_100137D50(v31, v32);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v36 + 32))(v1 + v24[5], v12, v37);
    sub_100137DEC();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + v24[6]) = 1;
    sub_100139894();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + v24[7]) = 1;
    sub_10000D548();
    sub_1000AEE40();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v38 + 8))(0, v40);
    v33 = (v1 + v24[8]);
    *v33 = v41;
    v33[1] = v42;
    sub_1001398E8(v1, v34);
    sub_100004118(v3);
    sub_10013994C(v1);
  }

  sub_100005074();
}

Swift::Int sub_1001374B4()
{
  Hasher.init(_seed:)();
  sub_100133CD4(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001374FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100133DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137524(uint64_t a1)
{
  v2 = sub_100137D98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137560(uint64_t a1)
{
  v2 = sub_100137D98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001375D4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  v4 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100137D50(&qword_1002DAC90, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100137680(uint64_t a1)
{
  v2 = sub_100138418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001376BC(uint64_t a1)
{
  v2 = sub_100138418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001344BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137740(uint64_t a1)
{
  v2 = sub_100137EF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013777C(uint64_t a1)
{
  v2 = sub_100137EF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001377B8(uint64_t a1)
{
  v2 = sub_10013870C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001377F4(uint64_t a1)
{
  v2 = sub_10013870C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137830(uint64_t a1)
{
  v2 = sub_100138514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013786C(uint64_t a1)
{
  v2 = sub_100138514();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001378A8(uint64_t a1)
{
  v2 = sub_1001386B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001378E4(uint64_t a1)
{
  v2 = sub_1001386B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137920(uint64_t a1)
{
  v2 = sub_10013846C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013795C(uint64_t a1)
{
  v2 = sub_10013846C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137998(uint64_t a1)
{
  v2 = sub_1001384C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001379D4(uint64_t a1)
{
  v2 = sub_1001384C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137A10(uint64_t a1)
{
  v2 = sub_1001385BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137A4C(uint64_t a1)
{
  v2 = sub_1001385BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137A88(uint64_t a1)
{
  v2 = sub_100138760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137AC4(uint64_t a1)
{
  v2 = sub_100138760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137B00(uint64_t a1)
{
  v2 = sub_100138664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137B3C(uint64_t a1)
{
  v2 = sub_100138664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137B78(uint64_t a1)
{
  v2 = sub_100138568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137BB4(uint64_t a1)
{
  v2 = sub_100138568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137BF0(uint64_t a1)
{
  v2 = sub_100138610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137C2C(uint64_t a1)
{
  v2 = sub_100138610();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100137CB4()
{
  result = qword_1002DDF60;
  if (!qword_1002DDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDF60);
  }

  return result;
}

uint64_t sub_100137D50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100137D98()
{
  result = qword_1002DDF78;
  if (!qword_1002DDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDF78);
  }

  return result;
}

unint64_t sub_100137DEC()
{
  result = qword_1002DDF80;
  if (!qword_1002DDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDF80);
  }

  return result;
}

uint64_t sub_100137E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedServerDataSyncAttempt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100137EA4()
{
  result = qword_1002DDF90;
  if (!qword_1002DDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDF90);
  }

  return result;
}

unint64_t sub_100137EF8()
{
  result = qword_1002DDFF8;
  if (!qword_1002DDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DDFF8);
  }

  return result;
}

uint64_t sub_100137F4C(uint64_t a1)
{
  v2 = sub_100139B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137F88(uint64_t a1)
{
  v2 = sub_100139B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100135C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137FF4(uint64_t a1)
{
  v2 = sub_1001399FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138030(uint64_t a1)
{
  v2 = sub_1001399FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013806C(uint64_t a1)
{
  v2 = sub_100139AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001380A8(uint64_t a1)
{
  v2 = sub_100139AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001380E4(uint64_t a1)
{
  v2 = sub_100139AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138120(uint64_t a1)
{
  v2 = sub_100139AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013815C(uint64_t a1)
{
  v2 = sub_100139A50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138198(uint64_t a1)
{
  v2 = sub_100139A50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001381D4(uint64_t a1)
{
  v2 = sub_100139BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138210(uint64_t a1)
{
  v2 = sub_100139BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100138264(_BYTE *a1@<X8>)
{
  sub_100136320();
  if (!v1)
  {
    *a1 = v3;
  }
}

Swift::Int sub_1001382AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100138300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100136998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100138328(uint64_t a1)
{
  v2 = sub_100139840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138364(uint64_t a1)
{
  v2 = sub_100139840();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001383A8()
{
  Hasher.init(_seed:)();
  sub_100136EEC();
  return Hasher._finalize()();
}

unint64_t sub_100138418()
{
  result = qword_1002DE000;
  if (!qword_1002DE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE000);
  }

  return result;
}

unint64_t sub_10013846C()
{
  result = qword_1002DE008;
  if (!qword_1002DE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE008);
  }

  return result;
}

unint64_t sub_1001384C0()
{
  result = qword_1002DE010;
  if (!qword_1002DE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE010);
  }

  return result;
}

unint64_t sub_100138514()
{
  result = qword_1002DE018;
  if (!qword_1002DE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE018);
  }

  return result;
}

unint64_t sub_100138568()
{
  result = qword_1002DE020;
  if (!qword_1002DE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE020);
  }

  return result;
}

unint64_t sub_1001385BC()
{
  result = qword_1002DE028;
  if (!qword_1002DE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE028);
  }

  return result;
}

unint64_t sub_100138610()
{
  result = qword_1002DE030;
  if (!qword_1002DE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE030);
  }

  return result;
}

unint64_t sub_100138664()
{
  result = qword_1002DE038;
  if (!qword_1002DE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE038);
  }

  return result;
}

unint64_t sub_1001386B8()
{
  result = qword_1002DE040;
  if (!qword_1002DE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE040);
  }

  return result;
}

unint64_t sub_10013870C()
{
  result = qword_1002DE048;
  if (!qword_1002DE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE048);
  }

  return result;
}

unint64_t sub_100138760()
{
  result = qword_1002DE050;
  if (!qword_1002DE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE050);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CachedServerDataSyncScheduleAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for CachedServerDataSyncScheduleAction(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CachedServerDataSyncScheduleAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[52])
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

uint64_t storeEnumTagSinglePayload for CachedServerDataSyncScheduleAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1001388A4(unsigned __int8 *a1)
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

double sub_1001388C0(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *a1 = a2 + 1;
  }

  return result;
}

uint64_t sub_100138950()
{
  result = type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100138A28()
{
  type metadata accessor for AccountIdentity();
  if (v0 <= 0x3F)
  {
    sub_100126598(319, &qword_1002DA9F8, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_100126598(319, &unk_1002DD718, type metadata accessor for CachedServerDataSyncAttempt);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_100138B40(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CachedServerDataSyncAttempt.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100138DAC()
{
  result = qword_1002DE220;
  if (!qword_1002DE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE220);
  }

  return result;
}

unint64_t sub_100138E04()
{
  result = qword_1002DE228;
  if (!qword_1002DE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE228);
  }

  return result;
}

unint64_t sub_100138E5C()
{
  result = qword_1002DE230;
  if (!qword_1002DE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE230);
  }

  return result;
}

unint64_t sub_100138EFC()
{
  result = qword_1002DE240;
  if (!qword_1002DE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE240);
  }

  return result;
}

unint64_t sub_100138F54()
{
  result = qword_1002DE248;
  if (!qword_1002DE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE248);
  }

  return result;
}

unint64_t sub_100138FAC()
{
  result = qword_1002DE250;
  if (!qword_1002DE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE250);
  }

  return result;
}

unint64_t sub_100139004()
{
  result = qword_1002DE258;
  if (!qword_1002DE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE258);
  }

  return result;
}

unint64_t sub_10013905C()
{
  result = qword_1002DE260;
  if (!qword_1002DE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE260);
  }

  return result;
}

unint64_t sub_1001390B4()
{
  result = qword_1002DE268;
  if (!qword_1002DE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE268);
  }

  return result;
}

unint64_t sub_10013910C()
{
  result = qword_1002DE270;
  if (!qword_1002DE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE270);
  }

  return result;
}

unint64_t sub_100139164()
{
  result = qword_1002DE278;
  if (!qword_1002DE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE278);
  }

  return result;
}

unint64_t sub_1001391BC()
{
  result = qword_1002DE280;
  if (!qword_1002DE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE280);
  }

  return result;
}

unint64_t sub_100139214()
{
  result = qword_1002DE288;
  if (!qword_1002DE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE288);
  }

  return result;
}

unint64_t sub_10013926C()
{
  result = qword_1002DE290;
  if (!qword_1002DE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE290);
  }

  return result;
}

unint64_t sub_1001392C4()
{
  result = qword_1002DE298;
  if (!qword_1002DE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE298);
  }

  return result;
}

unint64_t sub_10013931C()
{
  result = qword_1002DE2A0;
  if (!qword_1002DE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2A0);
  }

  return result;
}

unint64_t sub_100139374()
{
  result = qword_1002DE2A8;
  if (!qword_1002DE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2A8);
  }

  return result;
}

unint64_t sub_1001393CC()
{
  result = qword_1002DE2B0;
  if (!qword_1002DE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2B0);
  }

  return result;
}

unint64_t sub_100139424()
{
  result = qword_1002DE2B8;
  if (!qword_1002DE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2B8);
  }

  return result;
}

unint64_t sub_10013947C()
{
  result = qword_1002DE2C0;
  if (!qword_1002DE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2C0);
  }

  return result;
}

unint64_t sub_1001394D4()
{
  result = qword_1002DE2C8;
  if (!qword_1002DE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2C8);
  }

  return result;
}

unint64_t sub_10013952C()
{
  result = qword_1002DE2D0;
  if (!qword_1002DE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2D0);
  }

  return result;
}

unint64_t sub_100139584()
{
  result = qword_1002DE2D8;
  if (!qword_1002DE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2D8);
  }

  return result;
}

unint64_t sub_1001395DC()
{
  result = qword_1002DE2E0;
  if (!qword_1002DE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2E0);
  }

  return result;
}

unint64_t sub_100139634()
{
  result = qword_1002DE2E8;
  if (!qword_1002DE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2E8);
  }

  return result;
}

unint64_t sub_10013968C()
{
  result = qword_1002DE2F0;
  if (!qword_1002DE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2F0);
  }

  return result;
}

unint64_t sub_1001396E4()
{
  result = qword_1002DE2F8;
  if (!qword_1002DE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE2F8);
  }

  return result;
}

unint64_t sub_10013973C()
{
  result = qword_1002DE300;
  if (!qword_1002DE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE300);
  }

  return result;
}

unint64_t sub_100139794()
{
  result = qword_1002DE308;
  if (!qword_1002DE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE308);
  }

  return result;
}

unint64_t sub_1001397EC()
{
  result = qword_1002DE310;
  if (!qword_1002DE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE310);
  }

  return result;
}

unint64_t sub_100139840()
{
  result = qword_1002DE320;
  if (!qword_1002DE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE320);
  }

  return result;
}

unint64_t sub_100139894()
{
  result = qword_1002DE328;
  if (!qword_1002DE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE328);
  }

  return result;
}

uint64_t sub_1001398E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013994C(uint64_t a1)
{
  v2 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001399A8()
{
  result = qword_1002DE338;
  if (!qword_1002DE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE338);
  }

  return result;
}

unint64_t sub_1001399FC()
{
  result = qword_1002DE370;
  if (!qword_1002DE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE370);
  }

  return result;
}

unint64_t sub_100139A50()
{
  result = qword_1002DE378;
  if (!qword_1002DE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE378);
  }

  return result;
}

unint64_t sub_100139AA4()
{
  result = qword_1002DE380;
  if (!qword_1002DE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE380);
  }

  return result;
}

unint64_t sub_100139AF8()
{
  result = qword_1002DE388;
  if (!qword_1002DE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE388);
  }

  return result;
}

unint64_t sub_100139B4C()
{
  result = qword_1002DE390;
  if (!qword_1002DE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE390);
  }

  return result;
}

unint64_t sub_100139BA0()
{
  result = qword_1002DE398;
  if (!qword_1002DE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE398);
  }

  return result;
}

_BYTE *sub_100139C54(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100139D34()
{
  result = qword_1002DE3D0;
  if (!qword_1002DE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3D0);
  }

  return result;
}

unint64_t sub_100139D8C()
{
  result = qword_1002DE3D8;
  if (!qword_1002DE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3D8);
  }

  return result;
}

unint64_t sub_100139DE4()
{
  result = qword_1002DE3E0;
  if (!qword_1002DE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3E0);
  }

  return result;
}

unint64_t sub_100139E3C()
{
  result = qword_1002DE3E8;
  if (!qword_1002DE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3E8);
  }

  return result;
}

unint64_t sub_100139E94()
{
  result = qword_1002DE3F0;
  if (!qword_1002DE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3F0);
  }

  return result;
}

unint64_t sub_100139EEC()
{
  result = qword_1002DE3F8;
  if (!qword_1002DE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE3F8);
  }

  return result;
}

unint64_t sub_100139F44()
{
  result = qword_1002DE400;
  if (!qword_1002DE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE400);
  }

  return result;
}

unint64_t sub_100139F9C()
{
  result = qword_1002DE408;
  if (!qword_1002DE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE408);
  }

  return result;
}

unint64_t sub_100139FF4()
{
  result = qword_1002DE410;
  if (!qword_1002DE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE410);
  }

  return result;
}

unint64_t sub_10013A04C()
{
  result = qword_1002DE418;
  if (!qword_1002DE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE418);
  }

  return result;
}

unint64_t sub_10013A0A4()
{
  result = qword_1002DE420;
  if (!qword_1002DE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE420);
  }

  return result;
}

unint64_t sub_10013A0FC()
{
  result = qword_1002DE428;
  if (!qword_1002DE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE428);
  }

  return result;
}

unint64_t sub_10013A154()
{
  result = qword_1002DE430;
  if (!qword_1002DE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE430);
  }

  return result;
}

unint64_t sub_10013A1AC()
{
  result = qword_1002DE438;
  if (!qword_1002DE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE438);
  }

  return result;
}

unint64_t sub_10013A204()
{
  result = qword_1002DE440;
  if (!qword_1002DE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE440);
  }

  return result;
}

unint64_t sub_10013A25C()
{
  result = qword_1002DE448;
  if (!qword_1002DE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE448);
  }

  return result;
}

uint64_t sub_10013A2BC()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

void sub_10013A2DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v80 = (&v77 - v10);
  v79 = type metadata accessor for CachedServerDataSyncAttempt(0);
  v11 = sub_10000307C(v79);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v78 = (v15 - v14);
  v16 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v16);
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for Date();
  v23 = sub_100003724(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_10000306C();
  v30 = (v29 - v28);
  v31 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  sub_100010660(a1 + v31[14], v21, &qword_1002DA970, &qword_1002318B0);
  sub_100007AFC(v21);
  if (v32)
  {
    sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    v33 = a2;
    v34 = *(v25 + 32);
    v34(v30, v21, v22);
    v35 = static Date.> infix(_:_:)();
    if (v35)
    {
      v36 = sub_1000076F8();
      sub_100003BF0(v36);
      v38 = *(v37 + 16);
      v39 = sub_100003224();
      v40(v39);
      v41 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
      v34((a3 + v41[5]), v30, v22);
      v43 = *a1;
      v42 = a1[1];
      *(a3 + v41[6]) = *(a1 + v31[10]);
      *(a3 + v41[7]) = 2;
      v44 = (a3 + v41[8]);
      *v44 = v43;
      v44[1] = v42;
      goto LABEL_11;
    }

    (*(v25 + 8))(v30, v22);
    a2 = v33;
  }

  v45 = v80;
  if (*(a1 + v31[10]) != 10 && *(a1 + v31[10]))
  {
    if (*(a1 + v31[17]))
    {
      sub_10013A730(a1, a2, a3);
      return;
    }

    sub_100010660(a1 + v31[18], v80, &qword_1002DB940, &qword_100232B48);
    if (sub_100004DFC(v45, 1, v79) == 1)
    {
      sub_100004E24(v45, &qword_1002DB940, &qword_100232B48);
      v58 = sub_1000076F8();
      sub_100003BF0(v58);
      v60 = *(v59 + 16);
      v61 = sub_100003224();
      v62(v61);
      v63 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
      v64 = sub_100006E78(v63);
      v65(v64);
      v54 = sub_10000BACC();
      *(a3 + v66) = 0;
    }

    else
    {
      v67 = v78;
      sub_100137E40(v45, v78);
      v68 = sub_1000076F8();
      sub_100003BF0(v68);
      v70 = *(v69 + 16);
      v71 = sub_100003224();
      v72(v71);
      v73 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
      v74 = sub_100006E78(v73);
      v75(v74);
      v76 = *v67;
      sub_10013AB78(v67);
      v55 = *a1;
      v54 = a1[1];
      *(a3 + v45[6]) = v76;
      *(a3 + v45[7]) = 1;
    }
  }

  else
  {
    v46 = sub_1000076F8();
    sub_100003BF0(v46);
    v48 = *(v47 + 16);
    v49 = sub_100003224();
    v50(v49);
    v51 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
    v52 = sub_100006E78(v51);
    v53(v52);
    v54 = sub_10000BACC();
    *(a3 + v56) = 4;
  }

  v57 = (a3 + v45[8]);
  *v57 = v55;
  v57[1] = v54;
LABEL_11:
}

void sub_10013A730(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Date();
  v12 = sub_100003724(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  v24 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v25 = *&a1[v24[6]];
  v26 = v24[16];
  v27 = *&a1[v24[17]];
  v28 = *&a1[v24[7]];
  v52 = *&a1[v24[8]];
  v53 = v28;
  sub_100010660(&a1[v26], v10, &qword_1002DA970, &qword_1002318B0);
  sub_100007AFC(v10);
  if (v29)
  {
    static Date.distantPast.getter();
    sub_100007AFC(v10);
    if (!v29)
    {
      sub_100004E24(v10, &qword_1002DA970, &qword_1002318B0);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v10, v11);
  }

  NSDecimal.init(_:)(v30, v25);
  if (v27 < 0)
  {
    __break(1u);
  }

  else
  {
    v51 = a3;
    pow(_:_:)(v33, v31, v32);
    v50 = v27;
    NSDecimal.init(_:)(v34, v52);
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v35);
    v37 = v36;
    [v36 doubleValue];

    Date.addingTimeInterval(_:)();
    v38 = *(v14 + 8);
    v38(v20, v11);
    v39 = v54;
    if (static Date.> infix(_:_:)())
    {
      v40 = v55;
      (*(v14 + 32))(v55, v23, v11);
    }

    else
    {
      v38(v23, v11);
      v40 = v55;
      (*(v14 + 16))(v55, v39, v11);
    }

    v41 = v24[5];
    v42 = type metadata accessor for AccountIdentity();
    sub_100003BF0(v42);
    v44 = v51;
    (*(v43 + 16))(v51, &a1[v41]);
    v45 = a1[v24[10]];
    v47 = *a1;
    v46 = *(a1 + 1);
    v48 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
    (*(v14 + 32))(v44 + v48[5], v40, v11);
    *(v44 + v48[6]) = v45;
    *(v44 + v48[7]) = 2;
    v49 = (v44 + v48[8]);
    *v49 = v47;
    v49[1] = v46;
  }
}

void sub_10013AB18(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = 60.0;
  if (a2 >= 1800.0)
  {
    v2 = 300.0;
  }

  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 257;
  *(a1 + 51) = 0;
}

uint64_t sub_10013AB78(uint64_t a1)
{
  v2 = type metadata accessor for CachedServerDataSyncAttempt(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10013CD68(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100004DFC(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100004E24(v12, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100004E24(a3, &qword_1002DB950, &qword_100232E50);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004E24(a3, &qword_1002DB950, &qword_100232E50);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id AMSDRemoteSignInTask.init(authenticationResults:signInContext:serviceTypes:clientInfo:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v39 = a4;
  v7 = sub_100099DF4(&qword_1002DE450, &unk_10023B220);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SignInRequest.ServiceType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for SignInRequest());
  v38 = a1;
  v15 = SignInRequest.init(authenticationResults:)();
  v16 = a2;
  v36 = v15;
  v37 = v16;
  dispatch thunk of SignInRequest.signInContext.setter();
  result = sub_1000044BC(a3);
  v18 = result;
  v19 = 0;
  v43 = _swiftEmptyArrayStorage;
  v35 = v12;
  v41 = (v12 + 32);
  while (1)
  {
    if (v18 == v19)
    {

      v29 = v36;
      dispatch thunk of SignInRequest.serviceTypes.setter();
      v30 = v39;
      v31 = v40;
      *&v40[OBJC_IVAR____TtC12amsaccountsd20AMSDRemoteSignInTask_request] = v29;
      *&v31[OBJC_IVAR____TtC12amsaccountsd20AMSDRemoteSignInTask_clientInfo] = v30;
      v32 = type metadata accessor for AMSDRemoteSignInTask();
      v44.receiver = v31;
      v44.super_class = v32;
      v33 = objc_msgSendSuper2(&v44, "init");

      return v33;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(a3 + 8 * v19 + 32);
    }

    v20 = result;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    [result integerValue];
    SignInRequest.ServiceType.init(rawValue:)();

    if (sub_100004DFC(v10, 1, v11) == 1)
    {
      result = sub_100004E24(v10, &qword_1002DE450, &unk_10023B220);
      ++v19;
    }

    else
    {
      v21 = *v41;
      (*v41)(v42, v10, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000B558(0, v43[2] + 1, 1, v43, &qword_1002DE508, &unk_10023B320, &type metadata accessor for SignInRequest.ServiceType, &type metadata accessor for SignInRequest.ServiceType);
        v43 = v27;
      }

      v24 = v43[2];
      v23 = v43[3];
      if (v24 >= v23 >> 1)
      {
        sub_10000B558(v23 > 1, v24 + 1, 1, v43, &qword_1002DE508, &unk_10023B320, &type metadata accessor for SignInRequest.ServiceType, &type metadata accessor for SignInRequest.ServiceType);
        v43 = v28;
      }

      v25 = v42;
      v26 = v43;
      v43[2] = v24 + 1;
      result = (v34)(v26 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v25, v11);
      ++v19;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id AMSDRemoteSignInTask.perform()()
{
  v1 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = [objc_allocWithZone(AMSMutablePromise) init];
  v6 = type metadata accessor for TaskPriority();
  sub_100002728(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v5;
  v8 = v0;
  v9 = v5;
  sub_10013ABD4(0, 0, v4, &unk_10023B238, v7);

  return v9;
}

uint64_t sub_10013B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10013B45C, 0, 0);
}

uint64_t sub_10013B45C()
{
  sub_100007F3C();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12amsaccountsd20AMSDRemoteSignInTask_request);
  v3 = *(v1 + OBJC_IVAR____TtC12amsaccountsd20AMSDRemoteSignInTask_clientInfo);
  v4 = objc_allocWithZone(type metadata accessor for RemoteSignInTask());
  v5 = v2;
  v6 = v3;
  v0[4] = RemoteSignInTask.init(request:clientInfo:)();
  v7 = *(&async function pointer to dispatch thunk of RemoteSignInTask.perform() + 1);
  v10 = (&async function pointer to dispatch thunk of RemoteSignInTask.perform() + async function pointer to dispatch thunk of RemoteSignInTask.perform());
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10013B54C;

  return v10();
}

uint64_t sub_10013B54C()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  v4 = *(v2 + 40);
  v8 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_10013B864;
  }

  else
  {
    v6 = sub_10013B658;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013B658()
{
  v1 = *(v0 + 48);
  sub_100099DF4(&qword_1002DE500, &qword_10023B318);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v1 + 64;
  v8 = v6 & *(v1 + 64);
  v9 = (v5 + 63) >> 6;
  v28 = result + 64;
  v29 = v1;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v29 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v29 + 56) + v13);
      sub_10013CD24();

      result = NSNumber.init(BOOLeanLiteral:)(v17).super.super.isa;
      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v15;
      v18[1] = v16;
      *(v3[7] + 8 * v13) = result;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = *(v7 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v22 = v27[6];
    v23 = v27[3];
    v24 = v27[4];

    sub_10013CD24();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 finishWithResult:isa];

    sub_100002E08();

    return v26();
  }

  return result;
}

uint64_t sub_10013B864()
{
  sub_100007F3C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();
  [v2 finishWithError:v3];

  sub_100002E08();

  return v4();
}

id DaemonAutoBugCaptureServiceTrampoline.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSDRemoteSignInTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSDRemoteSignInTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013BA2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10013BB24;

  return v7(a1);
}

uint64_t sub_10013BB24()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

void sub_10013BC44()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DE4A0, &qword_10023B278);
    v9 = sub_100003CDC();
    sub_10000BAE0(v9);
    sub_100003954(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10013BD4C()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DE4E8, &qword_10023B2D0);
    v9 = swift_allocObject();
    sub_10000BAE0(v9);
    sub_100003954(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v3 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10013BE20()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DD540, &unk_10023B2E0);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100007C48();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10000B80C();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002DB9C8, &qword_100238270);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

void sub_10013BF14()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100004620(v6);
  if (v2)
  {
    sub_100099DF4(&qword_1002DD520, &unk_100238230);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100007C48();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_10013C01C()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100004620(v6);
  if (v2)
  {
    sub_100099DF4(&qword_1002DD548, &qword_100238278);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100003230();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_10013C0F0()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DD3B0, &unk_100237710);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100007C48();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10013C244(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100005380(v7);
  *v8 = v9;
  v8[1] = sub_1000C6A64;

  return sub_10013B43C(a1, v3, v4, v6, v5);
}

void sub_10013C2FC()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DE490, &qword_10023B260);
    v9 = sub_10000EE6C();
    sub_10000BAE0(v9);
    sub_10000A5C0(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v3 != v0 || &v12[104 * v2] <= v11)
    {
      memmove(v11, v12, 104 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10013C3D0()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DE4F8, &qword_10023B2F8);
    v9 = sub_10000EE6C();
    sub_10000BAE0(v9);
    sub_10000A5C0(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v3 != v0 || &v12[184 * v2] <= v11)
    {
      memmove(v11, v12, 184 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10013C4A4()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100004620(v6);
  if (v2)
  {
    sub_100099DF4(&qword_1002DE4F0, &qword_10023B2D8);
    v9 = sub_100003CDC();
    j__malloc_size(v9);
    sub_100003230();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_10013C578()
{
  sub_1000076BC();
  if (v5)
  {
    sub_100006D74();
    if (v7 != v8)
    {
      sub_100007310();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000066AC(v6);
  if (v3)
  {
    sub_100099DF4(&qword_1002DEAA0, &qword_10023B2F0);
    v9 = sub_100003CDC();
    sub_10000BAE0(v9);
    sub_100003954(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000C078();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10013C66C(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_100006D74();
    if (v13 != v14)
    {
      sub_100007310();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_100099DF4(a5, a6);
    v17 = sub_100003CDC();
    j__malloc_size(v17);
    sub_100003230();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_10013C818()
{
  sub_100008E18();
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F090(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v0;
  v6[3] = 2 * ((v7 - 32) / 24);
  return v6;
}

void *sub_10013C8A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F090(a1, a2, a3, a4);
  v10 = *(sub_100099DF4(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = v6;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10013C99C()
{
  sub_100008E18();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_100099DF4(&qword_1002DD560, &qword_100238308);
  v3 = sub_100003CDC();
  j__malloc_size(v3);
  sub_100003230();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *sub_10013CA08()
{
  sub_100008E18();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_100099DF4(&qword_1002DD548, &qword_100238278);
  v3 = sub_100003CDC();
  j__malloc_size(v3);
  sub_100003230();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *sub_10013CA74()
{
  sub_100008E18();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_100099DF4(&qword_1002DD3B0, &unk_100237710);
  v3 = sub_100003CDC();
  j__malloc_size(v3);
  sub_100007C48();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

char *sub_10013CAD8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_10013CAF8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_10013CB34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

uint64_t sub_10013CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10000B42C();
  if (v10 && (v11 = sub_100099DF4(a4, a5), result = sub_10000307C(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_100006A90();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100099DF4(a4, a5);
    sub_100006A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_10013CC38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

uint64_t sub_10013CC70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000B42C();
  if (v8 && (v9 = (a4)(0), result = sub_10000307C(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100006A90();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100006A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

unint64_t sub_10013CD24()
{
  result = qword_1002DA6C8;
  if (!qword_1002DA6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DA6C8);
  }

  return result;
}

uint64_t sub_10013CD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013CDD8()
{
  sub_100007F3C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005380(v3);
  *v4 = v5;
  v6 = sub_100008360(v4);

  return v7(v6);
}

uint64_t sub_10013CE6C()
{
  sub_100007F3C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005380(v3);
  *v4 = v5;
  v6 = sub_100008360(v4);

  return v7(v6);
}

uint64_t DaemonAutoBugCaptureServiceTrampoline.captureSnapshot(signature:delay:events:payload:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  type metadata accessor for AutoBugCaptureReport();
  v11 = _s18AppleMediaServices20AutoBugCaptureReportC19sendSnapshotFromXPC9signature5delay6events7payload7actionsSDys11AnyHashableVypGAL_SdSayALGSgALSgAOtYaAA0defG5ErrorOYKFZTu[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10013CFE0;
  v13.n128_f64[0] = a5;

  return __s18AppleMediaServices20AutoBugCaptureReportC19sendSnapshotFromXPC9signature5delay6events7payload7actionsSDys11AnyHashableVypGAL_SdSayALGSgALSgAOtYaAA0defG5ErrorOYKFZ(a1, a2, a3, a4, v13);
}

uint64_t sub_10013CFE0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  sub_100004504();
  *v6 = v5;
  *(v7 + 24) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_10013D114, 0, 0);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t sub_10013D114()
{
  v1 = *(v0 + 24);
  sub_10013D194();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10013D194()
{
  result = qword_1002DE510;
  if (!qword_1002DE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DE510);
  }

  return result;
}

uint64_t sub_10013D2B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, double a6, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7[4] = v13;
  if (a2)
  {
    sub_100099DF4(&qword_1002DE4B0, &qword_10023B288);
    a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7[5] = a2;
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7[6] = a3;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7[7] = a4;
  v14 = a7;
  v15 = swift_task_alloc();
  v7[8] = v15;
  *v15 = v7;
  v15[1] = sub_10013D440;

  return DaemonAutoBugCaptureServiceTrampoline.captureSnapshot(signature:delay:events:payload:actions:)(v13, a2, a3, a4, a6);
}

uint64_t sub_10013D440()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[8];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[7];
  v11 = v3[6];
  v12 = v3[5];

  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    isa = 0;
    v15 = v13;
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = 0;
    v15 = isa;
  }

  v16 = v4[3];
  (v16)[2](v16, isa, v13);

  _Block_release(v16);
  v17 = v9[1];

  return v17();
}

id DaemonAutoBugCaptureServiceTrampoline.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10013D6D4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10013D7B4;

  return sub_10013D2B0(v2, v4, v5, v6, v7, v3, v8);
}

uint64_t sub_10013D7B4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100004504();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

id AMSDVerifyDevicePasscodeTask.init(clientInfo:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceAction;
  v4 = enum case for AuthenticationViewServiceAction.verifyDevicePasscodeAction(_:);
  v5 = type metadata accessor for AuthenticationViewServiceAction();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceConnectPromise] = 0;
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_listener] = 0;
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_connection] = 0;
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_clientInfo] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AMSDVerifyDevicePasscodeTask();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t type metadata accessor for AMSDVerifyDevicePasscodeTask()
{
  result = qword_1002DE5A0;
  if (!qword_1002DE5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AMSDVerifyDevicePasscodeTask.perform()()
{
  v1 = v0;
  v2 = [objc_opt_self() anonymousListener];
  [v2 setDelegate:v1];
  [v2 resume];
  v3 = *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_listener];
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_listener] = v2;
  v4 = v2;

  v5 = [objc_allocWithZone(AMSMutablePromise) init];
  v6 = *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceConnectPromise];
  *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceConnectPromise] = v5;
  v7 = v5;

  v8 = objc_opt_self();
  v9 = *&v1[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_clientInfo];
  AuthenticationViewServiceAction.rawValue.getter();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v11 = [v4 endpoint];
  v12 = [v11 _endpoint];

  swift_unknownObjectRelease();
  sub_100004BD4();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v18[4] = sub_10013DFC8;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013E11C;
  v18[3] = &unk_1002B9128;
  v14 = _Block_copy(v18);
  v15 = v1;

  v16 = [v7 continueWithBinaryPromiseBlock:v14];

  _Block_release(v14);
  return v16;
}

id sub_10013DC44(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Log();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Log.accounts.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v29 = type metadata accessor for AMSDVerifyDevicePasscodeTask();
    aBlock[0] = a3;
    v14 = a3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(aBlock);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v22 = v26;
    v23 = v27;
    v29 = v27;
    v24 = sub_100007914(aBlock);
    (*(*(v23 - 1) + 16))(v24, v22, v23);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100009DF4(aBlock);
    Log.error(_:)();

    (*(v7 + 8))(v10, v6);
    sub_10013EA4C();
    return sub_10013DFD0();
  }

  else
  {
    v17 = [objc_allocWithZone(AMSBinaryPromise) init];
    v18 = v17;
    if (a1)
    {
      v19 = [v17 completionHandlerAdapter];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v30 = sub_10013EA44;
      v31 = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10013E0A4;
      v29 = &unk_1002B91C8;
      v21 = _Block_copy(aBlock);

      [a1 performDevicePasscodeVerificationWithCompletion:v21];
      _Block_release(v21);
    }
  }

  return v18;
}

id sub_10013DFD0()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [swift_getObjCClassFromMetadata() promiseWithError:v0];

  return v1;
}

void sub_10013E034(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10013E0A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_10013E11C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v8 = v6(a2, a3);

  swift_unknownObjectRelease();

  return v8;
}

id AMSDVerifyDevicePasscodeTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSDVerifyDevicePasscodeTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Bool __swiftcall AMSDVerifyDevicePasscodeTask.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v3 = v2;
  isa = AuthenticationViewServiceAction.clientInterface()().super.isa;
  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:isa];

  v6 = AuthenticationViewServiceAction.remoteInterface()().super.isa;
  [(objc_class *)shouldAcceptNewConnection.super.isa setRemoteObjectInterface:v6];

  type metadata accessor for AMSDVerifyDevicePasscodeTask.ViewServiceClientImpl();
  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:swift_allocObject()];

  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  v7 = *&v3[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_connection];
  *&v3[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_connection] = shouldAcceptNewConnection;
  v8 = shouldAcceptNewConnection.super.isa;

  sub_100004BD4();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  aBlock[4] = sub_10013E5FC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013E604;
  aBlock[3] = &unk_1002B9178;
  v10 = _Block_copy(aBlock);
  v11 = v3;

  v12 = [(objc_class *)v8 remoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10013E66C(aBlock, v18);
  if (v19)
  {
    sub_100099DF4(&qword_1002DE570, qword_10023B3B0);
    if (swift_dynamicCast())
    {
      v13 = *&v11[OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceConnectPromise];
      if (v13)
      {
        v14 = v13;
        [v14 finishWithResult:v17];
      }

      swift_unknownObjectRelease();
    }

    v15 = aBlock;
  }

  else
  {
    sub_100009DF4(aBlock);
    v15 = v18;
  }

  sub_100009DF4(v15);
  return 1;
}

void sub_10013E580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask_viewServiceConnectPromise);
  if (v2)
  {
    v3 = v2;
    v4 = _convertErrorToNSError(_:)();
    [v3 finishWithError:v4];
  }
}

void sub_10013E604(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10013E66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013E6E4()
{
  result = type metadata accessor for AuthenticationViewServiceAction();
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

uint64_t sub_10013E7EC()
{
  v1 = v0;
  v2 = type metadata accessor for Log();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accounts.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v13[3] = type metadata accessor for AMSDVerifyDevicePasscodeTask.ViewServiceClientImpl();
  v13[0] = v1;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v13);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10013EA4C()
{
  result = qword_1002DE6B8;
  if (!qword_1002DE6B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DE6B8);
  }

  return result;
}

void *sub_10013EAA0(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result;
  if (result)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      if (!(v4 % v3))
      {
        v7 = *(v5 + 8 * v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = v6[2];
          sub_10013C01C();
          v6 = v10;
        }

        v8 = v6[2];
        if (v8 >= v6[3] >> 1)
        {
          sub_10013C01C();
          v6 = v11;
        }

        v6[2] = v8 + 1;
        v6[v8 + 4] = v7;
      }

      ++v4;
    }

    while (v2 != v4);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013EB8C(uint64_t a1)
{
  sub_100099DF4(&qword_1002DD548, &qword_100238278);
  switch(a1)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_6;
    case 3:
      goto LABEL_8;
    case 4:
      goto LABEL_4;
    case 5:
      goto LABEL_12;
    default:
      v2 = swift_allocObject();
      sub_100008084(v2);
      sub_100007CD0(v3);
      if (sub_1001228C0(v4, v5, 60, 0, 59) == 60)
      {
        return a1;
      }

      __break(1u);
LABEL_4:
      v6 = swift_allocObject();
      sub_100008084(v6);
      sub_100007CD0(v7);
      if (sub_1001228C0(v8, v9, 12, 1, 12) == 12)
      {
        return a1;
      }

      __break(1u);
LABEL_6:
      v10 = swift_allocObject();
      sub_100008084(v10);
      sub_100007CD0(v11);
      if (sub_1001228C0(v12, v13, 24, 0, 23) == 24)
      {
        return a1;
      }

      __break(1u);
LABEL_8:
      v14 = swift_allocObject();
      sub_100008084(v14);
      sub_100007CD0(v15);
      if (sub_1001228C0(v16, v17, 31, 1, 31) == 31)
      {
        return a1;
      }

      __break(1u);
LABEL_10:
      v18 = swift_allocObject();
      sub_100008084(v18);
      sub_100007CD0(v19);
      if (sub_1001228C0(v20, v21, 60, 0, 59) == 60)
      {
        return a1;
      }

      __break(1u);
LABEL_12:
      v22 = swift_allocObject();
      sub_100008084(v22);
      *(a1 + 16) = 7;
      *(a1 + 24) = v23;
      result = sub_1001228C0(&v25, a1 + 32, 7, 0, 6);
      if (result == 7)
      {
        return a1;
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_10013ED30(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v104 - v12;
  v105 = sub_10013EB8C(a3);
  v115 = &_swiftEmptySetSingleton;
  CharacterSet.init(charactersIn:)();
  v113 = a1;
  v114 = a2;
  CharacterSet.inverted.getter();
  v14 = sub_1000BBBB0();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(a3) = v15;
  v18 = *(v7 + 8);
  v16 = v7 + 8;
  v17 = v18;
  v18(v10, v6);
  if ((a3 & 1) == 0)
  {

    sub_10000A274();
    sub_100007F60();
    sub_100006734();
    *v89 = v88 - 4;
    v89[1] = a2;
    swift_willThrow();
    (v17)(v13, v6);
    return a2;
  }

  v104[0] = v13;
  v104[1] = v6;
  v104[2] = v16;
  v113 = a1;
  v114 = a2;
  v111 = 44;
  v112 = 0xE100000000000000;
  sub_10000AB98();
  v106 = v14;
  v19 = StringProtocol.components<A>(separatedBy:)();
  v20 = 0;
  v21 = *(v19 + 16);
  v109 = v17;
  v110 = v19 + 32;
  v104[3] = &v113 + 1;
  v22 = v105;
  v108 = (v105 + 32);
  v23 = v17;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v20 == v21)
        {

          a2 = sub_10013FF74(v115);

          v90 = sub_100005390();
          v23(v90);
          return a2;
        }

        if (v20 >= *(v19 + 16))
        {
          __break(1u);
LABEL_127:

          sub_100007710();
          v111 = v17;
          goto LABEL_122;
        }

        v24 = (v110 + 16 * v20);
        v25 = *v24;
        v17 = v24[1];

        sub_10000323C();
        if (String.count.getter() < 1)
        {
          a2 = v115;

          sub_10000A274();
          sub_100007F60();
          sub_100006734();
          v93 = v92 + 12;
          goto LABEL_118;
        }

        ++v20;
        v26 = v25 == 42 && v17 == 0xE100000000000000;
        if (!v26)
        {
          sub_10000323C();
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = v108;
          do
          {
            v30 = *v29++;
            sub_1000EABBC(&v113, v30);
            --v28;
          }

          while (v28);
LABEL_14:
          v23 = v109;
        }
      }

      v31 = HIBYTE(v17) & 0xF;
      v32 = v25 & 0xFFFFFFFFFFFFLL;
      if ((v17 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v33 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
        goto LABEL_82;
      }

      if ((v17 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v17 & 0x2000000000000000) != 0)
      {
        v113 = v25;
        v114 = v17 & 0xFFFFFFFFFFFFFFLL;
        if (v25 == 43)
        {
          if (!v31)
          {
            goto LABEL_132;
          }

          if (v31 != 1)
          {
            while (1)
            {
              sub_100003964();
              if (!v26 & v36)
              {
                break;
              }

              sub_100004BE0();
              if (!v26)
              {
                break;
              }

              v35 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              sub_10000BAFC();
              if (v26)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (!v31)
          {
            goto LABEL_131;
          }

          if (v31 != 1)
          {
            while (1)
            {
              sub_100003964();
              if (!v26 & v36)
              {
                break;
              }

              sub_100004BE0();
              if (!v26)
              {
                break;
              }

              v35 = v41 - v40;
              if (__OFSUB__(v41, v40))
              {
                break;
              }

              sub_10000BAFC();
              if (v26)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (v31)
        {
          while (1)
          {
            sub_100003964();
            if (!v26 & v36)
            {
              break;
            }

            sub_100004BE0();
            if (!v26)
            {
              break;
            }

            v35 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              break;
            }

            sub_10000BAFC();
            if (v26)
            {
              goto LABEL_81;
            }
          }
        }
      }

      else
      {
        if ((v25 & 0x1000000000000000) != 0)
        {
          result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          sub_10000323C();
          result = _StringObject.sharedUTF8.getter();
        }

        v34 = *result;
        if (v34 == 43)
        {
          if (v32 < 1)
          {
            goto LABEL_133;
          }

          if (v32 != 1)
          {
            v35 = 0;
            if (!result)
            {
              goto LABEL_71;
            }

            while (1)
            {
              sub_100003964();
              if (!v26 & v36)
              {
                break;
              }

              sub_100004BE0();
              if (!v26)
              {
                break;
              }

              v35 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              sub_10000BAFC();
              if (v26)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (v34 == 45)
        {
          if (v32 < 1)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            return result;
          }

          if (v32 != 1)
          {
            v35 = 0;
            if (!result)
            {
              goto LABEL_71;
            }

            while (1)
            {
              sub_100003964();
              if (!v26 & v36)
              {
                break;
              }

              sub_100004BE0();
              if (!v26)
              {
                break;
              }

              v35 = v38 - v37;
              if (__OFSUB__(v38, v37))
              {
                break;
              }

              sub_10000BAFC();
              if (v26)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else if (v32)
        {
          v35 = 0;
          if (!result)
          {
LABEL_71:
            v39 = 0;
            goto LABEL_81;
          }

          while (1)
          {
            v46 = *result - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            ++result;
            if (!--v32)
            {
              goto LABEL_71;
            }
          }
        }
      }

      v35 = 0;
      v39 = 1;
LABEL_81:
      LOBYTE(v111) = v39;
      if (v39)
      {
        goto LABEL_82;
      }

LABEL_112:

      if (!sub_100141154(v35, v22))
      {

        sub_100007710();
        v111 = v35;
LABEL_122:
        v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v95);

        v96._countAndFlagsBits = 0x612074276E736920;
        v96._object = 0xEE006465776F6C6CLL;
        String.append(_:)(v96);
        a2 = v113;
        v97 = v114;
        sub_1000ED168();
        sub_100007F60();
        *v98 = a2;
        v98[1] = v97;
        goto LABEL_119;
      }

      sub_1000EABBC(&v113, v35);
    }

    v84 = sub_10000323C();
    v35 = sub_100140954(v84, v85, 10);
    v87 = v86;

    if ((v87 & 1) == 0)
    {
      goto LABEL_112;
    }

LABEL_82:
    v113 = v25;
    v114 = v17;
    v111 = 47;
    v112 = 0xE100000000000000;
    sub_10000AB98();
    a2 = StringProtocol.components<A>(separatedBy:)();
    v50 = a2[2];
    if (v50 == 1)
    {

      v51 = sub_10000323C();
      v52 = v107;
      v54 = sub_10013FA88(v51, v53, v22);
      v107 = v52;
      if (v52)
      {
        goto LABEL_123;
      }

      v55 = v54;

      v56 = v115;
      v113 = v115;
      v57 = *(v55 + 16);
      if (v57)
      {
        v58 = 32;
        do
        {
          v59 = *(v55 + v58);
          v60 = sub_10000AB98();
          sub_1000EABBC(v60, v61);
          v58 += 8;
          --v57;
        }

        while (v57);
LABEL_99:

        v56 = v113;
LABEL_101:
        v115 = v56;
        goto LABEL_14;
      }

      goto LABEL_100;
    }

    if (v50 != 2 || (v62 = a2[2]) == 0)
    {

      sub_10000A274();
      sub_100007F60();
      sub_100006734();
      goto LABEL_118;
    }

    v63 = a2[4];
    v64 = a2[5];
    v65 = &a2[2 * v62 + 4];
    v17 = *(v65 - 16);
    v66 = *(v65 - 8);

    v67 = sub_10013F790(v17, v66);
    if (v68)
    {
      break;
    }

    a2 = v67;
    v69 = v63 == 42 && v64 == 0xE100000000000000;
    v23 = v109;
    if (v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v70 = sub_10013EAA0(a2, v22);
      v56 = v115;
      v113 = v115;
      v71 = v70[2];
      if (v71)
      {
        v72 = 4;
        do
        {
          v73 = v70[v72];
          v74 = sub_10000AB98();
          sub_1000EABBC(v74, v75);
          ++v72;
          --v71;
        }

        while (v71);
        goto LABEL_99;
      }

LABEL_100:

      goto LABEL_101;
    }

    v76 = sub_10013F790(v63, v64);
    if ((v77 & 1) == 0)
    {
      v17 = v76;

      if (!sub_100141154(v17, v22))
      {
        goto LABEL_127;
      }

      result = sub_1000ACD18(v22);
      if ((v82 & 1) == 0)
      {
        if (result < v17)
        {
          goto LABEL_134;
        }

        v83 = sub_100151F8C(v17, result);
        v81 = sub_10013EAA0(a2, v83);
        goto LABEL_109;
      }

      a2 = v115;

      sub_10000A274();
      sub_100007F60();
      sub_100006734();
      v93 = v103 - 14;
LABEL_118:
      *v91 = v93;
      v91[1] = a2;
LABEL_119:
      swift_willThrow();
      v94 = sub_100005390();
      v23(v94);
      return a2;
    }

    v78 = v107;
    v79 = sub_10013FA88(v63, v64, v22);
    v107 = v78;
    if (v78)
    {
LABEL_123:

      v99 = sub_100005390();
      v23(v99);

      return a2;
    }

    v80 = v79;

    v81 = sub_10013EAA0(a2, v80);
LABEL_109:

    v115 = sub_10013FEF8(v81, v115);
  }

  a2 = v115;

  sub_10000A274();
  sub_100007F60();
  sub_100006734();
  *v101 = v100 - 6;
  v101[1] = a2;
  swift_willThrow();
  v102 = sub_100005390();
  v109(v102);
  return a2;
}

uint64_t sub_10013F790(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_100140954(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_10013FEF8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1000EABBC(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

uint64_t sub_10013FF74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_10013CA08();
  v5 = sub_10012295C(&v7, v4 + 4, v1, a1);

  sub_1000122EC();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v4 = _swiftEmptyArrayStorage;
  }

  v7 = v4;
  sub_100140058(&v7);
  return v7;
}

Swift::Int sub_100140058(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100122C30(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1001400C4(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001400C4(uint64_t *a1)
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
      sub_100140214(v7, v8, a1, v4);
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
    return sub_1001401B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001401B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100140214(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_10013BF14();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_10013BF14();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1001407E0((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1001406B4(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_1001406B4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1001407E0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1001407E0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1000192B0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1000192B0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

unsigned __int8 *sub_100140954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000AD338();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}