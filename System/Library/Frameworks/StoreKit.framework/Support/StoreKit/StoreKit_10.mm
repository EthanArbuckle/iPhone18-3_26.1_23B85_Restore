uint64_t sub_10014D558(void *a1)
{
  sub_100080FB4(&qword_1003CF338);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100086D24(a1, a1[3]);
  sub_10014DBB8();
  sub_10014E0AC();
  sub_10014E070();
  if (!v1)
  {
    sub_10014E070();
    sub_10014E070();
    type metadata accessor for ProductPageLookupRequest.URLRequest();
    type metadata accessor for URL();
    sub_1000BE28C(&qword_1003CD408);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_10014E060();
  return v5(v4);
}

uint64_t sub_10014D700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for URL();
  sub_1000890DC();
  v29 = v4;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  sub_100080FB4(&qword_1003CF328);
  sub_1000890DC();
  v31 = v10;
  v32 = v9;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  sub_10012ADC8();
  __chkstk_darwin(v15);
  sub_100093D40();
  v18 = (v17 - v16);
  sub_100086D24(a1, a1[3]);
  sub_10014DBB8();
  v33 = v13;
  v19 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100080F0C(a1);
  }

  v20 = a1;
  v34 = v3;
  v38 = 0;
  *v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[1] = v21;
  v37 = 1;
  v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[3] = v22;
  v36 = 2;
  v28[1] = 0;
  v18[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[5] = v23;
  v35 = 3;
  sub_1000BE28C(&qword_1003CD418);
  v28[0] = v8;
  v24 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = sub_10014E018();
  v26(v25);
  (*(v29 + 32))(v18 + *(v14 + 28), v28[0], v24);
  sub_10014DC0C(v18, v30);
  sub_100080F0C(v20);
  return sub_10014DC70(v18);
}

uint64_t sub_10014DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014D364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014DABC(uint64_t a1)
{
  v2 = sub_10014DBB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014DAF8(uint64_t a1)
{
  v2 = sub_10014DBB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10014DB64()
{
  result = qword_1003CF318;
  if (!qword_1003CF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF318);
  }

  return result;
}

unint64_t sub_10014DBB8()
{
  result = qword_1003CF330;
  if (!qword_1003CF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF330);
  }

  return result;
}

uint64_t sub_10014DC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014DC70(uint64_t a1)
{
  v2 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_10014DCF4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10014DDC0);
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

unint64_t sub_10014DDFC()
{
  result = qword_1003CF350;
  if (!qword_1003CF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF350);
  }

  return result;
}

unint64_t sub_10014DE54()
{
  result = qword_1003CF358;
  if (!qword_1003CF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF358);
  }

  return result;
}

unint64_t sub_10014DEAC()
{
  result = qword_1003CF360;
  if (!qword_1003CF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF360);
  }

  return result;
}

unint64_t sub_10014DF04()
{
  result = qword_1003CF368;
  if (!qword_1003CF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF368);
  }

  return result;
}

unint64_t sub_10014DF5C()
{
  result = qword_1003CF370;
  if (!qword_1003CF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF370);
  }

  return result;
}

unint64_t sub_10014DFB4()
{
  result = qword_1003CF378;
  if (!qword_1003CF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF378);
  }

  return result;
}

uint64_t sub_10014E030()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10014E070()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10014E08C()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10014E0AC()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10014E0CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v8 = sub_10014E1BC(v7, a3);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_10014E1BC(uint64_t a1, char a2)
{
  sub_100080FB4(&qword_1003CF380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  v4 = kMISValidationOptionOnlineAuthorization;
  *(inited + 32) = kMISValidationOptionOnlineAuthorization;
  *(inited + 40) = kCFBooleanFalse;
  v5 = kMISValidationOptionValidateSignatureOnly;
  v6 = kCFBooleanTrue;
  if ((a2 & 1) == 0)
  {
    v6 = kCFBooleanFalse;
  }

  *(inited + 48) = kMISValidationOptionValidateSignatureOnly;
  *(inited + 56) = v6;
  v7 = v6;
  v8 = v4;
  v9 = kCFBooleanFalse;
  v10 = v5;
  sub_100080FB4(&qword_1003CF388);
  sub_100080FB4(&qword_1003CF390);
  sub_10014E770();
  Dictionary.init(dictionaryLiteral:)();
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26[2] = 0;
  URL.path(percentEncoded:)(0);
  v12 = String._bridgeToObjectiveC()();

  MISValidateSignatureAndCopyInfo();
  result = MISCopyErrorStringForErrorCodeUnlocalized();
  if (result)
  {
    v14 = result;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for SKLogger();
    sub_10007EDA4(v18, qword_1003F26C8);
    _StringGuts.grow(_:)(33);

    v26[1] = 0x8000000100319A70;
    type metadata accessor for URL();
    sub_10014E824(&qword_1003CDF58, &type metadata accessor for URL);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v15;
    v21._object = v17;
    String.append(_:)(v21);

    v22 = static os_log_type_t.error.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_100080210(0, 0xE000000000000000, v26);
      *(v24 + 12) = 2082;
      v25 = sub_100080210(0xD00000000000001BLL, 0x8000000100319A70, v26);

      *(v24 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

unint64_t sub_10014E770()
{
  result = qword_1003CF398;
  if (!qword_1003CF398)
  {
    sub_1000852D4(&qword_1003CF388);
    sub_10014E824(&qword_1003CC350, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF398);
  }

  return result;
}

uint64_t sub_10014E824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014E86C(uint64_t a1)
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

uint64_t sub_10014E894(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014E8D4(uint64_t result, int a2, int a3)
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

unint64_t sub_10014E924(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383928, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10014E970(char a1)
{
  if (!a1)
  {
    return 1701998445;
  }

  if (a1 == 1)
  {
    return 0x7473696C2D707061;
  }

  return 0x2D74706965636572;
}

uint64_t sub_10014E9C8(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CF3A0);
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_10014EE24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100080F0C(a1);
  }

  else
  {
    sub_100080FB4(&qword_1003CF3B0);
    sub_10014EEF4(&qword_1003CF3B8, &qword_1003CF3B0, &unk_1002F2E80, sub_10014EE78);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100080FB4(&qword_1003CE240);
    sub_10014EEF4(&qword_1003CF3C8, &qword_1003CE240, &unk_1002F2E90, sub_10014EF70);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = v8;
    sub_1000BC95C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v6 = sub_1001087BC();
    v7(v6);

    sub_1000BC7F4(v8, v9);
    sub_100080F0C(a1);

    sub_1000BC8B4(v8, v9);
  }

  return v4;
}

unint64_t sub_10014ECF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10014E924(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014ED20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10014E970(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10014ED54@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10014E924(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014ED7C(uint64_t a1)
{
  v2 = sub_10014EE24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014EDB8(uint64_t a1)
{
  v2 = sub_10014EE24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014EDF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10014E9C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10014EE24()
{
  result = qword_1003CF3A8;
  if (!qword_1003CF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3A8);
  }

  return result;
}

unint64_t sub_10014EE78()
{
  result = qword_1003CF3C0;
  if (!qword_1003CF3C0)
  {
    sub_1000852D4(&unk_1003D1CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3C0);
  }

  return result;
}

uint64_t sub_10014EEF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014EF70()
{
  result = qword_1003CF3D0;
  if (!qword_1003CF3D0)
  {
    type metadata accessor for LegacyTransactionInternal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyTransactionResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10014F094);
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

unint64_t sub_10014F0D0()
{
  result = qword_1003CF3D8;
  if (!qword_1003CF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3D8);
  }

  return result;
}

unint64_t sub_10014F128()
{
  result = qword_1003CF3E0;
  if (!qword_1003CF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3E0);
  }

  return result;
}

unint64_t sub_10014F180()
{
  result = qword_1003CF3E8;
  if (!qword_1003CF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3E8);
  }

  return result;
}

uint64_t sub_10014F1DC(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x6573616863727570;
      break;
    case 2:
      result = 1752397168;
      break;
    case 3:
      result = 0x72656D6974;
      break;
    case 4:
    case 5:
      result = 0x6C61756E616DLL;
      break;
    case 6:
      result = 0x746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10014F29C(uint64_t result)
{
  if (((result - 8) & 0xF8) != 0)
  {
    return result;
  }

  else
  {
    return (0x706050303020100uLL >> (8 * (result - 8)));
  }
}

uint64_t sub_10014F2D0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = __chkstk_darwin(a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (sub_100081D0C(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return sub_100081DFC(a5, v20, 1, v26);
}

uint64_t sub_10014F544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245707061 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646F636564 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10014F6A4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10014F6C0(char a1)
{
  result = 0x726F727245707061;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
      result = 0x676E69646F636E65;
      break;
    case 3:
      result = 0x676E69646F636564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10014F75C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10014F6A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014F790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014F544(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10014F7D8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10014F6A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014F800(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014F83C(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014F878(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = type metadata accessor for DecodingError();
  sub_1000890DC();
  v73 = v5;
  __chkstk_darwin(v6);
  sub_1001460C4();
  v65 = v7 - v8;
  __chkstk_darwin(v9);
  sub_1001564A0(v62 - v10);
  v71 = type metadata accessor for EncodingError();
  sub_1000890DC();
  v70 = v11;
  __chkstk_darwin(v12);
  sub_1001460C4();
  v64 = v13 - v14;
  __chkstk_darwin(v15);
  sub_1001564A0(v62 - v16);
  v63 = *(a2 + 24);
  v69 = type metadata accessor for Optional();
  sub_1000890DC();
  v67 = v17;
  __chkstk_darwin(v18);
  sub_1001564A0(v62 - v19);
  v20 = *(a2 + 16);
  sub_100156444();
  v62[1] = v21;
  __chkstk_darwin(v22);
  sub_100093D40();
  v25 = v24 - v23;
  sub_100156444();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100093D40();
  v31 = v30 - v29;
  sub_100080FB4(&qword_1003CF3F0);
  sub_1000890DC();
  v78 = v33;
  v79 = v32;
  __chkstk_darwin(v32);
  v35 = v62 - v34;
  v36 = a1[3];
  sub_100086D24(a1, v36);
  sub_100153414();
  v77 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v27 + 16))(v31, v76, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v67;
      v55 = v66;
      v56 = v31;
      v57 = v69;
      v58 = (*(v67 + 32))(v66, v56, v69);
      __chkstk_darwin(v58);
      v62[-6] = v20;
      v59 = v75;
      v62[-5] = v63;
      v62[-4] = v59;
      *&v62[-3] = *(a2 + 32);
      sub_10014F2D0(sub_1001534EC, &type metadata for Never, &type metadata for CodableNSError, v60, v81);
      *&v80[0] = *&v81[0];
      v82 = 1;
      sub_100080FB4(&qword_1003CF408);
      sub_100153514();
      v38 = v79;
      v61 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v54 + 8))(v55, v57);
      v40 = *(v78 + 8);
      v41 = v61;
      goto LABEL_7;
    case 2u:
      sub_10015647C();
      v42 = v68;
      v43 = v71;
      v44(v68, v31, v71);
      v45 = sub_10015648C();
      v46(v45);
      sub_1001500A4(v25, v81);
      v47 = 2;
      goto LABEL_5;
    case 3u:
      sub_10015647C();
      v42 = v72;
      v43 = v74;
      v48(v72, v31, v74);
      v49 = sub_10015648C();
      v50(v49);
      sub_1001505C0(v25, v81);
      v47 = 3;
LABEL_5:
      v82 = v47;
      sub_100153468();
      v51 = v79;
      v52 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v80[0] = v81[0];
      v80[1] = v81[1];
      v80[2] = v81[2];
      v80[3] = v81[3];
      sub_1001534BC(v80);
      (*(v36 + 8))(v42, v43);
      result = (*(v78 + 8))(v52, v51);
      break;
    default:
      sub_10015647C();
      v37(v25, v31, v20);
      LOBYTE(v81[0]) = 0;
      v38 = v79;
      v39 = v77;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v36 + 8))(v25, v20);
      v40 = *(v78 + 8);
      v41 = v39;
LABEL_7:
      result = v40(v41, v38);
      break;
  }

  return result;
}

uint64_t sub_10014FF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = _getErrorEmbeddedNSError<A>(_:)();
  if (v8)
  {
    v9 = v8;
    result = (*(v5 + 8))(v7, a2);
  }

  else
  {
    v9 = swift_allocError();
    result = (*(v5 + 32))(v11, v7, a2);
  }

  *a3 = v9;
  return result;
}

double sub_1001500A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for EncodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EncodingError();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = *(v8 + 16);
  v14(&v43 - v12, a1, v7);
  if ((*(v8 + 88))(v13, v7) == enum case for EncodingError.invalidValue(_:))
  {
    v49 = a1;
    (*(v8 + 96))(v13, v7);
    v15 = *(sub_100080FB4(&qword_1003CF420) + 48);
    sub_10008B5D0(v13, &v52);
    v47 = v4;
    v16 = *(v4 + 32);
    v48 = v3;
    v16(v6, &v13[v15], v3);
    sub_100080F58(&v52, v56);
    v45 = String.init<A>(describing:)();
    v46 = v17;
    v18 = EncodingError.Context.codingPath.getter();
    v19 = *(v18 + 16);
    if (v19)
    {
      v44 = v6;
      v51 = _swiftEmptyArrayStorage;
      sub_100213374(0, v19, 0);
      v20 = v51;
      v43 = v18;
      v21 = v18 + 32;
      do
      {
        sub_10015490C(v21, v56);
        sub_100086D24(v56, v59);
        v22 = dispatch thunk of CodingKey.stringValue.getter();
        v24 = v23;
        sub_100080F0C(v56);
        v51 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_100213374(v25 > 1, v26 + 1, 1);
          v20 = v51;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v21 += 40;
        --v19;
      }

      while (v19);

      v37 = v50;
      v6 = v44;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
      v37 = v50;
    }

    v28 = EncodingError.Context.debugDescription.getter();
    v30 = v38;
    if (EncodingError.Context.underlyingError.getter())
    {
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v32 = v39;
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    (*(v8 + 8))(v49, v7);
    (*(v47 + 8))(v6, v48);
    sub_100080F0C(&v52);
    v36 = 0;
    v34 = v46;
    v35 = v45;
  }

  else
  {
    v14(v11, a1, v7);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(a1, v7);
    v31(v13, v7);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 2;
    v20 = _swiftEmptyArrayStorage;
    v37 = v50;
  }

  *&v52 = v35;
  *(&v52 + 1) = v34;
  LOBYTE(v53) = v36;
  *(&v53 + 1) = *v64;
  DWORD1(v53) = *&v64[3];
  *(&v53 + 1) = v20;
  *&v54 = v28;
  *(&v54 + 1) = v30;
  *&v55 = v33;
  *(&v55 + 1) = v32;
  v56[0] = v35;
  v56[1] = v34;
  v57 = v36;
  *v58 = *v64;
  *&v58[3] = *&v64[3];
  v59 = v20;
  v60 = v28;
  v61 = v30;
  v62 = v33;
  v63 = v32;
  sub_1001535EC(&v52, &v51);
  sub_1001534BC(v56);
  v40 = v53;
  *v37 = v52;
  v37[1] = v40;
  result = *&v54;
  v42 = v55;
  v37[2] = v54;
  v37[3] = v42;
  return result;
}

double sub_1001505C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for DecodingError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for DecodingError.Context();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v59 = a1;
  v14(v9, a1, v3);
  v15 = (*(v4 + 88))(v9, v3);
  v58 = v3;
  v57 = v4;
  if (v15 == enum case for DecodingError.typeMismatch(_:))
  {
    (*(v4 + 96))(v9, v3);
    v16 = sub_100080FB4(&qword_1003CC798);
    (*(v11 + 32))(v13, v9 + *(v16 + 48), v10);
    v54 = 0;
    v53 = 2;
    v17 = 2;
  }

  else if (v15 == enum case for DecodingError.valueNotFound(_:))
  {
    (*(v4 + 96))(v9, v3);
    v18 = sub_100080FB4(&qword_1003CC798);
    (*(v11 + 32))(v13, v9 + *(v18 + 48), v10);
    v54 = 0;
    v53 = 2;
    v17 = 3;
  }

  else
  {
    if (v15 == enum case for DecodingError.keyNotFound(_:))
    {
      (*(v4 + 96))(v9, v3);
      v44 = *(sub_100080FB4(&qword_1003CF428) + 48);
      sub_1000F2C78(v9, v66);
      (*(v11 + 32))(v13, v9 + v44, v10);
      sub_100086D24(v66, v69);
      v52 = dispatch thunk of CodingKey.stringValue.getter();
      v54 = v45;
      sub_100080F0C(v66);
      v17 = 1;
      v19 = v70;
      goto LABEL_6;
    }

    if (v15 != enum case for DecodingError.dataCorrupted(_:))
    {
      v46 = v59;
      v14(v7, v59, v3);
      v47 = v3;
      v32 = String.init<A>(describing:)();
      v48 = v4;
      v34 = v49;
      v50 = *(v48 + 8);
      v50(v46, v47);
      v50(v9, v47);
      v37 = 0;
      v35 = 0;
      v38 = 0;
      v39 = 2;
      v22 = _swiftEmptyArrayStorage;
      v40 = 4;
      v30 = v60;
      goto LABEL_17;
    }

    (*(v4 + 96))(v9, v3);
    (*(v11 + 32))(v13, v9, v10);
    v54 = 0;
    v53 = 2;
    v17 = 1;
  }

  v19 = &v69;
LABEL_6:
  *(v19 - 32) = v17;
  v55 = v11;
  v56 = v10;
  v20 = DecodingError.Context.codingPath.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    *&v62 = _swiftEmptyArrayStorage;
    sub_100213374(0, v21, 0);
    v22 = v62;
    v23 = v20 + 32;
    do
    {
      sub_10015490C(v23, v66);
      sub_100086D24(v66, v69);
      v24 = dispatch thunk of CodingKey.stringValue.getter();
      v26 = v25;
      sub_100080F0C(v66);
      *&v62 = v22;
      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        sub_100213374(v27 > 1, v28 + 1, 1);
        v22 = v62;
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      v23 += 40;
      --v21;
    }

    while (v21);

    v30 = v60;
    v31 = v59;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
    v31 = v59;
    v30 = v60;
  }

  v32 = DecodingError.Context.debugDescription.getter();
  v34 = v33;
  if (DecodingError.Context.underlyingError.getter())
  {
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  (*(v57 + 8))(v31, v58);
  (*(v55 + 8))(v13, v56);
  v38 = v54;
  v39 = v53;
  v40 = v52;
LABEL_17:
  *&v62 = v40;
  *(&v62 + 1) = v38;
  LOBYTE(v63) = v39;
  *(&v63 + 1) = *v71;
  DWORD1(v63) = *&v71[3];
  *(&v63 + 1) = v22;
  *&v64 = v32;
  *(&v64 + 1) = v34;
  *&v65 = v35;
  *(&v65 + 1) = v37;
  v66[0] = v40;
  v66[1] = v38;
  v67 = v39;
  *v68 = *v71;
  *&v68[3] = *&v71[3];
  v69 = v22;
  v70[0] = v32;
  v70[1] = v34;
  v70[2] = v35;
  v70[3] = v37;
  sub_1001535EC(&v62, v61);
  sub_1001534BC(v66);
  v41 = v63;
  *v30 = v62;
  v30[1] = v41;
  result = *&v64;
  v43 = v65;
  v30[2] = v64;
  v30[3] = v43;
  return result;
}

uint64_t sub_100150C94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a4;
  v75 = a7;
  sub_100156444();
  v68 = v12;
  __chkstk_darwin(v13);
  sub_100093D40();
  sub_1001564A0(v15 - v14);
  v16 = sub_100080FB4(&qword_1003CF430);
  sub_1000890DC();
  v76 = v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v78 = a2;
  v72 = a3;
  v79 = a3;
  v69 = a5;
  v80 = a5;
  v70 = a6;
  v81 = a6;
  v21 = type metadata accessor for SwiftXPCError();
  sub_1000890DC();
  v73 = v22;
  __chkstk_darwin(v23);
  sub_1001460C4();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = (&v65 - v28);
  v30 = a1[3];
  v87 = a1;
  sub_100086D24(a1, v30);
  sub_100153414();
  v31 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    v32 = v87;
    return sub_100080F0C(v32);
  }

  v66 = v26;
  v77 = a2;
  v67 = v29;
  v33 = v75;
  v34 = KeyedDecodingContainer.allKeys.getter();
  v35 = v16;
  if (!*(v34 + 16))
  {

    v32 = v87;
    goto LABEL_8;
  }

  v36 = *(v34 + 32);

  v37 = *(KeyedDecodingContainer.allKeys.getter() + 16);

  v32 = v87;
  if (v37 != 1)
  {
LABEL_8:
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    sub_100086D24(v32, v32[3]);
    dispatch thunk of Decoder.codingPath.getter();
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v50._object = 0x8000000100319A90;
    v50._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v50);
    v51 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    v84 = v51;
    v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v52);

    v53._countAndFlagsBits = 0x2E7379656B20;
    v53._object = 0xE600000000000000;
    String.append(_:)(v53);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, enum case for DecodingError.dataCorrupted(_:), v47);
    swift_willThrow();
    (*(v76 + 8))(v20, v35);
    return sub_100080F0C(v32);
  }

  v38 = v33;
  switch(v36)
  {
    case 1:
      LOBYTE(v84) = 1;
      sub_1001549DC();
      sub_100156454();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v57 = sub_10015646C();
      v58(v57);
      sub_100080FB4(&qword_1003CF408);
      v59 = v66;
      v60 = v72;
      v61 = swift_dynamicCast();
      sub_100081DFC(v59, v61 ^ 1u, 1, v60);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v73;
      v44 = v67;
      (*(v73 + 32))(v67, v59, v45);
      break;
    case 2:
      LOBYTE(v84) = 2;
      sub_100154988();
      sub_100156454();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v86[0] = sub_1001564AC();
      v86[1] = v55;
      v86[2] = v82;
      v86[3] = v83;
      v56 = v86;
      goto LABEL_13;
    case 3:
      LOBYTE(v84) = 3;
      sub_100154988();
      sub_100156454();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v85[0] = sub_1001564AC();
      v85[1] = v62;
      v85[2] = v82;
      v85[3] = v83;
      v56 = v85;
LABEL_13:
      v44 = v67;
      sub_1001513E0(v56, v67);
      v63 = sub_10015646C();
      v64(v63);
      v45 = v21;
      v46 = v73;
      break;
    default:
      LOBYTE(v78) = 0;
      v39 = v71;
      v40 = v77;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v41 = sub_10015646C();
      v42(v41);
      v43 = v39;
      v44 = v67;
      (*(v68 + 32))(v67, v43, v40);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v73;
      break;
  }

  (*(v46 + 32))(v38, v44, v45);
  return sub_100080F0C(v32);
}

