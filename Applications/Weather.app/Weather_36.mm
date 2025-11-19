uint64_t sub_1003C2D74(uint64_t a1)
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performed Scroll instruction", v5, 2u);
  }

  return _swift_continuation_throwingResume(a1);
}

uint64_t sub_1003C2E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_1003C2608();
}

id sub_1003C2EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v11, "init");
  sub_10022C350(&qword_100CD81E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setParameters:isa];

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000742F0;
  v10[3] = &unk_100C53AE0;
  v8 = _Block_copy(v10);

  [v6 setCompletionHandler:v8];

  _Block_release(v8);
  return v6;
}

uint64_t sub_1003C30E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
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

uint64_t sub_1003C31FC(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x726F68636E61;
  }

  return 0x6552656372756F73;
}

BOOL sub_1003C3254(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AirQualityDetailViewState();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = a2 + v6;
  if ((v8 & 1) == 0)
  {
    return (*(v9 + 32) & 1) == 0 && CGRectEqualToRect(*v7, *v9);
  }

  return (*(v9 + 32) & 1) != 0;
}

uint64_t sub_1003C32E4(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB3FD0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C3B2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20[0]) = 0;
  type metadata accessor for Location();
  sub_10001EAE4();
  sub_1003C3D4C(v11, v12);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AirQualityDetailViewState();
    LOBYTE(v20[0]) = *(v3 + *(v13 + 20));
    v22 = 1;
    sub_1003C3C94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3 + *(v13 + 24);
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v20[0] = *v14;
    v20[1] = v16;
    v21 = v15;
    v22 = 2;
    type metadata accessor for CGRect(0);
    sub_10001C0D8();
    sub_1003C3D4C(v17, v18);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C34FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Location();
  sub_1000037C4();
  v27 = v5;
  __chkstk_darwin(v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3FB8);
  sub_1000037C4();
  v29 = v9;
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for AirQualityDetailViewState();
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003C3B2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v25 = a1;
  v13 = v27;
  LOBYTE(v31) = 0;
  sub_10001EAE4();
  sub_1003C3D4C(v14, v15);
  v16 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v16, v4);
  v34 = 1;
  sub_1003C3B80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[*(v10 + 20)] = v31;
  type metadata accessor for CGRect(0);
  v34 = 2;
  sub_10001C0D8();
  sub_1003C3D4C(v17, v18);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = &v12[*(v10 + 24)];
  v20 = sub_100005A84();
  v21(v20);
  v22 = v33;
  v23 = v32;
  *v19 = v31;
  *(v19 + 1) = v23;
  v19[32] = v22;
  sub_1003C3BD4(v12, v26);
  sub_100006F14(v25);
  return sub_1003C3C38(v12);
}

uint64_t sub_1003C38AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C30E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C38D4(uint64_t a1)
{
  v2 = sub_1003C3B2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C3910(uint64_t a1)
{
  v2 = sub_1003C3B2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C39B0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB3FE0);
  a1[4] = sub_1003C3CE8();
  sub_100042FB0(a1);
  type metadata accessor for AirQualityDetailViewState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003C3A78()
{
  sub_1003C3D4C(&qword_100CB3FF0, type metadata accessor for AirQualityDetailViewState);

  return ShortDescribable.description.getter();
}

unint64_t sub_1003C3B2C()
{
  result = qword_100CB3FC0;
  if (!qword_100CB3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3FC0);
  }

  return result;
}

unint64_t sub_1003C3B80()
{
  result = qword_100CB3FC8;
  if (!qword_100CB3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3FC8);
  }

  return result;
}

uint64_t sub_1003C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3C38(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityDetailViewState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003C3C94()
{
  result = qword_100CB3FD8;
  if (!qword_100CB3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3FD8);
  }

  return result;
}

unint64_t sub_1003C3CE8()
{
  result = qword_100CB3FE8;
  if (!qword_100CB3FE8)
  {
    sub_10022E824(&qword_100CB3FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3FE8);
  }

  return result;
}

uint64_t sub_1003C3D4C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AirQualityDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C3E74()
{
  result = qword_100CB3FF8;
  if (!qword_100CB3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3FF8);
  }

  return result;
}

unint64_t sub_1003C3ECC()
{
  result = qword_100CB4000;
  if (!qword_100CB4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4000);
  }

  return result;
}

unint64_t sub_1003C3F24()
{
  result = qword_100CB4008;
  if (!qword_100CB4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4008);
  }

  return result;
}

uint64_t sub_1003C3F8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 96))
    {
      v2 = *a1 + 62;
    }

    else
    {
      v2 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1003C3FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
    }
  }

  return result;
}

uint64_t sub_1003C4094(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v3 = *(a1 + 88);
    v13 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    v19 = v3;
    if ((*a2 & 0x8000000000000000) != 0)
    {
      v4 = *(a2 + 88);
      v6 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
      v7 = *(a2 + 8);
      v8 = *(a2 + 24);
      v9 = *(a2 + 40);
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      v12 = v4;
      v2 = sub_1005F7E98(&v13, &v6);
      return v2 & 1;
    }

    goto LABEL_5;
  }

  if ((*a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for ReportWeatherContentViewModel._Storage(0);
  sub_1002D61E4();
  return v2 & 1;
}

void sub_1003C4180(void *a1@<X8>)
{
  sub_100756EA0();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_1003C4220@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CB4018);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  v12 = sub_1000161C0(a1, a1[3]);
  sub_1003C4CB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v45 = 0;
  sub_1003C4D0C();
  sub_10000FE94();
  v14 = v7 + 8;
  if (v46)
  {
    v44 = 2;
    sub_1003C4D60();
    sub_10000FE94();
    v15 = sub_100005A94();
    v16(v15);
    v30 = v34;
    v31 = v33;
    v29 = v35;
    v27 = v37;
    v28 = v36;
    v12 = v39;
    v26 = v38;
    v5 = v40;
    v10 = v41;
    v14 = v42;
    v11 = v43;
    v17 = v32 & 0xFFFFFFFFFFFFFF9 | 0x8000000000000000;
  }

  else
  {
    v44 = 1;
    sub_1003C4DB4();
    sub_10000FE94();
    v18 = sub_100005A94();
    v19(v18);
    v17 = v32 & 0xFFFFFFFFFFFFFF9;
  }

  result = sub_100006F14(a1);
  v21 = v30;
  v20 = v31;
  *a2 = v17;
  a2[1] = v20;
  v23 = v28;
  v22 = v29;
  a2[2] = v21;
  a2[3] = v22;
  v24 = v26;
  v25 = v27;
  a2[4] = v23;
  a2[5] = v25;
  a2[6] = v24;
  a2[7] = v12;
  a2[8] = v5;
  a2[9] = v10;
  a2[10] = v14;
  a2[11] = v11;
  return result;
}

uint64_t sub_1003C4464(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4040);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C4CB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  if ((*v3 & 0x8000000000000000) != 0)
  {
    v12 = *(v3 + 8);
    v19 = *(v3 + 24);
    v20 = v12;
    v13 = *(v3 + 40);
    v17 = *(v3 + 56);
    v18 = v13;
    v16 = *(v3 + 72);
    v14 = *(v3 + 88);
    LOBYTE(v21) = 1;
    v28 = 0;
    sub_1003C4E08();
    sub_10001EAFC();
    if (!v2)
    {
      v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v22 = v20;
      v23 = v19;
      v24 = v18;
      v25 = v17;
      v26 = v16;
      v27 = v14;
      v28 = 2;
      sub_1003C4E5C();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v28 = 0;
    sub_1003C4E08();
    sub_10001EAFC();
    if (!v2)
    {
      v21 = v11;
      v28 = 1;
      sub_1003C4EB0();
LABEL_6:
      sub_10001EAFC();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C4660(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C439A8, v2);

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

uint64_t sub_1003C46B4(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

unint64_t sub_1003C4708@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E18A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E18EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003C476C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E18A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4794(uint64_t a1)
{
  v2 = sub_1003C4CB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C47D0(uint64_t a1)
{
  v2 = sub_1003C4CB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4830@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C4660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003C46B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1003C493C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003C4220(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1003C49A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CB4060);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v11 = *(v1 + 88);
    v20 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v21 = *(v1 + 8);
    v22 = *(v1 + 24);
    v23 = *(v1 + 40);
    v24 = *(v1 + 56);
    v25 = *(v1 + 72);
    v26 = v11;
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v18 = v16;
    v19 = v17;
    v12._countAndFlagsBits = 0x2C6567617373656DLL;
    v12._object = 0xEF3D6C65646F6D20;
    String.append(_:)(v12);
    sub_1005F8064(&v16);
    sub_10022C350(&qword_100CB0D60);
    _print_unlocked<A, B>(_:_:)();
    sub_100006F14(&v16);
  }

  else
  {
    v20 = 0;
    *&v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v16 = v20;
    v17 = v21;
    v10._countAndFlagsBits = 0x2C746E65746E6F63;
    v10._object = 0xEF3D6C65646F6D20;
    String.append(_:)(v10);
    sub_100587D08(v9, &v20);
    sub_10022C350(&qword_100CB0D60);
    _print_unlocked<A, B>(_:_:)();
    sub_100006F14(&v20);
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v3;
  a1[4] = sub_1003C4F04();
  v13 = sub_100042FB0(a1);
  return (*(v5 + 32))(v13, v8, v3);
}

uint64_t sub_1003C4C24()
{
  sub_1003C4F68();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003C4C64()
{
  result = qword_100CB4010;
  if (!qword_100CB4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4010);
  }

  return result;
}

unint64_t sub_1003C4CB8()
{
  result = qword_100CB4020;
  if (!qword_100CB4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4020);
  }

  return result;
}

unint64_t sub_1003C4D0C()
{
  result = qword_100CB4028;
  if (!qword_100CB4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4028);
  }

  return result;
}

unint64_t sub_1003C4D60()
{
  result = qword_100CB4030;
  if (!qword_100CB4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4030);
  }

  return result;
}

unint64_t sub_1003C4DB4()
{
  result = qword_100CB4038;
  if (!qword_100CB4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4038);
  }

  return result;
}

unint64_t sub_1003C4E08()
{
  result = qword_100CB4048;
  if (!qword_100CB4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4048);
  }

  return result;
}

unint64_t sub_1003C4E5C()
{
  result = qword_100CB4050;
  if (!qword_100CB4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4050);
  }

  return result;
}

unint64_t sub_1003C4EB0()
{
  result = qword_100CB4058;
  if (!qword_100CB4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4058);
  }

  return result;
}

unint64_t sub_1003C4F04()
{
  result = qword_100CB4068;
  if (!qword_100CB4068)
  {
    sub_10022E824(&qword_100CB4060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4068);
  }

  return result;
}

unint64_t sub_1003C4F68()
{
  result = qword_100CB4070;
  if (!qword_100CB4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherViewModel.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ReportWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C5178()
{
  result = qword_100CB4078;
  if (!qword_100CB4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4078);
  }

  return result;
}

unint64_t sub_1003C51D0()
{
  result = qword_100CB4080;
  if (!qword_100CB4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4080);
  }

  return result;
}

unint64_t sub_1003C5228()
{
  result = qword_100CB4088;
  if (!qword_100CB4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4088);
  }

  return result;
}

unint64_t sub_1003C5280()
{
  result = qword_100CB4090;
  if (!qword_100CB4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4090);
  }

  return result;
}

unint64_t sub_1003C52D4()
{
  result = qword_100CB4098;
  if (!qword_100CB4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4098);
  }

  return result;
}

uint64_t sub_1003C5350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656C6573 && a2 == 0xEC00000065746144;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100AC53A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E694B776F727261 && a2 == 0xE900000000000064)
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

unint64_t sub_1003C550C(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x64657463656C6573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    case 4:
      result = 0x6E694B776F727261;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1003C55BC(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v59 = v8 - v7;
  v9 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v60 = &v55 - v11;
  v12 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(qword_100CA66A0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  v24 = sub_10022C350(&qword_100CB4150);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v55 - v26;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v5;
  v28 = type metadata accessor for MoonDetailViewState();
  v62 = a2;
  v29 = *(v28 + 20);
  v30 = *(v24 + 48);
  v57 = v28;
  v58 = a1;
  sub_1000177DC(a1 + v29, v27);
  sub_1000177DC(v62 + v29, &v27[v30]);
  sub_10000E7EC(v27);
  if (v31)
  {
    sub_10000E7EC(&v27[v30]);
    if (v31)
    {
      sub_1000180EC(v27, qword_100CA66A0);
      goto LABEL_12;
    }

LABEL_10:
    v32 = &qword_100CB4150;
    v33 = v27;
LABEL_18:
    sub_1000180EC(v33, v32);
    return 0;
  }

  sub_1000955E0(v27, v23, qword_100CA66A0);
  sub_10000E7EC(&v27[v30]);
  if (v31)
  {
    sub_1003C6784(v23, type metadata accessor for MoonDetailSelectedDate);
    goto LABEL_10;
  }

  sub_1003C6614(&v27[v30], v19);
  v34 = sub_10070B2E4(v23, v19);
  sub_1003C6784(v19, type metadata accessor for MoonDetailSelectedDate);
  sub_1003C6784(v23, type metadata accessor for MoonDetailSelectedDate);
  sub_1000180EC(v27, qword_100CA66A0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v36 = v57;
  v35 = v58;
  v37 = *(v57 + 24);
  v38 = *(v12 + 48);
  sub_1000177DC(v58 + v37, v15);
  v39 = v62 + v37;
  v40 = v62;
  sub_1000177DC(v39, &v15[v38]);
  v41 = v61;
  if (sub_100024D10(v15, 1, v61) == 1)
  {
    if (sub_100024D10(&v15[v38], 1, v41) == 1)
    {
      sub_1000180EC(v15, &unk_100CB2CF0);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v42 = v60;
  sub_1000955E0(v15, v60, &unk_100CB2CF0);
  if (sub_100024D10(&v15[v38], 1, v41) == 1)
  {
    (*(v56 + 8))(v42, v41);
LABEL_17:
    v32 = qword_100CA4F80;
    v33 = v15;
    goto LABEL_18;
  }

  v44 = v56;
  v45 = &v15[v38];
  v46 = v59;
  (*(v56 + 32))(v59, v45, v41);
  sub_10001EB20();
  sub_1003C6894(v47, v48);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v44 + 8);
  v50(v46, v41);
  v50(v42, v41);
  v40 = v62;
  sub_1000180EC(v15, &unk_100CB2CF0);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v51 = *(v36 + 28);
  v52 = (v35 + v51);
  v53 = *(v35 + v51 + 32);
  v54 = v40 + v51;
  if (v53)
  {
    if (*(v54 + 32))
    {
      return *(v35 + *(v36 + 32)) == *(v40 + *(v36 + 32));
    }

    return 0;
  }

  if (*(v54 + 32))
  {
    return 0;
  }

  result = CGRectEqualToRect(*v52, *v54);
  if (result)
  {
    return *(v35 + *(v36 + 32)) == *(v40 + *(v36 + 32));
  }

  return result;
}

uint64_t sub_1003C5B1C(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4178);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C6678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  type metadata accessor for Location();
  sub_100004094();
  sub_1003C6894(v11, v12);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for MoonDetailViewState();
    LOBYTE(v26) = 1;
    type metadata accessor for MoonDetailSelectedDate();
    sub_100008488();
    sub_1003C6894(v14, v15);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v26) = 2;
    type metadata accessor for Date();
    sub_10001EB20();
    sub_1003C6894(v16, v17);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + *(v13 + 28));
    v19 = *(v18 + 32);
    v20 = v18[1];
    v26 = *v18;
    v27 = v20;
    v28 = v19;
    v25 = 3;
    type metadata accessor for CGRect(0);
    sub_100014528();
    sub_1003C6894(v21, v22);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v26) = *(v3 + *(v13 + 32));
    v25 = 4;
    sub_1003C67DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C5DE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v44 = &v43 - v5;
  v6 = sub_10022C350(qword_100CA66A0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Location();
  sub_1000037C4();
  v45 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v48 = v14 - v13;
  sub_10022C350(&qword_100CB4158);
  sub_1000037C4();
  v46 = v16;
  v47 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  sub_1000161C0(a1, a1[3]);
  sub_1003C6678();
  v49 = v19;
  v25 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100006F14(a1);
  }

  v26 = v45;
  LOBYTE(v51) = 0;
  sub_100004094();
  sub_1003C6894(v27, v28);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = *(v26 + 32);
  v50 = v10;
  v29(v24, v48, v10);
  type metadata accessor for MoonDetailSelectedDate();
  LOBYTE(v51) = 1;
  sub_100008488();
  sub_1003C6894(v30, v31);
  sub_100049784();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002F758(v9, v24 + v20[5], qword_100CA66A0);
  type metadata accessor for Date();
  LOBYTE(v51) = 2;
  sub_10001EB20();
  sub_1003C6894(v32, v33);
  v34 = v44;
  sub_100049784();
  v48 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002F758(v34, v24 + v20[6], &unk_100CB2CF0);
  type metadata accessor for CGRect(0);
  v54 = 3;
  sub_100014528();
  sub_1003C6894(v35, v36);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = v24 + v20[7];
  v38 = v53;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  *(v37 + 32) = v38;
  v54 = 4;
  sub_1003C66CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = sub_100022ACC();
  v41(v40);
  *(v24 + v20[8]) = v51;
  sub_1003C6720(v24, v43);
  sub_100006F14(a1);
  return sub_1003C6784(v24, type metadata accessor for MoonDetailViewState);
}

uint64_t sub_1003C6394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C5350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C63BC(uint64_t a1)
{
  v2 = sub_1003C6678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C63F8(uint64_t a1)
{
  v2 = sub_1003C6678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C6498@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB4190);
  a1[4] = sub_1003C6830();
  sub_100042FB0(a1);
  type metadata accessor for MoonDetailViewState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003C6560()
{
  sub_1003C6894(&qword_100CB41A0, type metadata accessor for MoonDetailViewState);

  return ShortDescribable.description.getter();
}

uint64_t sub_1003C6614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailSelectedDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C6678()
{
  result = qword_100CB4160;
  if (!qword_100CB4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4160);
  }

  return result;
}

unint64_t sub_1003C66CC()
{
  result = qword_100CB4170;
  if (!qword_100CB4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4170);
  }

  return result;
}