uint64_t sub_1001513E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100151428(a2);

  return sub_1001534BC(a1);
}

uint64_t sub_100151428@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      switch(v4)
      {
        case 1:
        case 4:
          sub_100153A64(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v5 = &enum case for DecodingError.dataCorrupted(_:);
          goto LABEL_11;
        case 2:
          sub_100080FB4(&qword_1003CC798);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100153A64(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v5 = &enum case for DecodingError.typeMismatch(_:);
          goto LABEL_11;
        case 3:
          sub_100080FB4(&qword_1003CC798);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_100153A64(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
          v5 = &enum case for DecodingError.valueNotFound(_:);
          goto LABEL_11;
        default:
          sub_100080FB4(&qword_1003CF420);
          a1[3] = sub_100080FB4(&unk_1003CCB70);
          v8 = swift_allocObject();
          *a1 = v8;
          *(v8 + 16) = 0u;
          *(v8 + 32) = 0u;
          goto LABEL_5;
      }
    }

    sub_100080FB4(&qword_1003CF428);
    a1[3] = &type metadata for CodableCodingError.RemoteCodingKey;
    a1[4] = sub_100154A30();
    *a1 = v4;
    a1[1] = v3;

    sub_100153A64(&DecodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v5 = &enum case for DecodingError.keyNotFound(_:);
LABEL_11:
    v9 = *v5;
    v10 = type metadata accessor for DecodingError();
    (*(*(v10 - 8) + 104))(a1, v9, v10);
    type metadata accessor for SwiftXPCError();
  }

  else
  {
    sub_100080FB4(&qword_1003CF420);
    a1[3] = &type metadata for CodableCodingError.RemoteEncodableValue;
    *a1 = v4;
    a1[1] = v3;

LABEL_5:
    sub_100153A64(&EncodingError.Context.init(codingPath:debugDescription:underlyingError:));
    v6 = enum case for EncodingError.invalidValue(_:);
    v7 = type metadata accessor for EncodingError();
    (*(*(v7 - 8) + 104))(a1, v6, v7);
    type metadata accessor for SwiftXPCError();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100151798(void *a1)
{
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v16[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v16];

  v5 = v16[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100086D24(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100154B18(v16, v16[3]);
    sub_1000BC808(v6, v8);
    sub_1000BC860();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10008E168(v6, v8);
    sub_10008E168(v6, v8);
    return sub_100080F0C(v16);
  }

  else
  {
    v10 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for EncodingError();
    swift_allocError();
    v13 = v12;
    sub_100080FB4(&qword_1003CF420);
    swift_getErrorValue();
    v13[3] = v15;
    v14 = sub_10009E720(v13);
    (*(*(v15 - 8) + 16))(v14);
    sub_100086D24(a1, a1[3]);
    dispatch thunk of Encoder.codingPath.getter();
    swift_errorRetain();
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, enum case for EncodingError.invalidValue(_:), v11);
    swift_willThrow();
  }
}

void *sub_100151A78(void *a1)
{
  v3 = sub_100086D24(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100086D24(v12, v12[3]);
    sub_1000BC95C();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_10008E5A4(0, &qword_1003CEB18);
    v4 = sub_10008E5A4(0, qword_1003CF458);
    v5 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v3 = v5;
    if (v5)
    {
      sub_10008E168(v10, v11);
      sub_100080F0C(v12);
      sub_100080F0C(a1);
      return v3;
    }

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    sub_100080FB4(&qword_1003CC798);
    v13 = v10;
    *v9 = v4;
    v3 = sub_100086D24(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
    swift_willThrow();
    sub_10008E168(v13, v11);
    sub_100080F0C(v12);
  }

  sub_100080F0C(a1);
  return v3;
}

uint64_t sub_100151DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000100319B50 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E776F6E6B6E55;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100319B70 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000100319B90 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000100319BB0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000100319BD0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x676E69646F636564 && a2 == 0xEF6E776F6E6B6E55)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100151FE8(char a1)
{
  result = 0x676E69646F636E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E69646F636564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1001520D4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v5 = sub_100080FB4(&qword_1003CF548);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v34 - v6;
  v7 = sub_100080FB4(&qword_1003CF550);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v34 - v8;
  v9 = sub_100080FB4(&qword_1003CF558);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v42 = &v34 - v10;
  v11 = sub_100080FB4(&qword_1003CF560);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v39 = &v34 - v12;
  v13 = sub_100080FB4(&qword_1003CF568);
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v36 = &v34 - v14;
  v15 = sub_100080FB4(&qword_1003CF570);
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_100080FB4(&qword_1003CF578);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  v22 = sub_100080FB4(&qword_1003CF580);
  v54 = *(v22 - 8);
  v55 = v22;
  __chkstk_darwin(v22);
  v24 = &v34 - v23;
  sub_100086D24(a1, a1[3]);
  sub_100155840();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v52)
  {
    if (v52 == 1)
    {
      v61 = 5;
      sub_1001558E8();
      v25 = v48;
      v26 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v50;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v49 + 8))(v25, v27);
      return (*(v54 + 8))(v24, v26);
    }

    else
    {
      switch(v53)
      {
        case 1:
          v58 = 2;
          sub_1001559E4();
          v31 = v36;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v37;
          v32 = v38;
          goto LABEL_12;
        case 2:
          v59 = 3;
          sub_100155990();
          v31 = v39;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v40;
          v32 = v41;
          goto LABEL_12;
        case 3:
          v60 = 4;
          sub_10015593C();
          v31 = v42;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v43;
          v32 = v44;
          goto LABEL_12;
        case 4:
          v62 = 6;
          sub_100155894();
          v31 = v45;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v46;
          v32 = v47;
LABEL_12:
          (*(v33 + 8))(v31, v32);
          break;
        default:
          v57 = 1;
          sub_100155A38();
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v17, v15);
          break;
      }

      return (*(v54 + 8))(v24, v30);
    }
  }

  else
  {
    v56 = 0;
    sub_100155A8C();
    v29 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v19 + 8))(v21, v18);
    return (*(v54 + 8))(v24, v29);
  }
}