uint64_t sub_1003C6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailViewState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C6784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1003C67DC()
{
  result = qword_100CB4188;
  if (!qword_100CB4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4188);
  }

  return result;
}

unint64_t sub_1003C6830()
{
  result = qword_100CB4198;
  if (!qword_100CB4198)
  {
    sub_10022E824(&qword_100CB4190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4198);
  }

  return result;
}

uint64_t sub_1003C6894(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MoonDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003C69BC()
{
  result = qword_100CB41A8;
  if (!qword_100CB41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB41A8);
  }

  return result;
}

unint64_t sub_1003C6A14()
{
  result = qword_100CB41B0;
  if (!qword_100CB41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB41B0);
  }

  return result;
}

unint64_t sub_1003C6A6C()
{
  result = qword_100CB41B8;
  if (!qword_100CB41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB41B8);
  }

  return result;
}

uint64_t sub_1003C6ADC()
{
  sub_10022C350(&qword_100CA53B0);
  sub_10022C350(&qword_100CB4260);
  sub_100270C80();
  sub_100006F64(&qword_100CB4268, &qword_100CB4260);
  return Menu.init(content:label:)();
}

uint64_t sub_1003C6BC8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB41C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v5 = type metadata accessor for ConditionPickerMenuView();
  sub_100035AD0(a1 + *(v5 + 20), v4, &qword_100CB41C0);
  v9 = 0xD000000000000012;
  v10 = 0x8000000100AC53E0;
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v8 = a1;
  sub_10022C350(&qword_100CA2CD8);
  sub_10022C350(&qword_100CB4270);
  sub_1003C7964();
  sub_1003C7A18();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_1003C6D2C()
{
  type metadata accessor for ConditionPickerMenuViewModel(0);

  sub_10022C350(&qword_100CB42B0);
  sub_10022C350(&qword_100CB4298);
  sub_100006F64(&qword_100CB42B8, &qword_100CB42B0);
  sub_1003C7A9C();
  sub_1003C7CD4(&qword_100CB42C0, type metadata accessor for ConditionPickerMenuViewModel.Row);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1003C6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = sub_10022C350(&qword_100CA2CF0);
  v63 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v60 - v3;
  v70 = sub_10022C350(&qword_100CB42C8);
  v65 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = &v60 - v4;
  v67 = sub_10022C350(&qword_100CB42D0);
  __chkstk_darwin(v67);
  v68 = &v60 - v5;
  v75 = sub_10022C350(&qword_100CB42A8);
  __chkstk_darwin(v75);
  v71 = &v60 - v6;
  v74 = sub_10022C350(&qword_100CB42D8);
  __chkstk_darwin(v74);
  v8 = &v60 - v7;
  v9 = sub_10022C350(&qword_100CB42E0);
  v72 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = sub_10022C350(&qword_100CA2CD8);
  __chkstk_darwin(v12);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for WeatherCondition();
  v73 = *(v17 - 8);
  __chkstk_darwin(v17);
  v78 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for ConditionPickerMenuViewModel.Row(0) + 20);
  sub_100035AD0(a1 + v19, v16, &qword_100CA2CD8);
  v77 = v17;
  if (sub_100024D10(v16, 1, v17) == 1)
  {
    sub_1000180EC(v16, &qword_100CA2CD8);
    v20 = &v11[*(sub_10022C350(&qword_100CA2CD0) + 36)];
    sub_100035AD0(a1 + v19, v20, &qword_100CA2CD8);
    *(v20 + *(sub_10022C350(&qword_100CA2CE0) + 36)) = 1;
    *v11 = 0xD00000000000001FLL;
    *(v11 + 1) = 0x8000000100AC5400;
    v11[16] = 0;
    *(v11 + 3) = _swiftEmptyArrayStorage;
    v21 = v72;
    (*(v72 + 16))(v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    sub_1003C7B80();
    v22 = sub_1003C7964();
    v79 = &type metadata for Text;
    v80 = v12;
    v81 = &protocol witness table for Text;
    v82 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v11, v9);
  }

  else
  {
    v60 = v12;
    v61 = v8;
    v24 = v73;
    (*(v73 + 32))(v78, v16, v77);
    if (WeatherCondition.conditionIconName(isDaytime:)(1).value._object)
    {
      v25 = v78;
      v79 = WeatherCondition.rawValue.getter();
      v80 = v26;
      sub_10002D5A4();
      v27 = v62;
      Label<>.init<A>(_:systemImage:)();
      v28 = v66;
      v29 = v25;
      v30 = v77;
      (*(v24 + 16))(v66, v29, v77);
      sub_10001B350(v28, 0, 1, v30);
      v31 = sub_10022C350(&qword_100CA2CE8);
      v32 = v64;
      v33 = &v64[*(v31 + 36)];
      sub_1003C7D1C(v28, v33);
      *(v33 + *(sub_10022C350(&qword_100CA2CE0) + 36)) = 1;
      v34 = v69;
      (*(v63 + 32))(v32, v27, v69);
      v35 = v65;
      v36 = v70;
      (*(v65 + 16))(v68, v32, v70);
      swift_storeEnumTagMultiPayload();
      v37 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
      v38 = sub_1003C7964();
      v79 = v34;
      v39 = v60;
      v80 = v60;
      v81 = v37;
      v82 = v38;
      swift_getOpaqueTypeConformance2();
      v79 = &type metadata for Text;
      v80 = v39;
      v81 = &protocol witness table for Text;
      v82 = v38;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      _ConditionalContent<>.init(storage:)();
      v41 = v32;
      v42 = v73;
      (*(v35 + 8))(v41, v36);
    }

    else
    {
      v43 = v78;
      v79 = WeatherCondition.rawValue.getter();
      v80 = v44;
      sub_10002D5A4();
      v45 = Text.init<A>(_:)();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v66;
      v53 = v43;
      v54 = v77;
      (*(v24 + 16))(v66, v53, v77);
      sub_10001B350(v52, 0, 1, v54);
      v55 = &v11[*(sub_10022C350(&qword_100CA2CD0) + 36)];
      sub_1003C7D1C(v52, v55);
      *(v55 + *(sub_10022C350(&qword_100CA2CE0) + 36)) = 1;
      v56 = v72;
      v42 = v73;
      *v11 = v45;
      *(v11 + 1) = v47;
      v11[16] = v49 & 1;
      *(v11 + 3) = v51;
      (*(v56 + 16))(v68, v11, v9);
      swift_storeEnumTagMultiPayload();
      v57 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
      v58 = sub_1003C7964();
      v39 = v60;
      v79 = v69;
      v80 = v60;
      v81 = v57;
      v82 = v58;
      swift_getOpaqueTypeConformance2();
      v79 = &type metadata for Text;
      v80 = v39;
      v81 = &protocol witness table for Text;
      v82 = v58;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      _ConditionalContent<>.init(storage:)();
      (*(v56 + 8))(v11, v9);
    }

    sub_1001E1C5C(v40, v61);
    swift_storeEnumTagMultiPayload();
    sub_1003C7B80();
    v59 = sub_1003C7964();
    v79 = &type metadata for Text;
    v80 = v39;
    v81 = &protocol witness table for Text;
    v82 = v59;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_1001E1CC4(v40);
    return (*(v42 + 8))(v78, v77);
  }
}

uint64_t sub_1003C7850@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  sub_10001B350(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_1000180EC(v4, &qword_100CA4020);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

unint64_t sub_1003C7964()
{
  result = qword_100CB4278;
  if (!qword_100CB4278)
  {
    sub_10022E824(&qword_100CA2CD8);
    sub_1003C7CD4(&qword_100CB4280, &type metadata accessor for WeatherCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4278);
  }

  return result;
}

unint64_t sub_1003C7A18()
{
  result = qword_100CB4288;
  if (!qword_100CB4288)
  {
    sub_10022E824(&qword_100CB4270);
    sub_1003C7A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4288);
  }

  return result;
}

unint64_t sub_1003C7A9C()
{
  result = qword_100CB4290;
  if (!qword_100CB4290)
  {
    sub_10022E824(&qword_100CB4298);
    sub_1003C7B80();
    sub_10022E824(&qword_100CA2CD8);
    sub_1003C7964();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4290);
  }

  return result;
}

unint64_t sub_1003C7B80()
{
  result = qword_100CB42A0;
  if (!qword_100CB42A0)
  {
    sub_10022E824(&qword_100CB42A8);
    sub_10022E824(&qword_100CA2CF0);
    sub_10022E824(&qword_100CA2CD8);
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    sub_1003C7964();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB42A0);
  }

  return result;
}

uint64_t sub_1003C7CD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C7D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C7DB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v8 - 8);
  v10 = (&v27 - v9);
  v11 = sub_10022C350(&qword_100CB4398);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for MapComponentViewModel();
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_1003C8028(a1 + v16, v14);
  sub_1003C8028(a2 + v16, &v14[v17]);
  sub_10000394C(v14);
  if (!v18)
  {
    sub_1003C8028(v14, v10);
    sub_10000394C(&v14[v17]);
    if (!v18)
    {
      sub_1003BD374(&v14[v17], v7);
      v20 = sub_100883064(v10, v7);
      sub_1003C8098(v7);
      sub_1003C8098(v10);
      sub_1000180EC(v14, &qword_100CA3898);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1003C8098(v10);
LABEL_11:
    sub_1000180EC(v14, &qword_100CB4398);
    return 0;
  }

  sub_10000394C(&v14[v17]);
  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1000180EC(v14, &qword_100CA3898);
LABEL_15:
  v21 = *(v15 + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1003C8028(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C8098(uint64_t a1)
{
  v2 = type metadata accessor for WeatherData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C80F4()
{
  v0 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for MapComponentViewModel();
  sub_100007074(v14, qword_100D8FC88);
  v15 = sub_10000703C(v14, qword_100D8FC88);
  v16 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
  type metadata accessor for WeatherMapPrecipitationOverlayKind();
  sub_1000037E8();
  (*(v17 + 104))(v13, v16);
  (*(v9 + 104))(v13, enum case for WeatherMapOverlayKind.precipitation(_:), v7);
  static Location.cupertino.getter();
  v18 = v14[6];
  v19 = type metadata accessor for WeatherData(0);
  sub_10001B350(v15 + v18, 1, 1, v19);
  (*(v9 + 32))(v15, v13, v7);
  result = (*(v2 + 32))(v15 + v14[5], v6, v0);
  v21 = (v15 + v14[7]);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_1003C8310(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v2 - 8);
  v33 = &v32 - v3;
  v32 = type metadata accessor for Calendar();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v34 = v23;
  v35 = v22;
  (*(v23 + 16))(&v32 - v20, a1, v19);
  v24 = *(type metadata accessor for PastDataComparisonTextContext() + 24);
  v36 = v11;
  v37 = v9;
  (*(v11 + 16))(v14, a1 + v24, v9);
  static Calendar.currentCalendar(with:)();
  Date.wc_addDays(_:calendar:)();
  (*(v5 + 8))(v8, v32);
  v25 = v33;
  v38 = v21;
  v39 = v14;
  sub_1008DBCAC();
  v26 = sub_1003C8820(a1, v17, v14, "Failed to find yesterday's humidity");
  if (v26 >= sub_1003C8820(a1, v21, v14, "Failed to find today's humidity"))
  {
    sub_100005AA8();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  v27 = Text.init(_:tableName:bundle:comment:)();
  sub_1003C8984(v25);
  v28 = *(v34 + 8);
  v29 = v17;
  v30 = v35;
  v28(v29, v35);
  (*(v36 + 8))(v14, v37);
  v28(v21, v30);
  return v27;
}

uint64_t sub_1003C8724()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = Date.isSameDay(as:timeZone:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

double sub_1003C8820(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  type metadata accessor for PastDataComparisonTextContext();
  v5 = COERCE_DOUBLE(Array<A>.humidity(for:timeZone:)());
  if ((v6 & 1) == 0)
  {
    return round(v5 * 100.0);
  }

  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000703C(v7, qword_100D90B68);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 2u);
  }

  return 0.0;
}

uint64_t sub_1003C8984(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAB9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C89EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4448);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4A38);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4458);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v6 = v19;
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v8 = type metadata accessor for VFXTestModule();
    ObjectType = swift_getObjectType();
    v10 = sub_10002D7F8(v23, v24);
    v11 = __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = type metadata accessor for VFXTestInteractor();
    v16 = sub_100703650(v13, v5, &v21, v6, &v17, v8, v15, ObjectType, &off_100C4ADB0, v7);
    result = sub_100006F14(v23);
    a2[3] = v8;
    a2[4] = &off_100C68928;
    *a2 = v16;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003C8CC0()
{
  sub_10022C350(&qword_100CB4440);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB4448);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB4450);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4A38);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1003C8DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for VFXTestTracker;
    a2[4] = &off_100C5D558;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003C8E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v24;
  if (v24)
  {
    v6 = v25;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB4440);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v7 = sub_10002D7F8(v22, v23);
      v8 = __chkstk_darwin(v7);
      v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v21[3] = &type metadata for VFXTestTracker;
      v21[4] = &off_100C5D558;
      v21[0] = v12;
      v13 = type metadata accessor for VFXTestInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, &type metadata for VFXTestTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[7] = &type metadata for VFXTestTracker;
      v14[8] = &off_100C5D558;
      v14[3] = v6;
      v14[4] = v20;
      v14[2] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C4ADB0;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C90F8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v16;
  if (v16)
  {
    v5 = v18;
    v4 = v19;
    v6 = v17;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB4450);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v15)
    {
      v7 = *sub_1000161C0(v14, v15);
      v13[3] = type metadata accessor for VFXTestViewModelFactory();
      v13[4] = &off_100C5A1B8;
      v13[0] = v7;
      sub_100035B30(v13, v12);
      v8 = swift_allocObject();
      sub_100013188(v12, v8 + 16);

      sub_100006F14(v13);
      sub_100006F14(v14);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1003C93E4;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1003C93EC;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10009F868;
      *(v11 + 24) = v10;
      sub_10022C350(&qword_100CA4A38);
      swift_allocObject();
      return sub_10024AC58(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F610, 0, sub_10009F81C, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C9390@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for VFXTestViewModel();

  return sub_10001B350(a2, 0, 1, v3);
}

BOOL sub_1003C93F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationPreviewContentInput(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for LocationPreviewInput(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&unk_100CB4660);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  sub_1003C9F50(a1, &v22 - v15, type metadata accessor for LocationPreviewInput);
  sub_1003C9F50(a2, &v16[v18], type metadata accessor for LocationPreviewInput);
  sub_10000394C(v16);
  if (!v20)
  {
    sub_1003C9F50(v16, v12, type metadata accessor for LocationPreviewInput);
    sub_10000394C(&v16[v18]);
    if (!v20)
    {
      sub_1003CA020(&v16[v18], v7, type metadata accessor for LocationPreviewContentInput);
      v19 = sub_1003C9618(v12, v7);
      sub_1003C9EF8(v7, type metadata accessor for LocationPreviewContentInput);
      sub_1003C9EF8(v12, type metadata accessor for LocationPreviewContentInput);
      sub_1000084A0();
      return v19;
    }

    sub_1003C9EF8(v12, type metadata accessor for LocationPreviewContentInput);
LABEL_9:
    sub_1000180EC(v16, &unk_100CB4660);
    return 0;
  }

  sub_10000394C(&v16[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1000084A0();
  return 1;
}

BOOL sub_1003C9618(uint64_t a1, uint64_t a2)
{
  sub_1006E6E98();
  result = 0;
  if (v4)
  {
    v5 = type metadata accessor for LocationPreviewContentInput(0);
    if (sub_10043F9F0(a1 + v5[5], a2 + v5[5]))
    {
      sub_100003CE8();
      if (v14)
      {
        sub_1000B9770();
        if (v6)
        {
          sub_1000B9424();
          if (v7)
          {
            sub_100003CE8();
            if (v14)
            {
              sub_100003CE8();
              if (v14 && *(a1 + v5[11]) == *(a2 + v5[11]))
              {
                sub_1000BDA70();
                if (v8)
                {
                  sub_1000BDD2C();
                  if (v9 & 1) != 0 && (static Date.== infix(_:_:)())
                  {
                    sub_100003CE8();
                    if (v14)
                    {
                      v10 = v5[14];
                      v11 = *(a1 + v10);
                      v12 = *(a1 + v10 + 8);
                      v13 = (a2 + v10);
                      v14 = v11 == *v13 && v12 == v13[1];
                      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        sub_1000BCFBC();
                        if (v15)
                        {
                          sub_1000BD330();
                          if (v16)
                          {
                            return 1;
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
  }

  return result;
}

uint64_t sub_1003C978C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for TimeState();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v92 = v6 - v5;
  v90 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v91 = v9 - v8;
  v10 = sub_10022C350(&qword_100CA65E0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v83 - v16;
  v18 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003C38();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v89 = v83 - v24;
  __chkstk_darwin(v25);
  v27 = v83 - v26;
  __chkstk_darwin(v28);
  v30 = v83 - v29;
  v88 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003C38();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = v83 - v36;
  __chkstk_darwin(v38);
  v93 = v83 - v39;
  v40 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_10001C0F0();
  sub_1003C9F50(a1 + v40, v30, v41);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_10001EB38();
    sub_1003CA020(v30, v37, v45);
LABEL_9:
    sub_10001EB38();
    v50 = v37;
    v51 = v93;
    sub_1003CA020(v50, v93, v52);
    v53 = v51;
    v54 = v94;
    sub_1003C9F50(v51, v94, type metadata accessor for PreviewLocation);
    v55 = *(v88 + 20);
    v56 = type metadata accessor for LocationPreviewContentInput(0);
    sub_1003C9F50(v53 + v55, v54 + v56[5], type metadata accessor for LocationPreviewModalViewState);
    sub_10001C0F0();
    v85 = v57;
    v86 = v40;
    v58 = a1;
    v59 = v89;
    sub_1003C9F50(a1 + v40, v89, v60);
    v84 = type metadata accessor for ModalViewState.MapViewModal(0);
    sub_10001B350(v22, 1, 1, v84);
    v83[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_1000BC008();
    LODWORD(v88) = v61;
    sub_1003C9EF8(v22, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v59, type metadata accessor for ModalViewState);
    v62 = v90;
    v63 = v91;
    v87 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v90 + 36));
    v64 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v90 + 28));
    sub_1003C9F50(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v91, type metadata accessor for LocationsState);
    v65 = *(*(v63 + *(v62 + 24)) + 16);
    type metadata accessor for SavedLocationsManager();

    v66 = v64;

    LODWORD(v90) = v65 < static SavedLocationsManager.maxAllowedLocationsCount.getter();
    sub_1003C9EF8(v63, type metadata accessor for LocationsState);
    sub_1003C9F50(a1 + v86, v59, v85);
    sub_10001B350(v22, 1, 1, v84);
    v48 = v94;
    swift_storeEnumTagMultiPayload();
    sub_1000BC008();
    LODWORD(v91) = v67;
    sub_1003C9EF8(v22, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v59, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v93, type metadata accessor for LocationPreviewViewState);
    LOBYTE(v59) = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v69 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v68 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v70 = v92;
    sub_1003C9F50(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v92, type metadata accessor for TimeState);
    v71 = v56[12];
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v72 + 32))(v48 + v71, v70);
    v73 = v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    v74 = *(v73 + *(type metadata accessor for EnvironmentState() + 40));
    v75 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v76 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v77 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v78 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    *(v48 + v56[6]) = v88 & 1;
    *(v48 + v56[7]) = v87;
    *(v48 + v56[8]) = v66;
    *(v48 + v56[9]) = v90;
    *(v48 + v56[10]) = v91 & 1;
    v79 = v48 + v56[11];
    *v79 = v59;
    *(v79 + 8) = v69;
    *(v79 + 16) = v68;
    *(v48 + v56[13]) = v74;
    v80 = (v48 + v56[14]);
    *v80 = v75;
    v80[1] = v76;
    v80[2] = v77;
    v80[3] = v78;
    sub_10001B350(v48, 0, 1, v56);

    goto LABEL_10;
  }

  sub_100005AC8();
  sub_1003C9EF8(v30, v42);
  sub_10001C0F0();
  sub_1003C9F50(a1 + v40, v27, v43);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100005AC8();
    sub_1003C9EF8(v27, v46);
    goto LABEL_7;
  }

  sub_1003C9FB0(v27, v17);
  sub_1003C9FB0(v17, v14);
  v44 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v14, 1, v44) != 1)
  {
    sub_10001EB38();
    sub_1003CA020(v14, v34, v49);
    v37 = v34;
    goto LABEL_9;
  }

  sub_1000180EC(v14, &qword_100CA65E0);
LABEL_7:
  v47 = type metadata accessor for LocationPreviewContentInput(0);
  v48 = v94;
  sub_10001B350(v94, 1, 1, v47);
LABEL_10:
  v81 = type metadata accessor for LocationPreviewInput(0);
  return sub_10001B350(v48, 0, 1, v81);
}

uint64_t sub_1003C9EF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003C9F50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1003C9FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CA020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003CA080(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v36 = a4;
  v37 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FD0();
  v44 = v11;
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  sub_100007FD0();
  v42 = v16;
  v43 = v15;
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTime();
  v39 = v19;
  sub_100007FD0();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v35 - v26;
  sub_100040690();
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v21 + 8);
  v38(v24, v19);
  v29 = swift_allocObject();
  v30 = v37;
  *(v29 + 16) = v36;
  *(v29 + 24) = v30;
  *(v29 + 32) = a1;
  v31 = v40;
  v32 = v41;
  *(v29 + 40) = a6;
  *(v29 + 48) = v31;
  *(v29 + 56) = v32;
  aBlock[4] = sub_1003CA48C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C53EE0;
  v33 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v33);

  (*(v44 + 8))(v14, v10);
  (*(v42 + 8))(v18, v43);
  return (v38)(v27, v39);
}

void sub_1003CA404(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, double a6)
{
  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getObjectType();

    sub_1003CA4A0(v6, a3, a4, a5, a1, a6);
  }
}

void sub_1003CA4A0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6)
{
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = swift_allocObject();
    *(v13 + 16) = a6;
    *(v13 + 24) = a5;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    v15[4] = sub_1003CA5D4;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1007AEBB4;
    v15[3] = &unk_100C53F30;
    v14 = _Block_copy(v15);
    swift_unknownObjectRetain();

    [ObjCClassFromMetadata runTestWithParameters:a2 resultHandler:v14];
    _Block_release(v14);
  }

  else
  {
    a3();
  }
}

void sub_1003CA618()
{
  sub_1003CA6A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003CA6A4()
{
  if (!qword_100CB46F0)
  {
    type metadata accessor for WeatherAlert();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB46F0);
    }
  }
}

uint64_t sub_1003CA6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000100AC5720 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x44746E6572727563 && a2 == 0xEB00000000657461)
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

uint64_t sub_1003CA814(char a1)
{
  if (!a1)
  {
    return 0x73746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x44746E6572727563;
}

uint64_t sub_1003CA874(uint64_t a1, uint64_t a2)
{
  sub_1009ED720();
  if ((v4 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for SevereAlertComponent();

  return static Date.== infix(_:_:)();
}

uint64_t sub_1003CA8EC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4750);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_1003CAF4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14[7] = 0;
  sub_10022C350(&qword_100CB4738);
  sub_1003CB060(&qword_100CB4758, &qword_100CB4760);
  sub_100005AE0();
  if (!v2)
  {
    v14[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SevereAlertComponent();
    v14[5] = 2;
    type metadata accessor for Date();
    sub_10001EB50();
    sub_1003CB0FC(v11, v12);
    sub_100005AE0();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003CAAF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Date();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CB4728);
  sub_1000037C4();
  v23 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for SevereAlertComponent();
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003CAF4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v20 = a1;
  v13 = v24;
  sub_10022C350(&qword_100CB4738);
  v28 = 0;
  sub_1003CB060(&qword_100CB4740, &qword_100CB4748);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v29;
  *v12 = v29;
  v27 = 1;
  *(v12 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 2;
  sub_10001EB50();
  sub_1003CB0FC(v14, v15);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_10000FEB4();
  v17(v16);
  (*(v21 + 32))(&v12[*(v10 + 24)], v7, v13);
  sub_1003CAFA0(v12, v22);
  sub_100006F14(v20);
  return sub_1003CB004(v12);
}

uint64_t sub_1003CAE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CA6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CAEA0(uint64_t a1)
{
  v2 = sub_1003CAF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CAEDC(uint64_t a1)
{
  v2 = sub_1003CAF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003CAF4C()
{
  result = qword_100CB4730;
  if (!qword_100CB4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4730);
  }

  return result;
}

uint64_t sub_1003CAFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereAlertComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CB004(uint64_t a1)
{
  v2 = type metadata accessor for SevereAlertComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003CB060(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CB4738);
    sub_1003CB0FC(a2, &type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003CB0FC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SevereAlertComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003CB224()
{
  result = qword_100CB4768;
  if (!qword_100CB4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4768);
  }

  return result;
}

unint64_t sub_1003CB27C()
{
  result = qword_100CB4770;
  if (!qword_100CB4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4770);
  }

  return result;
}

unint64_t sub_1003CB2D4()
{
  result = qword_100CB4778;
  if (!qword_100CB4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4778);
  }

  return result;
}

uint64_t sub_1003CB328(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA1FE8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA1FF8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA1FF0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA1FE0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA1FD8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_1003CB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBE0;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D8FCA0 = v8;
}

void sub_1003CB5BC()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100555FC0();
  qword_100D8FCA8 = v0;
}

void sub_1003CB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A2D320;
  v24[1] = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v25 = v24;
  v26 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v27 = v22;
  v28 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v29 = v19;
  v30 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v31 = v17;
  v32 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v33 = v15;
  v34 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v35 = v13;
  v36 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v37 = v11;
  v38 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D8FCB0 = v8;
}

void sub_1003CB808()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100555FC0();
  qword_100D8FCB8 = v0;
}

void sub_1003CB93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D8FCC0 = v8;
}

uint64_t sub_1003CBA5C(uint64_t a1, void (*a2)(char *))
{
  v35 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v38 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v37 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = type metadata accessor for LocationViewComponent();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v34 - v27;

  sub_1005D71C4(v29, a2);
  v34[1] = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpContent._Storage(0);
  swift_allocObject();
  sub_1002D9968();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

uint64_t sub_1003CBDF0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v134 = v73;
    v92 = swift_allocObject();
    sub_1000056EC(v92);
    sub_10031694C(v9, v93 + v71, v7);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

uint64_t sub_1003CC6C8(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_1003CB328(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v6 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003CCEBC()
{
  sub_1003CCEF8();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003CCEF8()
{
  result = qword_100CB4798;
  if (!qword_100CB4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4798);
  }

  return result;
}

uint64_t sub_1003CCF4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1003CCF8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1003CCFEC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1003CD108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656964617267 && a2 == 0xED0000656C616353;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AC5760 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AC5780 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100AC57A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65726566666964 && a2 == 0xEE00747865546563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7247796144657375 && a2 == 0xEE00746E65696461)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1003CD310(char a1)
{
  result = 0x746E656964617267;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6E65726566666964;
      break;
    case 5:
      result = 0x7247796144657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003CD3FC(uint64_t a1, uint64_t a2)
{
  if (static TemperatureScaleConfiguration.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0), sub_100014558(*(v4 + 20)), v9) && (v6 = v5, sub_100014558(v5[6]), v9) && (sub_100014558(v6[7]), v9) && ((sub_100005824(v6[8]), v9) ? (v9 = v7 == v8) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v10 = *(a1 + v6[9]) ^ *(a2 + v6[9]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1003CD49C(void *a1)
{
  v3 = sub_10022C350(&qword_100CB49C0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003CE8FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  type metadata accessor for TemperatureScaleConfiguration();
  sub_100019648();
  sub_1003CE8B4(v9, v10);
  sub_100016834();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_100017810();
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[12] = 3;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[11] = 4;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[10] = 5;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003CD6D0(void *a1)
{
  v3 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v29 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v26 = sub_10022C350(&qword_100CB49A8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = sub_1000114FC();
  v27 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v28 = v13 - v12;
  sub_1000161C0(a1, a1[3]);
  sub_1003CE8FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006F14(a1);
  }

  sub_100019648();
  sub_1003CE8B4(v14, v15);
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 32))(v28, v8, v3);
  sub_100017810();
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v28 + v27[5]) = v16;
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v28 + v27[6]) = v17;
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v28 + v27[7]) = v18;
  sub_100013748();
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = (v28 + v27[8]);
  *v20 = v19;
  v20[1] = v21;
  sub_100013748();
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = sub_10002838C();
  v24(v23, v26);
  *(v28 + v27[9]) = v22 & 1;
  sub_100014540();
  sub_1003CE85C();
  sub_100006F14(a1);
  return sub_1003CE950(v28, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance);
}

uint64_t sub_1003CDAC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C6C6175746361 && a2 == 0xEB000000006C6562;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
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

uint64_t sub_1003CDB8C(char a1)
{
  if (a1)
  {
    return 0x65636E6169726176;
  }

  else
  {
    return 0x614C6C6175746361;
  }
}

uint64_t sub_1003CDBCC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0) + 20);

  return sub_1003CD3FC(a1 + v5, a2 + v5);
}