uint64_t sub_100152838(void *a1)
{
  v2 = sub_100080FB4(&qword_1003CF5C8);
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  __chkstk_darwin(v2);
  v78 = &v54 - v4;
  v67 = sub_100080FB4(&qword_1003CF5D0);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v54 - v5;
  v6 = sub_100080FB4(&qword_1003CF5D8);
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v77 = &v54 - v7;
  v8 = sub_100080FB4(&qword_1003CF5E0);
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v76 = &v54 - v9;
  v10 = sub_100080FB4(&qword_1003CF5E8);
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v12 = sub_100080FB4(&qword_1003CF5F0);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100080FB4(&qword_1003CF5F8);
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_100080FB4(&qword_1003CF600);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = a1[3];
  v79 = a1;
  v23 = sub_100086D24(a1, v22);
  sub_100155840();
  v24 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_10;
  }

  v59 = v14;
  v60 = v17;
  v58 = v15;
  v26 = v76;
  v25 = v77;
  v27 = v78;
  v80 = v19;
  v28 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v28, 0);
  if (v30 == v31 >> 1)
  {
LABEL_9:
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    sub_100080FB4(&qword_1003CC798);
    *v44 = &type metadata for CodableCodingError.Code;
    v23 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v21, v18);
LABEL_10:
    v45 = v79;
    goto LABEL_11;
  }

  v56 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1001533CCLL);
  }

  v32 = v18;
  v55 = *(v29 + v30);
  v33 = sub_100162694(v30 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  v57 = v33;
  v38 = v75;
  if (v35 != v37 >> 1)
  {
    v18 = v32;
    goto LABEL_9;
  }

  v39 = v32;
  v40 = v56;
  switch(v55)
  {
    case 1:
      v82 = 1;
      sub_100155A38();
      v48 = v59;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v61 + 8))(v48, v62);
      (*(v80 + 8))(v21, v39);
      v23 = 0;
      break;
    case 2:
      v83 = 2;
      sub_1001559E4();
      v47 = v73;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v63 + 8))(v47, v64);
      (*(v80 + 8))(v21, v39);
      v23 = 1;
      break;
    case 3:
      v84 = 3;
      sub_100155990();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v65 + 8))(v26, v66);
      (*(v80 + 8))(v21, v39);
      v23 = 2;
      break;
    case 4:
      v85 = 4;
      sub_10015593C();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      (*(v68 + 8))(v25, v69);
      (*(v80 + 8))(v21, v39);
      v23 = 3;
      break;
    case 5:
      v86 = 5;
      sub_1001558E8();
      v49 = v74;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
        goto LABEL_23;
      }

      v50 = v67;
      v51 = KeyedDecodingContainer.decode(_:forKey:)();
      v52 = v80;
      v23 = v51;
      swift_unknownObjectRelease();
      (*(v72 + 8))(v49, v50);
      (*(v52 + 8))(v21, v39);
      break;
    case 6:
      v87 = 6;
      sub_100155894();
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v79;
      if (v40)
      {
LABEL_23:
        (*(v80 + 8))(v21, v39);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v71 + 8))(v27, v70);
        (*(v80 + 8))(v21, v39);
        v23 = 4;
      }

      break;
    default:
      v81 = 0;
      sub_100155A8C();
      v41 = v60;
      v23 = v21;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v40)
      {
        (*(v80 + 8))(v21, v39);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v53 = v58;
      v23 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v41, v53);
      (*(v80 + 8))(v21, v39);
      v45 = v79;
      break;
  }

LABEL_11:
  sub_100080F0C(v45);
  return v23;
}

void *sub_1001533E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100151A78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100153414()
{
  result = qword_1003CF3F8;
  if (!qword_1003CF3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF3F8);
  }

  return result;
}

unint64_t sub_100153468()
{
  result = qword_1003CF400;
  if (!qword_1003CF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF400);
  }

  return result;
}

unint64_t sub_100153514()
{
  result = qword_1003CF410;
  if (!qword_1003CF410)
  {
    sub_1000852D4(&qword_1003CF408);
    sub_100153598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF410);
  }

  return result;
}

unint64_t sub_100153598()
{
  result = qword_1003CF418;
  if (!qword_1003CF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF418);
  }

  return result;
}

uint64_t sub_10015362C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100151DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100153654(uint64_t a1)
{
  v2 = sub_100155840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153690(uint64_t a1)
{
  v2 = sub_100155840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001536CC(uint64_t a1)
{
  v2 = sub_1001559E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153708(uint64_t a1)
{
  v2 = sub_1001559E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100153744(uint64_t a1)
{
  v2 = sub_1001558E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153780(uint64_t a1)
{
  v2 = sub_1001558E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001537BC(uint64_t a1)
{
  v2 = sub_100155990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001537F8(uint64_t a1)
{
  v2 = sub_100155990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100153834(uint64_t a1)
{
  v2 = sub_100155894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153870(uint64_t a1)
{
  v2 = sub_100155894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001538AC(uint64_t a1)
{
  v2 = sub_10015593C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001538E8(uint64_t a1)
{
  v2 = sub_10015593C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100153924(uint64_t a1)
{
  v2 = sub_100155A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153960(uint64_t a1)
{
  v2 = sub_100155A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015399C(uint64_t a1)
{
  v2 = sub_100155A38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001539D8(uint64_t a1)
{
  v2 = sub_100155A38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100153A14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100152838(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100153A64(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = v1[3];
  v4 = *(v3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_10021344C(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v23 = v5;
      v9 = v5[2];
      v10 = v5[3];

      if (v9 >= v10 >> 1)
      {
        sub_10021344C((v10 > 1), v9 + 1, 1);
        v5 = v23;
      }

      v21 = &type metadata for CodableCodingError.RemoteCodingKey;
      v22 = sub_100154A30();
      *&v20 = v7;
      *(&v20 + 1) = v8;
      v5[2] = v9 + 1;
      sub_1000F2C78(&v20, &v5[5 * v9 + 4]);
      v6 += 2;
      --v4;
    }

    while (v4);
    v2 = a1;
    v1 = v18;
  }

  v11 = v1[7];
  if (v11)
  {
    v12 = v1[6];
    sub_100154AC4();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v11;
  }

  else
  {
    v13 = 0;
  }

  v16 = v1[4];
  v15 = v1[5];

  return v2(v5, v16, v15, v13);
}

uint64_t sub_100153BE4(uint64_t result, unint64_t a2)
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

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v18 = v28 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
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
          v8 = 0;
          v23 = v28;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
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
          v8 = 0;
          v12 = v28 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
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

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_61;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_61;
                }

                ++v15;
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

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
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
        v8 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v26 = v3;
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

  v8 = sub_1001B3E08(v6, a2, 10);
  v26 = v27;

LABEL_63:
  if (v26)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100153F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100319B10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000100319B30 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100154094(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6150676E69646F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100154134(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003CF508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100086D24(a1, a1[3]);
  sub_100155408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = 0;
  sub_10015545C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 3);
    v11 = 1;
    sub_100080FB4(&unk_1003D0530);
    sub_100155504(&qword_1003CC918);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100154358@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100080FB4(&qword_1003CF520);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100086D24(a1, a1[3]);
  sub_100155408();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  LOBYTE(v25) = 0;
  sub_1001554B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v24 = v30;
  v37 = v31;
  sub_100080FB4(&unk_1003D0530);
  LOBYTE(v25) = 1;
  sub_100155504(&qword_1003CC8F0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v29;
  LOBYTE(v29) = 2;
  *&v22 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v22 + 1) = v10;
  v38 = 3;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  v21 = v9;
  v16 = v23;
  v15 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  LOBYTE(v9) = v37;
  LOBYTE(v26) = v37;
  v17 = *(&v22 + 1);
  *(&v26 + 1) = v23;
  v27 = v22;
  *&v28 = v11;
  *(&v28 + 1) = v14;
  sub_1001535EC(&v25, &v29);
  sub_100080F0C(a1);
  v29 = v21;
  v30 = v15;
  v31 = v9;
  v32 = v16;
  v33 = v22;
  v34 = v17;
  v35 = v11;
  v36 = v14;
  result = sub_1001534BC(&v29);
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  return result;
}

uint64_t sub_1001546CC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001546FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_7(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100154744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100153EE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10015476C(uint64_t a1)
{
  v2 = sub_100154A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001547A8(uint64_t a1)
{
  v2 = sub_100154A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001547EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100153F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100154814(uint64_t a1)
{
  v2 = sub_100155408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100154850(uint64_t a1)
{
  v2 = sub_100155408();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10015488C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100154358(a1, v7);
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

uint64_t sub_10015490C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100154988()
{
  result = qword_1003CF438;
  if (!qword_1003CF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF438);
  }

  return result;
}

unint64_t sub_1001549DC()
{
  result = qword_1003CF440;
  if (!qword_1003CF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF440);
  }

  return result;
}

unint64_t sub_100154A30()
{
  result = qword_1003CF448;
  if (!qword_1003CF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF448);
  }

  return result;
}

uint64_t sub_100154A84()
{
  if (*(v0 + 40))
  {
    sub_100080F0C(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100154AC4()
{
  result = qword_1003CF450;
  if (!qword_1003CF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF450);
  }

  return result;
}

uint64_t sub_100154B18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100154BB0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100154BCC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100154BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100154C20(uint64_t result, int a2, int a3)
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

uint64_t sub_100154C9C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EncodingError();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for DecodingError();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100154D40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(*(a3 + 24) - 8) + 84);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  v8 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v9 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 + 1;
  }

  if (v10 <= v5)
  {
    v10 = v5;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v9 > v10)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 252) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 4)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 253;
}

void sub_100154F30(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(*(a4 + 24) - 8) + 84);
  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = *(*(type metadata accessor for EncodingError() - 8) + 64);
  v11 = *(*(type metadata accessor for DecodingError() - 8) + 64);
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  if (v12 <= v7)
  {
    v12 = v7;
  }

  if (v10 > v12)
  {
    v12 = v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_44:
        __break(1u);
        JUMPOUT(0x100155190);
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_32;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1001551C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100155204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100155254()
{
  result = qword_1003CF4E0;
  if (!qword_1003CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF4E0);
  }

  return result;
}

unint64_t sub_1001552AC()
{
  result = qword_1003CF4E8;
  if (!qword_1003CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF4E8);
  }

  return result;
}

unint64_t sub_100155304()
{
  result = qword_1003CF4F0;
  if (!qword_1003CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF4F0);
  }

  return result;
}

unint64_t sub_10015535C()
{
  result = qword_1003CF4F8;
  if (!qword_1003CF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF4F8);
  }

  return result;
}

unint64_t sub_1001553B4()
{
  result = qword_1003CF500;
  if (!qword_1003CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF500);
  }

  return result;
}

unint64_t sub_100155408()
{
  result = qword_1003CF510;
  if (!qword_1003CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF510);
  }

  return result;
}

unint64_t sub_10015545C()
{
  result = qword_1003CF518;
  if (!qword_1003CF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF518);
  }

  return result;
}

unint64_t sub_1001554B0()
{
  result = qword_1003CF528;
  if (!qword_1003CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF528);
  }

  return result;
}

uint64_t sub_100155504(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&unk_1003D0530);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100155570(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_BYTE *sub_100155588(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100155654);
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

uint64_t sub_10015568C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1001556CC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100155710(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10015573C()
{
  result = qword_1003CF530;
  if (!qword_1003CF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF530);
  }

  return result;
}

unint64_t sub_100155794()
{
  result = qword_1003CF538;
  if (!qword_1003CF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF538);
  }

  return result;
}

unint64_t sub_1001557EC()
{
  result = qword_1003CF540;
  if (!qword_1003CF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF540);
  }

  return result;
}

unint64_t sub_100155840()
{
  result = qword_1003CF588;
  if (!qword_1003CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF588);
  }

  return result;
}

unint64_t sub_100155894()
{
  result = qword_1003CF590;
  if (!qword_1003CF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF590);
  }

  return result;
}

unint64_t sub_1001558E8()
{
  result = qword_1003CF598;
  if (!qword_1003CF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF598);
  }

  return result;
}

unint64_t sub_10015593C()
{
  result = qword_1003CF5A0;
  if (!qword_1003CF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF5A0);
  }

  return result;
}

unint64_t sub_100155990()
{
  result = qword_1003CF5A8;
  if (!qword_1003CF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF5A8);
  }

  return result;
}

unint64_t sub_1001559E4()
{
  result = qword_1003CF5B0;
  if (!qword_1003CF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF5B0);
  }

  return result;
}

unint64_t sub_100155A38()
{
  result = qword_1003CF5B8;
  if (!qword_1003CF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF5B8);
  }

  return result;
}