uint64_t sub_1003CDC48(void *a1)
{
  v3 = sub_10022C350(&qword_100CB4998);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003CE7B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_100017810();
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_1000040AC();
    sub_1003CE8B4(v9, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003CDDDC(void *a1)
{
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v18 = sub_10022C350(&qword_100CB4980);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  v5 = sub_1000114FC();
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = (v8 - v7);
  sub_1000161C0(a1, a1[3]);
  sub_1003CE7B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006F14(a1);
  }

  sub_100013748();
  *v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v9[1] = v10;
  sub_100017810();
  sub_1000040AC();
  sub_1003CE8B4(v11, v12);
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = sub_10002838C();
  v14(v13, v18);
  sub_1003CE804();
  sub_1003CE85C();
  sub_100006F14(a1);
  v15 = sub_1000084C8();
  return sub_1003CE950(v15, v16);
}

uint64_t sub_1003CE088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CD108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CE0B0(uint64_t a1)
{
  v2 = sub_1003CE8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CE0EC(uint64_t a1)
{
  v2 = sub_1003CE8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CDAC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CE18C(uint64_t a1)
{
  v2 = sub_1003CE7B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CE1C8(uint64_t a1)
{
  v2 = sub_1003CE7B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CE238()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v2);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  sub_10022C350(&qword_100CACF38);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v36 - v9);
  v11 = sub_10022C350(&qword_100CB4978);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = v1[3];
  v17 = v0[3];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v1[2] == v0[2] && v16 == v17;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v17)
  {
LABEL_25:
    v26 = 0;
    return v26 & 1;
  }

  v19 = type metadata accessor for FeelsLikeComponentViewModel(0);
  v20 = v19[6];
  v21 = *(v11 + 48);
  sub_1001163D0(v1 + v20, v14);
  sub_1001163D0(v0 + v20, &v14[v21]);
  sub_10000394C(v14);
  if (v15)
  {
    sub_10000394C(&v14[v21]);
    if (v15)
    {
      sub_1000180EC(v14, &qword_100CACF38);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  sub_1001163D0(v14, v10);
  sub_10000394C(&v14[v21]);
  if (v22)
  {
    v23 = sub_1000084C8();
    sub_1003CE950(v23, v24);
LABEL_23:
    v25 = &qword_100CB4978;
LABEL_24:
    sub_1000180EC(v14, v25);
    goto LABEL_25;
  }

  sub_1003CE804();
  v28 = *v10 == *v7 && v10[1] == v7[1];
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003CE950(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    sub_1003CE950(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    v25 = &qword_100CACF38;
    goto LABEL_24;
  }

  v29 = sub_1003CD3FC(v10 + *(v3 + 20), v7 + *(v3 + 20));
  sub_1003CE950(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
  sub_1003CE950(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
  sub_1000180EC(v14, &qword_100CACF38);
  if ((v29 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_33:
  sub_100005824(v19[7]);
  v32 = v15 && v30 == v31;
  if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100005824(v19[8]);
  if (v15 && v33 == v34)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v26 & 1;
}

uint64_t sub_1003CE55C()
{
  v0 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_100007074(v0, qword_100D8FCC8);
  v1 = sub_10000703C(v0, qword_100D8FCC8);
  if (qword_100CA2008 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_10000703C(v2, qword_100D8FCE0);
  sub_100014540();
  result = sub_1003CE85C();
  *v1 = 0x203A6C6175746341;
  v1[1] = 0xAC000000B0C23536;
  return result;
}

uint64_t sub_1003CE618()
{
  v0 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TemperatureScaleConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_100007074(v5, qword_100D8FCE0);
  v6 = sub_10000703C(v5, qword_100D8FCE0);
  static TemperatureScaleConfiguration.Gradient.default.getter();
  TemperatureScaleConfiguration.init(gradient:)();
  result = (*(v2 + 32))(v6, v4, v1);
  *(v6 + v5[5]) = 0x4050400000000000;
  *(v6 + v5[6]) = 0x404B800000000000;
  *(v6 + v5[7]) = 0x402E000000000000;
  v8 = (v6 + v5[8]);
  *v8 = 2965516337;
  v8[1] = 0xA400000000000000;
  *(v6 + v5[9]) = 1;
  return result;
}

unint64_t sub_1003CE7B0()
{
  result = qword_100CB4988;
  if (!qword_100CB4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4988);
  }

  return result;
}

uint64_t sub_1003CE804()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1003CE85C()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1003CE8B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003CE8FC()
{
  result = qword_100CB49B0;
  if (!qword_100CB49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49B0);
  }

  return result;
}

uint64_t sub_1003CE950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003CEB64()
{
  result = qword_100CB49D0;
  if (!qword_100CB49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49D0);
  }

  return result;
}

unint64_t sub_1003CEBBC()
{
  result = qword_100CB49D8;
  if (!qword_100CB49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49D8);
  }

  return result;
}

unint64_t sub_1003CEC14()
{
  result = qword_100CB49E0;
  if (!qword_100CB49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49E0);
  }

  return result;
}

unint64_t sub_1003CEC6C()
{
  result = qword_100CB49E8;
  if (!qword_100CB49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49E8);
  }

  return result;
}

unint64_t sub_1003CECC4()
{
  result = qword_100CB49F0;
  if (!qword_100CB49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49F0);
  }

  return result;
}

unint64_t sub_1003CED1C()
{
  result = qword_100CB49F8;
  if (!qword_100CB49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB49F8);
  }

  return result;
}

uint64_t sub_1003CED8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CB4A98);
  return sub_1003CEDDC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1003CEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v114 = sub_10022C350(&qword_100CB4AA0);
  __chkstk_darwin(v114);
  v102 = (&v99 - v3);
  v106 = sub_10022C350(&qword_100CB4AA8);
  __chkstk_darwin(v106);
  v103 = (&v99 - v4);
  v111 = sub_10022C350(&qword_100CB4AB0);
  __chkstk_darwin(v111);
  v113 = &v99 - v5;
  v104 = sub_10022C350(&qword_100CB4AB8);
  __chkstk_darwin(v104);
  v105 = &v99 - v6;
  v112 = sub_10022C350(&qword_100CB4AC0);
  __chkstk_darwin(v112);
  v107 = &v99 - v7;
  v8 = sub_10022C350(&qword_100CB4AC8);
  __chkstk_darwin(v8 - 8);
  v115 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v125 = &v99 - v11;
  v12 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v12 - 8);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v122 = &v99 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v118 = *(v16 - 8);
  v119 = v16;
  __chkstk_darwin(v16);
  KeyPath = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v120 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  v22 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v22 - 8);
  v24 = &v99 - v23;
  v25 = sub_10022C350(&qword_100CB4AD0);
  __chkstk_darwin(v25);
  v27 = &v99 - v26;
  v28 = sub_10022C350(&qword_100CB4AD8);
  __chkstk_darwin(v28 - 8);
  v124 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v99 - v31;
  v33 = 1;
  if (sub_1003CFE0C())
  {
    *v27 = static VerticalAlignment.center.getter();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v34 = sub_10022C350(&qword_100CB4B20);
    sub_1003D0834(a1, &v27[*(v34 + 44)]);
    sub_1001E27DC();
    v33 = 0;
  }

  v123 = v32;
  sub_10001B350(v32, v33, 1, v25);
  v35 = a1 + *(type metadata accessor for LocationFooterView(0) + 24);
  v36 = *(v35 + 16);
  v37 = 0;
  if (!v36)
  {
    goto LABEL_13;
  }

  v38 = *(v35 + 8);
  type metadata accessor for LocationFooterViewModel();
  sub_100095588();
  v39 = type metadata accessor for LocationOfInterest();
  if (sub_100024D10(v24, 1, v39) != 1)
  {
    sub_100018144(v24, &qword_100CA3588);
LABEL_13:
    v61 = 0;
    v118 = 0;
    v119 = 0;
    v108 = 0;
    v109 = 0;
    KeyPath = 0;
    v121 = 0;
    v122 = 0;
    v120 = 0;
    v71 = 0;
    v73 = 0;
    v75 = 0;
    goto LABEL_14;
  }

  v99 = v35;
  sub_100018144(v24, &qword_100CA3588);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 0x2072656874616557;
  v40._object = 0xEC00000020726F66;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
  v41._countAndFlagsBits = v38;
  v41._object = v36;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v41);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
  LocalizedStringKey.init(stringInterpolation:)();
  v108 = Text.init(_:tableName:bundle:comment:)();
  v109 = v43;
  v101 = v44;
  v100 = v45;
  v46 = v120;
  v47 = *(v120 + 104);
  v47(v20, enum case for Font.TextStyle.subheadline(_:), v18);
  static Font.Weight.semibold.getter();
  v48 = static Font.system(_:weight:)();
  v49 = *(v46 + 8);
  v49(v20, v18);
  v47(v20, enum case for Font.TextStyle.footnote(_:), v18);
  static Font.Weight.bold.getter();
  v50 = static Font.system(_:weight:)();
  v49(v20, v18);
  v51 = *a1;
  v110 = a1;
  if (*(a1 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v53 = KeyPath;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v51, 0);
    (*(v118 + 8))(v53, v119);
    LOBYTE(v51) = v133;
  }

  v54 = enum case for Font.Leading.tight(_:);
  v55 = type metadata accessor for Font.Leading();
  v56 = v122;
  (*(*(v55 - 8) + 104))(v122, v54, v55);
  sub_10001B350(v56, 0, 1, v55);
  v57 = v121;
  sub_100095588();

  sub_1001C987C(v48, v50, v51 & 1, v57);
  v58 = v100;
  v59 = v108;
  v60 = v101;
  v61 = Text.font(_:)();
  v118 = v63;
  v119 = v62;
  LODWORD(v121) = v64;

  sub_10010CD64(v59, v60, v58 & 1);

  sub_100018144(v56, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CA4060);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100A2D320;
  v66 = static Edge.Set.leading.getter();
  *(v65 + 32) = v66;
  v67 = static Edge.Set.trailing.getter();
  *(v65 + 33) = v67;
  v68 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v66)
  {
    v68 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v67)
  {
    v68 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v37 = v69;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v131 = v121 & 1;
  v127 = 0;
  v132[0] = v61;
  v132[1] = v119;
  LOBYTE(v132[2]) = v121 & 1;
  *(&v132[2] + 1) = *v130;
  HIDWORD(v132[2]) = *&v130[3];
  v132[3] = v118;
  v132[4] = KeyPath;
  LOBYTE(v132[5]) = 1;
  HIDWORD(v132[5]) = *&v129[3];
  *(&v132[5] + 1) = *v129;
  LOBYTE(v132[6]) = v68;
  HIDWORD(v132[6]) = *&v128[3];
  *(&v132[6] + 1) = *v128;
  v132[7] = v69;
  v132[8] = v70;
  v132[9] = v72;
  v132[10] = v74;
  LOBYTE(v132[11]) = 0;
  v109 = v132[2];
  v108 = v132[5];
  LOBYTE(v135) = v121 & 1;
  HIDWORD(v135) = *&v130[3];
  *(&v135 + 1) = *v130;
  v121 = v132[6];
  v122 = 0;
  v126 = 0;
  v133 = v61;
  v134 = v119;
  v136 = v118;
  v137 = KeyPath;
  LOBYTE(v138) = 1;
  HIDWORD(v138) = *&v129[3];
  *(&v138 + 1) = *v129;
  LOBYTE(v139) = v68;
  HIDWORD(v139) = *&v128[3];
  *(&v139 + 1) = *v128;
  v140 = v69;
  v141 = v70;
  v142 = v72;
  v143 = v74;
  LOBYTE(v144) = 0;
  sub_100095588();
  sub_100018144(&v133, &qword_100CB4B18);
  v120 = 0x4010000000000000;
  a1 = v110;
  v35 = v99;
LABEL_14:
  v76 = *(v35 + *(type metadata accessor for LocationFooterViewModel() + 52));
  v110 = v61;
  if (v76)
  {
    if (v76 == 1)
    {
      v77 = static VerticalAlignment.center.getter();
      v78 = v103;
      *v103 = v77;
      v78[1] = 0;
      *(v78 + 16) = 1;
      v79 = sub_10022C350(&qword_100CB4B10);
      sub_1003CFF0C(a1, v78 + *(v79 + 44));
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8);
      v80 = v107;
      _ConditionalContent<>.init(storage:)();
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_1003D2240();
      sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0);
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v80, &qword_100CB4AC0);
      v81 = v78;
      v82 = &qword_100CB4AA8;
    }

    else
    {
      v84 = static VerticalAlignment.center.getter();
      v85 = v102;
      *v102 = v84;
      v85[1] = 0;
      *(v85 + 16) = 1;
      v86 = sub_10022C350(&qword_100CB4AE0);
      sub_1003D0398(a1, v85 + *(v86 + 44));
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_1003D2240();
      sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0);
      _ConditionalContent<>.init(storage:)();
      v81 = v85;
      v82 = &qword_100CB4AA0;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8);
    v83 = v107;
    _ConditionalContent<>.init(storage:)();
    sub_100095588();
    swift_storeEnumTagMultiPayload();
    sub_1003D2240();
    sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0);
    _ConditionalContent<>.init(storage:)();
    v81 = v83;
    v82 = &qword_100CB4AC0;
  }

  sub_100018144(v81, v82);
  v87 = v115;
  v88 = v116;
  sub_1001E2718();
  sub_100095588();
  sub_1001E2718();
  v89 = sub_10022C350(&qword_100CB4B00);
  v90 = v88 + *(v89 + 48);
  *v90 = 0x4030000000000000;
  *(v90 + 8) = 0;
  v91 = *(v89 + 64);
  v92 = v109;
  v93 = v110;
  v94 = v118;
  v95 = v119;
  v132[0] = v110;
  v132[1] = v119;
  v132[2] = v109;
  v132[3] = v118;
  v96 = KeyPath;
  v97 = v108;
  v132[4] = KeyPath;
  v132[5] = v108;
  v132[6] = v121;
  v132[7] = v37;
  v132[8] = v71;
  v132[9] = v73;
  v132[10] = v75;
  v132[11] = v122;
  v132[12] = v120;
  LOBYTE(v132[13]) = 0;
  memcpy((v88 + v91), v132, 0x69uLL);
  sub_100095588();
  sub_100095588();
  sub_100018144(v125, &qword_100CB4AC8);
  sub_1001E2778(v123);
  sub_100018144(v87, &qword_100CB4AC8);
  v133 = v93;
  v134 = v95;
  v135 = v92;
  v136 = v94;
  v137 = v96;
  v138 = v97;
  v139 = v121;
  v140 = v37;
  v141 = v71;
  v142 = v73;
  v143 = v75;
  v144 = v122;
  v145 = v120;
  v146 = 0;
  sub_100018144(&v133, &qword_100CB4B08);
  return sub_1001E2778(v124);
}

uint64_t sub_1003CFE0C()
{
  v1 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = v0 + *(type metadata accessor for LocationFooterView(0) + 24);
  if ((*v4 & 1) != 0 || *(v4 + 24))
  {
    return 1;
  }

  type metadata accessor for LocationFooterViewModel();
  sub_100095588();
  v7 = type metadata accessor for LocationOfInterest();
  v5 = sub_100024D10(v3, 1, v7) != 1;
  sub_100018144(v3, &qword_100CA3588);
  return v5;
}