unint64_t sub_100155A8C()
{
  result = qword_1003CF5C0;
  if (!qword_1003CF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF5C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x100155C34);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100155CC0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100155D5CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100155DA8()
{
  result = qword_1003CF608;
  if (!qword_1003CF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF608);
  }

  return result;
}

unint64_t sub_100155E00()
{
  result = qword_1003CF610;
  if (!qword_1003CF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF610);
  }

  return result;
}

unint64_t sub_100155E58()
{
  result = qword_1003CF618;
  if (!qword_1003CF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF618);
  }

  return result;
}

unint64_t sub_100155EB0()
{
  result = qword_1003CF620;
  if (!qword_1003CF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF620);
  }

  return result;
}

unint64_t sub_100155F08()
{
  result = qword_1003CF628;
  if (!qword_1003CF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF628);
  }

  return result;
}

unint64_t sub_100155F60()
{
  result = qword_1003CF630;
  if (!qword_1003CF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF630);
  }

  return result;
}

unint64_t sub_100155FB8()
{
  result = qword_1003CF638;
  if (!qword_1003CF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF638);
  }

  return result;
}

unint64_t sub_100156010()
{
  result = qword_1003CF640;
  if (!qword_1003CF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF640);
  }

  return result;
}

unint64_t sub_100156068()
{
  result = qword_1003CF648;
  if (!qword_1003CF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF648);
  }

  return result;
}

unint64_t sub_1001560C0()
{
  result = qword_1003CF650;
  if (!qword_1003CF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF650);
  }

  return result;
}

unint64_t sub_100156118()
{
  result = qword_1003CF658;
  if (!qword_1003CF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF658);
  }

  return result;
}

unint64_t sub_100156170()
{
  result = qword_1003CF660;
  if (!qword_1003CF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF660);
  }

  return result;
}

unint64_t sub_1001561C8()
{
  result = qword_1003CF668;
  if (!qword_1003CF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF668);
  }

  return result;
}

unint64_t sub_100156220()
{
  result = qword_1003CF670;
  if (!qword_1003CF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF670);
  }

  return result;
}

unint64_t sub_100156278()
{
  result = qword_1003CF678;
  if (!qword_1003CF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF678);
  }

  return result;
}

unint64_t sub_1001562D0()
{
  result = qword_1003CF680;
  if (!qword_1003CF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF680);
  }

  return result;
}

unint64_t sub_100156328()
{
  result = qword_1003CF688;
  if (!qword_1003CF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF688);
  }

  return result;
}

unint64_t sub_100156380()
{
  result = qword_1003CF690;
  if (!qword_1003CF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF690);
  }

  return result;
}

unint64_t sub_1001563D8()
{
  result = qword_1003CF698;
  if (!qword_1003CF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF698);
  }

  return result;
}

uint64_t sub_1001564C0(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

__n128 sub_1001564E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001564F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100156538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoreActionInternal(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100156658);
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

uint64_t sub_1001566B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001564C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001566E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001564D8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1001567C0()
{
  result = qword_1003CF6A0;
  if (!qword_1003CF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6A0);
  }

  return result;
}

uint64_t sub_100156814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100156934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5;
  v15[1] = a4;
  v7 = sub_100080FB4(&qword_1003CF6C8);
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v15 - v11;
  sub_100086D24(a1, a1[3]);
  sub_100156E6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v13 & 1;
    v17 = 2;
    sub_100156F14();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_100156AE8(void *a1)
{
  sub_100080FB4(&qword_1003CF6B0);
  sub_1000890DC();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_100156E6C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100156EC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_1001087BC();
    v7(v6);
  }

  sub_100080F0C(a1);
  return v4;
}

uint64_t sub_100156CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100156814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100156D14(uint64_t a1)
{
  v2 = sub_100156E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100156D50(uint64_t a1)
{
  v2 = sub_100156E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100156D8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100156AE8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_100156DE8(uint64_t a1)
{
  *(a1 + 8) = sub_1000EBFE8();
  result = sub_100156E18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100156E18()
{
  result = qword_1003CF6A8;
  if (!qword_1003CF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6A8);
  }

  return result;
}

unint64_t sub_100156E6C()
{
  result = qword_1003CF6B8;
  if (!qword_1003CF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6B8);
  }

  return result;
}

unint64_t sub_100156EC0()
{
  result = qword_1003CF6C0;
  if (!qword_1003CF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6C0);
  }

  return result;
}

unint64_t sub_100156F14()
{
  result = qword_1003CF6D0;
  if (!qword_1003CF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6D0);
  }

  return result;
}

unint64_t sub_100156F68()
{
  result = qword_1003CF6D8;
  if (!qword_1003CF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetLastStoreActionTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100157088);
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

unint64_t sub_1001570C4()
{
  result = qword_1003CF6E0;
  if (!qword_1003CF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6E0);
  }

  return result;
}

unint64_t sub_10015711C()
{
  result = qword_1003CF6E8;
  if (!qword_1003CF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6E8);
  }

  return result;
}

unint64_t sub_100157174()
{
  result = qword_1003CF6F0;
  if (!qword_1003CF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CF6F0);
  }

  return result;
}

uint64_t sub_1001571E8()
{
  v1 = sub_1001574A0(v0);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_10008B69C(__dst, &qword_1003CE658))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (i << 6);
    sub_1001060C4(*(v2 + 48) + 40 * v11, __src);
    sub_100080F58(*(v2 + 56) + 32 * v11, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10015750C(__dst, v14);
    if (swift_dynamicCast())
    {
      sub_100080F0C(v15);
      v14[0] = v13[0];
      v14[1] = v13[1];
      strcpy(v13, "Content-Type");
      BYTE5(v13[1]) = 0;
      HIWORD(v13[1]) = -5120;
      sub_100106050();
      v12 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (!v12)
      {

        memcpy(v18, __dst, 0x48uLL);

        if (*(&v18[1] + 1))
        {
          sub_10008B5D0((&v18[2] + 8), __src);
          sub_10008E550(v18);
          if (*(&__src[1] + 1))
          {
            if (swift_dynamicCast())
            {
              return *&v18[0];
            }

            else
            {
              return 0;
            }
          }

LABEL_18:
          sub_10008B69C(__src, &unk_1003CCB70);
          return 0;
        }

LABEL_16:
        sub_10008B69C(v18, &qword_1003CF6F8);
LABEL_17:
        memset(__src, 0, 32);
        goto LABEL_18;
      }
    }

    else
    {
      sub_100080F0C(v15);
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      memset(v18, 0, 72);

      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001574A0(void *a1)
{
  v1 = [a1 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10015750C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CE658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSString sub_10015757C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F25D0 = result;
  return result;
}

id sub_1001575B4()
{
  if (off_1003CBDC8 != -1)
  {
    sub_1001580F8();
  }

  v1 = qword_1003F25D0;

  return v1;
}

void sub_100157628(uint64_t a1)
{
  if (off_1003CBDC8 != -1)
  {
    sub_1001580F8();
  }

  v2 = qword_1003F25D0;
  qword_1003F25D0 = a1;
}

NSString sub_1001576A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CF700 = result;
  return result;
}

CFTypeID sub_1001576D8(__CFString *a1)
{
  type metadata accessor for AppDefaultsManager();
  sub_100157C0C();
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  if (off_1003CBDC8 != -1)
  {
    sub_1001580F8();
  }

  v2 = CFPreferencesCopyAppValue(a1, qword_1003F25D0);

  if (!v2)
  {
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  v4 = CFGetTypeID(v3);
  if (v4 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  type metadata accessor for CFData(0);
  sub_10001E11C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100158168(v5);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100158148();

  return v4;
}

void sub_100157848()
{
  type metadata accessor for AppDefaultsManager();
  sub_100157C0C();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = String._bridgeToObjectiveC()();

  v2 = off_1003CBDC8;
  v6 = isa;
  if (v2 != -1)
  {
    sub_1001580F8();
  }

  v3 = sub_100158138();
  CFPreferencesSetAppValue(v3, v4, v5);

  CFPreferencesAppSynchronize(v2[186]);
}

uint64_t sub_1001579C4()
{
  type metadata accessor for AppDefaultsManager();
  sub_100157C0C();
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();

  if (off_1003CBDC8 != -1)
  {
    sub_1001580F8();
  }

  v3 = sub_100158138();
  CFPreferencesSetAppValue(v3, 0, v4);

  v5 = *(v1 + 1488);

  return CFPreferencesAppSynchronize(v5);
}

uint64_t sub_100157A90(uint64_t a1, uint64_t a2)
{
  result = sub_100070464();
  if (result)
  {
    if (qword_1003CBDD0 != -1)
    {
      swift_once();
    }

    v5 = off_1003CBDC8;
    v6 = qword_1003CF700;
    if (v5 != -1)
    {
      sub_1001580F8();
    }

    v7 = CFPreferencesCopyAppValue(v6, qword_1003F25D0);

    if (v7)
    {
      swift_unknownObjectRetain();
      sub_100080FB4(&unk_1003D0530);
      if (swift_dynamicCast())
      {
        v8 = (v11 + 40);
        v9 = *(v11 + 16) + 1;
        while (--v9)
        {
          if (*(v8 - 1) != a1 || *v8 != a2)
          {
            v8 += 2;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              continue;
            }
          }

          swift_unknownObjectRelease();

          return 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100157C0C()
{
  v0 = objc_opt_self();
  sub_1001B4970(v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    if (qword_1003CBDF0 != -1)
    {
      swift_once();
    }

    if ((byte_1003F25E0 & 1) == 0)
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for SKLogger();
      sub_10007EDA4(v3, qword_1003F26C8);
      v4 = static os_log_type_t.fault.getter();
      v5 = Logger.logObject.getter();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v6 = 136446466;
        *(v6 + 4) = sub_100080210(0, 0xE000000000000000, &v8);
        *(v6 + 12) = 2082;
        *(v6 + 14) = sub_100080210(0xD000000000000034, 0x8000000100319D00, &v8);
        _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
        swift_arrayDestroy();
      }
    }

    v2 = 0xE500000000000000;
  }

  sub_1002356A4();

  String.utf8CString.getter();

  sub_100147D28();
  sub_10001E11C();

  v8 = v2;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

id sub_100157E58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100157EB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDefaultsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_100157F0C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CF708 = result;
  return result;
}

CFTypeID sub_100157F44()
{
  if (qword_1003CBDD8 != -1)
  {
    sub_100158118();
  }

  v0 = off_1003CBDC8;
  v1 = qword_1003CF708;
  if (v0 != -1)
  {
    sub_1001580F8();
  }

  v2 = CFPreferencesCopyAppValue(v1, qword_1003F25D0);

  if (!v2)
  {
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  v4 = CFGetTypeID(v3);
  if (v4 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  type metadata accessor for CFData(0);
  sub_10001E11C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100158168(v5);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100158148();

  return v4;
}

void sub_100158034()
{
  v0.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (qword_1003CBDD8 != -1)
  {
    sub_100158118();
  }

  v1 = off_1003CBDC8;
  v2 = qword_1003CF708;
  v6 = v0.super.isa;
  if (v1 != -1)
  {
    sub_1001580F8();
  }

  v3 = sub_100158138();
  CFPreferencesSetAppValue(v3, v4, v5);

  CFPreferencesAppSynchronize(*(v0.super.isa + 186));
}

uint64_t sub_1001580F8()
{

  return swift_once();
}

uint64_t sub_100158118()
{

  return swift_once();
}

uint64_t sub_100158148()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_100158168(uint64_t a1)
{

  return _swift_dynamicCastUnknownClassUnconditional(a1, v1, 0, 0, 0);
}

uint64_t sub_100158188(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_100080FB4(&unk_1003D0540);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {
    sub_10008B69C(v42, &unk_1003CCB70);
    goto LABEL_18;
  }

  sub_100080FB4(&qword_1003CC200);
  if ((sub_10015D3D8() & 1) == 0)
  {
LABEL_18:
    v43 = 0u;
    v44 = 0u;
    goto LABEL_19;
  }

  sub_1001DA990(1635017060, 0xE400000000000000, v45, &v43);

  if (!*(&v44 + 1))
  {
LABEL_19:
    sub_10008B69C(&v43, &unk_1003CCB70);
    goto LABEL_20;
  }

  sub_100080FB4(&qword_1003CEDD8);
  sub_10015D070();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(*&v42[0] + 16))
  {

    goto LABEL_18;
  }

  v15 = *(*&v42[0] + 32);

  sub_1001DA990(0x7475626972747461, 0xEA00000000007365, v15, &v43);

  if (!*(&v44 + 1))
  {
    goto LABEL_19;
  }

  sub_10015D070();
  if (sub_10015D3D8())
  {
    v16 = *&v42[0];
    v17 = type metadata accessor for URL();
    sub_100081DFC(v14, 1, 1, v17);
    sub_1001DA990(1634497893, 0xE400000000000000, v16, &v43);
    if (*(&v44 + 1))
    {
      sub_10015D070();
      v18 = swift_dynamicCast();
      v19 = *&v42[0];
      if (!v18)
      {
        v19 = 0;
      }

      v39 = v19;
      if (v18)
      {
        v20 = *(&v42[0] + 1);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_10008B69C(&v43, &unk_1003CCB70);
      v39 = 0;
      v20 = 0;
    }

    sub_1001DA990(0xD000000000000012, 0x8000000100319DF0, v16, &v43);

    if (*(&v44 + 1))
    {
      sub_10015D070();
      if (sub_10015D3D8())
      {
        sub_1001DA990(7565161, 0xE300000000000000, *&v42[0], &v43);

        if (*(&v44 + 1))
        {
          sub_10015D070();
          if (sub_10015D3D8())
          {
            v32 = *&v42[0];
            if (*&v42[0])
            {

              sub_1001DA990(0xD000000000000011, 0x8000000100319E30, v32, &v43);

              if (*(&v44 + 1))
              {
                v33 = swift_dynamicCast();
                if (v33)
                {
                  v34 = *&v42[0];
                }

                else
                {
                  v34 = 0;
                }

                if (v33)
                {
                  v35 = *(&v42[0] + 1);
                }

                else
                {
                  v35 = 0;
                }

                goto LABEL_46;
              }

              v36 = 0;
LABEL_44:
              sub_10008B69C(&v43, &unk_1003CCB70);
              v35 = 0;
              v34 = 0;
              if (v36)
              {
                v43 = 0u;
                v44 = 0u;
                goto LABEL_48;
              }

LABEL_46:
              sub_1001DA990(0xD000000000000010, 0x8000000100319E10, v32, &v43);

              if (*(&v44 + 1))
              {
                swift_dynamicCast();
LABEL_49:
                URL.init(string:)();

                sub_10008B69C(v14, &unk_1003D0540);
                sub_1000B71B8(v12, v14);
                goto LABEL_50;
              }

LABEL_48:
              sub_10008B69C(&v43, &unk_1003CCB70);
              goto LABEL_49;
            }
          }
        }

        else
        {
          sub_10008B69C(&v43, &unk_1003CCB70);
        }

        v32 = 0;
        v43 = 0u;
        v44 = 0u;
        v36 = 1;
        goto LABEL_44;
      }
    }

    else
    {
      sub_10008B69C(&v43, &unk_1003CCB70);
    }

    v34 = 0;
    v35 = 0;
LABEL_50:
    sub_10012A7F8(v14, v9);
    v37 = objc_allocWithZone(PolicyResponse);
    v27 = sub_10015CAA4(v39, v20, v34, v35, v9);
    sub_10008B69C(v14, &unk_1003D0540);
    return v27;
  }

LABEL_20:
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  sub_10007EDA4(v21, qword_1003F26C8);
  v22 = static os_log_type_t.error.getter();

  v23 = Logger.logObject.getter();

  if (os_log_type_enabled(v23, v22))
  {
    v39 = a1;
    sub_1000B7DC8();
    v24 = swift_slowAlloc();
    sub_1000B7DBC();
    *&v42[0] = swift_slowAlloc();
    *v24 = 136446466;
    *&v43 = 91;
    *(&v43 + 1) = 0xE100000000000000;
    v25._countAndFlagsBits = a2;
    v25._object = a3;
    String.append(_:)(v25);
    v26._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v26);
    sub_100080210(v43, *(&v43 + 1), v42);
    sub_10015D104();

    *(v24 + 4) = a3;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_100080210(0xD000000000000019, 0x8000000100319DD0, v42);
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
    a1 = v39;
    swift_arrayDestroy();
    sub_10015CFF0();

    sub_1000B7D68();
  }

  v27 = sub_10013A1C4(a1);
  v29 = v28;
  sub_1000D35BC();
  swift_allocError();
  *v30 = v27;
  v30[1] = v29;
  swift_willThrow();
  return v27;
}

uint64_t sub_1001589B4()
{
  sub_10008BE9C();
  v0[164] = v1;
  v0[163] = v2;
  v0[162] = v3;
  v0[161] = v4;
  v5 = type metadata accessor for URLComponents();
  v0[165] = v5;
  v0[166] = *(v5 - 8);
  v0[167] = swift_task_alloc();
  v0[168] = swift_task_alloc();

  return _swift_task_switch(sub_100158A88, 0, 0);
}

uint64_t sub_100158A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v27 = type metadata accessor for SKLogger();
  v24[169] = sub_10007EDA4(v27, qword_1003F26C8);
  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v28))
  {
    v30 = v24[164];
    v31 = v24[163];
    sub_1000B7DC8();
    v32 = swift_slowAlloc();
    sub_1000B7DBC();
    v33 = swift_slowAlloc();
    *v32 = 136446466;
    a11 = v33;
    a12 = 91;
    a13 = 0xE100000000000000;
    v34._countAndFlagsBits = v31;
    v34._object = v30;
    String.append(_:)(v34);
    v35._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v35);
    sub_100080210(a12, a13, &a11);
    sub_10015D104();

    *(v32 + 4) = v30;
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_100080210(0xD00000000000002CLL, 0x8000000100319D40, &a11);
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  v63 = v24[168];
  v36 = v24[164];
  v37 = v24[163];
  v38 = v24[162];
  v39 = v24[161];
  v41 = sub_1001A7AB4(v40);
  v42 = objc_allocWithZone(AMSMediaTokenService);
  v43 = sub_100139104(0xD000000000000017, 0x8000000100318FA0, v41);
  v24[170] = v43;
  v44 = sub_1001A8808();
  [v43 setClientInfo:v44];

  v45 = v43;
  v46 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v45 bag:sub_1001A7AB4(v45)];
  v24[171] = v46;
  swift_unknownObjectRelease();

  v47 = sub_1001A8808();
  [v46 setClientInfo:v47];

  sub_10015CBB4(v37, v36, v46);
  v48 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v45];
  v24[172] = v48;
  v49 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
  v24[173] = v49;
  v50 = sub_1001A9498();
  v24[174] = v50;
  [v50 setProtocolHandler:v48];
  [v50 setResponseDecoder:v49];
  [v45 setSession:v50];
  sub_1000B069C();
  v51 = swift_allocObject();
  v24[175] = v51;
  v51[2] = v39;
  v51[3] = v38;
  v51[4] = v37;
  v51[5] = v36;

  v52 = v39;
  v53 = v38;
  swift_asyncLet_begin();
  sub_10015D1C0();
  sub_10008BE10();

  return _swift_asyncLet_get_throwing(v54, v55, v56, v57, v58, v59, v60, v61, a9, v63, a11, a12);
}

uint64_t sub_100158E40()
{
  *(v1 + 1408) = v0;
  if (v0)
  {
    return sub_10013B438(sub_100159AB0);
  }

  else
  {
    return sub_10013B438(sub_100158E6C);
  }
}

uint64_t sub_100158E6C()
{
  v1 = v0[171];
  v2 = v0[167];
  v3 = v0[166];
  v4 = v0[165];
  (*(v3 + 16))(v2, v0[168], v4);
  isa = URLComponents._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v2, v4);
  v6 = [v1 requestWithComponents:isa];
  v0[177] = v6;

  v0[82] = v0;
  v0[87] = v0 + 139;
  v0[83] = sub_100159018;
  v7 = swift_continuation_init();
  v0[110] = sub_100080FB4(&unk_1003CEDC0);
  v0[107] = v7;
  v0[103] = _NSConcreteStackBlock;
  v0[104] = 1107296256;
  v0[105] = sub_1000D67A8;
  v0[106] = &unk_10038B640;
  [v6 resultWithTimeout:v0 + 103 completion:60.0];

  return _swift_continuation_await(v0 + 82, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100159018()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 688);
  *(v1 + 1424) = v4;
  if (v4)
  {
    v5 = sub_100159CC0;
  }

  else
  {
    v5 = sub_100159118;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100159118()
{
  sub_10008BE9C();
  v1 = v0[177];
  v2 = v0[139];
  v0[179] = v2;
  v3 = v2;

  v4 = sub_10015D1C0();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 152);
}

uint64_t sub_100159198()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 1432);
  v2 = [*(v0 + 1392) dataTaskPromiseWithRequest:v1];
  *(v0 + 1440) = v2;

  *(v0 + 720) = v0;
  *(v0 + 760) = v0 + 1208;
  *(v0 + 728) = sub_1001592E4;
  v3 = swift_continuation_init();
  *(v0 + 944) = sub_100080FB4(&qword_1003CDC88);
  *(v0 + 920) = v3;
  *(v0 + 888) = _NSConcreteStackBlock;
  *(v0 + 896) = 1107296256;
  *(v0 + 904) = sub_1000D67A8;
  *(v0 + 912) = &unk_10038B668;
  [v2 resultWithTimeout:v0 + 888 completion:60.0];
  sub_1000B0518();

  return _swift_continuation_await(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001592E4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 752);
  *(v1 + 1448) = v4;
  if (v4)
  {
    v5 = sub_100159F24;
  }

  else
  {
    v5 = sub_1001593E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1001593E4()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1208);

  sub_10008E5A4(0, &qword_1003CF738);
  sub_100158188(v4, v3, v2);
  if (!v1)
  {
    v15 = *(v0 + 1392);
    v16 = *(v0 + 1384);
    v17 = *(v0 + 1376);
    v18 = *(v0 + 1368);
    v19 = *(v0 + 1360);

    sub_1000D8A10();

    __asm { BRAA            X2, X16 }
  }

  v5 = v1;
  v6 = 0xD000000000000018;

  v86 = _convertErrorToNSError(_:)();
  v7 = [v86 userInfo];
  v8 = &type metadata for Any;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v10, v11, v9, (v0 + 952));

  if (*(v0 + 976))
  {
    sub_100080FB4(&qword_1003CC200);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_10015D144();
    if (*(v0 + 1008))
    {
      if (swift_dynamicCast())
      {
        sub_10015D0CC();

        if (*(v0 + 1040))
        {
          v12 = swift_dynamicCast();
          if (v12)
          {
            v13 = *(v0 + 1096);
          }

          else
          {
            v13 = 0;
          }

          if (v12)
          {
            v14 = *(v0 + 1104);
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          sub_10008B69C(v0 + 1016, &unk_1003CCB70);
          v13 = 0;
          v14 = 0;
        }

        v51 = *(v0 + 1352);
        v52 = *(v0 + 1312);
        sub_1000B7D48();
        _StringGuts.grow(_:)(30);

        v85 = v1;
        *(v0 + 1280) = v1;
        v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        sub_10015D3F0(v90);

        v53._countAndFlagsBits = 8250;
        v53._object = 0xE200000000000000;
        String.append(_:)(v53);
        *(v0 + 1080) = v13;
        *(v0 + 1088) = v14;
        sub_100080FB4(&unk_1003CE550);
        v91._countAndFlagsBits = String.init<A>(describing:)();
        sub_10015D3F0(v91);

        v54 = static os_log_type_t.error.getter();

        v55 = v51;
        v56 = Logger.logObject.getter();

        if (os_log_type_enabled(v56, v54))
        {
          v83 = *(v0 + 1312);
          v13 = &type metadata for Any;
          v57 = *(v0 + 1304);
          sub_1000B7DC8();
          v52 = swift_slowAlloc();
          sub_1000B7DBC();
          swift_slowAlloc();
          *v52 = 136446466;
          sub_1000D891C();
          v58._countAndFlagsBits = v57;
          v58._object = v83;
          String.append(_:)(v58);
          v59._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v59);
          v8 = sub_1000B0550(v60, v61, v62, v63, v64, v65, v66, v67, v81, v83, v1, v1, v86, v87, 0xD000000000000018, 0x8000000100319DB0);

          sub_10015D33C();
          v55 = sub_100080210(0xD000000000000018, 0x8000000100319DB0, v68);

          *(v52 + 14) = v55;
          sub_10015D370(&_mh_execute_header, v69, v70, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        else
        {
        }

        sub_10015D110(v71, v72, v73, v74, v75, v76, v77, v78, v81, v82, v85);
        sub_1000DF640();
        v79 = swift_allocError();
        sub_10015D2DC(v79, v80);

        v48 = v86;
LABEL_23:

        sub_100098AC4();
        sub_1000D8A10();

        __asm { BRAA            X1, X16 }
      }

LABEL_19:
      sub_1000B7D48();
      _StringGuts.grow(_:)(27);
      *(v0 + 1064) = v88;
      *(v0 + 1072) = v89;
      v23._countAndFlagsBits = 0xD000000000000019;
      v23._object = 0x8000000100319D90;
      String.append(_:)(v23);
      *(v0 + 1256) = v1;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v24 = *(v0 + 1064);
      v25 = *(v0 + 1072);
      v26 = static os_log_type_t.error.getter();

      v27 = Logger.logObject.getter();

      if (os_log_type_enabled(v27, v26))
      {
        v6 = *(v0 + 1312);
        v28 = *(v0 + 1304);
        sub_1000B7DC8();
        v29 = swift_slowAlloc();
        sub_1000B7DBC();
        swift_slowAlloc();
        *v29 = 136446466;
        sub_1000D891C();
        v30._countAndFlagsBits = v28;
        v30._object = v6;
        String.append(_:)(v30);
        v31._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v31);
        v9 = sub_1000B0550(v32, v33, v34, v35, v36, v37, v38, v39, v81, v82, v84, v5, v86, v87, v88, v89);

        v45 = sub_10015D1F8(v40, v41, v42, v43, v44);

        *(v29 + 14) = v45;
        sub_10015D350(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_10015CFF0();
      }

      else
      {
      }

      sub_10015D178();

      v48 = *(v0 + 1432);
      goto LABEL_23;
    }

    v22 = v0 + 984;
  }

  else
  {
    v22 = v0 + 952;
  }

  sub_10008B69C(v22, &unk_1003CCB70);
  goto LABEL_19;
}

uint64_t sub_100159CC0()
{
  v1 = *(v0 + 1416);
  swift_willThrow();

  v2 = sub_10015D1C0();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1168);
}