uint64_t sub_1003CFF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_10022C350(&qword_100CB4BF0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v45 = sub_10022C350(&qword_100CB4BF8);
  __chkstk_darwin(v45);
  v8 = &v44 - v7;
  v9 = sub_10022C350(&qword_100CB4C00);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for LocationFooterView(0);
  type metadata accessor for LocationFooterViewModel();
  sub_1003D3AB8();
  v19 = *(*(a1 + *(v18 + 28) + 8) + 8);
  v20 = type metadata accessor for LearnMoreAttributorView();
  *&v6[v20[5] + 8] = v19;
  swift_unknownObjectWeakInit();
  v21 = &v6[v20[6]];
  LocalizedStringKey.init(stringLiteral:)();
  *v21 = Text.init(_:tableName:bundle:comment:)();
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  *(v21 + 3) = v24;
  v25 = &v6[v20[7]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v6[*(v4 + 44)] = 0;
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v20) = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100051BBC();
  v37 = &v8[*(v45 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = *(v9 + 36);
  v39 = enum case for BlendMode.plusLighter(_:);
  v40 = type metadata accessor for BlendMode();
  (*(*(v40 - 8) + 104))(&v14[v38], v39, v40);
  sub_100051BBC();
  sub_100051BBC();
  sub_100095588();
  v41 = v46;
  sub_100095588();
  v42 = v41 + *(sub_10022C350(&qword_100CB4C08) + 48);
  *v42 = 0x4010000000000000;
  *(v42 + 8) = 0;
  sub_100018144(v17, &qword_100CB4C00);
  return sub_100018144(v11, &qword_100CB4C00);
}

uint64_t sub_1003D0398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB4BF0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v46 = sub_10022C350(&qword_100CB4BF8);
  __chkstk_darwin(v46);
  v9 = &v44 - v8;
  v45 = sub_10022C350(&qword_100CB4C00);
  __chkstk_darwin(v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for LocationFooterView(0);
  type metadata accessor for LocationFooterViewModel();
  sub_1003D3AB8();
  v19 = *(*(a1 + *(v18 + 28) + 8) + 8);
  v20 = type metadata accessor for LearnMoreAttributorView();
  *&v7[v20[5] + 8] = v19;
  swift_unknownObjectWeakInit();
  v21 = &v7[v20[6]];
  LocalizedStringKey.init(stringLiteral:)();
  *v21 = Text.init(_:tableName:bundle:comment:)();
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  *(v21 + 3) = v24;
  v25 = &v7[v20[7]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v7[*(v5 + 44)] = 0;
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v20) = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100051BBC();
  v37 = &v9[*(v46 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = *(v45 + 36);
  v39 = enum case for BlendMode.plusLighter(_:);
  v40 = type metadata accessor for BlendMode();
  (*(*(v40 - 8) + 104))(&v14[v38], v39, v40);
  sub_100051BBC();
  sub_100051BBC();
  sub_100095588();
  *a2 = 0;
  *(a2 + 8) = 1;
  v41 = sub_10022C350(&qword_100CB4C10);
  sub_100095588();
  v42 = a2 + *(v41 + 64);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_100018144(v17, &qword_100CB4C00);
  return sub_100018144(v11, &qword_100CB4C00);
}

uint64_t sub_1003D0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB4B28);
  __chkstk_darwin(v4);
  v6 = &KeyPath - v5;
  v7 = sub_10022C350(&qword_100CB4B30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &KeyPath - v12;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0x402A000000000000;
  v6[16] = 0;
  v14 = sub_10022C350(&qword_100CB4B38);
  sub_1003D0AD4(a1, &v6[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = 0;
  sub_100006F64(&qword_100CB4B40, &qword_100CB4B28);
  sub_1003D3928();
  View.labelStyle<A>(_:)();

  sub_100018144(v6, &qword_100CB4B28);
  v15 = *(v8 + 16);
  v15(v10, v13, v7);
  *a2 = 0x4040000000000000;
  *(a2 + 8) = 0;
  v16 = sub_10022C350(&qword_100CB4B50);
  v15((a2 + *(v16 + 48)), v10, v7);
  v17 = a2 + *(v16 + 64);
  *v17 = 0x4040000000000000;
  *(v17 + 8) = 0;
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

uint64_t sub_1003D0AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = sub_10022C350(&qword_100CB4B58);
  __chkstk_darwin(v132);
  v123 = &v106[-v3];
  v121 = sub_10022C350(&qword_100CB4B60);
  __chkstk_darwin(v121);
  v122 = &v106[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v120 = &v106[-v6];
  v7 = sub_10022C350(&qword_100CB4B68);
  __chkstk_darwin(v7 - 8);
  v133 = &v106[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v139 = &v106[-v10];
  v128 = sub_10022C350(&qword_100CB4B70);
  __chkstk_darwin(v128);
  v119 = &v106[-v11];
  v12 = type metadata accessor for LocationFooterView(0);
  v114 = *(v12 - 8);
  __chkstk_darwin(v12);
  v115 = v13;
  v110 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = sub_10022C350(&qword_100CB4B78);
  __chkstk_darwin(v116);
  v118 = &v106[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v117 = &v106[-v16];
  v17 = sub_10022C350(&qword_100CB4B80);
  __chkstk_darwin(v17 - 8);
  v131 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v140 = &v106[-v20];
  v126 = sub_10022C350(&qword_100CB4B88);
  __chkstk_darwin(v126);
  v113 = &v106[-v21];
  v22 = sub_10022C350(&qword_100CB4B90);
  __chkstk_darwin(v22 - 8);
  v112 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v109 = &v106[-v25];
  v108 = type metadata accessor for HomeAndWorkRefinementRow(0);
  __chkstk_darwin(v108);
  v111 = &v106[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v106[-v28];
  v30 = sub_10022C350(&qword_100CB4B98);
  __chkstk_darwin(v30 - 8);
  v32 = &v106[-v31];
  *&v124 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
  __chkstk_darwin(v124);
  v125 = &v106[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_10022C350(&qword_100CB4BA0);
  __chkstk_darwin(v34 - 8);
  v130 = &v106[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v138 = &v106[-v37];
  v141 = type metadata accessor for Divider();
  v38 = *(v141 - 8);
  __chkstk_darwin(v141);
  v135 = &v106[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v42 = &v106[-v41];
  v43 = sub_10022C350(&qword_100CB4BA8);
  __chkstk_darwin(v43);
  v45 = &v106[-v44];
  v46 = sub_10022C350(&qword_100CB4BB0);
  __chkstk_darwin(v46 - 8);
  v129 = &v106[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v106[-v49];
  v51 = *(v12 + 24);
  v127 = a1;
  v52 = a1 + v51;
  v53 = *(type metadata accessor for LocationFooterViewModel() + 48);
  v137 = v52;
  v107 = *(v52 + v53);
  v136 = v38;
  if (v107 == 1)
  {
    *v45 = 0;
    v45[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1003D3DF4(&qword_100CA7298, &type metadata accessor for Divider);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    Divider.init()();
    v54 = v12;
    v55 = v141;
    (*(v38 + 16))(v45, v42, v141);
    swift_storeEnumTagMultiPayload();
    sub_1003D3DF4(&qword_100CA7298, &type metadata accessor for Divider);
    _ConditionalContent<>.init(storage:)();
    v56 = v55;
    v12 = v54;
    (*(v38 + 8))(v42, v56);
  }

  v57 = v137;
  sub_100095588();
  v58 = sub_100024D10(v32, 1, v124);
  v142 = v50;
  if (v58 == 1)
  {
    sub_100018144(v32, &qword_100CB4B98);
    v59 = 1;
    v60 = v138;
  }

  else
  {
    sub_1003D3A60();
    v61 = v108;
    v124 = *(v127 + *(v12 + 28));
    sub_1003D3AB8();
    *&v29[*(v61 + 24)] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    *(v29 + 2) = swift_getKeyPath();
    v29[24] = 0;
    *&v29[*(v61 + 28)] = v124;
    if (v107)
    {
      v62 = v109;
      sub_10001B350(v109, 1, 1, v141);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      Divider.init()();
      v62 = v109;
      v63 = v141;
      (*(v136 + 32))(v109, v42, v141);
      sub_10001B350(v62, 0, 1, v63);
    }

    v64 = v111;
    sub_1003D3AB8();
    v65 = v112;
    sub_100095588();
    sub_1003D3AB8();
    sub_10022C350(&qword_100CB4BE0);
    sub_100095588();
    sub_100018144(v62, &qword_100CB4B90);
    sub_1003D3B10(v29, type metadata accessor for HomeAndWorkRefinementRow);
    sub_1003D3B10(v125, type metadata accessor for HomeAndWorkRefinementRowViewModel);
    sub_100018144(v65, &qword_100CB4B90);
    sub_1003D3B10(v64, type metadata accessor for HomeAndWorkRefinementRow);
    v60 = v138;
    sub_100051BBC();
    v59 = 0;
  }

  v66 = 1;
  sub_10001B350(v60, v59, 1, v126);
  if (*v57 == 1)
  {
    v67 = v127;
    sub_1003D3AB8();
    swift_allocObject();
    v68 = sub_1003D3A60();
    __chkstk_darwin(v68);
    *&v106[-16] = v67;
    sub_10022C350(&qword_100CB4BC8);
    sub_1003D39B0();
    v69 = v117;
    Button.init(action:label:)();
    v70 = v69 + *(v116 + 36);
    *v70 = swift_getKeyPath();
    *(v70 + 8) = 0;
    v71 = *(type metadata accessor for LocationFooterButtonStyleModifier() + 20);
    *(v70 + v71) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    Divider.init()();
    v72 = v118;
    sub_100095588();
    v73 = v136;
    v74 = *(v136 + 16);
    v75 = v42;
    v76 = v135;
    v77 = v141;
    v74(v135, v75, v141);
    v78 = v119;
    sub_100095588();
    v79 = sub_10022C350(&qword_100CB4BD8);
    v74(&v78[*(v79 + 48)], v76, v77);
    v80 = *(v73 + 8);
    v80(v75, v77);
    sub_100018144(v69, &qword_100CB4B78);
    v81 = v76;
    v42 = v75;
    v82 = v77;
    v57 = v137;
    v80(v81, v82);
    sub_100018144(v72, &qword_100CB4B78);
    sub_100051BBC();
    v66 = 0;
  }

  v83 = 1;
  sub_10001B350(v140, v66, 1, v128);
  v84 = *(v57 + 24);
  if (v84)
  {
    v85 = *(v57 + 32);
    sub_10007A47C(v84);
    v137 = v85;

    sub_10022C350(&qword_100CA2CF0);
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    v86 = v120;
    Button.init(action:label:)();
    v87 = v86 + *(v121 + 36);
    *v87 = swift_getKeyPath();
    *(v87 + 8) = 0;
    v88 = *(type metadata accessor for LocationFooterButtonStyleModifier() + 20);
    *(v87 + v88) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    Divider.init()();
    v89 = v42;
    v90 = v122;
    sub_100095588();
    v91 = v135;
    v92 = v136;
    v93 = v141;
    v94 = *(v136 + 16);
    v94(v135, v89, v141);
    v95 = v123;
    sub_100095588();
    v96 = sub_10022C350(&qword_100CB4BC0);
    v94(&v95[*(v96 + 48)], v91, v93);
    sub_10002B028(v84);
    v97 = *(v92 + 8);
    v97(v89, v93);
    sub_100018144(v86, &qword_100CB4B60);
    v97(v91, v93);
    sub_100018144(v90, &qword_100CB4B60);
    v98 = v139;
    sub_100051BBC();
    v83 = 0;
  }

  else
  {
    v98 = v139;
  }

  sub_10001B350(v98, v83, 1, v132);
  v99 = v129;
  sub_100095588();
  v100 = v138;
  v101 = v130;
  sub_100095588();
  v102 = v140;
  v103 = v131;
  sub_100095588();
  v104 = v133;
  sub_100095588();
  sub_100095588();
  sub_10022C350(&qword_100CB4BB8);
  sub_100095588();
  sub_100095588();
  sub_100095588();
  sub_100018144(v139, &qword_100CB4B68);
  sub_100018144(v102, &qword_100CB4B80);
  sub_100018144(v100, &qword_100CB4BA0);
  sub_100018144(v142, &qword_100CB4BB0);
  sub_100018144(v104, &qword_100CB4B68);
  sub_100018144(v103, &qword_100CB4B80);
  sub_100018144(v101, &qword_100CB4BA0);
  return sub_100018144(v99, &qword_100CB4BB0);
}

uint64_t sub_1003D1D98()
{
  type metadata accessor for LocationFooterView(0);
  type metadata accessor for LocationFooterViewModel();
  return sub_10078D534();
}

uint64_t sub_1003D1DEC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB4BE8);
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  v5 = sub_10022C350(&qword_100CA2CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = a1 + *(type metadata accessor for LocationFooterView(0) + 24);
  if (*(v9 + 1) == 1 && (*(v9 + 2) & 1) != 0)
  {
    v10 = [objc_opt_self() mainBundle];
    v20._object = 0x8000000100AC5870;
    v11._object = 0x8000000100AC0350;
    v20._countAndFlagsBits = 0xD00000000000003DLL;
    v11._countAndFlagsBits = 0xD000000000000014;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

    v19 = v13;
    sub_10002D5A4();
    Label<>.init<A>(_:systemImage:)();
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v21._object = 0x8000000100AC5820;
    v15._countAndFlagsBits = 0xD000000000000015;
    v15._object = 0x8000000100AC5800;
    v21._countAndFlagsBits = 0xD000000000000040;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

    v19 = v17;
    sub_10002D5A4();
    Label<>.init<A>(_:systemImage:)();
  }

  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  _ConditionalContent<>.init(storage:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003D214C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100AC58B0;
  v1._countAndFlagsBits = 0x206E69206E65704FLL;
  v1._object = 0xEC0000007370614DLL;
  v4._countAndFlagsBits = 0xD00000000000003DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  sub_10002D5A4();
  return Label<>.init<A>(_:systemImage:)();
}

unint64_t sub_1003D2240()
{
  result = qword_100CB4AE8;
  if (!qword_100CB4AE8)
  {
    sub_10022E824(&qword_100CB4AC0);
    sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4AE8);
  }

  return result;
}

uint64_t sub_1003D22F8()
{
  v1 = v0 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32);
  v2 = *(v1 + *(type metadata accessor for HomeAndWorkRefinementRowViewModel() + 28));
  sub_1003D2444();
  sub_100028398();
  if ((v2 & 1) == 0)
  {
    sub_1000040C4();
    v3 = static Text.+ infix(_:_:)();
    v16 = v4;
    v17 = v3;
    v15 = v5;
    v6 = sub_1000040C4();
    sub_10010CD64(v6, v7, v8);

    Image.init(systemName:)();
    v9 = Text.init(_:)();
    v11 = v10;
    v13 = v12;
    static Text.+ infix(_:_:)();
    sub_100028398();
    sub_10010CD64(v9, v11, v13 & 1);

    sub_10010CD64(v17, v16, v15 & 1);
  }

  return sub_1000040C4();
}

uint64_t sub_1003D2444()
{
  v0 = type metadata accessor for LocationOfInterestType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationOfInterest.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for LocationOfInterestType.home(_:) || v4 == enum case for LocationOfInterestType.work(_:))
  {
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v5 = Text.init(_:tableName:bundle:comment:)();
    (*(v1 + 8))(v3, v0);
  }

  return v5;
}

uint64_t sub_1003D2654@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HomeAndWorkRefinementRow(0);
  __chkstk_darwin(v2 - 8);
  sub_1003D3AB8();
  swift_allocObject();
  sub_1003D3A60();
  sub_10022C350(&qword_100CB4CC8);
  sub_100006F64(&qword_100CB4CD0, &qword_100CB4CC8);
  Button.init(action:label:)();
  v3 = a1 + *(sub_10022C350(&qword_100CB4CD8) + 36);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = *(type metadata accessor for LocationFooterButtonStyleModifier() + 20);
  *(v3 + v4) = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003D285C(uint64_t a1)
{
  v2 = type metadata accessor for LocationFooterAction(0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_10022C350(&qword_100CA6650) + 48);
  v6 = a1 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32);
  v7 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
  v8 = *(v7 + 20);
  v9 = type metadata accessor for Location();
  (*(*(v9 - 8) + 16))(v4, v6 + v8, v9);
  v10 = *(v7 + 24);
  v11 = type metadata accessor for LocationOfInterest();
  (*(*(v11 - 8) + 16))(&v4[v5], v6 + v10, v11);
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  sub_10078D194(v4, v13);
  return sub_1003D3B10(v4, type metadata accessor for LocationFooterAction);
}

void *sub_1003D29D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v9 = 0;
  sub_1003D2AB4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_100095588();
  sub_100018144(v11, &qword_100CB4CE0);
  memcpy(&v8[7], __dst, 0xA0uLL);
  v5 = v9;
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v8, 0xA7uLL);
}

uint64_t sub_1003D2AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32);
  v5 = *v4;
  if (v5 == 1)
  {
    v6 = static HorizontalAlignment.center.getter();
  }

  else
  {
    v6 = static HorizontalAlignment.leading.getter();
  }

  v7 = v6;
  LOBYTE(v10[0]) = 1;
  sub_1003D2CA4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, 0x69uLL);
  sub_100095588();
  sub_100018144(v17, &qword_100CB4CE8);
  memcpy(&v15[7], __dst, 0x69uLL);
  v8 = 0;
  if (v4[*(type metadata accessor for HomeAndWorkRefinementRowViewModel() + 28)] == 1)
  {
    v8 = Image.init(systemName:)();
  }

  v10[0] = v7;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v15, 0x70uLL);
  memcpy(__src, v10, 0x81uLL);
  sub_100095588();
  memcpy(a2, __src, 0x88uLL);
  *(a2 + 136) = 0;
  *(a2 + 144) = v5 ^ 1;
  *(a2 + 145) = v5;
  *(a2 + 152) = v8;

  v12[0] = v7;
  v12[1] = 0;
  v13 = 1;
  memcpy(v14, v15, sizeof(v14));
  return sub_100018144(v12, &qword_100CB4CF0);
}

uint64_t sub_1003D2CA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v85 = type metadata accessor for Location();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v4 - 8);
  v113 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v114 = &v83 - v7;
  v109 = type metadata accessor for EnvironmentValues();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v10 - 8);
  v12 = &v83 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1003D22F8();
  v110 = v17;
  LODWORD(v88) = v18;
  KeyPath = v19;
  v20 = *(v14 + 104);
  v20(v16, enum case for Font.TextStyle.subheadline(_:), v13);
  v97 = type metadata accessor for Font.Design();
  sub_10001B350(v12, 1, 1, v97);
  v87 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020);
  v21 = *(v14 + 8);
  v21(v16, v13);
  v91 = enum case for Font.TextStyle.footnote(_:);
  v99 = v14 + 104;
  v98 = v20;
  (v20)(v16);
  static Font.Weight.bold.getter();
  v22 = static Font.system(_:weight:)();
  v96 = v13;
  v101 = v14 + 8;
  v95 = v21;
  v21(v16, v13);
  v23 = *a1;
  v100 = a1;
  v92 = *(a1 + 8);
  v106 = v9;
  v102 = v23;
  if (v92 == 1)
  {
    v25 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v23, 0);
    (*(v108 + 8))(v9, v109);
    v25 = v120;
  }

  v26 = enum case for Font.Leading.tight(_:);
  v27 = type metadata accessor for Font.Leading();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v30 = v114;
  v93 = v26;
  v90 = v29;
  v89 = v28 + 104;
  v29(v114, v26, v27);
  v94 = v27;
  sub_10001B350(v30, 0, 1, v27);
  v31 = v113;
  sub_100095588();
  v32 = v87;

  sub_1001C987C(v32, v22, v25 & 1, v31);
  LOBYTE(v27) = v88;
  v33 = v111;
  v34 = v110;
  v104 = Text.font(_:)();
  v103 = v35;
  LODWORD(v86) = v36;
  v105 = v37;

  sub_10010CD64(v33, v34, v27 & 1);

  sub_100018144(v30, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  v38 = v100[2];
  if (*(v100 + 24) == 1)
  {
    if ((v38 & 1) == 0)
    {
LABEL_6:
      v39 = static Color.primary.getter();
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v41 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v38, 0);
    (*(v108 + 8))(v41, v109);
    if (v120 != 1)
    {
      goto LABEL_6;
    }
  }

  v39 = static Color.white.getter();
LABEL_9:
  v111 = v39;
  v88 = swift_getKeyPath();
  LODWORD(v110) = v86 & 1;
  v133 = v86 & 1;
  type metadata accessor for HomeAndWorkRefinementRow(0);
  type metadata accessor for HomeAndWorkRefinementRowViewModel();
  v42 = LocationOfInterest.shortAddress.getter();
  if (v43)
  {
    v44 = v42;
    v45 = v43;
  }

  else
  {
    v46 = v83;
    LocationOfInterest.location.getter();
    v44 = Location.inlineName.getter();
    v45 = v47;
    (*(v84 + 8))(v46, v85);
  }

  v120 = v44;
  v121 = v45;
  sub_10002D5A4();
  v87 = Text.init<A>(_:)();
  v86 = v48;
  LODWORD(v85) = v49;
  v100 = v50;
  v51 = v91;
  v52 = v96;
  v53 = v98;
  v98(v16, v91, v96);
  v54 = v97;
  sub_10001B350(v12, 1, 1, v97);
  v84 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020);
  v55 = v95;
  v95(v16, v52);
  v53(v16, v51, v52);
  sub_10001B350(v12, 1, 1, v54);
  v56 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020);
  v55(v16, v52);
  if (v92)
  {
    v57 = v102;
    v130 = v102 & 1;
  }

  else
  {
    v58 = v102;

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v58, 0);
    (*(v108 + 8))(v60, v109);
    v57 = v130;
  }

  v61 = v114;
  v62 = v94;
  v90(v114, v93, v94);
  sub_10001B350(v61, 0, 1, v62);
  v63 = v113;
  sub_100095588();
  v64 = v84;

  sub_1001C987C(v64, v56, v57 & 1, v63);
  v65 = v85;
  v66 = v87;
  v67 = v86;
  v68 = Text.font(_:)();
  v109 = v69;
  LOBYTE(v62) = v70;
  v113 = v71;

  sub_10010CD64(v66, v67, v65 & 1);

  sub_100018144(v61, &qword_100CACFF0);
  v72 = swift_getKeyPath();
  v73 = v104;
  v74 = v103;
  *&v116 = v104;
  *(&v116 + 1) = v103;
  LOBYTE(v117) = v110;
  *(&v117 + 1) = *v132;
  DWORD1(v117) = *&v132[3];
  v75 = v105;
  *(&v117 + 1) = v105;
  *&v118 = KeyPath;
  BYTE8(v118) = 0;
  *(&v118 + 9) = *v131;
  HIDWORD(v118) = *&v131[3];
  v76 = v88;
  *&v119 = v88;
  *(&v119 + 1) = v111;
  LOBYTE(v62) = v62 & 1;
  v115 = v62;
  v77 = v116;
  v78 = v117;
  v79 = v119;
  v80 = v107;
  *(v107 + 32) = v118;
  *(v80 + 48) = v79;
  *v80 = v77;
  *(v80 + 16) = v78;
  v81 = v109;
  *(v80 + 64) = v68;
  *(v80 + 72) = v81;
  *(v80 + 80) = v62;
  *(v80 + 88) = v113;
  *(v80 + 96) = v72;
  *(v80 + 104) = 0;
  sub_100095588();
  sub_10010CD54(v68, v81, v62);

  sub_10010CD64(v68, v81, v62);

  v120 = v73;
  v121 = v74;
  v122 = v110;
  *v123 = *v132;
  *&v123[3] = *&v132[3];
  v124 = v75;
  v125 = KeyPath;
  v126 = 0;
  *v127 = *v131;
  *&v127[3] = *&v131[3];
  v128 = v76;
  v129 = v111;
  return sub_100018144(&v120, &qword_100CB4CF8);
}

unint64_t sub_1003D3928()
{
  result = qword_100CB4B48;
  if (!qword_100CB4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B48);
  }

  return result;
}

unint64_t sub_1003D39B0()
{
  result = qword_100CB4BD0;
  if (!qword_100CB4BD0)
  {
    sub_10022E824(&qword_100CB4BC8);
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4BD0);
  }

  return result;
}