void sub_100159F24()
{
  v2 = 0xD000000000000018;
  v3 = *(v0 + 1440);
  swift_willThrow();

  v4 = *(v0 + 1448);
  v77 = _convertErrorToNSError(_:)();
  v5 = [v77 userInfo];
  v6 = &type metadata for Any;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v8, v9, v7, (v0 + 952));

  if (*(v0 + 976))
  {
    sub_100080FB4(&qword_1003CC200);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_10015D144();
    if (*(v0 + 1008))
    {
      if (swift_dynamicCast())
      {
        sub_10015D0CC();

        v76 = v4;
        if (*(v0 + 1040))
        {
          v10 = swift_dynamicCast();
          if (v10)
          {
            v11 = *(v0 + 1096);
          }

          else
          {
            v11 = 0;
          }

          if (v10)
          {
            v12 = *(v0 + 1104);
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          sub_10008B69C(v0 + 1016, &unk_1003CCB70);
          v11 = 0;
          v12 = 0;
        }

        v42 = *(v0 + 1352);
        v43 = *(v0 + 1312);
        sub_1000B7D48();
        _StringGuts.grow(_:)(30);

        v75 = v7;
        *(v0 + 1280) = v7;
        v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        sub_10015D3F0(v81);

        v44._countAndFlagsBits = 8250;
        v44._object = 0xE200000000000000;
        String.append(_:)(v44);
        *(v0 + 1080) = v11;
        *(v0 + 1088) = v12;
        sub_100080FB4(&unk_1003CE550);
        v82._countAndFlagsBits = String.init<A>(describing:)();
        sub_10015D3F0(v82);

        v45 = static os_log_type_t.error.getter();

        v46 = v42;
        v47 = Logger.logObject.getter();

        if (os_log_type_enabled(v47, v45))
        {
          v11 = *(v0 + 1312);
          v48 = *(v0 + 1304);
          sub_1000B7DC8();
          v43 = swift_slowAlloc();
          sub_1000B7DBC();
          swift_slowAlloc();
          *v43 = 136446466;
          sub_1000D891C();
          v49._countAndFlagsBits = v48;
          v49._object = v11;
          String.append(_:)(v49);
          v50._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v50);
          v1 = sub_1000B0550(v51, v52, v53, v54, v55, v56, v57, v58, v72, v73, v7, v76, v77, v78, 0xD000000000000018, 0x8000000100319DB0);

          sub_10015D33C();
          v46 = sub_100080210(0xD000000000000018, 0x8000000100319DB0, v59);

          *(v43 + 14) = v46;
          sub_10015D370(&_mh_execute_header, v60, v61, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        else
        {
        }

        sub_10015D110(v62, v63, v64, v65, v66, v67, v68, v69, v72, v73, v75);
        sub_1000DF640();
        v70 = swift_allocError();
        sub_10015D2DC(v70, v71);

        v39 = v77;
LABEL_19:

        sub_100098AC4();
        sub_1000D8A10();

        __asm { BRAA            X1, X16 }
      }

LABEL_15:
      sub_1000B7D48();
      _StringGuts.grow(_:)(27);
      *(v0 + 1064) = v79;
      *(v0 + 1072) = v80;
      v14._countAndFlagsBits = 0xD000000000000019;
      v14._object = 0x8000000100319D90;
      String.append(_:)(v14);
      *(v0 + 1256) = v4;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v15 = *(v0 + 1064);
      v16 = *(v0 + 1072);
      v17 = static os_log_type_t.error.getter();

      v18 = Logger.logObject.getter();

      if (os_log_type_enabled(v18, v17))
      {
        v6 = *(v0 + 1312);
        v19 = *(v0 + 1304);
        sub_1000B7DC8();
        v20 = swift_slowAlloc();
        sub_1000B7DBC();
        swift_slowAlloc();
        *v20 = 136446466;
        sub_1000D891C();
        v21._countAndFlagsBits = v19;
        v21._object = v6;
        String.append(_:)(v21);
        v22._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v22);
        v2 = sub_1000B0550(v23, v24, v25, v26, v27, v28, v29, v30, v72, v73, v74, v4, v77, v78, v79, v80);

        v36 = sub_10015D1F8(v31, v32, v33, v34, v35);

        *(v20 + 14) = v36;
        sub_10015D350(&_mh_execute_header, v37, v38, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_10015CFF0();
      }

      else
      {
      }

      sub_10015D178();

      v39 = *(v0 + 1432);
      goto LABEL_19;
    }

    v13 = v0 + 984;
  }

  else
  {
    v13 = v0 + 952;
  }

  sub_10008B69C(v13, &unk_1003CCB70);
  goto LABEL_15;
}

uint64_t sub_10015A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10015A5E4;

  return sub_10015A6CC(a1, a2, a3, a4, a5);
}

uint64_t sub_10015A5E4()
{
  sub_10008BE9C();
  sub_10008C070();

  sub_100098AC4();

  return v0();
}

uint64_t sub_10015A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[285] = a5;
  v5[279] = a4;
  v5[273] = a3;
  v5[267] = a2;
  v5[261] = a1;
  type metadata accessor for URLError.Code();
  v5[291] = swift_task_alloc();
  v6 = type metadata accessor for URLError();
  v5[297] = v6;
  v5[303] = *(v6 - 8);
  v5[309] = swift_task_alloc();
  v7 = type metadata accessor for URLQueryItem();
  v5[315] = v7;
  v5[321] = *(v7 - 8);
  v5[327] = swift_task_alloc();
  v5[333] = swift_task_alloc();
  v5[339] = swift_task_alloc();
  v5[345] = swift_task_alloc();
  v5[351] = swift_task_alloc();
  v5[357] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  v5[358] = swift_task_alloc();
  v8 = type metadata accessor for URLComponents();
  v5[359] = v8;
  v5[360] = *(v8 - 8);
  v5[361] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[362] = v9;
  v5[363] = *(v9 - 8);
  v5[364] = swift_task_alloc();
  v5[365] = swift_task_alloc();

  return _swift_task_switch(sub_10015A95C, 0, 0);
}

uint64_t sub_10015A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[285];
  v14 = v12[279];
  v15 = v12[273];
  v16 = v12[267];
  sub_1000B069C();
  v17 = swift_allocObject();
  v12[366] = v17;
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v14;
  v17[5] = v13;
  v18 = v16;
  v19 = v15;

  swift_asyncLet_begin();
  sub_1000B069C();
  v20 = swift_allocObject();
  v12[367] = v20;
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v14;
  v20[5] = v13;
  v21 = v18;
  v22 = v19;

  swift_asyncLet_begin();
  sub_1000B069C();
  v23 = swift_allocObject();
  v12[368] = v23;
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v14;
  v23[5] = v13;
  v24 = v21;
  v25 = v22;

  swift_asyncLet_begin();
  _StringGuts.grow(_:)(23);
  v26 = sub_1001588B0(v24, v25, v14, v13);
  v28 = v27;

  v12[369] = v28;
  v12[249] = v26;
  v12[250] = v28;
  v33 = v12[365];

  return _swift_asyncLet_get_throwing(v12 + 82, v33, sub_10015AB6C, v12 + 256, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_10015AB6C()
{
  sub_10008BE9C();
  *(v1 + 2960) = v0;
  if (v0)
  {

    v2 = sub_10015BA04;
  }

  else
  {
    v2 = sub_10015ABE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000B061C();
  sub_1000B0004();
  v13 = v12[364];
  v14 = v12[363];
  v15 = v12[362];
  (*(v14 + 16))(v13, v12[365], v15);
  sub_10015CE9C(&qword_1003CDF58, &type metadata accessor for URL);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  (*(v14 + 8))(v13, v15);
  v17._countAndFlagsBits = 0x617461632F31762FLL;
  v17._object = 0xEC0000002F676F6CLL;
  String.append(_:)(v17);
  sub_1000B0518();

  return _swift_asyncLet_get_throwing(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10015AD10()
{
  sub_10008BE9C();
  *(v1 + 2968) = v0;
  if (v0)
  {

    v2 = sub_10015BC9C;
  }

  else
  {
    v2 = sub_10015AD8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B2D0()
{
  sub_10008BE9C();
  *(v1 + 3024) = v0;
  if (v0)
  {

    v2 = sub_10015BF34;
  }

  else
  {
    v2 = sub_10015B34C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B34C()
{
  v1 = *(v0 + 3016);

  URLQueryItem.init(name:value:)();

  v2 = *(v1 + 16);
  v3 = *(v0 + 3016);
  if (v2 >= *(v1 + 24) >> 1)
  {
    sub_1001D9D58();
    v3 = v31;
  }

  sub_10015D31C();
  v4 = *(v0 + 2712);
  v5 = *(v0 + 2520);
  *(v3 + 16) = v2 + 1;
  v8(v3 + ((v6 + 32) & ~v6) + v7 * v2, v4, v5);
  sub_10008E5A4(0, &qword_1003CEE00);
  v9 = sub_100176B00();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLQueryItem.init(name:value:)();

  v10 = *(v3 + 16);
  if (v10 >= *(v3 + 24) >> 1)
  {
    sub_1001D9D58();
    v3 = v32;
  }

  sub_10015D31C();
  v11 = *(v0 + 2664);
  v12 = *(v0 + 2520);
  *(v3 + 16) = v10 + 1;
  v15(v3 + ((v13 + 32) & ~v13) + v14 * v10, v11, v12);
  v16 = sub_1001AA198();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URLQueryItem.init(name:value:)();

    v18 = *(v3 + 16);
    if (v18 >= *(v3 + 24) >> 1)
    {
      sub_1001D9D58();
      v3 = v33;
    }

    v19 = *(v0 + 3000);
    v20 = *(v0 + 2992);
    v21 = *(v0 + 3040);
    v22 = *(v0 + 2616);
    v23 = *(v0 + 2520);

    *(v3 + 16) = v18 + 1;
    v19(v3 + ((v21 + 32) & ~v21) + v20 * v18, v22, v23);
  }

  v24 = *(v0 + 2976);
  v25 = *(v0 + 2888);
  v26 = *(v0 + 2872);
  v27 = *(v0 + 2088);
  URLComponents.queryItems.setter();
  v24(v27, v25, v26);
  v28 = sub_10015D098();

  return _swift_asyncLet_finish(v28, v29, v30, v0 + 2720);
}

uint64_t sub_10015B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10008C07C();
  sub_1000B0108();
  v26 = v16[339];
  v27 = v16[333];
  v28 = v16[327];
  v29 = v16[309];
  v30 = v16[291];

  sub_100098AC4();
  sub_10008BE10();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t sub_10015BF34()
{
  sub_10008BE9C();
  (*(v0[360] + 8))(v0[361], v0[359]);
  v1 = sub_10015D098();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 322);
}

uint64_t sub_10015C220(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_10015C240, 0, 0);
}

uint64_t sub_10015C240()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBFE0 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 URLForKey:qword_1003F2848]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v4 = sub_10013BB4C();
  v5 = sub_100080FB4(&unk_1003CEE10);
  sub_10008BD44(v5);
  v0[11] = 1107296256;
  v0[12] = sub_10012C050;
  v0[13] = &unk_10038B758;
  v0[14] = v4;
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10015C38C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_10015C4FC;
  }

  else
  {
    v5 = sub_10015C48C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015C48C()
{
  sub_10008BE9C();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100098AC4();

  return v3();
}

uint64_t sub_10015C4FC()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  sub_100098AC4();

  return v2();
}

uint64_t sub_10015C568(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_10015C588, 0, 0);
}

uint64_t sub_10015C588()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBEE8 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 stringForKey:qword_1003F2750]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v4 = sub_100080FB4(&unk_1003D30E0);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10015D080();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10015C6C4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_10015CF14;
  }

  else
  {
    v5 = sub_10015C7C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015C7C4()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;

  sub_100098AC4();
  sub_1000B0518();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10015C848(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_10015C868, 0, 0);
}

uint64_t sub_10015C868()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBFB8 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 stringForKey:qword_1003F2820]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v4 = sub_100080FB4(&unk_1003D30E0);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10015D080();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10015C9A4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_10015CF14;
  }

  else
  {
    v5 = sub_10015CF04;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_10015CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();

    if (a4)
    {
LABEL_3:
      v10 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = type metadata accessor for URL();
  v13 = 0;
  if (sub_100081D0C(a5, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v15 = [v6 initWithTermsOfService:v9 privacyPolicyText:v10 privacyPolicyURL:v13];

  return v15;
}

void sub_10015CBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLogKey:v4];
}

uint64_t sub_10015CC10()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000C444C(v1);
  sub_1000B0518();

  return sub_10015A51C(v3, v4, v5, v6, v7);
}

uint64_t sub_10015CCB4()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000C444C(v1);
  sub_1000B0518();

  return sub_10015C220(v3, v4);
}

uint64_t sub_10015CD40()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000C444C(v1);
  sub_1000B0518();

  return sub_10015C568(v3, v4);
}

uint64_t sub_10015CDCC()
{

  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10015CE10()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000C444C(v1);
  sub_1000B0518();

  return sub_10015C848(v3, v4);
}

uint64_t sub_10015CE9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015CF1C()
{

  return swift_willThrow();
}

void sub_10015CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 2008) = a19;
  *(v20 + 2016) = a20;
  v22 = 0x2067616220534D41;
  v23 = 0xEF203A726F727265;

  String.append(_:)(*&v22);
}

void sub_10015CFC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *v22 = a9;
  v25 = v21;
  v26 = v23;

  String.append(_:)(*&v25);
}

unint64_t sub_10015D000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v12 + 4) = v11;
  *(v12 + 12) = 2082;

  return sub_100080210(v9, v10, va);
}

uint64_t sub_10015D028()
{

  return swift_slowAlloc();
}

void sub_10015D04C()
{

  _StringGuts.grow(_:)(17);
}

void sub_10015D080()
{
  v2[12] = sub_10023FCCC;
  v2[13] = v0;
  v2[14] = v1;
}

void sub_10015D0A8()
{

  sub_1001D9D58();
}

double sub_10015D0CC()
{

  return sub_1001DA990(0x73654D726F727265, 0xEC00000065676173, v0, (v1 + 1016));
}

uint64_t sub_10015D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_1000DF074(a11);
}

double sub_10015D144()
{
  v2 = *(v0 + 1264);

  return sub_1001DA990(0x646F43726F727265, 0xE900000000000065, v2, (v0 + 984));
}

uint64_t sub_10015D178()
{

  return swift_willThrow();
}

unint64_t sub_10015D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20)
{
  v21 = a19;
  v22 = a20;

  return sub_100080210(v21, v22, &a18);
}

uint64_t sub_10015D1D0()
{

  return swift_willThrow();
}

unint64_t sub_10015D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v8 + 4) = v5;
  *(v8 + 12) = 2082;

  return sub_100080210(v7, v6, va);
}

unint64_t sub_10015D220(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_100080210(a1, v1, va);
}

uint64_t sub_10015D264()
{
}

void sub_10015D27C(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000010;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10015D2A0()
{
}

uint64_t sub_10015D2B8()
{

  return URLQueryItem.init(name:value:)();
}

uint64_t sub_10015D2DC(uint64_t a1, uint64_t *a2)
{
  if (v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2;
  }

  *a2 = v5;

  return swift_willThrow();
}

uint64_t sub_10015D300(uint64_t a1)
{
  *(v1 + 176) = a1;

  return swift_unknownObjectRelease();
}

void sub_10015D350(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10015D370(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10015D390()
{

  return static os_log_type_t.error.getter();
}

uint64_t sub_10015D3A8()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10015D3C0()
{

  return type metadata accessor for SKLogger();
}

uint64_t sub_10015D3D8()
{

  return swift_dynamicCast();
}

void sub_10015D3F0(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_10015D408()
{
  sub_100080FB4(&qword_1003CF818);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F18C, 0);
  qword_1003F25D8 = result;
  return result;
}

void sub_10015D46C()
{
  _StringGuts.grow(_:)(132);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._object = 0x8000000100319F60;
  v1._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x64695F6D616461;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xD000000000000033;
  v4._object = 0x8000000100319FE0;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6E6F69746361;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x52454745544E4920;
  v6._object = 0xEA00000000000A2CLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6470755F7473616CLL;
  v7._object = 0xEC00000064657461;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010031A020;
  String.append(_:)(v8);
  qword_1003CF740 = 0;
  *algn_1003CF748 = 0xE000000000000000;
}

void sub_10015D5E8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  if (qword_1003CBDE8 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];
}

id sub_10015D6E0()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_10015D7B4(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 26099)
    {
      return v2 > 26099;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      goto LABEL_5;
    }

    if (v3 != 26100)
    {
      if (v3 != 26000)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_100081C08();
        }

        v6 = type metadata accessor for SKLogger();
        sub_10007EDA4(v6, qword_1003F26C8);
        aBlock = 0;
        v18 = 0xE000000000000000;
        _StringGuts.grow(_:)(41);

        aBlock = 0xD000000000000021;
        v18 = 0x8000000100319F80;
        v23 = [a1 currentSchemaVersion];
        v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v7);

        v8._countAndFlagsBits = 540949792;
        v8._object = 0xE400000000000000;
        String.append(_:)(v8);
        v23 = 26100;
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v11 = aBlock;
        v10 = v18;
        v12 = static os_log_type_t.error.getter();

        v13 = Logger.logObject.getter();

        if (os_log_type_enabled(v13, v12))
        {
          v14 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v14 = 136446466;
          *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v14 + 12) = 2082;
          v15 = sub_100080210(v11, v10, &aBlock);

          *(v14 + 14) = v15;
          _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

        return v2 > 26099;
      }

LABEL_5:
      v21 = sub_10015D5E8;
      v22 = 0;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_100224D90;
      v20 = &unk_10038B848;
      v4 = _Block_copy(&aBlock);

      v5 = [a1 migrateToVersion:26100 usingBlock:v4];
      _Block_release(v4);
      if ((v5 & 1) == 0)
      {
        return v2 > 26099;
      }
    }
  }
}

uint64_t sub_10015DB20(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_10015DB40, 0, 0);
}

uint64_t sub_10015DB40()
{
  v1 = v0[5];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10015DC40;

  return sub_1001D5D00(sub_10015EAB0, v3);
}

uint64_t sub_10015DC40()
{

  return _swift_task_switch(sub_10015DD58, 0, 0);
}

uint64_t sub_10015DD58()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
    v4 = sub_10015E698();

    v5 = v4 & 1;
  }

  else
  {

    v5 = 2;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10015DE30(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 16;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v16 = &type metadata for UInt64;
  v15[0] = a2;
  v6 = sub_100223CB4(0x64695F6D616461, 0xE700000000000000, v15);
  type metadata accessor for StoreActionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [a1 connection];
  v9 = [ObjCClassFromMetadata queryOnConnection:v8 predicate:v6];

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10015EAF0;
  *(v11 + 24) = v10;
  v17 = sub_1000939AC;
  v18 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100223D74;
  v16 = &unk_10038B820;
  v12 = _Block_copy(v15);
  v13 = a1;

  [v9 enumeratePersistentIDsUsingBlock:v12];

  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_10015E040(uint64_t a1, int a2, _BYTE *a3, void **a4, id a5)
{
  v8 = [a5 connection];
  v9 = [objc_allocWithZone(type metadata accessor for StoreActionEntity()) initWithPersistentID:a1 onConnection:v8];

  swift_beginAccess();
  v10 = *a4;
  *a4 = v9;

  *a3 = 1;
}

uint64_t sub_10015E0E4(void *a1, char a2, uint64_t a3)
{
  type metadata accessor for StoreActionEntity();

  return 1;
}

id sub_10015E33C(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = Dictionary.init(dictionaryLiteral:)();
  v18 = &type metadata for UInt64;
  *&v17 = a2;
  sub_10008B5D0(&v17, v16);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = v8;
  sub_10023E7C0();
  v9 = v19;
  v18 = &type metadata for Int;
  *&v17 = (a1 & 1u) + 1;
  sub_10008B5D0(&v17, v16);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = v9;
  sub_10023E7C0();
  v10 = v19;
  v11 = objc_allocWithZone(v4);
  sub_100223354(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithPropertyValues:isa onConnection:a3];

  if ([v13 existsInDatabase])
  {
  }

  else
  {
    if (![a3 currentError])
    {
      sub_10008B5E0();
      swift_allocError();
      *v14 = 10;
    }

    swift_willThrow();
  }

  return v13;
}

id sub_10015E540(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LastStoreActionStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t sub_10015E698()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    sub_10009E7E4();
    swift_allocError();
    *v5 = 0x6E6F69746361;
    *(v5 + 8) = 0xE600000000000000;
    goto LABEL_5;
  }

  v3 = [v2 integerValue];

  v4 = sub_1001564C0(v3);
  if (v4 == 2)
  {
    sub_10009E7E4();
    swift_allocError();
    *v5 = 0x6E6F69746361;
    *(v5 + 8) = 0xE600000000000000;
    *(v5 + 40) = &type metadata for Int;
    *(v5 + 16) = v3;
LABEL_5:
    *(v5 + 48) = v2 != 0;
    return swift_willThrow();
  }

  return v4 & 1;
}

id sub_10015E7C0(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoreActionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_10015E8BC(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoreActionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_10015E954(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10015E9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10015EA40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015EA78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EAB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10015EB34(uint64_t a1, uint64_t a2)
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

uint64_t sub_10015EB50(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015EB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

uint64_t sub_10015EBDC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

Class sub_10015EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[0] = a4;
  v27[1] = a3;
  v6 = sub_100080FB4(&qword_1003CF820);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for Locale.Components();
  sub_1000890DC();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  v18 = type metadata accessor for Locale();
  sub_1000890DC();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[6] = a1;
  v27[7] = a2;
  v27[4] = 45;
  v27[5] = 0xE100000000000000;
  v27[2] = 95;
  v27[3] = 0xE100000000000000;
  sub_100106050();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  Locale.Components.init(identifier:)();

  Locale.Currency.init(_:)();
  v24 = type metadata accessor for Locale.Currency();
  sub_100081DFC(v8, 0, 1, v24);
  Locale.Components.currency.setter();
  (*(v11 + 16))(v15, v17, v9);
  Locale.init(components:)();
  (*(v11 + 8))(v17, v9);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v20 + 8))(v23, v18);
  return isa;
}

uint64_t sub_10015EF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_1000B9378();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_100080FB4(&unk_1003D20F0);
    sub_1000B9378();
    if (*(v11 + 84) != a2)
    {
      return sub_1001626E8(a1 + *(a3 + 28));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100081D0C(v9, a2, v8);
}

void sub_10015F04C()
{
  sub_100162740();
  type metadata accessor for Date();
  sub_1000B9378();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_100080FB4(&unk_1003D20F0);
    sub_1000B9378();
    if (*(v9 + 84) != v3)
    {
      sub_1001627B4(*(v2 + 28));
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_100081DFC(v7, v0, v0, v6);
}

void sub_10015F150()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100081F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10015F210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v7 + 84) != a2)
  {
    return sub_1001626E8(a1 + *(a3 + 24));
  }

  return sub_100081D0C(a1, a2, v6);
}

void sub_10015F2CC()
{
  sub_100162740();
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_1001627F0();

    sub_100081DFC(v3, v4, v5, v6);
  }

  else
  {
    sub_1001627B4(*(v0 + 24));
  }
}

void sub_10015F380()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    sub_1000B784C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10015F430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PurchaseIntentInternal();
  sub_1000B9378();
  if (*(v7 + 84) != a2)
  {
    return sub_1001626E8(a1 + *(a3 + 24));
  }

  return sub_100081D0C(a1, a2, v6);
}

void sub_10015F4E0()
{
  sub_100162740();
  type metadata accessor for PurchaseIntentInternal();
  sub_1000B9378();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_1001627F0();

    sub_100081DFC(v3, v4, v5, v6);
  }

  else
  {
    sub_1001627B4(*(v0 + 24));
  }
}

uint64_t sub_10015F588()
{
  result = type metadata accessor for PurchaseIntentInternal();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10015F608(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
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

uint64_t sub_10015F6CC(char a1)
{
  if (a1)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 7105633;
  }
}

void sub_10015F6F8()
{
  sub_1000892DC();
  v19 = v2;
  sub_100080FB4(&qword_1003CFAA8);
  sub_1000890DC();
  v17 = v4;
  v18 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v16 = sub_100080FB4(&qword_1003CFAB0);
  sub_1000890DC();
  v9 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  sub_100089174();
  v11 = sub_100080FB4(&qword_1003CFAB8);
  sub_1000890DC();
  v13 = v12;
  sub_100089118();
  __chkstk_darwin(v14);
  sub_100089380();
  sub_100162784();
  sub_100161CFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v13 + 8);
  if (v19)
  {
    sub_100161D90();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    sub_100161DE4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v1, v16);
  }

  (*v15)(v0, v11);
  sub_1000892C4();
}