uint64_t sub_1003D3A60()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1003D3AB8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1003D3B10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1003D3B8C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_10013BCD0();
    if (v1 <= 0x3F)
    {
      sub_100137A94();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HomeAndWorkRefinementRowViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1003D3C88(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1003D3D0C()
{
  result = qword_100CB4D00;
  if (!qword_100CB4D00)
  {
    sub_10022E824(&qword_100CB4CD8);
    sub_100006F64(&qword_100CB4D08, &qword_100CB4D10);
    sub_1003D3DF4(&qword_100CB4D18, type metadata accessor for LocationFooterButtonStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4D00);
  }

  return result;
}

uint64_t sub_1003D3DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D3E3C(uint64_t a1, uint64_t a2, int a3)
{
  v599 = a2;
  v4 = sub_10022C350(&unk_100CE49F0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v6);
  v8 = &v506 - v7;
  v547 = type metadata accessor for WeatherCoalescedLocationResult();
  sub_1000037C4();
  v545 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v12 = sub_100003918(v11);
  v534 = type metadata accessor for WeatherMapPresentationState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  sub_100003918(v15);
  v533 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  sub_100003990(v18);
  v19 = sub_10022C350(&qword_100CA65F0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  sub_100003990(v24);
  v25 = sub_10022C350(&qword_100CA65F8);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CA6600);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003918(v38);
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000038E4();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CA65B8);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA6608);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CA6890);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003918(&v506 - v53);
  v524 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v54);
  sub_1000038E4();
  v56 = sub_100003918(v55);
  v551 = type metadata accessor for ViewState.SecondaryViewState(v56);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v61 = sub_100003918(v60);
  v598 = type metadata accessor for ViewState(v61);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003C38();
  v65 = v63 - v64;
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_100003918(v71);
  v578 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v72);
  sub_100003C38();
  v75 = v73 - v74;
  __chkstk_darwin(v76);
  sub_10000E70C();
  v593 = v77;
  sub_1000038CC();
  v595 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003C38();
  v81 = v79 - v80;
  __chkstk_darwin(v82);
  sub_10000E70C();
  v592 = v83;
  sub_1000038CC();
  v594 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  v591 = v86;
  sub_1000038CC();
  v579 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v87);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  v590 = v90;
  sub_1000038CC();
  v597 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v91);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_10000E70C();
  v589 = v93;
  v94 = sub_1000038CC();
  v577 = type metadata accessor for ModalViewState(v94);
  sub_1000037E8();
  __chkstk_darwin(v95);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v588 = v100;
  v101 = sub_10022C350(&qword_100CA65E8);
  v102 = sub_100003810(v101);
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_10000E70C();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CA6610);
  v108 = sub_100003810(v107);
  __chkstk_darwin(v108);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_10000E70C();
  v587 = v112;
  v113 = sub_10022C350(&qword_100CA6618);
  v114 = sub_100003810(v113);
  __chkstk_darwin(v114);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_10000E70C();
  v586 = v118;
  v119 = sub_10022C350(&qword_100CA6620);
  v120 = sub_100003810(v119);
  __chkstk_darwin(v120);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_10000E70C();
  v584 = v124;
  v125 = sub_10022C350(&qword_100CA6628);
  v126 = sub_100003810(v125);
  __chkstk_darwin(v126);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_10000E70C();
  v583 = v130;
  v131 = sub_10022C350(&qword_100CA6630);
  v132 = sub_100003810(v131);
  __chkstk_darwin(v132);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_10000E70C();
  sub_100003918(v136);
  v596 = type metadata accessor for Locale();
  sub_1000037C4();
  v576 = v137;
  __chkstk_darwin(v138);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_10000E70C();
  v141 = v140;
  v142 = sub_10022C350(&qword_100CAA9F0);
  v143 = sub_100003810(v142);
  __chkstk_darwin(v143);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  v146 = __chkstk_darwin(v145);
  v148 = &v506 - v147;
  __chkstk_darwin(v146);
  v600 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v149);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  v585 = v152;
  __chkstk_darwin(v153);
  v155 = &v506 - v154;
  v156 = sub_10022C350(&qword_100CA6638);
  v157 = sub_100003810(v156);
  __chkstk_darwin(v157);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  v162 = &v506 - v161;
  v163 = sub_10022C350(&qword_100CA6640);
  v164 = sub_100003810(v163);
  __chkstk_darwin(v164);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_10000E70C();
  sub_100003990(v168);
  v580 = a3;
  if ((a3 - 1) >= 2u)
  {
    v508 = v8;
    v169 = LocationAuthorizationState.rawValue.getter(v580);
    v171 = v170;
    v172 = v169 == 0x7265746544746F6ELL && v170 == 0xED000064656E696DLL;
    if (v172)
    {
    }

    else
    {
      v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000794B0();
      if ((v173 & 1) == 0)
      {
        v174 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
        sub_10001EB68();
        v175 = v538;
        sub_100095048();
        v176 = v598;
        sub_100013754();
        v177 = v537;
        sub_100095048();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v592 = v81;
        v593 = v75;
        v590 = v174;
        v507 = v65;
        if (EnumCaseMultiPayload == 1)
        {
          sub_100005B1C();
          sub_10009EDBC(v175, v179);
          sub_10009EDBC(v177, type metadata accessor for ViewState.SecondaryViewState);
          v180 = v550;
          v181 = v599;
LABEL_59:
          sub_10001EB68();
          sub_100095048();
          v294 = v597;
          v295 = v576;
          goto LABEL_60;
        }

        v287 = *v177;
        v171 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
        v180 = v550;
        if (*(v175 + v176[9] + 8) == 1)
        {
          v288 = [objc_opt_self() currentDevice];
          [v288 userInterfaceIdiom];

          LOBYTE(v288) = *(v175 + v176[7]);
          sub_100005B1C();
          sub_10009EDBC(v175, v289);
          v181 = v599;
          if ((v288 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_100005B1C();
          sub_10009EDBC(v175, v290);
          v181 = v599;
        }

        if (sub_1003D6E88())
        {
          if (LocationAuthorizationState.rawValue.getter(v580) == 0x7265746544746F6ELL && v291 == 0xED000064656E696DLL)
          {

            goto LABEL_58;
          }

          v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v293 & 1) == 0)
          {
            v403 = v525;
            sub_1003DFA4C(*(v181 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v579 + 20)), v525);
            v404 = sub_1000131C4();
            sub_1000038B4(v404, v405, v524);
            if (v172)
            {

              sub_1000180EC(v403, &qword_100CA6890);
              sub_10001EB68();
              sub_1000325C0();
              sub_100095048();
              sub_100003934();
              v406 = v551;
              sub_10001B350(v407, v408, v409, v551);
              v410 = type metadata accessor for SearchViewState(0);
              v411 = sub_100003BCC(&v546);
              sub_10001B350(v411, v412, v413, v410);
              v414 = sub_100003BCC(v549);
              v415 = v533;
              sub_10001B350(v414, v416, v417, v533);
              v418 = sub_100003BCC(&v551);
              v419 = v534;
              sub_10001B350(v418, v420, v421, v534);
              v171 = *&MainInitialStateProvider.flags;
              v422 = v511;
              sub_100051BBC();
              sub_100005404(v422);
              v591 = v171;
              if (v172)
              {
                sub_100013754();
                sub_100095048();
                v423 = sub_100024D10(v422, 1, v406);

                v172 = v423 == 1;
                v171 = v508;
                v438 = v515;
                if (!v172)
                {
                  sub_1000180EC(v422, &qword_100CA6608);
                }
              }

              else
              {
                sub_100022ADC();
                sub_1003D705C();

                sub_1000794B0();
                v438 = v515;
              }

              LODWORD(v589) = *(v535 + v176[6]);
              sub_100051BBC();
              sub_100003BFC(v438);
              if (v172)
              {
                sub_100095588();
                sub_100003BFC(v438);
                v439 = v438;
                v469 = v516;
                if (!v172)
                {
                  sub_1000180EC(v439, &qword_100CA6600);
                }
              }

              else
              {
                sub_100037114();
                sub_10003778C();
                sub_1003D705C();
                sub_10000E7B0();
                sub_10001B350(v466, v467, v468, v410);
                v469 = v516;
              }

              sub_100051BBC();
              v470 = sub_1000131C4();
              sub_1000038B4(v470, v471, v415);
              v472 = v518;
              if (v172)
              {
                sub_1000303F8();
                sub_100095048();
                v473 = sub_1000131C4();
                sub_1000038B4(v473, v474, v415);
                v296 = v552;
                if (!v172)
                {
                  sub_1000180EC(v469, &qword_100CA65F8);
                }
              }

              else
              {
                sub_100019660();
                sub_1003D705C();
                v296 = v552;
              }

              sub_100051BBC();
              v482 = sub_1000162A4();
              sub_1000038B4(v482, v483, v419);
              if (v172)
              {
                sub_1000B9900();
                sub_100095048();
                v484 = sub_1000162A4();
                sub_1000038B4(v484, v485, v419);
                if (!v172)
                {
                  sub_1000180EC(v472, &qword_100CA65F0);
                }
              }

              else
              {
                sub_1000040D4();
                sub_1003D705C();
              }

              v492 = *(v535 + v176[11]);
              sub_100005B1C();
              sub_10009EDBC(v493, v494);
              v495 = v557;
              *v557 = v591;
              sub_100022ADC();
              sub_1003D705C();
              *(v495 + v176[6]) = v589;
              *(v495 + v176[7]) = 0;
              sub_100051BBC();
              sub_100019660();
              sub_1003D705C();
              sub_1000040D4();
              sub_1003D705C();
              *(v495 + v176[11]) = v492;
              v294 = v597;
              v295 = v576;
              goto LABEL_61;
            }

            sub_1000113EC();
            sub_1003D705C();
            sub_10001EB68();
            sub_100095048();
            v424 = v510;
            SavedLocation.identifier.getter();
            type metadata accessor for Location.Identifier();
            sub_10000E7B0();
            sub_10001B350(v425, v426, v427, v428);
            sub_10000E7B0();
            v429 = active;
            sub_10001B350(v430, v431, v432, active);
            sub_10003778C();
            sub_100051BBC();
            v433 = sub_1000131C4();
            sub_1000038B4(v433, v434, v429);
            if (v435)
            {
              sub_100095048();
              v436 = sub_1000131C4();
              sub_1000038B4(v436, v437, v429);
              if (!v172)
              {
                sub_1000180EC(v424, &qword_100CA65B8);
              }
            }

            else
            {
              sub_1003D705C();
            }

            v440 = *(v287 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
            v441 = *(v287 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
            v442 = *(v287 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
            v443 = *(v287 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
            v444 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v287);
            type metadata accessor for LocationViewerViewState._Storage(0);
            swift_allocObject();
            v445 = sub_10003DDB8(v526, v444, v440, v443, v441, v442);
            v446 = v529;
            *v529 = v445;
            v447 = v551;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v448, v449, v450, v447);
            v451 = type metadata accessor for SearchViewState(0);
            v452 = sub_100003BCC(&v550);
            sub_10001B350(v452, v453, v454, v451);
            v455 = sub_100003BCC(&v554);
            sub_10001B350(v455, v456, v457, v533);
            v458 = sub_100003BCC(&v556);
            sub_10001B350(v458, v459, v460, v534);
            v461 = v536;
            v462 = *v536;
            sub_100021424();
            sub_100095588();
            sub_100003BFC(v446);
            v591 = v462;
            if (v172)
            {
              v589 = v451;
              v475 = v598;
              sub_100013754();
              sub_100095048();
              v463 = sub_100024D10(v446, 1, v447);
              v464 = v446;
              v465 = v463;
              v451 = v589;

              if (v465 != 1)
              {
                sub_1000180EC(v464, &qword_100CA6608);
              }
            }

            else
            {
              sub_100022ADC();
              sub_1003D705C();

              v475 = v598;
            }

            LODWORD(v589) = *(v461 + v475[6]);
            v476 = [objc_opt_self() currentDevice];
            v477 = [v476 userInterfaceIdiom];

            sub_1000180EC(v529, &qword_100CA6608);
            sub_10009EDBC(v527, &type metadata accessor for SavedLocation);
            if (v477 && *(v461 + v475[9] + 8) == 2)
            {
              v478 = 1;
            }

            else
            {
              v478 = *(v461 + v475[7]);
            }

            LODWORD(v588) = v478;
            sub_1000794B0();
            v180 = v550;
            v479 = v534;
            v295 = v576;
            v480 = v517;
            sub_100051BBC();
            sub_100005404(v480);
            if (v172)
            {
              sub_1000714AC(v598[8]);
              sub_100095588();
              sub_100005404(v480);
              v481 = v480;
              v489 = v519;
              if (!v172)
              {
                sub_1000180EC(v481, &qword_100CA6600);
              }
            }

            else
            {
              sub_100037114();
              sub_1003D705C();
              sub_10000E7B0();
              sub_10001B350(v486, v487, v488, v451);
              v489 = v519;
            }

            sub_100051BBC();
            sub_100003BFC(v489);
            v490 = v521;
            if (v172)
            {
              sub_1000303F8();
              sub_1000714AC(v491);
              sub_100095048();
              sub_100003BFC(v489);
              if (!v172)
              {
                sub_1000180EC(v489, &qword_100CA65F8);
              }
            }

            else
            {
              sub_100019660();
              sub_1003D705C();
            }

            sub_100051BBC();
            v496 = sub_1000131C4();
            sub_1000038B4(v496, v497, v479);
            if (v172)
            {
              sub_1000B9900();
              sub_1000714AC(v498);
              sub_100095048();
              v499 = sub_1000131C4();
              sub_1000038B4(v499, v500, v479);
              if (!v172)
              {
                sub_1000180EC(v490, &qword_100CA65F0);
              }
            }

            else
            {
              sub_1000040D4();
              sub_1003D705C();
            }

            v501 = v598;
            v502 = *(v536 + v598[11]);
            sub_100005B1C();
            sub_10009EDBC(v503, v504);
            v505 = v557;
            *v557 = v591;
            sub_100022ADC();
            sub_1003D705C();
            *(v505 + v501[6]) = v589;
            *(v505 + v501[7]) = v588;
            sub_100051BBC();
            sub_100019660();
            sub_1003D705C();
            sub_1000040D4();
            sub_1003D705C();
            *(v505 + v501[11]) = v502;
            v294 = v597;
LABEL_60:
            v296 = v552;
LABEL_61:
            v297 = (v181 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
            sub_1000161C0((v180 + 16), *(v180 + 40));
            type metadata accessor for CurrentLocation();
            sub_100003934();
            v588 = v298;
            sub_10001B350(v299, v300, v301, v298);
            v591 = v297;
            v302 = v544;
            dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:)();
            sub_1000180EC(v171, &unk_100CE49F0);
            v589 = WeatherCoalescedLocationResult.coalescedLocations.getter();
            (*(v545 + 8))(v302, v547);
            v303 = sub_100003BCC(&v582);
            sub_10001B350(v303, v304, v305, v294);
            v306 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
            swift_beginAccess();
            sub_100014568();
            v570 = v306;
            v307 = v539;
            sub_100095048();
            sub_100003934();
            v308 = v596;
            sub_10001B350(v309, v310, v311, v596);
            LODWORD(v585) = *v307;
            LODWORD(v587) = v307[2];
            LODWORD(v586) = v307[3];
            sub_10003778C();
            sub_100051BBC();
            sub_1000191D0();
            if (v172)
            {
              v312 = v600;
              (*(v295 + 16))(v296, &v307[v600[8]], v308);
              sub_1000191D0();
              if (!v172)
              {
                sub_1000180EC(v302, &qword_100CAA9F0);
              }
            }

            else
            {
              (*(v295 + 32))(v296, v302, v308);
              v312 = v600;
            }

            v313 = v312[10];
            v314 = &v307[v312[9]];
            v315 = *(v314 + 1);
            v583 = *v314;
            LODWORD(v584) = v307[v313];
            v316 = v312[12];
            v581 = v307[v312[11]];
            v582 = v307[v316];
            v317 = v312[14];
            LODWORD(v575) = v307[v312[13]];
            v576 = *&v307[v317];
            v318 = v312[16];
            LODWORD(v573) = v307[v312[15]];
            v574 = v307[v318];
            v319 = v312[18];
            LODWORD(v571) = v307[v312[17]];
            v320 = *&v307[v319];
            v321 = *&v307[v319 + 8];
            v322 = *&v307[v319 + 16];
            v323 = *&v307[v319 + 24];
            v324 = *&v307[v319 + 32];
            v325 = *&v307[v319 + 40];
            v572 = v307[v312[19]];
            v326 = v325;

            v327 = v320;
            v328 = v321;
            v329 = v322;
            v330 = v323;
            v331 = v324;
            sub_1000419C0();
            sub_10009EDBC(v307, v332);
            v333 = v554;
            sub_100043704(v585);
            *(v333 + 2) = v587;
            *(v333 + 3) = v586;
            (*(v295 + 32))(v333 + v312[8], v552, v596);
            v334 = (v333 + v312[9]);
            *v334 = v583;
            v334[1] = v315;
            *(v333 + v312[10]) = v584;
            sub_100011524(v312[11]);
            sub_100011524(v312[12]);
            sub_100011524(v312[13]);
            *(v333 + v312[14]) = v576;
            sub_100011524(v312[15]);
            sub_100011524(v312[16]);
            sub_100011524(v312[17]);
            v335 = (v333 + v312[18]);
            *v335 = v320;
            v335[1] = v321;
            v335[2] = v322;
            v335[3] = v323;
            v335[4] = v324;
            v335[5] = v325;
            sub_100011524(v312[19]);
            sub_10000E7B0();
            sub_10001B350(v336, v337, v338, v312);
            sub_10004E530();
            sub_100021424();
            sub_100095048();
            v339 = v508;
            sub_100003934();
            sub_10001B350(v340, v341, v342, v588);
            sub_100095588();
            v343 = v579;
            v344 = v315 + *(v579 + 48);
            v345 = *v344;
            v346 = *(v344 + 8);
            v347 = *(v344 + 16);

            sub_1000DC3D4(v345, v346, v347);

            sub_10003A500();
            sub_1000180EC(v339, &unk_100CE49F0);
            sub_10009EDBC(v315, type metadata accessor for LocationsState);
            sub_10000E7B0();
            sub_10001B350(v348, v349, v350, v343);
            v351 = sub_100003BCC(&v585);
            v352 = v594;
            sub_10001B350(v351, v353, v354, v594);
            v355 = sub_100003BCC(&v587);
            sub_10001B350(v355, v356, v357, v595);
            v358 = sub_100003BCC(&v589);
            v359 = v578;
            sub_10001B350(v358, v360, v361, v578);
            sub_1000168DC();
            sub_1003D705C();
            sub_10000E7B0();
            sub_10001B350(v362, v363, v364, v598);
            v365 = v542;
            sub_100003934();
            v366 = v577;
            sub_10001B350(v367, v368, v369, v577);
            sub_10002FE9C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
            sub_100021424();
            sub_100095048();
            sub_1000325C0();
            sub_100051BBC();
            v370 = sub_1000162B0();
            sub_1000038B4(v370, v371, v366);
            if (v172)
            {
              sub_1000180EC(v365, &qword_100CA65E8);
            }

            else
            {
              sub_100024128();
              sub_10009EDBC(v315, v372);
              sub_10001C108();
              sub_1003D705C();
            }

            v373 = v540;
            sub_10001C108();
            sub_1003D705C();
            v374 = *(v345 + 16);
            LODWORD(v589) = *(v345 + 24);
            sub_100051BBC();
            v375 = sub_1000201BC();
            v376 = v597;
            sub_1000038B4(v375, v377, v597);
            v378 = v541;
            v596 = v374;
            if (v172)
            {
              sub_10003A188(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
              sub_100095048();
              v379 = sub_1000201BC();
              v381 = sub_100024D10(v379, v380, v376);

              v382 = v548;
              if (v381 != 1)
              {
                sub_1000180EC(v373, &qword_100CA6640);
              }
            }

            else
            {
              sub_100036CE4();
              sub_1003D705C();

              v382 = v548;
            }

            sub_100051BBC();
            v383 = sub_1000162B0();
            v384 = v600;
            sub_1000038B4(v383, v385, v600);
            if (v172)
            {
              sub_100014568();
              sub_100095048();
              v386 = sub_1000162B0();
              sub_1000038B4(v386, v387, v384);
              v388 = v546;
              v389 = v579;
              if (!v172)
              {
                sub_1000180EC(v378, &qword_100CA6638);
              }
            }

            else
            {
              sub_100071CC0();
              sub_1003D705C();
              v388 = v546;
              v389 = v579;
            }

            sub_1000325C0();
            sub_100051BBC();
            v390 = sub_1000162B0();
            sub_1000038B4(v390, v391, v389);
            if (v172)
            {
              sub_10004E530();
              sub_100095048();
              v392 = sub_1000162B0();
              sub_1000038B4(v392, v393, v389);
              if (!v172)
              {
                sub_1000180EC(v378, &qword_100CA6630);
              }
            }

            else
            {
              sub_100016368();
              sub_1003D705C();
            }

            v394 = v543;
            sub_100051BBC();
            v395 = sub_1000201BC();
            sub_1000038B4(v395, v396, v352);
            if (v172)
            {
              sub_10002512C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
              sub_100095048();
              v397 = sub_1000201BC();
              sub_1000038B4(v397, v398, v352);
              if (!v172)
              {
                sub_1000180EC(v394, &qword_100CA6628);
              }
            }

            else
            {
              sub_100020EF8();
              sub_1003D705C();
            }

            sub_100051BBC();
            sub_100003BFC(v388);
            if (v172)
            {
              sub_10006A76C();
              sub_100003BFC(v388);
              if (!v172)
              {
                sub_1000180EC(v388, &qword_100CA6620);
              }
            }

            else
            {
              sub_10003BDA0();
              sub_1003D705C();
            }

            sub_100051BBC();
            sub_100005404(v382);
            if (v172)
            {
              sub_10003B998();
              sub_100005404(v382);
              if (!v172)
              {
                sub_1000180EC(v382, &qword_100CA6618);
              }
            }

            else
            {
              sub_10002143C();
              sub_1003D705C();
            }

            sub_10003778C();
            sub_100051BBC();
            sub_1000191D0();
            if (v172)
            {
              sub_10001EB68();
              sub_1000113EC();
              sub_100095048();
              sub_1000191D0();
              if (!v172)
              {
                sub_1000180EC(v359, &qword_100CA6610);
              }
            }

            else
            {
              sub_1000168DC();
              sub_1000113EC();
              sub_1003D705C();
            }

            sub_10001C108();
            sub_10003778C();
            sub_1003D705C();
            v400 = *(v345 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
            v399 = *(v345 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
            v401 = *(v345 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
            v402 = *(v345 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
            sub_1000716D4();
            type metadata accessor for MainState._Storage(0);
            swift_allocObject();
            sub_1000D41E4();
            v510 = v401;
            v511 = v402;
            v508 = v400;
            v509 = v399;
            v506 = v382;
            v507 = v359;
            v278 = v596;
            v279 = v589;
            v280 = v564;
            v282 = v559;
            v281 = v565;
            v283 = v566;
            goto LABEL_46;
          }
        }

LABEL_56:

LABEL_58:
        sub_1000794B0();
        goto LABEL_59;
      }
    }
  }

  v182 = sub_100003BCC(&v601);
  sub_10001B350(v182, v183, v184, v597);
  v185 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100014568();
  v553 = v185;
  sub_100095048();
  sub_100003934();
  v186 = v596;
  sub_10001B350(v187, v188, v189, v596);
  LODWORD(v564) = *v155;
  LODWORD(v566) = v155[2];
  LODWORD(v565) = v155[3];
  sub_100051BBC();
  sub_100005404(v148);
  v563 = v141;
  if (v172)
  {
    v191 = v600;
    v190 = v576;
    (*(v576 + 16))(v141, &v155[v600[8]], v186);
    sub_100005404(v148);
    if (!v172)
    {
      sub_1000180EC(v148, &qword_100CAA9F0);
    }
  }

  else
  {
    v190 = v576;
    (*(v576 + 32))(v141, v148, v186);
    v191 = v600;
  }

  v192 = v191[10];
  v193 = &v155[v191[9]];
  v194 = *(v193 + 1);
  v562 = *v193;
  LODWORD(v576) = v155[v192];
  v195 = v191[12];
  v560 = v155[v191[11]];
  v561 = v155[v195];
  v196 = v191[14];
  v558 = v155[v191[13]];
  v559 = *&v155[v196];
  v197 = v191[16];
  v556 = v155[v191[15]];
  LODWORD(v557) = v155[v197];
  v198 = v191[18];
  LODWORD(v554) = v155[v191[17]];
  v199 = *&v155[v198];
  v200 = *&v155[v198 + 8];
  v201 = *&v155[v198 + 16];
  v202 = *&v155[v198 + 24];
  v203 = *&v155[v198 + 32];
  v204 = *&v155[v198 + 40];
  v555 = v155[v600[19]];
  v205 = v204;

  v206 = v199;
  v207 = v200;
  v208 = v201;
  v209 = v202;
  v210 = v203;
  sub_1000419C0();
  sub_10009EDBC(v155, v211);
  sub_100043704(v564);
  v162[2] = v566;
  v162[3] = v565;
  (*(v190 + 32))(&v162[v600[8]], v563, v596);
  v212 = &v162[v600[9]];
  *v212 = v562;
  *(v212 + 1) = v194;
  sub_10000CA3C(v600[10]);
  sub_10000CA3C(*(v213 + 44));
  sub_10000CA3C(*(v214 + 48));
  sub_10000CA3C(*(v215 + 52));
  *&v162[*(v216 + 56)] = v559;
  sub_10000CA3C(v600[15]);
  sub_10000CA3C(*(v217 + 64));
  sub_100011524(*(v218 + 68));
  v219 = v600;
  v220 = &v162[v600[18]];
  *v220 = v199;
  *(v220 + 1) = v200;
  *(v220 + 2) = v201;
  *(v220 + 3) = v202;
  *(v220 + 4) = v203;
  *(v220 + 5) = v204;
  sub_100011524(v219[19]);
  sub_10000E7B0();
  sub_10001B350(v221, v222, v223, v219);
  v224 = sub_100003BCC(&v602);
  v225 = v579;
  sub_10001B350(v224, v226, v227, v579);
  sub_100003934();
  sub_10001B350(v228, v229, v230, v594);
  sub_100003934();
  sub_10001B350(v231, v232, v233, v595);
  sub_100003934();
  v234 = v578;
  sub_10001B350(v235, v236, v237, v578);
  sub_100003934();
  sub_10001B350(v238, v239, v240, v598);
  v241 = v568;
  sub_100003934();
  sub_10001B350(v242, v243, v244, v577);
  sub_10002FE9C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  sub_1000113EC();
  sub_100095048();
  sub_10003778C();
  sub_100051BBC();
  sub_1000191D0();
  if (v172)
  {
    sub_1000180EC(v241, &qword_100CA65E8);
  }

  else
  {
    sub_100024128();
    sub_10009EDBC(v203, v245);
    sub_10001C108();
    sub_1003D705C();
  }

  v246 = v597;
  sub_10001C108();
  sub_1003D705C();
  v247 = *(v200 + 16);
  LODWORD(v597) = *(v200 + 24);
  sub_1000113EC();
  sub_100051BBC();
  sub_1000038B4(v203, 1, v246);
  v248 = v567;
  if (v172)
  {
    sub_10003A188(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100095048();
    v249 = sub_100024D10(v203, 1, v246);
    v250 = v247;

    v172 = v249 == 1;
    v251 = v575;
    if (!v172)
    {
      sub_1000180EC(v203, &qword_100CA6640);
    }
  }

  else
  {
    sub_100036CE4();
    sub_1003D705C();
    v250 = v247;

    v251 = v575;
  }

  sub_100051BBC();
  v252 = sub_1000131C4();
  sub_1000038B4(v252, v253, v219);
  v254 = v234;
  v596 = v250;
  if (v172)
  {
    sub_100014568();
    sub_100095048();
    v255 = sub_1000131C4();
    sub_1000038B4(v255, v256, v219);
    v257 = v573;
    v258 = v594;
    if (!v172)
    {
      sub_1000180EC(v248, &qword_100CA6638);
    }
  }

  else
  {
    sub_100071CC0();
    sub_1003D705C();
    v257 = v573;
    v258 = v594;
  }

  v259 = v569;
  sub_100051BBC();
  v260 = sub_1000201BC();
  sub_1000038B4(v260, v261, v225);
  v262 = v595;
  if (v172)
  {
    sub_10004E530();
    sub_100095048();
    v263 = sub_1000201BC();
    sub_1000038B4(v263, v264, v225);
    if (!v172)
    {
      sub_1000180EC(v259, &qword_100CA6630);
    }
  }

  else
  {
    sub_100016368();
    sub_1003D705C();
  }

  v265 = v571;
  sub_100051BBC();
  sub_1000038B4(v265, 1, v258);
  if (v172)
  {
    sub_10002512C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100095048();
    sub_1000038B4(v265, 1, v258);
    if (!v172)
    {
      sub_1000180EC(v265, &qword_100CA6628);
    }
  }

  else
  {
    sub_100020EF8();
    sub_1003D705C();
  }

  sub_1000325C0();
  sub_100051BBC();
  v266 = sub_1000162B0();
  sub_1000038B4(v266, v267, v262);
  if (v172)
  {
    sub_10006A76C();
    v268 = sub_1000162B0();
    sub_1000038B4(v268, v269, v262);
    if (!v172)
    {
      sub_1000180EC(v258, &qword_100CA6620);
    }
  }

  else
  {
    sub_10003BDA0();
    sub_1003D705C();
  }

  sub_100051BBC();
  v270 = sub_1000162A4();
  sub_1000038B4(v270, v271, v254);
  if (v172)
  {
    sub_10003B998();
    v272 = sub_1000162A4();
    sub_1000038B4(v272, v273, v254);
    if (!v172)
    {
      sub_1000180EC(v257, &qword_100CA6618);
    }
  }

  else
  {
    sub_10002143C();
    sub_1003D705C();
  }

  sub_100021424();
  sub_100051BBC();
  sub_100005404(v254);
  if (v172)
  {
    sub_10001EB68();
    sub_100095048();
    sub_100005404(v254);
    if (!v172)
    {
      sub_1000180EC(v254, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000168DC();
    sub_1003D705C();
  }

  sub_10001C108();
  sub_100021424();
  sub_1003D705C();
  v275 = *(v200 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v274 = *(v200 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v276 = *(v200 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v277 = *(v200 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  sub_1000716D4();
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  sub_1000D41E4();
  v510 = v276;
  v511 = v277;
  v508 = v275;
  v509 = v274;
  v506 = v251;
  v507 = v254;
  v278 = v596;
  v279 = v597;
  v280 = v589;
  v281 = v590;
  v282 = v585;
  v283 = v591;
LABEL_46:
  sub_10003E038(v278, v279, v280, v282, v281, v283, v592, v593, v506, v507, v508, v509, v510, v511, v512, active, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532);
  v285 = v284;

  return v285;
}

uint64_t sub_1003D6E88()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095048();
  v7 = 1;
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    (*(v1 + 32))(v3, v6, v0);
    Location.Identifier.kind.getter();
    v8 = Location.Identifier.Kind.rawValue.getter();
    v10 = v9;
    if (v8 != Location.Identifier.Kind.rawValue.getter() || v10 != v11)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v1 + 8))(v3, v0);
  }

  return v7 & 1;
}

uint64_t sub_1003D705C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for AddLocationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherComponentViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1003D7244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1003D72B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10000FEC4();
  return static Published.subscript.setter();
}

uint64_t sub_1003D7320()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1003D7390()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10000FEC4();
  return static Published.subscript.setter();
}

uint64_t sub_1003D73FC()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100040690();
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10006736C(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100CB4DC0 = result;
  return result;
}

uint64_t sub_1003D764C()
{
  sub_10022C350(&qword_100CB4F20);
  swift_allocObject();
  result = LRUCache.init(maxSize:)();
  qword_100CB4DC8 = result;
  return result;
}

uint64_t sub_1003D769C()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0);
  sub_10022C350(&qword_100CA2D40);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10006736C(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50);
  sub_100067638(&qword_100CA2D58, &qword_100CA2D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)();
  qword_100CB4DD0 = result;
  return result;
}

void sub_1003D7854(unint64_t a1, void *a2, int a3)
{
  v221 = a3;
  v205 = a2;
  v224 = a1;
  v198 = *v3;
  v192 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v191 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100003918(v8 - v7);
  v190 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v188 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100003990(v12 - v11);
  v13 = sub_10022C350(&qword_100CB4EE8);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003918(&v180[-v15]);
  v195 = type metadata accessor for MicaLayer();
  sub_1000037C4();
  v186 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_100003990(v19 - v18);
  v20 = sub_10022C350(&qword_100CB3AB0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_100003918(&v180[-v22]);
  v208 = type metadata accessor for URL();
  sub_1000037C4();
  v207 = v23;
  __chkstk_darwin(v24);
  sub_100003990(&v180[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v183 = v26;
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003990(v28);
  v214 = sub_10022C350(&qword_100CB4EF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v29);
  sub_100003918(&v180[-v30]);
  v212 = type metadata accessor for WeatherConditionBackgroundOptions();
  sub_1000037C4();
  v211 = v31;
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  sub_100003918(v34);
  v35 = type metadata accessor for WeatherCondition();
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000037D8();
  sub_100003918(v38 - v37);
  v217 = type metadata accessor for MicaResourceModel();
  sub_1000037C4();
  v220 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CB4EF8);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003918(v47);
  v48 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v50 = v49;
  __chkstk_darwin(v51);
  v182 = v52;
  sub_10001376C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CB4F00);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v55);
  v57 = &v180[-v56];
  v58 = sub_10022C350(&qword_100CB4ED8);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003908();
  __chkstk_darwin(v62);
  v64 = &v180[-v63];
  __chkstk_darwin(v65);
  v67 = &v180[-v66];
  v68 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v70 = v69;
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = (v73 - v72);
  sub_100040690();
  *v74 = static OS_dispatch_queue.main.getter();
  (*(v70 + 104))(v74, enum case for DispatchPredicate.onQueue(_:), v68);
  v75 = _dispatchPreconditionTest(_:)();
  (*(v70 + 8))(v74, v68);
  if ((v75 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v202 = v50;
  v76 = *(v50 + 16);
  v204 = v50 + 16;
  v203 = v76;
  v76(v67, v224, v48);
  sub_10001B350(v67, 0, 1, v48);
  v77 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__lastModel;
  v78 = v222;

  Atomic.wrappedValue.getter();

  v79 = *(v54 + 48);
  sub_100035AD0(v67, v57, &qword_100CB4ED8);
  sub_100035AD0(v64, &v57[v79], &qword_100CB4ED8);
  sub_1000038B4(v57, 1, v48);
  v80 = v78;
  v223 = v48;
  if (v88)
  {
    sub_10000FEC4();
    sub_1000180EC(v81, v82);
    sub_10000FEC4();
    sub_1000180EC(v83, v84);
    sub_1000038B4(&v57[v79], 1, v223);
    v85 = v217;
    if (v88)
    {
      sub_1000180EC(v57, &qword_100CB4ED8);
      v86 = v221;
      goto LABEL_12;
    }

LABEL_10:
    sub_1000180EC(v57, &qword_100CB4F00);
    v86 = v221;
    goto LABEL_16;
  }

  v87 = v199;
  sub_100035AD0(v57, v199, &qword_100CB4ED8);
  sub_1000038B4(&v57[v79], 1, v223);
  if (v88)
  {
    sub_10000FEC4();
    sub_1000180EC(v89, v90);
    sub_10000FEC4();
    sub_1000180EC(v91, v92);
    (*(v202 + 8))(v87, v223);
    v85 = v217;
    goto LABEL_10;
  }

  v93 = v202;
  v94 = &v57[v79];
  v95 = v196;
  v96 = v223;
  (*(v202 + 32))(v196, v94, v223);
  sub_10006736C(&qword_100CB4F18, &type metadata accessor for BackgroundAnimationData.Model);
  v181 = dispatch thunk of static Equatable.== infix(_:_:)();
  v97 = *(v93 + 8);
  v97(v95, v96);
  sub_10003C400();
  sub_1000180EC(v98, v99);
  sub_10003C400();
  sub_1000180EC(v100, v101);
  v97(v87, v96);
  v80 = v222;
  sub_10003C400();
  sub_1000180EC(v102, v103);
  v85 = v217;
  v86 = v221;
  if ((v181 & 1) == 0)
  {
LABEL_16:
    v199 = v77;
    if ((sub_1003D7320() & 1) == 0)
    {
      sub_1003D7390();
    }

    v107 = v218;
    sub_1003D8E68(v80, v86 & 1, v218);
    BackgroundAnimationData.Model.conditionKind.getter();
    BackgroundAnimationData.Model.isDayTime.getter();
    v108 = v209;
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.windowBounds.getter();
    v109 = *(v211 + 8);
    v110 = v108;
    v111 = v212;
    v109(v110, v212);
    v112 = v210;
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.displayScale.getter();
    v109(v112, v111);
    v113 = v219;
    MicaResourceModel.init(condition:isDay:windowBounds:displayScale:)();
    v114 = v220;
    v115 = v213;
    v116 = v85;
    (*(v220 + 16))(v213, v113, v85);
    sub_10001B350(v115, 0, 1, v85);
    v117 = *(v214 + 48);
    v118 = v107;
    v119 = v215;
    sub_100035AD0(v118, v215, &qword_100CB4EF8);
    sub_100035AD0(v115, v119 + v117, &qword_100CB4EF8);
    sub_1000038B4(v119, 1, v85);
    if (v88)
    {
      sub_1000180EC(v115, &qword_100CB4EF8);
      sub_1000038B4(v119 + v117, 1, v85);
      v120 = v216;
      if (v88)
      {
        sub_1000180EC(v119, &qword_100CB4EF8);
LABEL_38:
        if ((v221 & 1) != 0 && DeviceIsVerySlow())
        {
          sub_10001C120();
          sub_10006736C(v165, v166);
          v167 = sub_100074958();
          WeatherConditionPlaybackCoordinatorType.pause(_:)(v167);
          v168 = v220;
          v169 = v219;
        }

        else
        {
          v168 = v220;
          v169 = v219;
          if (*(v222 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
          {
            v170 = sub_1003D7244();
            MicaBackgroundAnimation.play(_:)(0);
          }
        }

        (*(v168 + 8))(v169, v116);
LABEL_52:
        v132 = &qword_100CB4EF8;
        v133 = v218;
        goto LABEL_53;
      }
    }

    else
    {
      v121 = v197;
      sub_100035AD0(v119, v197, &qword_100CB4EF8);
      sub_1000038B4(v119 + v117, 1, v85);
      v120 = v216;
      if (!v122)
      {
        v161 = v119 + v117;
        v162 = v193;
        (*(v114 + 32))(v193, v161, v85);
        sub_10006736C(&qword_100CB4F10, &type metadata accessor for MicaResourceModel);
        v163 = dispatch thunk of static Equatable.== infix(_:_:)();
        v164 = *(v114 + 8);
        v164(v162, v116);
        sub_1000180EC(v115, &qword_100CB4EF8);
        v164(v121, v116);
        sub_1000180EC(v119, &qword_100CB4EF8);
        if (v163)
        {
          goto LABEL_38;
        }

LABEL_27:
        v123 = v201;
        v124 = v223;
        sub_10002C6A8();
        v125();
        sub_10001B350(v123, 0, 1, v124);
        v126 = v222;
        sub_100035AD0(v123, v200, &qword_100CB4ED8);

        Atomic.wrappedValue.setter();

        sub_1000206E4();
        sub_1000180EC(v127, v128);
        if (v221)
        {
          v4 = 0.0;
        }

        else
        {
          v4 = 0.3;
        }

        sub_1000161C0(v205, v205[3]);
        v129 = v219;
        sub_1000206E4();
        dispatch thunk of MicaLoaderType.loadMicaURL(for:)();
        v130 = v208;
        sub_1000038B4(v120, 1, v208);
        if (v88)
        {
          sub_10000E73C();
          v131(v129, v116);
          sub_1000180EC(v218, &qword_100CB4EF8);
          v132 = &qword_100CB3AB0;
          v133 = v120;
LABEL_53:
          sub_1000180EC(v133, v132);
          return;
        }

        v134 = v126;
        v135 = *(v207 + 32);
        v135(v206, v120, v130);
        v136 = sub_1003D9910();
        v137 = v194;
        sub_1003D9CC4(v136);

        v138 = v195;
        sub_1000038B4(v137, 1, v195);
        v140 = v220;
        if (!v139)
        {
          v172 = v186;
          v173 = v185;
          (*(v186 + 32))(v185, v137, v138);
          v174 = sub_1003D7244();
          MicaBackgroundAnimation.updateForNewLayer(_:duration:)();

          if ((v221 & 1) != 0 && DeviceIsVerySlow())
          {
            sub_10001C120();
            sub_10006736C(v175, v176);
            v177 = sub_100074958();
            WeatherConditionPlaybackCoordinatorType.pause(_:)(v177);
          }

          else if (*(v134 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
          {
            v178 = sub_1003D7244();
            MicaBackgroundAnimation.play(_:)(0);
          }

          (*(v172 + 8))(v173, v138);
          sub_10000E73C();
          v179(v206, v208);
          (*(v140 + 8))(v129, v116);
          goto LABEL_52;
        }

        v214 = v135;
        sub_1000180EC(v137, &qword_100CB4EE8);
        if (qword_100CA2010 == -1)
        {
LABEL_36:
          v215 = qword_100CB4DC0;
          v216 = swift_allocObject();
          swift_weakInit();
          v141 = v196;
          sub_10002C6A8();
          v142();
          sub_100035B30(v205, &v227);
          v143 = v207;
          v144 = v184;
          v145 = v208;
          (*(v207 + 16))(v184, v206, v208);
          v146 = v202;
          v147 = (*(v202 + 80) + 24) & ~*(v202 + 80);
          v148 = (v182 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
          v149 = (*(v143 + 80) + v148 + 40) & ~*(v143 + 80);
          v224 = (v149 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
          v150 = (v149 + v183 + 23) & 0xFFFFFFFFFFFFFFF8;
          v151 = swift_allocObject();
          *(v151 + 16) = v216;
          (*(v146 + 32))(v151 + v147, v141, v223);
          sub_100013188(&v227, v151 + v148);
          (v214)(v151 + v149, v144, v145);
          v152 = v151 + v224;
          *v152 = v4;
          *(v152 + 8) = v221 & 1;
          *(v151 + v150) = v222;
          aBlock[4] = sub_1003DA808;
          aBlock[5] = v151;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000742F0;
          aBlock[3] = &unk_100C543D0;
          v153 = _Block_copy(aBlock);

          v154 = v187;
          static DispatchQoS.unspecified.getter();
          v225 = _swiftEmptyArrayStorage;
          sub_10006736C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10022C350(&qword_100CB4680);
          sub_100067638(&qword_100CD81D0, &qword_100CB4680);
          v155 = v189;
          v156 = v192;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v153);
          sub_10000E73C();
          v157(v155, v156);
          sub_10000E73C();
          v158(v154, v190);
          sub_10000E73C();
          v159(v206, v145);
          sub_10000E73C();
          v160(v219, v217);
          sub_1000180EC(v218, &qword_100CB4EF8);

          return;
        }

LABEL_56:
        sub_1000283AC();
        goto LABEL_36;
      }

      sub_1000180EC(v115, &qword_100CB4EF8);
      (*(v114 + 8))(v121, v85);
    }

    sub_1000180EC(v119, &qword_100CB4EF0);
    goto LABEL_27;
  }

LABEL_12:
  if ((sub_1003D7320() & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((v86 & 1) != 0 && DeviceIsVerySlow())
  {
    sub_10001C120();
    sub_10006736C(v104, v105);
    v106 = sub_100074958();
    WeatherConditionPlaybackCoordinatorType.pause(_:)(v106);
  }

  else if (*(v80 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
  {
    v171 = sub_1003D7244();
    MicaBackgroundAnimation.play(_:)(0);
  }
}

void sub_1003D8E14(Swift::Bool a1)
{
  v2 = sub_1003D7244();
  MicaBackgroundAnimation.play(_:)(a1);
}

uint64_t sub_1003D8E68@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for WeatherConditionBackgroundOptions();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for WeatherCondition();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10022C350(&qword_100CB4ED8);
  __chkstk_darwin(v12 - 8);
  v14 = &v27[-v13];
  v15 = type metadata accessor for BackgroundAnimationData.Model();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];

  Atomic.wrappedValue.getter();

  if (sub_100024D10(v14, 1, v15) == 1)
  {
    sub_1000180EC(v14, &qword_100CB4ED8);
    if ((v28 & 1) != 0 && DeviceIsVerySlow())
    {
      type metadata accessor for WeatherMicaConditionBackground();
      sub_10006736C(&qword_100CB4F08, type metadata accessor for WeatherMicaConditionBackground);
      WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
    }

    else if (*(a1 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
    {
      v24 = sub_1003D7244();
      MicaBackgroundAnimation.play(_:)(0);
    }

    v23 = 1;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    BackgroundAnimationData.Model.conditionKind.getter();
    v28 = BackgroundAnimationData.Model.isDayTime.getter();
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.windowBounds.getter();
    v19 = a3;
    v20 = *(v29 + 8);
    v21 = v10;
    v22 = v30;
    v20(v21, v30);
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.displayScale.getter();
    v20(v7, v22);
    a3 = v19;
    MicaResourceModel.init(condition:isDay:windowBounds:displayScale:)();
    (*(v16 + 8))(v18, v15);
    v23 = 0;
  }

  v25 = type metadata accessor for MicaResourceModel();
  return sub_10001B350(a3, v23, 1, v25);
}

uint64_t sub_1003D9264(double a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 1;
    *(v14 + 24) = a7;

    sub_1003D9448(a3, a4, a5, sub_1003DA90C, v14, a1);
  }

  return result;
}

void sub_1003D9354(char a1, uint64_t a2)
{
  if ((a1 & 1) != 0 && DeviceIsVerySlow())
  {
    sub_10006736C(&qword_100CB4F08, type metadata accessor for WeatherMicaConditionBackground);
    WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
  }

  else if (*(a2 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
  {
    v3 = sub_1003D7244();
    MicaBackgroundAnimation.play(_:)(0);
  }
}

uint64_t sub_1003D9448(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v53 = a1;
  v51 = v7;
  v57 = *v7;
  v65 = type metadata accessor for URL();
  sub_1000037C4();
  v56 = v10;
  __chkstk_darwin(v11);
  v54 = v12;
  sub_10001376C();
  v64 = v13;
  v63 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  v52 = v17;
  sub_10001376C();
  v61 = v18;
  v62 = type metadata accessor for MicaLayer();
  sub_1000037C4();
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v60 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  sub_10000E70C();
  v26 = v25;
  v27 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = (v32 - v31);
  if (qword_100CA2010 != -1)
  {
    sub_1000283AC();
  }

  v34 = qword_100CB4DC0;
  *v33 = qword_100CB4DC0;
  (*(v29 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v27);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (*(v29 + 8))(v33, v27);
  if (v34)
  {
    sub_1000161C0(a2, a2[3]);
    v37 = v55;
    sub_10003C400();
    v38 = dispatch thunk of MicaLoaderType.loadMicaLayer(at:)();
    v49 = v26;
    v50 = v38;
    MicaLayer.init(layer:)();
    (*(v15 + 16))(v61, v53, v63);
    (*(v20 + 16))(v60, v26, v62);
    v39 = v56;
    (*(v56 + 16))(v64, v37, v65);
    v40 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v20 + 80) + v41 + 16) & ~*(v20 + 80);
    v53 = (v22 + *(v39 + 80) + v42) & ~*(v39 + 80);
    v43 = v51;
    v55 = (v54 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = v59;
    v45 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    (*(v15 + 32))(v46 + v40, v61, v63);
    v47 = (v46 + v41);
    *v47 = v58;
    v47[1] = v44;
    v48 = v62;
    (*(v20 + 32))(v46 + v42, v60, v62);
    (*(v39 + 32))(v46 + v53, v64, v65);
    *(v46 + v55) = a6;
    *(v46 + v45) = v57;

    asyncMain(block:)();

    return (*(v20 + 8))(v49, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9910()
{
  v0 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  __chkstk_darwin(v0);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for WeatherConditionBackgroundOptions();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Location();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = BackgroundAnimationData.Model.isReduceMotionEnabled.getter();
  if (v12)
  {
    v13 = 0x4D6563756465722DLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xED00006E6F69746FLL;
  if ((v12 & 1) == 0)
  {
    v14 = 0xE000000000000000;
  }

  v32 = v14;
  v33 = v13;
  URL.deletingPathExtension()();
  v15 = URL.lastPathComponent.getter();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v39 = 0;
  v40 = 0xE000000000000000;
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  BackgroundAnimationData.Model.location.getter();
  v20 = Location.id.getter();
  v22 = v21;
  (*(v5 + 8))(v7, v31);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 45;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  BackgroundAnimationData.Model.options.getter();
  v25 = v35;
  WeatherConditionBackgroundOptions.displayLocation.getter();
  (*(v34 + 8))(v4, v36);
  v26 = v25;
  v27 = v37;
  _print_unlocked<A, B>(_:_:)();
  (*(v38 + 8))(v26, v27);
  v28._countAndFlagsBits = v33;
  v28._object = v32;
  String.append(_:)(v28);

  return v39;
}

uint64_t sub_1003D9CC4(uint64_t a1)
{
  if (qword_100CA2020 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for UnfairLock();

  sub_10022C350(&qword_100CB4EE8);
  Lock.sync<A>(_:)();
}

uint64_t sub_1003D9DDC(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_100040690();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (a1)
    {
      static Animation.easeInOut(duration:)();
    }

    withAnimation<A>(_:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v39 = a5;
  v41 = a4;
  v42 = a3;
  v9 = type metadata accessor for BackgroundAnimationData.Model();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB4F00);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = sub_10022C350(&qword_100CB4ED8);
  __chkstk_darwin(v16 - 8);
  v40 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  __chkstk_darwin(v21);
  v23 = &v33 - v22;
  v38 = a1;

  Atomic.wrappedValue.getter();

  v24 = *(v10 + 16);
  v35 = a2;
  v24(v20, a2, v9);
  sub_10001B350(v20, 0, 1, v9);
  v25 = *(v13 + 56);
  sub_100035AD0(v23, v15, &qword_100CB4ED8);
  sub_100035AD0(v20, &v15[v25], &qword_100CB4ED8);
  if (sub_100024D10(v15, 1, v9) == 1)
  {
    sub_1000180EC(v20, &qword_100CB4ED8);
    sub_1000180EC(v23, &qword_100CB4ED8);
    if (sub_100024D10(&v15[v25], 1, v9) == 1)
    {
      sub_1000180EC(v15, &qword_100CB4ED8);
LABEL_8:
      sub_1003D9910();
      sub_1003DA3DC(v39);

      v31 = sub_1003D7244();
      MicaBackgroundAnimation.updateForNewLayer(_:duration:)();

      return v42(v27);
    }

    goto LABEL_6;
  }

  v26 = v40;
  sub_100035AD0(v15, v40, &qword_100CB4ED8);
  if (sub_100024D10(&v15[v25], 1, v9) == 1)
  {
    sub_1000180EC(v20, &qword_100CB4ED8);
    sub_1000180EC(v23, &qword_100CB4ED8);
    (*(v10 + 8))(v26, v9);
LABEL_6:
    v27 = sub_1000180EC(v15, &qword_100CB4F00);
    return v42(v27);
  }

  v28 = v34;
  (*(v10 + 32))(v34, &v15[v25], v9);
  sub_10006736C(&qword_100CB4F18, &type metadata accessor for BackgroundAnimationData.Model);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v10 + 8);
  v30(v28, v9);
  sub_1000180EC(v20, &qword_100CB4ED8);
  sub_1000180EC(v23, &qword_100CB4ED8);
  v30(v26, v9);
  v27 = sub_1000180EC(v15, &qword_100CB4ED8);
  if (v29)
  {
    goto LABEL_8;
  }

  return v42(v27);
}

uint64_t sub_1003DA3DC(uint64_t a1)
{
  if (qword_100CA2020 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1003DA4E4()
{
  if (qword_100CA2018 != -1)
  {
    swift_once();
  }

  LRUCache.subscript.getter();
}

uint64_t sub_1003DA574()
{
  if (qword_100CA2018 != -1)
  {
    swift_once();
  }

  return LRUCache.cache(value:for:expires:)();
}

uint64_t sub_1003DA5F8()
{
  v1 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__animation;
  sub_10022C350(&qword_100CB4EC8);
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__isLoaded;
  sub_10022C350(&qword_100CB4ED0);
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1003DA6B0()
{
  sub_1003DA5F8();

  return swift_deallocClassInstance();
}

void sub_1003DA710()
{
  v0 = sub_1003D7244();
  MicaBackgroundAnimation.pause(_:completion:)();
}

uint64_t sub_1003DA808()
{
  v2 = type metadata accessor for BackgroundAnimationData.Model();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_10002466C();
  v5 = type metadata accessor for URL();
  sub_100003AE8(v5);
  v7 = v6;
  v9 = v8;
  v10 = (v1 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(v0 + 16);
  v13 = v0 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v0 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D9264(v14, v12, v0 + v4, (v0 + v1), v0 + v10, v15, v16);
}

uint64_t sub_1003DA918()
{
  v2 = type metadata accessor for BackgroundAnimationData.Model();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_10002466C();
  v5 = type metadata accessor for MicaLayer();
  sub_100003AE8(v5);
  v7 = (v1 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for URL();
  sub_100003AE8(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v0 + 16);
  v17 = *(v0 + v1);
  v18 = *(v0 + v1 + 8);
  v19 = *(v0 + ((((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D9F34(v16, v0 + v4, v17, v18, v0 + v7, v0 + v15, v19);
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003DAB98()
{
  result = qword_100CB4F28;
  if (!qword_100CB4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F28);
  }

  return result;
}

uint64_t sub_1003DABEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB4F38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1003DAE4C();
  v6 = sub_100042FB0(a1);
  return (*(v3 + 32))(v6, v5, v2);
}

uint64_t sub_1003DADB8()
{
  sub_1003DAEB0();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003DADF8()
{
  result = qword_100CB4F30;
  if (!qword_100CB4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F30);
  }

  return result;
}

unint64_t sub_1003DAE4C()
{
  result = qword_100CB4F40;
  if (!qword_100CB4F40)
  {
    sub_10022E824(&qword_100CB4F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F40);
  }

  return result;
}

unint64_t sub_1003DAEB0()
{
  result = qword_100CB4F48;
  if (!qword_100CB4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4F48);
  }

  return result;
}

uint64_t type metadata accessor for MoonScrubberHeaderView()
{
  result = qword_100CB4FA8;
  if (!qword_100CB4FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DAF78()
{
  sub_1003DB0F4(319, &qword_100CB4FB8, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1003DB098();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MoonScrubberHeaderViewModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CoordinateSpace();
        if (v3 <= 0x3F)
        {
          sub_1003DB0F4(319, &qword_100CAD690, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1003DB098()
{
  result = qword_100CB4FC0;
  if (!qword_100CB4FC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB4FC0);
  }

  return result;
}

void sub_1003DB0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003DB164()
{
  v0 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Locale();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  static Locale.current.getter();
  Locale.language.getter();
  v18 = *(v11 + 8);
  v18(v17, v9);
  LOBYTE(v17) = Locale.Language.languageContainsLowCharacters.getter();
  v19 = *(v2 + 8);
  v19(v8, v0);
  if (v17)
  {
    v20 = 1;
  }

  else
  {
    static Locale.current.getter();
    Locale.language.getter();
    v18(v14, v9);
    v20 = Locale.Language.isChinese.getter();
    v19(v5, v0);
  }

  return v20 & 1;
}

uint64_t sub_1003DB360@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.top.getter();
  a1[1] = v3;
  v4 = sub_10022C350(&qword_100CB5010);
  return sub_1003DB3AC(v1, a1 + *(v4 + 44));
}

uint64_t sub_1003DB3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for MoonScrubberHeaderView();
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v51 = v5;
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v48);
  v7 = &v46 - v6;
  v47 = sub_10022C350(&qword_100CB5018);
  __chkstk_darwin(v47);
  v9 = &v46 - v8;
  v49 = sub_10022C350(&qword_100CB5020);
  __chkstk_darwin(v49);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_10022C350(&qword_100CB5028);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10022C350(&qword_100CB5030);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  if (*(a1 + *(v4 + 40)) == 1)
  {
    *v17 = static HorizontalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v24 = sub_10022C350(&qword_100CB5058);
    sub_1003DBA30(a1, &v17[*(v24 + 44)]);
    sub_1001E34C8(v17, v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_10001B350(v23, v25, 1, v15);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v26 = &v9[*(sub_10022C350(&qword_100CB5038) + 44)];
  v53 = a1;
  sub_1003DC328(a1, v26);
  v27 = enum case for DynamicTypeSize.xxLarge(_:);
  v28 = type metadata accessor for DynamicTypeSize();
  (*(*(v28 - 8) + 104))(v7, v27, v28);
  sub_1003DEFB4(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v11;
  sub_100006F64(&qword_100CB5040, &qword_100CB5018);
  sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
  View.dynamicTypeSize<A>(_:)();
  sub_1000180EC(v7, &unk_100CE1680);
  sub_1000180EC(v9, &qword_100CB5018);
  LOBYTE(v27) = static Edge.Set.horizontal.getter();
  if (qword_100CA2910 != -1)
  {
LABEL_8:
    swift_once();
  }

  swift_beginAccess();
  sub_100857F14();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v14[*(sub_10022C350(&qword_100CB5048) + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = v52;
  sub_1003DE5F8(v53, v52);
  v39 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v40 = swift_allocObject();
  sub_1003DE65C(v38, v40 + v39);
  v41 = &v14[*(v49 + 36)];
  *v41 = sub_1003DF00C;
  *(v41 + 1) = 0;
  *(v41 + 2) = sub_1003DE6C0;
  *(v41 + 3) = v40;
  sub_100035AD0(v23, v20, &qword_100CB5030);
  v42 = v46;
  sub_100035AD0(v14, v46, &qword_100CB5020);
  v43 = v54;
  sub_100035AD0(v20, v54, &qword_100CB5030);
  v44 = sub_10022C350(&qword_100CB5050);
  sub_100035AD0(v42, v43 + *(v44 + 48), &qword_100CB5020);
  sub_1000180EC(v14, &qword_100CB5020);
  sub_1000180EC(v23, &qword_100CB5030);
  sub_1000180EC(v42, &qword_100CB5020);
  return sub_1000180EC(v20, &qword_100CB5030);
}