void sub_10015F958()
{
  sub_1000892DC();
  v41 = v0;
  v3 = v2;
  v40 = sub_100080FB4(&qword_1003CFA78);
  sub_1000890DC();
  v38 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_100080FB4(&qword_1003CFA80);
  sub_1000890DC();
  v37 = v9;
  sub_100089118();
  __chkstk_darwin(v10);
  sub_100089174();
  v11 = sub_100080FB4(&qword_1003CFA88);
  sub_1000890DC();
  v39 = v12;
  sub_100089118();
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_100086D24(v3, v3[3]);
  sub_100161CFC();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v8;
  v36 = v1;
  v41 = v3;
  v17 = v40;
  v18 = KeyedDecodingContainer.allKeys.getter();
  sub_100161D54(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    sub_100080FB4(&qword_1003CC798);
    *v30 = &type metadata for PurchaseIntentRequest.Kind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    v3 = v41;
LABEL_8:
    sub_100080F0C(v3);
LABEL_9:
    sub_1000892C4();
    return;
  }

  v34 = 0;
  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_100161E38(v21 + 1, v22 >> 1, v19, v20, v21, v22);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      if (v23)
      {
        LODWORD(v37) = v23;
        sub_100161D90();
        sub_1000893F8();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v7, v17);
      }

      else
      {
        sub_100161DE4();
        v31 = v36;
        sub_1000893F8();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v31, v35);
      }

      v32 = sub_100089284();
      v33(v32);
      sub_100080F0C(v41);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10015FDC4(uint64_t a1)
{
  v2 = sub_100161DE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015FE00(uint64_t a1)
{
  v2 = sub_100161DE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015FE3C(uint64_t a1)
{
  v2 = sub_100161D90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015FE78(uint64_t a1)
{
  v2 = sub_100161D90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015FEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015F608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015FEE4(uint64_t a1)
{
  v2 = sub_100161CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015FF20(uint64_t a1)
{
  v2 = sub_100161CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10015FF5C(_BYTE *a1@<X8>)
{
  sub_10015F958();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_10015FFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x796669746F6ELL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100160104(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x704168636E75616CLL;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100160188()
{
  sub_1001627A4();
  sub_100080FB4(&qword_1003CFAC8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v1);
  sub_100162784();
  sub_100161AA0();
  sub_10014E0AC();
  type metadata accessor for PurchaseIntentInternal();
  sub_100162718();
  sub_1001607A4(v2, v3);
  sub_1001626C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v4 = type metadata accessor for PurchaseIntentRequest.Add(0);
    sub_1001627D0();
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1001627C4(*(v4 + 24));
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v5 = sub_10014E060();
  return v6(v5);
}

void sub_100160328()
{
  sub_1000892DC();
  v2 = v1;
  v22 = v3;
  type metadata accessor for PurchaseIntentInternal();
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  sub_100080FB4(&qword_1003CFA28);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089380();
  v9 = type metadata accessor for PurchaseIntentRequest.Add(0);
  sub_100098B7C();
  __chkstk_darwin(v10);
  sub_100093D40();
  v13 = v12 - v11;
  v23 = v2;
  sub_100086D24(v2, v2[3]);
  sub_100161AA0();
  sub_1001627DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100080F0C(v2);
  }

  else
  {
    sub_100162718();
    sub_1001607A4(v14, v15);
    sub_100162764();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100105F40(v7, v13);
    sub_1001627D0();
    sub_100162764();
    *(v13 + v9[5]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100162764();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = (v13 + v9[6]);
    *v17 = v16;
    v17[1] = v18;
    sub_100162764();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = sub_100162730();
    v21(v20);
    *(v13 + v9[7]) = v19 & 1;
    sub_100161BF4(v13, v22, type metadata accessor for PurchaseIntentRequest.Add);
    sub_100080F0C(v23);
    sub_100161AF4(v13, type metadata accessor for PurchaseIntentRequest.Add);
  }

  sub_1000892C4();
}

uint64_t sub_100160650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015FFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100160678(uint64_t a1)
{
  v2 = sub_100161AA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001606B4(uint64_t a1)
{
  v2 = sub_100161AA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100160720(uint64_t a1)
{
  *(a1 + 8) = sub_1001607A4(&unk_1003D21C0, type metadata accessor for PurchaseIntentRequest.Add);
  result = sub_1001607A4(&qword_1003CF9F0, type metadata accessor for PurchaseIntentRequest.Add);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001607A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001607EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100160950(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x49746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001609E8()
{
  sub_1001627A4();
  sub_100080FB4(&qword_1003CFAC0);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v1);
  sub_100162784();
  sub_100161B4C();
  sub_10014E0AC();
  type metadata accessor for ClientOverride(0);
  sub_10016269C();
  sub_1001607A4(v2, v3);
  sub_1001626C8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    v4 = type metadata accessor for PurchaseIntentRequest.Remove(0);
    sub_100161CA8();
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1001627C4(*(v4 + 24));
    sub_100127D60();
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1001627C4(*(v4 + 28));
    sub_100162804();
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v5 = sub_10014E060();
  return v6(v5);
}

void sub_100160B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1000892DC();
  v15 = v14;
  v35 = v16;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v17);
  sub_100089174();
  sub_100080FB4(&qword_1003CFA40);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v18);
  sub_100089380();
  v19 = type metadata accessor for PurchaseIntentRequest.Remove(0);
  sub_100098B7C();
  __chkstk_darwin(v20);
  sub_100093D40();
  v23 = v22 - v21;
  v36 = v15;
  sub_100086D24(v15, v15[3]);
  sub_100161B4C();
  sub_1001627DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100080F0C(v15);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    sub_10016269C();
    sub_1001607A4(v24, v25);
    sub_100162764();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100086E28(v13, v23);
    sub_100161BA0();
    sub_100162764();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + v19[5]) = a12;
    sub_100127D60();
    sub_100162764();
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = (v23 + v19[6]);
    *v27 = v26;
    v27[1] = v28;
    sub_100162804();
    sub_100162764();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v30;
    v32 = sub_100162754();
    v33(v32);
    v34 = (v23 + v19[7]);
    *v34 = v29;
    v34[1] = v31;
    sub_100161BF4(v23, v35, type metadata accessor for PurchaseIntentRequest.Remove);
    sub_100080F0C(v36);
    sub_100161AF4(v23, type metadata accessor for PurchaseIntentRequest.Remove);
  }

  sub_1000892C4();
}

uint64_t sub_100160ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001607EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100160EF8(uint64_t a1)
{
  v2 = sub_100161B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100160F34(uint64_t a1)
{
  v2 = sub_100161B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100160FA0(uint64_t a1)
{
  *(a1 + 8) = sub_1001607A4(&qword_1003CF9F8, type metadata accessor for PurchaseIntentRequest.Remove);
  result = sub_1001607A4(&qword_1003CFA00, type metadata accessor for PurchaseIntentRequest.Remove);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100161024(uint64_t a1)
{
  result = sub_1001607A4(&qword_1003CFA08, type metadata accessor for PurchaseIntentRequest.Remove);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100161080()
{
  result = qword_1003CFA10;
  if (!qword_1003CFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA10);
  }

  return result;
}

uint64_t sub_1001610D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746661 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10016122C(char a1)
{
  result = 0x7265746661;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001612BC()
{
  sub_1001627A4();
  sub_100080FB4(&qword_1003CFA68);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v1);
  sub_100162784();
  sub_100161C54();
  sub_10014E0AC();
  type metadata accessor for Date();
  sub_100162700();
  sub_1001607A4(v2, v3);
  sub_1001626C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v4 = type metadata accessor for PurchaseIntentRequest.Query(0);
    sub_1001627D0();
    type metadata accessor for ClientOverride(0);
    sub_10016269C();
    sub_1001607A4(v5, v6);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100127D60();
    sub_100161CA8();
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1001627C4(*(v4 + 28));
    sub_100162804();
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v7 = sub_10014E060();
  return v8(v7);
}

void sub_1001614A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_1000892DC();
  v55 = v12;
  v15 = v14;
  v49 = v16;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for Date();
  sub_1000890DC();
  v50 = v21;
  __chkstk_darwin(v22);
  sub_100093D40();
  v53 = v24 - v23;
  sub_100080FB4(&qword_1003CFA58);
  sub_1000890DC();
  v51 = v26;
  v52 = v25;
  sub_100089118();
  __chkstk_darwin(v27);
  sub_100089174();
  v28 = type metadata accessor for PurchaseIntentRequest.Query(0);
  sub_100098B7C();
  __chkstk_darwin(v29);
  sub_100093D40();
  v32 = v31 - v30;
  sub_100086D24(v15, v15[3]);
  sub_100161C54();
  v54 = v13;
  v33 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    sub_100080F0C(v15);
  }

  else
  {
    v55 = v15;
    v48 = v28;
    v34 = v32;
    v35 = v50;
    sub_100162700();
    sub_1001607A4(v36, v37);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 32))(v34, v53, v20);
    type metadata accessor for ClientOverride(0);
    sub_1001627D0();
    sub_10016269C();
    sub_1001607A4(v38, v39);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100086E28(v19, v34 + *(v48 + 20));
    sub_100127D60();
    sub_100161BA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v48;
    *(v34 + *(v48 + 24)) = a12;
    sub_100162804();
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v42;
    v43 = v41;
    v44 = sub_1001626B4();
    v45(v44);
    v46 = (v34 + *(v40 + 28));
    v47 = v53;
    *v46 = v43;
    v46[1] = v47;
    sub_100161BF4(v34, v49, type metadata accessor for PurchaseIntentRequest.Query);
    sub_100080F0C(v55);
    sub_100161AF4(v34, type metadata accessor for PurchaseIntentRequest.Query);
  }

  sub_1000892C4();
}

uint64_t sub_1001618F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001610D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016191C(uint64_t a1)
{
  v2 = sub_100161C54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100161958(uint64_t a1)
{
  v2 = sub_100161C54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001619C4(uint64_t a1)
{
  *(a1 + 8) = sub_1001607A4(&unk_1003D21D0, type metadata accessor for PurchaseIntentRequest.Query);
  result = sub_1001607A4(&qword_1003CFA18, type metadata accessor for PurchaseIntentRequest.Query);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100161A48(uint64_t a1)
{
  result = sub_1001607A4(&qword_1003CFA20, type metadata accessor for PurchaseIntentRequest.Query);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100161AA0()
{
  result = qword_1003CFA30;
  if (!qword_1003CFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA30);
  }

  return result;
}

uint64_t sub_100161AF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100161B4C()
{
  result = qword_1003CFA48;
  if (!qword_1003CFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA48);
  }

  return result;
}

unint64_t sub_100161BA0()
{
  result = qword_1003CFA50;
  if (!qword_1003CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA50);
  }

  return result;
}

uint64_t sub_100161BF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100161C54()
{
  result = qword_1003CFA60;
  if (!qword_1003CFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA60);
  }

  return result;
}

unint64_t sub_100161CA8()
{
  result = qword_1003CFA70;
  if (!qword_1003CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA70);
  }

  return result;
}

unint64_t sub_100161CFC()
{
  result = qword_1003CFA90;
  if (!qword_1003CFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA90);
  }

  return result;
}

void sub_100161D54(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_100162770();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_100161D90()
{
  result = qword_1003CFA98;
  if (!qword_1003CFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFA98);
  }

  return result;
}

unint64_t sub_100161DE4()
{
  result = qword_1003CFAA0;
  if (!qword_1003CFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAA0);
  }

  return result;
}

uint64_t sub_100161E38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

_BYTE *sub_100161EB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100161F80);
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
          result = sub_1000892F4(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100161FFC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001620C4);
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
          result = sub_1000892F4(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100162110()
{
  result = qword_1003CFAD8;
  if (!qword_1003CFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAD8);
  }

  return result;
}

unint64_t sub_100162168()
{
  result = qword_1003CFAE0;
  if (!qword_1003CFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAE0);
  }

  return result;
}

unint64_t sub_1001621C0()
{
  result = qword_1003CFAE8;
  if (!qword_1003CFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAE8);
  }

  return result;
}

unint64_t sub_100162218()
{
  result = qword_1003CFAF0;
  if (!qword_1003CFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAF0);
  }

  return result;
}

unint64_t sub_100162270()
{
  result = qword_1003CFAF8;
  if (!qword_1003CFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFAF8);
  }

  return result;
}

unint64_t sub_1001622C8()
{
  result = qword_1003CFB00;
  if (!qword_1003CFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB00);
  }

  return result;
}

unint64_t sub_100162320()
{
  result = qword_1003CFB08;
  if (!qword_1003CFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB08);
  }

  return result;
}

unint64_t sub_100162378()
{
  result = qword_1003CFB10;
  if (!qword_1003CFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB10);
  }

  return result;
}

unint64_t sub_1001623D0()
{
  result = qword_1003CFB18;
  if (!qword_1003CFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB18);
  }

  return result;
}

unint64_t sub_100162428()
{
  result = qword_1003CFB20;
  if (!qword_1003CFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB20);
  }

  return result;
}

unint64_t sub_100162480()
{
  result = qword_1003CFB28;
  if (!qword_1003CFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB28);
  }

  return result;
}

unint64_t sub_1001624D8()
{
  result = qword_1003CFB30;
  if (!qword_1003CFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB30);
  }

  return result;
}

unint64_t sub_100162530()
{
  result = qword_1003CFB38;
  if (!qword_1003CFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB38);
  }

  return result;
}

unint64_t sub_100162588()
{
  result = qword_1003CFB40;
  if (!qword_1003CFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB40);
  }

  return result;
}

unint64_t sub_1001625E0()
{
  result = qword_1003CFB48;
  if (!qword_1003CFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB48);
  }

  return result;
}

unint64_t sub_100162638()
{
  result = qword_1003CFB50;
  if (!qword_1003CFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFB50);
  }

  return result;
}

uint64_t sub_1001626E8@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100162824(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080FB4(&unk_1003D20F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a3 + 28);
    }

    return sub_100081D0C(a1 + v10, a2, v9);
  }
}

uint64_t sub_100162910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D20F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a4 + 28);
    }

    return sub_100081DFC(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ClientOverrideRequest()
{
  result = qword_1003CFBB0;
  if (!qword_1003CFBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100162A30()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100162AC4(uint64_t a1)
{
  *(a1 + 8) = sub_100163538(&unk_1003D2140, type metadata accessor for ClientOverrideRequest);
  result = sub_100163538(&qword_1003CFBF0, type metadata accessor for ClientOverrideRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100162B48(uint64_t a1)
{
  result = sub_100163538(&qword_1003CFBF8, type metadata accessor for ClientOverrideRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100162BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100162CF8(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x6C69746E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100162D90(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CFC00);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001634E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ClientOverrideRequest();
    v14[14] = 1;
    type metadata accessor for ClientOverride(0);
    sub_10016384C();
    sub_100163538(v9, v10);
    sub_10016387C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[12] = 3;
    type metadata accessor for Date();
    sub_100163864();
    sub_100163538(v11, v12);
    sub_10016387C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100162FAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for Date();
  sub_1000890DC();
  v34 = v3;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  sub_100080FB4(&qword_1003CFC10);
  sub_1000890DC();
  v37 = v11;
  v38 = v10;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ClientOverrideRequest();
  __chkstk_darwin(v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100086D24(a1, a1[3]);
  sub_1001634E4();
  v39 = v13;
  v17 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100080F0C(a1);
  }

  v40 = v6;
  v44 = 0;
  v18 = v37;
  v19 = v16;
  *v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[1] = v20;
  v33 = v20;
  type metadata accessor for ClientOverride(0);
  v43 = 1;
  sub_10016384C();
  sub_100163538(v21, v22);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v14;
  sub_100086E28(v9, v19 + *(v14 + 20));
  v42 = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = a1;
  v26 = (v19 + *(v14 + 24));
  *v26 = v24;
  v26[1] = v27;
  v41 = 3;
  sub_100163864();
  sub_100163538(v28, v29);
  v30 = v40;
  v31 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v39, v38);
  (*(v34 + 32))(v19 + *(v23 + 28), v30, v31);
  sub_100163580(v19, v35);
  sub_100080F0C(v25);
  return sub_1001635E4(v19);
}

uint64_t sub_100163414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100162BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016343C(uint64_t a1)
{
  v2 = sub_1001634E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163478(uint64_t a1)
{
  v2 = sub_1001634E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001634E4()
{
  result = qword_1003CFC08;
  if (!qword_1003CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC08);
  }

  return result;
}

uint64_t sub_100163538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100163580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverrideRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001635E4(uint64_t a1)
{
  v2 = type metadata accessor for ClientOverrideRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ClientOverrideRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10016370CLL);
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