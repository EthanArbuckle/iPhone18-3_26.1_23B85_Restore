uint64_t sub_10004A990(uint64_t a1)
{
  if ((a1 + 1) < 0xD)
  {
    return a1 + 1;
  }

  else
  {
    return 13;
  }
}

SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional __swiftcall BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) < 5)
  {
    return (rawValue + 1);
  }

  else
  {
    return 5;
  }
}

BOOL sub_10004A9B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001760B8, v2);

  return v3 != 0;
}

double sub_10004AA1C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10004A68C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_10004AA6C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A9B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004AAA0@<X0>(void *a1@<X8>)
{
  result = sub_10004AA00();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

BOOL sub_10004AAF0@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A9B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004AB28(uint64_t a1)
{
  v2 = sub_10004B9F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004AB64(uint64_t a1)
{
  v2 = sub_10004B9F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004ABA0(uint64_t *a1)
{
  v3 = sub_100003768(&qword_10018B5E8, &qword_1001262C8);
  v4 = sub_100008780(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_100025734(a1, a1[3]);
  sub_10004B9F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_1000086BC(a1);
  return v12;
}

uint64_t sub_10004AD14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004ABA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10004AD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A990(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004AD98@<X0>(uint64_t *a1@<X8>)
{
  result = BatteryDiagnosticsReport.PerformanceMitigation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional sub_10004ADD4@<W0>(Swift::Int *a1@<X0>, SupportFlow::BatteryDiagnosticsReport::PerformanceMitigation_optional *a2@<X8>)
{
  result.value = BatteryDiagnosticsReport.PerformanceMitigation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

id sub_10004AE10()
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100136220;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = objc_allocWithZone(NSError);
  v4 = sub_10004BC48();
  return sub_10004B11C(v4, v5, -1001, v2);
}

id sub_10004AEF0()
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  _StringGuts.grow(_:)(42);

  sub_100003768(&qword_10018B580, &unk_100128EB0);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x80000001001361F0;
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = objc_allocWithZone(NSError);
  return sub_10004B11C(0xD000000000000017, 0x8000000100136190, -1002, v3);
}

id sub_10004B038()
{
  sub_100003768(&qword_10018B578, &unk_100125EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 0xD00000000000003FLL;
  *(inited + 56) = 0x80000001001361B0;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = objc_allocWithZone(NSError);
  v4 = sub_10004BC48();
  return sub_10004B11C(v4, v5, 500, v2);
}

id sub_10004B11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_10004B1D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_10004B298()
{
  result = qword_10018B590;
  if (!qword_10018B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B590);
  }

  return result;
}

unint64_t sub_10004B2EC()
{
  result = qword_10018B598;
  if (!qword_10018B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B598);
  }

  return result;
}

_BYTE *sub_10004B3A8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004B474);
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

_BYTE *sub_10004B4A8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004B574);
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

uint64_t sub_10004B5A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10004B630(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x10004B6FCLL);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatteryDiagnosticsReport.ServiceLevel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004B750(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10004B7BC()
{
  result = qword_10018B5B0;
  if (!qword_10018B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5B0);
  }

  return result;
}

uint64_t sub_10004B840(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004B898()
{
  result = qword_10018B5C8;
  if (!qword_10018B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5C8);
  }

  return result;
}

unint64_t sub_10004B8F0()
{
  result = qword_10018B5D0;
  if (!qword_10018B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5D0);
  }

  return result;
}

unint64_t sub_10004B948()
{
  result = qword_10018B5D8;
  if (!qword_10018B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5D8);
  }

  return result;
}

unint64_t sub_10004B9A0()
{
  result = qword_10018B5E0;
  if (!qword_10018B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5E0);
  }

  return result;
}

unint64_t sub_10004B9F4()
{
  result = qword_10018B5F0;
  if (!qword_10018B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5F0);
  }

  return result;
}

_BYTE *sub_10004BA48(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10004BAE4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004BB1C()
{
  result = qword_10018B5F8;
  if (!qword_10018B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B5F8);
  }

  return result;
}

unint64_t sub_10004BB74()
{
  result = qword_10018B600;
  if (!qword_10018B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B600);
  }

  return result;
}

unint64_t sub_10004BBCC()
{
  result = qword_10018B608;
  if (!qword_10018B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B608);
  }

  return result;
}

uint64_t sub_10004BC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10004BCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SafariView()
{
  result = qword_10018B668;
  if (!qword_10018B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BD64()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10004BE04()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C15C();
  (*(v2 + 16))(v5, v0, v1);
  return sub_10004BEE0(v5);
}

id sub_10004BEE0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_10004BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004C118(&qword_10018B6A8);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004C118(&qword_10018B6A8);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004C0D4()
{
  sub_10004C118(&qword_10018B6A8);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10004C118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004C15C()
{
  result = qword_10018B6B0;
  if (!qword_10018B6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018B6B0);
  }

  return result;
}

uint64_t sub_10004C210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v29 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_10004F378(v14, v11);
    if (!v12)
    {
      break;
    }

    sub_10004F378(v15, v8);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((sub_10004F4BC(v4[5]), v20) ? (v20 = v18 == v19) : (v20 = 0), !v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((sub_10004F4BC(v4[6]), v20) ? (v23 = v21 == v22) : (v23 = 0), !v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
    {
LABEL_27:
      sub_10004F3DC(v8);
      sub_10004F3DC(v11);
      return 0;
    }

    v24 = v4[7];
    v25 = v11[v24];
    v26 = v8[v24];
    v27 = v26 == 4;
    if (v25 != 4)
    {
      if (v26 == 4)
      {
        goto LABEL_27;
      }

      v27 = v25 == v26;
    }

    sub_10004F3DC(v8);
    sub_10004F3DC(v11);
    v28 = !v27 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v28)
    {
      return v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v4 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_21:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_26;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v15 = *(a2 + 8 * i);

LABEL_26:
      if (*(v4 + 16) == *(v15 + 16) && *(v4 + 24) == *(v15 + 24))
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      if (v14 == v5)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C5CC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100025778(0, &qword_10018B770, TPSCollectionSection_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C7A0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return static VPNDiagnosticsData.== infix(_:_:)(*a1, v3 | *(a1 + 8), *a2, v4 | *(a2 + 8));
}

uint64_t static VPNDiagnosticsDataProvider.provideData()()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004C864;

  return sub_10004CB44();
}

uint64_t sub_10004C864()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v2 = v1;
  v4 = *(v3 + 16);
  *v2 = *v0;
  *(v1 + 24) = v5;

  v6 = sub_10004F4D4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10004C950()
{
  sub_100025A94();
  *(v0 + 48) = sub_10004CEC8();
  type metadata accessor for NetworkMonitor();
  *(v0 + 32) = static NetworkMonitor.shared.getter();
  v1 = sub_10004F530(&async function pointer to dispatch thunk of NetworkMonitor.isNetworkReachable.getter);
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10004CA00;

  return v3();
}

uint64_t sub_10004CA00()
{
  sub_10004F4F8();
  v2 = v1;
  v3 = *v0;
  sub_1000461C8();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = *(v4 + 48);
  v9 = *v0;
  sub_10000870C();
  *v10 = v9;

  if (v2)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9[1];
  v13 = v3[3];

  return v12(v13, v11 | v8);
}

uint64_t sub_10004CB44()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_100003768(&qword_10018B790, &unk_100126718);
  *v2 = v0;
  v2[1] = sub_10004CC2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000017, 0x8000000100136240, sub_10004CF20, 0, v3);
}

uint64_t sub_10004CC2C()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_10004F504();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004CD40()
{
  sub_10004F4F8();
  if (qword_1001881E0 != -1)
  {
    sub_10004F43C();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000C2D4(v2, qword_1001A5760);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't load network configurations: %@", v7, 0xCu);
    sub_100044F98(v8, &qword_100189390, &qword_1001241D0);
    sub_100008744();
    sub_100008744();
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

BOOL sub_10004CEC8()
{
  v0 = [objc_allocWithZone(NEVPNConnectivityManager) init];
  v1 = [v0 connectivityState];

  return (v1 - 1) < 2;
}

void sub_10004CF20(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018B798, &qword_100126728);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedManagerForAllUsers];
  if (v12)
  {
    v13 = v12;
    sub_100025778(0, &qword_10018AA70, OS_dispatch_queue_ptr);
    (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v7);
    v14 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v11, v7);
    (*(v3 + 16))(v6, a1, v2);
    v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v16 = swift_allocObject();
    (*(v3 + 32))(v16 + v15, v6, v2);
    aBlock[4] = sub_10004F20C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004D694;
    aBlock[3] = &unk_10017A500;
    v17 = _Block_copy(aBlock);

    [v13 loadConfigurationsWithCompletionQueue:v14 handler:v17];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004D1EC(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = type metadata accessor for VPNConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  if (a2)
  {
    v33 = a2;
    swift_errorRetain();
    sub_100003768(&qword_10018B798, &qword_100126728);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1 && (v14 = sub_100109AB8(a1)) != 0)
  {
    v15 = v14;
    v30 = v11;
    v31 = v7;
    v29[1] = a3;
    v16 = sub_100114850(v14);
    v17 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v16 == v17)
      {

        v33 = v32;
        sub_100003768(&qword_10018B798, &qword_100126728);
        goto LABEL_22;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v18 = v15[v17 + 4];
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 VPN];
      if (v21 || (v21 = [v19 appVPN]) != 0)
      {

        v22 = v30;
        sub_10004D4D8(v19, v30);
        sub_10004F2B0(v22, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = v32[2];
          sub_1000D0838();
          v32 = v27;
        }

        v23 = v32[2];
        if (v23 >= v32[3] >> 1)
        {
          sub_1000D0838();
          v32 = v28;
        }

        v24 = v31;
        v25 = v32;
        v32[2] = (v23 + 1);
        sub_10004F2B0(v13, v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23);
        v17 = v20;
      }

      else
      {

        ++v17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
    sub_100003768(&qword_10018B798, &qword_100126728);
LABEL_22:
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10004D4D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v3 = type metadata accessor for VPNConfiguration();
  v4 = (a2 + v3[6]);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = v3[7];
  *(a2 + v5) = 4;
  v6 = sub_10004F314(a1);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v8 = (a2 + v3[5]);
  *v8 = v6;
  v8[1] = v7;
  v9 = [a1 payloadInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 payloadOrganization];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *v4 = v13;
      v4[1] = v15;
    }

    else
    {
    }
  }

  v16 = [a1 VPN];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v16 protocol];

  if (v18)
  {
    v19 = v18;
    v20 = [v19 type];

    if (v20 == 5)
    {
      v21 = 2;
    }

    else
    {
      if (v20 == 2)
      {
        *(a2 + v5) = 0;
        return;
      }

      if (v20 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 3;
      }
    }

    *(a2 + v5) = v21;
  }

  else
  {
  }
}

uint64_t sub_10004D694(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t static VPNDiagnosticsDataProvider.awaitNetworkReachability(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10004F4A4(sub_10004D748);
}

uint64_t sub_10004D748()
{
  sub_10003DCD8();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = sub_10004D830;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_100126510, v3, &type metadata for Bool);
}

uint64_t sub_10004D830()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v6 = sub_10004F4D4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10004D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100003768(&qword_1001888B0, &qword_1001228F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10004D9E8, 0, 0);
}

uint64_t sub_10004D9E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for TaskPriority();
  sub_10004F510();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_100109EF4(v1, &unk_1001266E8, v5);
  sub_100044F98(v1, &qword_1001888B0, &qword_1001228F0);
  sub_10004F510();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v2;
  sub_100109EF4(v1, &unk_1001266F8, v6);
  sub_100044F98(v1, &qword_1001888B0, &qword_1001228F0);
  v7 = async function pointer to TaskGroup.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  sub_100003768(&qword_10018B778, &qword_100126700);
  *v8 = v0;
  v8[1] = sub_10004DB78;
  v9 = v0[3];
  sub_10004F504();

  return TaskGroup.next(isolation:)();
}

uint64_t sub_10004DB78()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = sub_10004F4D4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10004DC5C()
{
  sub_10003DCD8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = **(v0 + 24);
  TaskGroup.cancelAll()();
  *v2 = v3 & 1;

  sub_10000875C();

  return v5();
}

uint64_t sub_10004DCE0()
{
  sub_10003DCD8();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_100046160;

  return sub_10004D948(v5, v3, v7, v6);
}

uint64_t sub_10004DD8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10004DDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10004DF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for VPNConfiguration()
{
  result = qword_10018B710;
  if (!qword_10018B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004DFFC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10004E090();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004E090()
{
  if (!qword_10018B720)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B720);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VPNType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004E1ACLL);
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

uint64_t sub_10004E1E4(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for NWPath.Status();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for NWPath();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = *(*(sub_100003768(&qword_10018B780, &unk_100126708) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = type metadata accessor for NWPathMonitor.Iterator();
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10004E3A0, 0, 0);
}

uint64_t sub_10004E3A0()
{
  sub_100025A94();
  v1 = *(v0 + 112);
  v2 = type metadata accessor for NWPathMonitor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  NWPathMonitor.init()();
  NWPathMonitor.makeAsyncIterator()();
  *(v0 + 136) = enum case for NWPath.Status.satisfied(_:);
  sub_10004F48C();
  sub_10004F13C(v5, v6);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 120) = v8;
  *v8 = v9;
  v10 = sub_10004F45C(v8);

  return dispatch thunk of AsyncIteratorProtocol.next()(v10);
}

uint64_t sub_10004E474()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_10004F504();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004E584()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v3 = 0;
LABEL_17:
    v24 = *(v0 + 80);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 24);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v27 = v3;

    sub_10000875C();

    return v28();
  }

  v4 = *(v0 + 128);
  (*(*(v0 + 72) + 32))(*(v0 + 80), v1, v2);
  static Task<>.checkCancellation()();
  if (v4)
  {
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  NWPath.status.getter();
  (*(v10 + 104))(v8, v5, v9);
  LOBYTE(v6) = static NWPath.Status.== infix(_:_:)();
  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  if (v6)
  {
    if (static Task<>.isCancelled.getter())
    {
      v3 = 0;
    }

    else
    {
      if (qword_1001881E0 != -1)
      {
        sub_10004F43C();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C2D4(v18, qword_1001A5760);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        *swift_slowAlloc() = 0;
        sub_10004F550(&_mh_execute_header, v21, v22, "network is now reachable");
        sub_100008744();
      }

      v3 = 1;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v23 = *(v0 + 88);
    goto LABEL_17;
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_10004F48C();
  sub_10004F13C(v12, v13);
  v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 120) = v15;
  *v15 = v16;
  v17 = sub_10004F45C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v17);
}

uint64_t sub_10004E868()
{
  sub_100025A94();
  *(v0 + 16) = *(v0 + 128);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10004E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10004E9B4, 0, 0);
}

uint64_t sub_10004E9B4()
{
  sub_100025A94();
  v1 = v0[7];
  static Clock<>.continuous.getter();
  v2 = sub_10004F530(&dword_100131E10);
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10004EA60;
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4, 0, 0, 1);
}

uint64_t sub_10004EA60()
{
  sub_10004F4F8();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {
  }

  (*(v7 + 8))(v6, v8);
  sub_10004F504();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004EBE8()
{
  sub_10003DCD8();
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (qword_1001881E0 != -1)
    {
      sub_10004F43C();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C2D4(v1, qword_1001A5760);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      sub_10004F550(&_mh_execute_header, v4, v5, "network connection timed out");
      sub_100008744();
    }
  }

  v6 = *(v0 + 56);
  **(v0 + 16) = 0;

  sub_10000875C();

  return v7();
}

uint64_t sub_10004ECE4(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VPNConfiguration();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 4)
  {
    if (v17 != 4)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  return 1;
}

Swift::Int sub_10004EDF4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

_UNKNOWN **sub_10004EE4C@<X0>(void *a1@<X8>)
{
  result = sub_10004EDC0();
  *a1 = result;
  return result;
}

unint64_t sub_10004EE84()
{
  result = qword_10018B758;
  if (!qword_10018B758)
  {
    sub_100004D48(&qword_10018B760, qword_1001265F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B758);
  }

  return result;
}

unint64_t sub_10004EEEC()
{
  result = qword_10018B768;
  if (!qword_10018B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B768);
  }

  return result;
}

uint64_t sub_10004EF88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EFC0()
{
  sub_10003DCD8();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_10004F4E4(v4);

  return sub_10004E1E4(v6);
}

uint64_t sub_10004F058()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F090()
{
  sub_10004F4F8();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = sub_10004F4E4(v6);

  return sub_10004E8F0(v8, v9, v3, v5, v4);
}

uint64_t sub_10004F13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F184()
{
  v1 = sub_100003768(&qword_10018B798, &qword_100126728);
  sub_10000C31C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10004F20C(uint64_t a1, id *a2)
{
  v5 = *(sub_100003768(&qword_10018B798, &qword_100126728) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10004D1EC(a1, a2, v6);
}

uint64_t sub_10004F298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004F2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F314(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10004F378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F3DC(uint64_t a1)
{
  v2 = type metadata accessor for VPNConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F43C()
{

  return swift_once();
}

uint64_t sub_10004F45C(uint64_t a1)
{
  *(a1 + 8) = sub_10004E474;
  v2 = v1[14];
  result = v1[11];
  v4 = v1[12];
  return result;
}

uint64_t sub_10004F4BC@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_10004F510()
{

  return sub_100003CE8(v0, 1, 1, v1);
}

uint64_t sub_10004F530@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void sub_10004F550(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10004F578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10004F5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004F644@<X0>(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];

  v5 = sub_10004F6A4();
  v7 = v1[4];
  v6 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v7;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v6;
}

uint64_t sub_10004F6A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - v9;
  sub_100003768(&qword_10018B570, &qword_100125E78);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100126730;
  v11 = type metadata accessor for FlowImage();
  v57 = v10;
  v55 = v11;
  sub_100003CE8(v10, 1, 1, v11);
  if (qword_100188178 != -1)
  {
    swift_once();
  }

  v12 = *algn_10018B7A8;
  v51 = qword_10018B7A0;
  sub_10004FC38(v1 + 48, v58);

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v53 = v1;
  v15 = v14;
  v16 = *(v3 + 8);
  v52 = v3 + 8;
  v54 = v16;
  v16(v6, v2);
  v17 = type metadata accessor for OptionInfoItem();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v22 = v59;
  v21 = v60;
  v23 = sub_10004FDA4(v58, v59);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v50 = v2;
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v48 = v20;
  v28 = v57;
  v29 = sub_1000EC824(v13, v15, v57, v51, v12, 0, 0, v26, 0, 0, v48, v22, v21);
  sub_1000086BC(v58);
  v30 = v55;
  *(v56 + 32) = v29;
  sub_100003CE8(v28, 1, 1, v30);
  if (qword_100188180 != -1)
  {
    swift_once();
  }

  v32 = qword_10018B7B0;
  v31 = *algn_10018B7B8;
  sub_10004FC38(v53 + 88, v58);

  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v54(v6, v50);
  v36 = *(v17 + 48);
  v37 = *(v17 + 52);
  v38 = swift_allocObject();
  v40 = v59;
  v39 = v60;
  v41 = sub_10004FDA4(v58, v59);
  v42 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = &v49 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44);
  v46 = sub_1000EC824(v33, v35, v57, v32, v31, 0, 0, v44, 0, 0, v38, v40, v39);
  sub_1000086BC(v58);
  result = v56;
  *(v56 + 40) = v46;
  return result;
}

uint64_t sub_10004FB30()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018B7A0 = result;
  *algn_10018B7A8 = v5;
  return result;
}

uint64_t sub_10004FC38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004FC9C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018B7B0 = result;
  *algn_10018B7B8 = v5;
  return result;
}

uint64_t sub_10004FDA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_10004FDF8()
{
  result = qword_10018B7C0;
  if (!qword_10018B7C0)
  {
    sub_100004D48(&qword_10018B7C8, &unk_100126840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B7C0);
  }

  return result;
}

Swift::Int sub_10004FE84()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004FED8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004FF18()
{
  sub_100025A94();
  v1[11] = v0;
  v2 = type metadata accessor for SupportSymptomInfo();
  v1[12] = v2;
  sub_100052F6C(v2);
  v1[13] = v3;
  v5 = *(v4 + 64);
  v1[14] = sub_100052FA4();
  v6 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v6);
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = sub_100003768(&qword_10018BA10, &qword_100126900);
  v1[17] = v9;
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  v1[18] = sub_100052FA4();
  v12 = type metadata accessor for HMTSolution();
  v1[19] = v12;
  sub_100052F6C(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v17;
  v1[24] = v16;

  return _swift_task_switch(sub_1000500B4, v17, v16);
}

uint64_t sub_1000500B4()
{
  sub_100025A94();
  v1 = *(v0[11] + 16);
  v2 = async function pointer to HelpMeTroubleshootCoordinator.fetchHMTSolution(languageID:regionID:)[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_10005015C;
  v4 = v0[21];
  sub_100052F98();

  return HelpMeTroubleshootCoordinator.fetchHMTSolution(languageID:regionID:)();
}

uint64_t sub_10005015C()
{
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  sub_100052FF8();
  v7 = *(v6 + 192);
  v8 = *(v2 + 184);
  if (v0)
  {
    v9 = sub_1000509A4;
  }

  else
  {
    v9 = sub_10005028C;
  }

  return _swift_task_switch(v9, v8, v7);
}

void sub_10005028C()
{
  v112 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v105 = v0[17];
  v106 = v0[18];
  v3 = v0[13];
  v4 = v0[11];

  v5 = HMTSolution.stepsDictionary.getter();
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v104 = (v3 + 32);
  v100 = v3;
  v107 = v5;

  v11 = 0;
  v108 = v0;
  v109 = v4;
  v101 = v10;
  v102 = v6;
  if (v9)
  {
    while (1)
    {
LABEL_8:
      v13 = v0[18];
      v14 = __clz(__rbit64(v9)) | (v11 << 6);
      v15 = *(v107 + 56);
      v16 = (*(v107 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = type metadata accessor for HMTSolution.Step();
      sub_10000AF7C(v19);
      (*(v20 + 16))(v13 + *(v105 + 48), v15 + *(v20 + 72) * v14);
      *v13 = v17;
      *(v106 + 8) = v18;

      v21 = *(HMTSolution.Step.articles.getter() + 16);

      if (v21)
      {
        v103 = HMTSolution.Step.articles.getter();
        sub_100052FBC();
        v22 = *(v4 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v4;
        v25 = isUniquelyReferenced_nonNull_native;
        v111[0] = *(v24 + 24);
        *(v24 + 24) = 0x8000000000000000;
        v26 = v17;
        v27 = v17;
        v28 = v18;
        sub_100083754(v27, v18);
        sub_100052F7C();
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return;
        }

        v34 = v29;
        v35 = v30;
        sub_100003768(&qword_10018BA18, &qword_100126908);
        v36 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v25, v33);
        v37 = v111[0];
        if (v36)
        {
          v38 = sub_100083754(v26, v28);
          v4 = v109;
          if ((v35 & 1) != (v39 & 1))
          {
            goto LABEL_41;
          }

          v34 = v38;
        }

        else
        {
          v4 = v109;
        }

        v18 = v28;
        v0 = v108;
        v17 = v26;
        if (v35)
        {
          v40 = *(v37 + 56);
          v41 = *(v40 + 8 * v34);
          *(v40 + 8 * v34) = v103;
        }

        else
        {
          sub_100052FE4(v37 + 8 * (v34 >> 6));
          v43 = (v42 + 16 * v34);
          *v43 = v26;
          v43[1] = v18;
          *(*(v37 + 56) + 8 * v34) = v103;
          v44 = *(v37 + 16);
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_47;
          }

          *(v37 + 16) = v46;
        }

        *(v4 + 24) = v37;
        swift_endAccess();
      }

      v110 = v17;
      if (HMTSolution.Step.shouldShowContactOptions.getter())
      {
        sub_100052FBC();

        sub_1000E0B24(v111, v17, v18);
        swift_endAccess();
      }

      v47 = v0[16];
      v48 = v0[12];

      HMTSolution.Step.alternativeSymptomInfo.getter();
      sub_100052FBC();
      if (sub_10000E5F0(v47, 1, v48) == 1)
      {
        sub_10000ABCC(v0[16], &qword_10018B9F8, &unk_1001268E0);
        v49 = *(v4 + 56);
        v50 = sub_100083754(v17, v18);
        if (v51)
        {
          v52 = v50;
          v53 = v0[15];
          v54 = v0[12];
          v55 = *(v109 + 56);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v111[0] = *(v109 + 56);
          v57 = v111[0];
          *(v109 + 56) = 0x8000000000000000;
          v58 = *(v57 + 24);
          sub_100003768(&qword_10018BA20, &qword_100126910);
          v0 = v108;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v56, v58);
          v59 = v111[0];
          v60 = *(*(v111[0] + 48) + 16 * v52 + 8);

          (*(v100 + 32))(v53, *(v59 + 56) + *(v100 + 72) * v52, v54);
          v4 = v109;
          _NativeDictionary._delete(at:)();
          v61 = *(v109 + 56);
          *(v109 + 56) = v59;

          v62 = 0;
        }

        else
        {
          v62 = 1;
        }

        v10 = v101;
        v6 = v102;
        v79 = v0[15];
        sub_100003CE8(v79, v62, 1, v0[12]);

        sub_10000ABCC(v79, &qword_10018B9F8, &unk_1001268E0);
      }

      else
      {
        v63 = v18;
        v64 = *v104;
        (*v104)(v0[14], v0[16], v0[12]);
        v65 = *(v4 + 56);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = *(v4 + 56);
        *(v4 + 56) = 0x8000000000000000;
        v67 = v63;
        sub_100083754(v17, v63);
        sub_100052F7C();
        v72 = v70 + v71;
        if (__OFADD__(v70, v71))
        {
          goto LABEL_46;
        }

        v73 = v68;
        v74 = v69;
        sub_100003768(&qword_10018BA20, &qword_100126910);
        v75 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v66, v72);
        v76 = v111[0];
        if (v75)
        {
          v77 = sub_100083754(v110, v67);
          v4 = v109;
          if ((v74 & 1) != (v78 & 1))
          {
LABEL_41:

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v73 = v77;
        }

        else
        {
          v4 = v109;
        }

        if (v74)
        {
          (*(v100 + 40))(*(v76 + 56) + *(v100 + 72) * v73, v108[14], v108[12]);
        }

        else
        {
          sub_100052FE4(v76 + 8 * (v73 >> 6));
          v81 = (v80 + 16 * v73);
          *v81 = v110;
          v81[1] = v67;
          v64(*(v76 + 56) + *(v100 + 72) * v73);
          v82 = *(v76 + 16);
          v45 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v45)
          {
            goto LABEL_48;
          }

          *(v76 + 16) = v83;
        }

        v84 = *(v4 + 56);
        *(v4 + 56) = v76;

        v10 = v101;
        v6 = v102;
        v0 = v108;
      }

      v9 &= v9 - 1;
      v85 = v0[18];
      swift_endAccess();
      sub_10000ABCC(v85, &qword_10018BA10, &qword_100126900);
      if (!v9)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  v87 = v0[20];
  v86 = v0[21];
  v89 = v0[18];
  v88 = v0[19];
  v91 = v0[15];
  v90 = v0[16];
  v92 = v0[14];
  v93 = v0[11];

  v94 = HMTSolution.articleDictionary.getter();
  v95 = *(v87 + 8);
  v96 = sub_100052F8C();
  v97(v96);
  v98 = *(v93 + 32);
  *(v93 + 32) = v94;

  sub_10000875C();

  v99();
}

uint64_t sub_1000509A4()
{
  sub_10004F4F8();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  sub_10000875C();
  v8 = v0[26];

  return v7();
}

uint64_t sub_100050A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003768(&qword_100189258, &qword_1001268F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ContactSupportOptions();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000E5F0(a1, 1, v12) == 1)
  {
    sub_10000ABCC(a1, &qword_100189258, &qword_1001268F0);
    sub_100052818(a2, a3, v11);

    return sub_10000ABCC(v11, &qword_100189258, &qword_1001268F0);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100052960(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  return result;
}

void sub_100050C10()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v1);
  v3 = *(v2 + 64);
  sub_10000ED78();
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100025A88();
  v9 = sub_100003768(v7, v8);
  sub_10000ED84(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  type metadata accessor for SupportSymptomInfo();
  sub_100053004();
  sub_100003CE8(v15, v16, v17, v18);
  v19 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052FBC();
  sub_100052D68(v14, v0 + v19, &qword_10018B9F8, &unk_1001268E0);
  swift_endAccess();
  type metadata accessor for URL();
  sub_100053004();
  sub_100003CE8(v20, v21, v22, v23);
  v24 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
  sub_100052FBC();
  sub_100052D68(v6, v0 + v24, &qword_100188EE0, &unk_100122AE0);
  swift_endAccess();
  v25 = *(v0 + 80);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;

  sub_100053050();
}

uint64_t sub_100050D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = sub_100003768(&qword_100189258, &qword_1001268F0);
  v12 = sub_10000ED84(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v20);
  v22 = *(v21 + 64);
  sub_10000ED78();
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for SupportSymptomInfo();
  sub_10000AF7C(v26);
  (*(v27 + 16))(v25, a1, v26);
  v28 = 1;
  sub_100003CE8(v25, 0, 1, v26);
  v29 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052FBC();
  sub_100052D68(v25, v3 + v29, &qword_10018B9F8, &unk_1001268E0);
  swift_endAccess();
  v30 = SupportSymptomInfo.symptomId.getter();
  v32 = v31;
  sub_100052F98();
  swift_beginAccess();
  v33 = *(v3 + 48);

  sub_100082D4C(v30, v32, v33, v19);

  sub_100052F98();
  swift_beginAccess();
  v34 = *(v3 + 64);

  v35 = SupportSymptomInfo.symptomId.getter();
  v37 = sub_1000DCE38(v35, v36, v34);
  v38 = v47;

  v39 = type metadata accessor for ContactSupportOptions();
  if (sub_10000E5F0(v19, 1, v39) != 1 || v37)
  {
    v40 = sub_100025A88();
    sub_10002BE60(v40, v41, v42, v43);
    v44 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
    sub_100052F98();
    swift_beginAccess();
    sub_10002BE60(v3 + v44, v10, &qword_100188EE0, &unk_100122AE0);
    sub_100011B50(v17, v37, v10, v38);
    v28 = 0;
  }

  sub_10000ABCC(v19, &qword_100189258, &qword_1001268F0);
  v45 = type metadata accessor for SupportSolutions(0);
  return sub_100003CE8(v38, v28, 1, v45);
}

uint64_t sub_100051090()
{
  sub_100025A94();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  v1[14] = sub_100052FA4();
  v7 = sub_100003768(&qword_100189258, &qword_1001268F0);
  sub_10000ED84(v7);
  v9 = *(v8 + 64);
  v1[15] = sub_100052FA4();
  v10 = type metadata accessor for ContactSupportOptions();
  v1[16] = v10;
  sub_100052F6C(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = sub_100052FA4();
  v14 = type metadata accessor for SupportProductType();
  v1[19] = v14;
  sub_100052F6C(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = sub_100052FA4();
  v18 = type metadata accessor for AllSolutionsResponse();
  v1[22] = v18;
  sub_100052F6C(v18);
  v1[23] = v19;
  v21 = *(v20 + 64);
  v1[24] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v23 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v23;
  v1[27] = v22;

  return _swift_task_switch(sub_100051264, v23, v22);
}

uint64_t sub_100051264()
{
  sub_10004F4F8();
  v1 = v0[21];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v3[2];
  SupportSymptomInfo.productId.getter();
  v5 = v3[9];
  v6 = v3[10];

  SupportProductType.init(productId:serialNumber:)();
  v7 = async function pointer to HelpMeTroubleshootCoordinator.fetchSolutions(for:supportSymptomInfo:languageID:regionID:)[1];
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_100051360;
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[12];

  return HelpMeTroubleshootCoordinator.fetchSolutions(for:supportSymptomInfo:languageID:regionID:)(v9, v10, v11, 0, 0, 0, 0);
}

uint64_t sub_100051360()
{
  sub_10004F4F8();
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  v5 = v2[28];
  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[19];
  *v4 = *v1;
  *(v3 + 232) = v0;

  v9 = *(v7 + 8);
  v10 = sub_100025A88();
  v11(v10);
  sub_100052FF8();
  v13 = *(v12 + 216);
  v14 = v2[26];
  if (v0)
  {
    v15 = sub_100051760;
  }

  else
  {
    v15 = sub_1000514E4;
  }

  return _swift_task_switch(v15, v14, v13);
}

uint64_t sub_1000514E4()
{
  v35 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[13];

  AllSolutionsResponse.contactSupportOptions.getter();
  v9 = SupportSymptomInfo.symptomId.getter();
  v11 = v10;
  v33 = *(v4 + 16);
  v33(v6, v3, v5);
  sub_100003CE8(v6, 0, 1, v5);
  sub_100052FBC();
  sub_100050A44(v6, v9, v11);
  swift_endAccess();
  v32 = AllSolutionsResponse.hasRepairSolutions.getter();
  if (v32)
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = SupportSymptomInfo.symptomId.getter();
    v16 = v15;
    sub_100052FBC();
    sub_1000E0B24(&v34, v14, v16);
    swift_endAccess();
  }

  v17 = v0[23];
  v18 = v0[24];
  v30 = v0[22];
  v31 = v0[21];
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[15];
  v22 = v0[16];
  v24 = v0[13];
  v23 = v0[14];
  v29 = v0[11];
  AllSolutionsResponse.deepDiveURL.getter();
  URL.init(string:)();

  v25 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
  sub_100052FBC();
  sub_100052D68(v23, v24 + v25, &qword_100188EE0, &unk_100122AE0);
  swift_endAccess();
  v26 = sub_100025A88();
  (v33)(v26);
  sub_100003CE8(v21, 0, 1, v22);
  sub_10002BE60(v24 + v25, v23, &qword_100188EE0, &unk_100122AE0);
  sub_100011B50(v21, v32 & 1, v23, v29);
  (*(v20 + 8))(v19, v22);
  (*(v17 + 8))(v18, v30);

  sub_10000875C();

  return v27();
}

uint64_t sub_100051760()
{
  sub_10004F4F8();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];

  sub_10000875C();
  v8 = v0[29];

  return v7();
}

uint64_t sub_100051800()
{
  sub_100025A94();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for SupportProductType();
  v1[8] = v4;
  sub_100052F6C(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_100052FA4();
  v8 = type metadata accessor for TriageRequest.HMTContext();
  v1[11] = v8;
  sub_100052F6C(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = sub_100052FA4();
  v12 = type metadata accessor for Logger();
  v1[14] = v12;
  sub_100052F6C(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = sub_100052FA4();
  v16 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v16);
  v18 = *(v17 + 64);
  v1[17] = sub_100052FA4();
  v19 = type metadata accessor for SupportSymptomInfo();
  v1[18] = v19;
  sub_100052F6C(v19);
  v1[19] = v20;
  v22 = *(v21 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v24;
  v1[24] = v23;

  return _swift_task_switch(sub_100051A08, v24, v23);
}

uint64_t sub_100051A08()
{
  v49 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052F98();
  swift_beginAccess();
  sub_10002BE60(v3 + v4, v1, &qword_10018B9F8, &unk_1001268E0);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v5 = v0[22];
    v6 = v0[17];

    sub_10000ABCC(v6, &qword_10018B9F8, &unk_1001268E0);
    sub_1000527C4();
    swift_allocError();
    swift_willThrow();
    sub_100053010();

    sub_10000875C();

    return v7();
  }

  else
  {
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[16];
    (*(v12 + 32))(v10, v0[17], v11);
    static Logger.supportFlowApp.getter();
    (*(v12 + 16))(v9, v10, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[18];
    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[14];
    if (v16)
    {
      v47 = v0[14];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136315138;
      v44 = SupportSymptomInfo.debugDescription.getter();
      v46 = v20;
      v26 = v25;
      v45 = v15;
      v27 = *(v18 + 8);
      v27(v17, v19);
      v28 = sub_10009CACC(v44, v26, &v48);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v14, v45, "Creating a case with: %s", v23, 0xCu);
      sub_1000086BC(v24);

      (*(v21 + 8))(v46, v47);
    }

    else
    {

      v27 = *(v18 + 8);
      v27(v17, v19);
      (*(v21 + 8))(v20, v22);
    }

    v0[25] = v27;
    v29 = v0[21];
    v30 = v0[13];
    v31 = v0[10];
    v33 = v0[6];
    v32 = v0[7];

    sub_100070548(v33, v32, v30);
    v34 = v32[2];
    SupportSymptomInfo.productId.getter();
    v36 = v32[9];
    v35 = v32[10];

    SupportProductType.init(productId:serialNumber:)();
    v37 = async function pointer to HelpMeTroubleshootCoordinator.createCase(for:contactType:supportSymptomInfo:context:languageID:regionID:)[1];
    v38 = swift_task_alloc();
    v0[26] = v38;
    *v38 = v0;
    v38[1] = sub_100051DE0;
    v39 = v0[21];
    v40 = v0[13];
    v41 = v0[10];
    v42 = v0[5];
    v43 = v0[6];
    v51 = 0;

    return HelpMeTroubleshootCoordinator.createCase(for:contactType:supportSymptomInfo:context:languageID:regionID:)(v42, v41, v43, v39, v40, 0, 0, 0);
  }
}

uint64_t sub_100051DE0()
{
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  v5 = v2[26];
  *v4 = *v1;
  *(v3 + 216) = v0;

  sub_100052FF8();
  (*(v2[9] + 8))(*(v6 + 80), v2[8]);
  sub_100052FF8();
  v8 = *(v7 + 192);
  v9 = v2[23];
  if (v0)
  {
    v10 = sub_100052050;
  }

  else
  {
    v10 = sub_100051F58;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100051F58()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v14 = v0[16];
  v15 = v0[10];

  (*(v8 + 8))(v9, v10);
  v11 = sub_100052F8C();
  v1(v11);

  sub_10000875C();

  return v12();
}

uint64_t sub_100052050()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  v1(v3, v4);
  v9 = v0[27];
  sub_100053010();

  sub_10000875C();

  return v10();
}

uint64_t sub_100052134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FlowViewDataProvider(0);
  v10 = sub_1000877E8(a1, a2, a3, a4);
  v12 = v11;
  sub_100052F98();
  swift_beginAccess();
  v13 = *(v5 + 24);
  if (*(v13 + 16) && (v14 = *(v5 + 24), , v15 = sub_100083754(v10, v12), v17 = v16, , (v17 & 1) != 0))
  {
    v18 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {

    return 0;
  }

  return v18;
}

uint64_t sub_100052220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000877E8(a1, a2, a3, a4);
  sub_100052F98();
  swift_beginAccess();
  v10 = *(v5 + 40);

  v11 = sub_100052F8C();
  LOBYTE(a4) = sub_1000DCE38(v11, v12, v10);

  return a4 & 1;
}

void *sub_1000522D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[10];

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo, &qword_10018B9F8, &unk_1001268E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL, &qword_100188EE0, &unk_100122AE0);
  return v0;
}

uint64_t sub_10005236C()
{
  sub_1000522D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SupportContentCoordinator()
{
  result = qword_10018B800;
  if (!qword_10018B800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100052418()
{
  sub_100052548(319, &unk_10018B810, &type metadata accessor for SupportSymptomInfo);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100052548(319, &unk_100189188, &type metadata accessor for URL);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100052548(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005259C()
{
  v1 = v0;
  v2 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserAgent();
  v8 = sub_10000ED84(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  type metadata accessor for HelpMeTroubleshootCoordinator();
  static Bool.allowOverrides.getter();
  static UserAgent.hmt.getter();
  (*(v3 + 104))(v6, enum case for HelpMeTroubleshootCoordinator.ServerEnvironment.prod(_:), v2);
  v1[2] = HelpMeTroubleshootCoordinator.__allocating_init(with:environment:allowOverrides:)();
  sub_100003768(&qword_10018BA28, &qword_100126918);
  sub_100052F8C();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for HMTSolution.Article();
  sub_100052F8C();
  v1[4] = Dictionary.init(dictionaryLiteral:)();
  v1[5] = &_swiftEmptySetSingleton;
  type metadata accessor for ContactSupportOptions();
  sub_100052F8C();
  v1[6] = Dictionary.init(dictionaryLiteral:)();
  v11 = type metadata accessor for SupportSymptomInfo();
  sub_100052F8C();
  v1[7] = Dictionary.init(dictionaryLiteral:)();
  v1[8] = &_swiftEmptySetSingleton;
  v1[9] = 0;
  v1[10] = 0;
  sub_100053004();
  sub_100003CE8(v12, v13, v14, v11);
  type metadata accessor for URL();
  sub_100053004();
  sub_100003CE8(v15, v16, v17, v18);
  sub_100053050();
}

unint64_t sub_1000527C4()
{
  result = qword_10018BA00;
  if (!qword_10018BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BA00);
  }

  return result;
}

uint64_t sub_100052818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100083754(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    v12 = *(*v4 + 24);
    sub_100003768(&qword_10018BA08, &qword_1001268F8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v20 + 48) + 16 * v9 + 8);

    v14 = *(v20 + 56);
    v15 = type metadata accessor for ContactSupportOptions();
    (*(*(v15 - 8) + 32))(a3, v14 + *(*(v15 - 8) + 72) * v9, v15);
    _NativeDictionary._delete(at:)();
    *v4 = v20;
    v16 = a3;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = type metadata accessor for ContactSupportOptions();
    v16 = a3;
    v17 = 1;
  }

  return sub_100003CE8(v16, v17, 1, v18);
}

uint64_t sub_100052960(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100083754(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100003768(&qword_10018BA08, &qword_1001268F8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100083754(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = type metadata accessor for ContactSupportOptions();
    v24 = *(v23 - 8);
    v25 = *(v24 + 40);
    v26 = v23;
    v27 = v22 + *(v24 + 72) * v16;

    return v25(v27, a1, v26);
  }

  else
  {
    sub_100052CB8(v16, a2, a3, a1, v21);
  }
}

void sub_100052AD4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = *v2;
  sub_100083810(a2);
  sub_100052F7C();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v7;
  v12 = v8;
  sub_100003768(&qword_10018BA40, &unk_1001269F0);
  if (!sub_100053030())
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_100083810(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    *(*(*v3 + 56) + 8 * v11) = a1;
    sub_100053050();
  }

  else
  {
    sub_100053050();

    sub_100052EE4(v16, v17, v18, v19);
  }
}

void sub_100052BC4(char a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  sub_10008387C(a2);
  sub_100052F7C();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v7;
  v12 = v8;
  sub_100003768(&qword_10018BA38, &qword_1001269E8);
  if (!sub_100053030())
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_10008387C(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    *(*(*v3 + 56) + v11) = a1 & 1;
    sub_100053050();
  }

  else
  {
    sub_100053050();

    sub_100052F28(v16, v17, v18, v19);
  }
}

uint64_t sub_100052CB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ContactSupportOptions();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100052D68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for SupportContentCoordinatorError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100052E54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100052E90()
{
  result = qword_10018BA30;
  if (!qword_10018BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BA30);
  }

  return result;
}

unint64_t sub_100052EE4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_100052F28(unint64_t result, int a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100052FA4()
{

  return swift_task_alloc();
}

uint64_t sub_100052FBC()
{

  return swift_beginAccess();
}

uint64_t sub_100053010()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];
}

BOOL sub_100053030()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdatePlacardInfoItemType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100053130);
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

uint64_t sub_100053168(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176170, v2);

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

uint64_t sub_1000531BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x616470556F747561;
  }
}

uint64_t sub_100053200(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000E3274();
}

uint64_t sub_100053224@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100053168(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100053254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000531BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100053280@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000E7A8C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1000532AC(uint64_t a1)
{
  result = sub_1000532D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000532D4()
{
  result = qword_10018BAC0;
  if (!qword_10018BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAC0);
  }

  return result;
}

unint64_t sub_100053328(uint64_t a1)
{
  result = sub_100053350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100053350()
{
  result = qword_10018BAC8;
  if (!qword_10018BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAC8);
  }

  return result;
}

unint64_t sub_1000533A8()
{
  result = qword_10018BAD0;
  if (!qword_10018BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAD0);
  }

  return result;
}

uint64_t sub_1000533FC(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32[-v9 - 8];
  if (a1)
  {
    if (qword_1001881A0 != -1)
    {
      swift_once();
    }

    v11 = unk_10018BA80;
    v31 = qword_10018BA78;
    v12 = qword_1001881A8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_10018BA88;
    v14 = unk_10018BA90;
    v15 = qword_1001881B8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = &qword_10018BAA0;
  }

  else
  {
    if (qword_100188188 != -1)
    {
      swift_once();
    }

    v11 = unk_10018BA50;
    v31 = qword_10018BA48;
    v17 = qword_100188190;

    if (v17 != -1)
    {
      swift_once();
    }

    v13 = qword_10018BA58;
    v14 = unk_10018BA60;
    v18 = qword_1001881B0;

    if (v18 != -1)
    {
      swift_once();
    }

    v16 = &qword_10018BA98;
  }

  v19 = *v16;
  v20 = qword_1001881C0;
  swift_retain_n();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FlowImage();
  v22 = sub_10000C2D4(v21, qword_10018BAA8);
  sub_100053ED8(v22, v10);
  sub_100003CE8(v10, 0, 1, v21);
  v33 = &type metadata for SoftwareUpdatePlacardInfoItemType;
  v34 = sub_100053350();
  v32[0] = a1 & 1;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v3 + 8))(v6, v2);
  v26 = type metadata accessor for PlacardInfoItem(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1000F04E8(0, v23, v25, v10, v31, v11, v13, v14, v19, v32);

  return v29;
}

uint64_t sub_1000537B4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA48 = result;
  unk_10018BA50 = v5;
  return result;
}

uint64_t sub_1000538BC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA58 = result;
  unk_10018BA60 = v5;
  return result;
}

uint64_t sub_1000539C4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA68 = result;
  unk_10018BA70 = v5;
  return result;
}

uint64_t sub_100053ACC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA78 = result;
  unk_10018BA80 = v5;
  return result;
}

uint64_t sub_100053BD4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA88 = result;
  unk_10018BA90 = v5;
  return result;
}

uint64_t sub_100053CDC()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188198 != -1)
  {
    swift_once();
  }

  v0 = qword_10018BA68;
  v1 = unk_10018BA70;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000005DLL, 0x8000000100136400);

  qword_10018BA98 = v2;
  return result;
}

uint64_t sub_100053D88()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188198 != -1)
  {
    swift_once();
  }

  v0 = qword_10018BA68;
  v1 = unk_10018BA70;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000045, 0x80000001001365B0);

  qword_10018BAA0 = v2;
  return result;
}

uint64_t sub_100053E34()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_10018BAA8);
  v1 = sub_10000C2D4(v0, qword_10018BAA8);
  v1->i64[0] = 0xD000000000000026;
  v1->i64[1] = 0x8000000100136580;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100053ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053F68(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_1000540A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 & 1;
  sub_100053F68(a1, a2 & 1);
  v8 = sub_1000DEC54(a3, 0);

  *(a4 + 72) = &type metadata for MessagesStepProvider;
  *(a4 + 80) = sub_10001362C();
  *(a4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  *(v9 + 32) = a3;
  type metadata accessor for FlowViewDataProvider(0);

  sub_1000136E0(a3);
  sub_10000B550();
  result = Environment.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v11 & 1;
  *(a4 + 32) = 0xD000000000000016;
  *(a4 + 40) = 0x8000000100135C30;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 88) = sub_10005426C;
  *(a4 + 96) = v9;
  return result;
}

uint64_t sub_1000541BC(uint64_t a1, char a2, unint64_t a3)
{
  sub_100053F68(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_100054224()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054284()
{
  type metadata accessor for SoftwareUpdateManager();
  sub_100056A04();
  v0 = swift_allocObject();
  result = sub_1000561C0();
  qword_1001A5738 = v0;
  return result;
}

uint64_t sub_1000542BC()
{
  v1 = *(v0 + 24);
  if (v1 == 2)
  {
    if (sub_100025AAC(6) == 1635018050 && v2 == 0xE400000000000000)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    *(v0 + 24) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_100054350()
{
  sub_100025A94();
  *(v1 + 1384) = v0;
  *(v1 + 1449) = v2;
  type metadata accessor for MainActor();
  *(v1 + 1392) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 1400) = v4;
  *(v1 + 1408) = v3;

  return _swift_task_switch(sub_1000543EC, v4, v3);
}

uint64_t sub_1000543EC()
{
  sub_10003DCD8();
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1449);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v0 + 1416) = v4;
  *(v4 + 16) = &unk_100126CB8;
  *(v4 + 24) = v3;
  sub_100003768(&qword_10018BBD0, &qword_100126CD0);
  swift_asyncLet_begin();
  sub_100056A04();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v0 + 1424) = v6;
  *(v6 + 16) = &unk_100126CE0;
  *(v6 + 24) = v5;

  sub_100003768(&qword_10018BBC0, &qword_100126C98);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1448, sub_10005457C, v0 + 1296);
}

uint64_t sub_1000545B8()
{
  v1 = *(v0 + 1360);
  if (*(v0 + 1368) && (v2 = *(v0 + 1368), swift_getErrorValue(), v3 = *(v0 + 1336), v4 = *(v0 + 1344), v5 = *(v0 + 1352), swift_errorRetain(), v6 = sub_1000551C0(v4), (v7 & 1) == 0))
  {
    *(v0 + 1432) = v6;

    v9 = sub_1000546B8;
  }

  else
  {
    if (v1)
    {
      v8 = 2;
    }

    else
    {
      v8 = [*(*(v0 + 1384) + 16) isAutomaticUpdateV2Enabled] ^ 1;
    }

    *(v0 + 1440) = v8;

    v9 = sub_100054788;
  }

  return _swift_asyncLet_finish(v0 + 656, v0 + 1360, v9, v0 + 1296);
}

uint64_t sub_100054704()
{
  sub_10003DCD8();
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[174];

  sub_1000569F8();

  return v5(v1, 0);
}

uint64_t sub_1000547D4()
{
  sub_10003DCD8();
  v1 = v0[180];
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[174];

  sub_1000569F8();

  return v5(v1, 1);
}

uint64_t sub_100054858(char a1)
{
  *(v1 + 56) = a1;
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100054918, 0, 0);
}

uint64_t sub_100054918()
{
  sub_10003DCD8();
  if ((*(v0 + 56) & 1) == 0)
  {
    static Bool.disableMinimumLoadTime.getter();
  }

  v1 = *(v0 + 32);
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100054A0C;
  v3 = *(v0 + 32);

  return sub_100111FB4();
}

uint64_t sub_100054A0C()
{
  v2 = *v1;
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;
  v5 = v2[5];
  v6 = *v1;
  *v4 = *v1;
  v3[6] = v0;

  v7 = v2[4];
  v8 = v2[3];
  v9 = v2[2];
  if (v0)
  {

    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_100054BE0, 0, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = v3[4];
    v11 = v3[6] != 0;

    v12 = v6[1];

    return v12(v11);
  }
}

uint64_t sub_100054BE0()
{
  sub_100025A94();
  v1 = v0[4];
  v2 = v0[6] != 0;

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100054C4C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100054D38;

  return v6();
}

uint64_t sub_100054D38()
{
  sub_100025A94();
  v2 = v1;
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  *v4 = v2 & 1;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_100054E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100054EE0;

  return sub_1000552E4();
}

uint64_t sub_100054EE0()
{
  sub_100025A94();
  sub_1000569C4();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_10000870C();
  *v6 = v5;

  sub_1000569F8();

  return v7(v0, v1);
}

uint64_t sub_100054FC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000550B4;

  return v6();
}

uint64_t sub_1000550B4()
{
  sub_10003DCD8();
  sub_1000569C4();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v2;
  sub_10000870C();
  *v7 = v6;

  *v5 = v0;
  *(v5 + 8) = v1;
  v8 = *(v6 + 8);

  return v8();
}

id sub_1000551C0(uint64_t a1)
{
  v1 = sub_100021B58(a1);
  if (v2)
  {
    return 0;
  }

  v3 = v1;
  if (sub_10010A0FC(v1, &off_1001761C0))
  {
    return 0;
  }

  return v3;
}

uint64_t sub_10005520C(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return [*(v1 + 16) isAutomaticUpdateV2Enabled] ^ 1;
  }
}

void sub_100055240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a4;
  v12 = a5;
  v10(a2, a3, a4, a5);
}

uint64_t sub_1000552E4()
{
  sub_100025A94();
  *(v1 + 32) = v0;
  *(v1 + 104) = v2;
  *(v1 + 40) = type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;

  return _swift_task_switch(sub_100055380, v4, v3);
}

uint64_t sub_100055380()
{
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v1 = sub_1000FB6E8();
    switch(v1)
    {
      case 1:

        goto LABEL_8;
      default:
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_8;
        }

        v12 = *(v0 + 48);

        switch(v1)
        {
          case 0:
          case 1:
          case 3:
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
            break;
          case 2:
            v13 = 1;
            break;
          default:
            JUMPOUT(0);
        }

        sub_1000569F8();

        result = v14(v13 & 1, 0);
        break;
    }
  }

  else
  {
LABEL_8:
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 104);
    v6 = [objc_allocWithZone(SUScanOptions) init];
    *(v0 + 72) = v6;
    [v6 setForced:1];
    v7 = static MainActor.shared.getter();
    *(v0 + 80) = v7;
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *(v8 + 16) = v4;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    v11 = sub_100003768(&qword_10018BBC0, &qword_100126C98);
    *v10 = v0;
    v10[1] = sub_1000556BC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v7, &protocol witness table for MainActor, 0xD000000000000032, 0x8000000100136740, sub_1000561FC, v8, v11);
  }

  return result;
}

uint64_t sub_1000556BC()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  v7 = *(v1 + 64);
  v8 = *(v1 + 56);

  return _swift_task_switch(sub_100055810, v8, v7);
}

uint64_t sub_100055810()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1000569F8();

  return v4();
}

void sub_10005587C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = *(a2 + 16);
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a2;
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_1000562D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000560DC;
  aBlock[3] = &unk_10017A7E0;
  v16 = _Block_copy(aBlock);

  [v13 scanForUpdates:a3 withScanResults:v16];
  _Block_release(v16);
}

void sub_100055A58(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v35 = a4;
  v9 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = [a1 preferredDescriptor];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [a1 alternateDescriptor];
    if (!v15)
    {
      v16 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v16 = 1;
  if ((a3 & 1) == 0)
  {
LABEL_6:
    if (qword_1001881D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C2D4(v17, qword_1001A5740);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 67109378;
      *(v20 + 4) = v16;
      *(v20 + 8) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v20 + 10) = v22;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Software updates found: %{BOOL}d, error: %@.", v20, 0x12u);
      sub_1000083A0(v21);
    }

    LOBYTE(aBlock) = v16;
    v37 = a2;
    swift_errorRetain();
    CheckedContinuation.resume(returning:)();
    goto LABEL_20;
  }

LABEL_5:
  if (a2)
  {
    goto LABEL_6;
  }

  if (qword_1001881D0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C2D4(v24, qword_1001A5740);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Check downloadable error.", v27, 2u);
  }

  if (v15)
  {
    v28 = [objc_allocWithZone(SUDownloadOptions) initWithDescriptor:v15];
    v29 = v15;
  }

  else
  {
    v28 = [objc_allocWithZone(SUDownloadOptions) init];
    v29 = 0;
  }

  v35 = v35[2];
  (*(v10 + 16))(v13, a5, v9);
  v30 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v16;
  (*(v10 + 32))(v31 + v30, v13, v9);
  *(v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v40 = sub_10005642C;
  v41 = v31;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100055240;
  v39 = &unk_10017A830;
  v32 = _Block_copy(&aBlock);
  v15 = v28;
  v33 = v29;

  [v35 updatesDownloadableWithOptions:v15 alternateDownloadOptions:v15 replyHandler:v32];

  _Block_release(v32);
LABEL_20:
}

uint64_t sub_100055F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
  if (!a3)
  {
    swift_errorRetain();
    v6 = a4;
  }

  swift_errorRetain();
  if (qword_1001881D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C2D4(v8, qword_1001A5740);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a5 & 1;
    *(v11 + 8) = 2112;
    if (v6)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 10) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Software updates found: %{BOOL}d, error: %@.", v11, 0x12u);
    sub_1000083A0(v12);
  }

  sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000560DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100056168()
{
  sub_100056A04();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_1000561C0()
{
  *(v0 + 16) = [objc_allocWithZone(SUManagerClient) init];
  *(v0 + 24) = 2;
  return v0;
}

uint64_t sub_100056208()
{
  v1 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000562D8(void *a1, uint64_t a2)
{
  v5 = *(sub_100003768(&qword_10018BBC8, &unk_100126CA0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100055A58(a1, a2, v6, v7, v8);
}

uint64_t sub_10005636C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100056384()
{
  v1 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100003768(&qword_10018BBC8, &unk_100126CA0) - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + ((*(v9 + 64) + ((*(v9 + 80) + 17) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100055F0C(a1, a2, a3, a4, v10);
}

uint64_t sub_100056510()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100056A10(v2);
  *v3 = v4;
  v3[1] = sub_10005659C;

  return sub_100054858(v1);
}

uint64_t sub_10005659C()
{
  sub_100025A94();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_10005668C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000566C4()
{
  sub_10003DCD8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v6 = sub_1000569D8(v4);

  return v7(v6);
}

uint64_t sub_10005675C()
{
  v1 = *(v0 + 16);

  sub_100056A04();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100056790()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v4[1] = sub_100054EE0;

  return sub_100054E44();
}

uint64_t sub_100056824()
{
  sub_10003DCD8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v6 = sub_1000569D8(v4);

  return v7(v6);
}

uint64_t sub_1000568BC()
{
  sub_100025A94();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000569D8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100056A1C()
{
  sub_100003768(&qword_10018BFC0, &unk_100126E20);
  sub_100057DB0();
  sub_100057E04();
  swift_getKeyPath();
  sub_1001090F0();
}

uint64_t sub_100056AC8()
{
  v1 = type metadata accessor for SupportFlowIdentifier();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_10018BBD8;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(v0 + v9) = qword_1001A5738;
  *(v0 + qword_10018BBE0) = 0;
  v10 = v0 + qword_10018BBE8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + qword_10018BBF0;
  *v11 = 0;
  *(v11 + 8) = -1;
  (*(v4 + 104))(v8, enum case for SupportFlowIdentifier.softwareUpdate(_:), v1);

  sub_100105700();
  v13 = v12;
  sub_100057D3C();

  AnyView.init<A>(_:)();
  sub_100056A1C();

  return v13;
}

uint64_t sub_100056C7C()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100056D14, v3, v2);
}

uint64_t sub_100056D50()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  updated = DeviceEventCoordinator.recentSoftwareUpdateErrorCode()();
  *(v0 + 56) = updated.value;
  *(v0 + 88) = updated.is_nil;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return _swift_task_switch(sub_100056DC8, v2, v3);
}

uint64_t sub_100056DC8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    v5 = v4 + qword_10018BBE8;
    *v5 = v2;
    *(v5 + 8) = 0;
    if (qword_1001881D0 != -1)
    {
      sub_100057EC8();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C2D4(v6, qword_1001A5740);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v9;
    v11 = "Recent update error code found: %ld";
    v12 = v8;
    v13 = v7;
    v14 = v10;
    v15 = 12;
    goto LABEL_16;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    swift_getKeyPath();
    v1 = sub_1000FBFA4();

    if (v1)
    {
      *(*(v0 + 16) + qword_10018BBE0) = 1;
LABEL_12:
      v19 = *(v0 + 24);

      if (qword_1001881D0 != -1)
      {
        sub_100057EC8();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C2D4(v20, qword_1001A5740);
      v7 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v7, v21))
      {
        goto LABEL_17;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v11 = "Has beta installed. Skipping scan for updates.";
      v12 = v21;
      v13 = v7;
      v14 = v22;
      v15 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v13, v12, v11, v14, v15);

LABEL_17:

      v23 = *(v0 + 8);

      return v23();
    }
  }

  v16 = *(v0 + 16);
  v17 = *(v16 + qword_10018BBD8);

  v18 = sub_1000542BC();

  *(v16 + qword_10018BBE0) = v18 & 1;
  if (v18)
  {
    goto LABEL_12;
  }

  *(v0 + 64) = *(*(v0 + 16) + qword_10018BBD8);

  v25 = swift_task_alloc();
  *(v0 + 72) = v25;
  *v25 = v0;
  v25[1] = sub_1000570F0;

  return sub_100054350();
}

uint64_t sub_1000570F0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v10 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 89) = a2;

  v7 = *(v3 + 40);
  v8 = *(v3 + 32);

  return _swift_task_switch(sub_100057240, v8, v7);
}

uint64_t sub_100057240()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 80);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = v4 + qword_10018BBF0;
  *v5 = v2;
  *(v5 + 8) = v1 & 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000572C8()
{
  sub_100057508();
  sub_100006578(v2, v1, &qword_10018BF78, &qword_100126D98);
  sub_100003768(&qword_10018BF78, &qword_100126D98);
  sub_1000579F8();
  AnyView.init<A>(_:)();
  sub_10001D724(v2, &qword_10018BF78, &qword_100126D98);
  return sub_100108610();
}

uint64_t sub_100057360()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000573F8, v3, v2);
}

uint64_t sub_1000573F8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + *(*v2 + 136));
  v4 = qword_10018BBD8;
  v5 = *(v2 + qword_10018BBD8);

  sub_1000542BC();

  sub_100085FE4();
  [*(*(v2 + v4) + 16) isAutomaticUpdateV2Enabled];
  sub_100085FE4();
  v6 = *(v2 + qword_10018BBF0 + 8);
  if (v6 != 255 && (v6 & 1) != 0)
  {
    v7 = *(v2 + qword_10018BBF0);
    sub_100085FE4();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100057508()
{
  if ((*(v0 + qword_10018BBE8 + 8) & 1) == 0)
  {
    *&v55[0] = *(v0 + qword_10018BBE8);
    *(v55 + 8) = xmmword_100126D00;
    *(&v55[1] + 1) = 0x8000000100132C50;
    v56 = xmmword_100126D10;
    v57 = 0;
    goto LABEL_5;
  }

  if (*(v0 + qword_10018BBE0) == 1)
  {
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v57 = 1;
LABEL_5:
    sub_10000B604();
    sub_10002D58C();
    _ConditionalContent<>.init(storage:)();
    v54 = 0;
    sub_10001D980();
    sub_100003768(&qword_10018BFA0, &qword_100126DA8);
    sub_100057E84();
    sub_100057B68(v1, &qword_10018BF90, &qword_100126DA0, v2);
    v3 = sub_100057AB0();
    sub_100057EE8(v3, v4, v5, v6, v7, v8, v9, v10, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    return _ConditionalContent<>.init(storage:)();
  }

  v12 = *(v0 + qword_10018BBF0 + 8);
  if (v12 == 255)
  {
    v53 = 1;
    sub_10001D980();
    sub_100057E9C(&qword_10018BFA8);
    _ConditionalContent<>.init(storage:)();
    v14 = &qword_10018BFA0;
    v15 = &qword_100126DA8;
    sub_100006578(v55, v51, &qword_10018BFA0, &qword_100126DA8);
    v54 = 1;
    sub_100003768(&qword_10018BF90, &qword_100126DA0);
    sub_10001D980();
    sub_100057E84();
    sub_100057B68(v27, &qword_10018BF90, &qword_100126DA0, v28);
    v29 = sub_100057AB0();
    sub_100057EE8(v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    _ConditionalContent<>.init(storage:)();
    v26 = v55;
  }

  else
  {
    v13 = *(v0 + qword_10018BBF0);
    *&v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000B2C0(0, 0, v51, 0, 0, v13, v12 & 1);
    sub_10001D724(v51, &qword_100189310, &qword_1001221A0);
    v14 = &qword_10018BFB0;
    v15 = &qword_100126DB0;
    sub_100006578(&v37, v51, &qword_10018BFB0, &qword_100126DB0);
    v53 = 0;
    sub_10001D980();
    sub_100057E9C(&qword_10018BFA8);
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v55, v51, &qword_10018BFA0, &qword_100126DA8);
    v54 = 1;
    sub_100003768(&qword_10018BF90, &qword_100126DA0);
    sub_100003768(&qword_10018BFA0, &qword_100126DA8);
    sub_100057E84();
    sub_100057B68(v16, &qword_10018BF90, &qword_100126DA0, v17);
    v18 = sub_100057AB0();
    sub_100057EE8(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    _ConditionalContent<>.init(storage:)();
    sub_10001D724(v55, &qword_10018BFA0, &qword_100126DA8);
    v26 = &v37;
  }

  return sub_10001D724(v26, v14, v15);
}

uint64_t sub_1000578D4()
{
  v0 = sub_10011484C();
  v1 = *(v0 + qword_10018BBD8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t type metadata accessor for SoftwareUpdateFlowViewModel()
{
  result = qword_10018BC20;
  if (!qword_10018BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000579F8()
{
  result = qword_10018BF80;
  if (!qword_10018BF80)
  {
    sub_100004D48(&qword_10018BF78, &qword_100126D98);
    sub_100057B68(&qword_10018BF88, &qword_10018BF90, &qword_100126DA0, sub_10002D58C);
    sub_100057AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BF80);
  }

  return result;
}

unint64_t sub_100057AB0()
{
  result = qword_10018BF98;
  if (!qword_10018BF98)
  {
    sub_100004D48(&qword_10018BFA0, &qword_100126DA8);
    sub_100057B68(&qword_10018BFA8, &qword_10018BFB0, &qword_100126DB0, sub_10000B658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BF98);
  }

  return result;
}

uint64_t sub_100057B68(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    sub_10000B604();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057BEC()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  sub_10000C270(v8, qword_1001A5740);
  sub_10000C2D4(v8, qword_1001A5740);
  (*(v3 + 104))(v7, enum case for SupportFlowIdentifier.softwareUpdate(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_100057CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 176);
  v3 = *(a1 + v2);
  *(a1 + v2) = a2;
}

unint64_t sub_100057D3C()
{
  result = qword_10018BFB8;
  if (!qword_10018BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFB8);
  }

  return result;
}

__n128 sub_100057DA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_100057DB0()
{
  result = qword_10018BFC8;
  if (!qword_10018BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFC8);
  }

  return result;
}

unint64_t sub_100057E04()
{
  result = qword_10018BFD0;
  if (!qword_10018BFD0)
  {
    sub_100004D48(&qword_10018BFC0, &unk_100126E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFD0);
  }

  return result;
}

uint64_t sub_100057E9C(unint64_t *a1)
{

  return sub_100057B68(a1, v1, v2, sub_10000B658);
}

uint64_t sub_100057EC8()
{

  return swift_once();
}

uint64_t sub_100057F04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_100057FAC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100057FDC(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0uLL:
      v7 = 0xD000000000000023;
      break;
    case 1uLL:
      v7 = 0xD000000000000019;
      break;
    case 2uLL:
    case 3uLL:
    case 8uLL:
      UUID.init()();
      v7 = UUID.uuidString.getter();
      sub_10003F67C(a1);
      (*(v3 + 8))(v6, v2);
      break;
    case 4uLL:
      v7 = 0xD000000000000018;
      break;
    case 5uLL:
      v7 = 0xD000000000000018;
      break;
    case 6uLL:
      v7 = 0xD000000000000017;
      break;
    case 7uLL:
      v7 = 0xD000000000000020;
      break;
    case 9uLL:
      v7 = 0xD000000000000018;
      break;
    default:
      sub_10003F67C(a1);
      v7 = 0xD000000000000015;
      break;
  }

  return v7;
}

uint64_t sub_100058208(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      sub_1000599E8();
      v7 = v8 + 11;
      break;
    case 1:
      sub_1000599E8();
      v7 = v9 | 1;
      break;
    case 2:
    case 3:
    case 8:
      UUID.init()();
      v7 = UUID.uuidString.getter();
      (*(v3 + 8))(v6, v2);
      break;
    case 4:
      v7 = 0xD000000000000018;
      break;
    case 5:
      v7 = 0xD000000000000018;
      break;
    case 6:
      sub_1000599E8();
      v7 = v10 - 1;
      break;
    case 7:
      sub_1000599E8();
      v7 = v12 + 8;
      break;
    case 9:
      v7 = 0xD000000000000018;
      break;
    default:
      sub_1000599E8();
      v7 = v11 - 3;
      break;
  }

  return v7;
}

__n128 sub_1000583E8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  switch(a1)
  {
    case 0:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      v183 = 0;
      LOBYTE(v189) = 0;
      goto LABEL_9;
    case 1:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      v183 = 1;
      LOBYTE(v189) = 1;
LABEL_9:
      sub_1000593AC();
      sub_100059400();
      sub_10001B448();
      v55 = sub_1000599FC();
      sub_100059998(v55, v56, v57, v58, v59, v60, v61, v62, v161, v174, v183, v189, v195);
      LOWORD(v192) = v63;
      goto LABEL_10;
    case 2:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 0;
      sub_1000594E0();
      sub_100059534();
      sub_10001B448();
      v28 = sub_1000599FC();
      sub_100059998(v28, v29, v30, v31, v32, v33, v34, v35, v161, v174, 2, v189, v195);
      LOBYTE(v192) = v36;
      BYTE1(v192) = 1;
      goto LABEL_10;
    case 3:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 1;
      sub_1000594E0();
      sub_100059534();
      sub_10001B448();
      v37 = sub_1000599FC();
      sub_100059998(v37, v38, v39, v40, v41, v42, v43, v44, v161, v174, 3, v189, v195);
      LOBYTE(v192) = v45;
      BYTE1(v192) = 1;
LABEL_10:
      sub_100003768(&qword_10018C058, &qword_100126FD0);
      sub_100003768(&qword_10018C078, &qword_100126FD8);
      sub_100059320();
      sub_100059454();
      sub_1000599C0();
      sub_100059A1C();
      sub_1000599B0(v64, v65, v66, v67, v68, v69, v70, v71, v165, v178, v186, v192, v198);
      LOWORD(v191) = v72;
      BYTE2(v191) = 0;
      goto LABEL_15;
    case 4:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 0;
      sub_1000596A0();
      sub_1000596F4();
      sub_10001B448();
      v3 = sub_1000599FC();
      sub_100059998(v3, v4, v5, v6, v7, v8, v9, v10, v161, v174, 4, v189, v195);
      LOWORD(v190) = v11;
      sub_100003768(&qword_10018C0A8, &qword_100126FE8);
      sub_100003768(&qword_10018C0C8, &qword_100126FF0);
      sub_100059614();
      sub_100059748();
      sub_1000599C0();
      sub_100059A1C();
      sub_1000599B0(v12, v13, v14, v15, v16, v17, v18, v19, v162, v175, v184, v190, v196);
      LOWORD(v191) = v20;
      BYTE2(v191) = 1;
      goto LABEL_15;
    case 5:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 1;
      sub_1000596A0();
      sub_1000596F4();
      sub_10001B448();
      v73 = sub_1000599FC();
      sub_100059998(v73, v74, v75, v76, v77, v78, v79, v80, v161, v174, 5, v189, v195);
      LOWORD(v193) = v81;
      goto LABEL_14;
    case 6:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 0;
      sub_1000597D4();
      sub_100059828();
      sub_10001B448();
      v82 = sub_1000599FC();
      sub_100059998(v82, v83, v84, v85, v86, v87, v88, v89, v161, v174, 6, v189, v195);
      LOBYTE(v193) = v90;
      goto LABEL_13;
    case 7:
      type metadata accessor for MessagesFlowViewModel();
      sub_10005907C();
      sub_100005914();
      sub_10001B3E4();
      LOBYTE(v189) = 1;
      sub_1000597D4();
      sub_100059828();
      sub_10001B448();
      v46 = sub_1000599FC();
      sub_100059998(v46, v47, v48, v49, v50, v51, v52, v53, v161, v174, 7, v189, v195);
      LOBYTE(v193) = v54;
LABEL_13:
      BYTE1(v193) = 1;
LABEL_14:
      sub_100003768(&qword_10018C0A8, &qword_100126FE8);
      sub_100003768(&qword_10018C0C8, &qword_100126FF0);
      sub_100059614();
      sub_100059748();
      sub_1000599C0();
      sub_100059A1C();
      sub_1000599B0(v91, v92, v93, v94, v95, v96, v97, v98, v166, v179, v187, v193, v199);
      LOWORD(v191) = v99;
      BYTE2(v191) = 1;
LABEL_15:
      sub_100003768(&qword_10018C048, &qword_100126FC8);
      sub_100003768(&qword_10018C098, &qword_100126FE0);
      sub_100059294();
      sub_100059588();
      v100 = sub_1000599C0();
      sub_1000599B0(v100, v101, v102, v103, v104, v105, v106, v107, v163, v176, v185, v191, v197);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      sub_10005987C();
      sub_1000599C0();

      break;
    case 8:
      sub_100059160();
      v22 = sub_10001B21C();
      v27 = v22;
      v164 = 0;
      v177 = 0;
      LOBYTE(v182) = 0;
      goto LABEL_19;
    case 9:
      v164 = sub_100057FDC(9uLL);
      v177 = v21;
      LOBYTE(v182) = 1;
      sub_100059160();
      v22 = sub_10001B21C();
      v27 = v22;
LABEL_19:
      sub_100026818(v22, &type metadata for MessagesStepResetNetworkSettingsView, &_s18ContactSupportViewVN, v23, v27, v24, v25, v26, v164);
      v132 = _ConditionalContent<>.init(storage:)();
      sub_1000599B0(v132, v133, v134, v135, v136, v137, v138, v139, v170, v177, v182, v189, v195);
      LOBYTE(v194) = 0;
      sub_100003768(&qword_10018C008, &qword_100126FB0);
      sub_1000590D4();
      v140 = sub_1000591B4();
      sub_100026818(v140, v141, &type metadata for MessagesStepCheckAppStatusView, v142, v140, v143, v144, v145, v171);
      v146 = _ConditionalContent<>.init(storage:)();
      sub_100059998(v146, v147, v148, v149, v150, v151, v152, v153, v172, v181, v188, v194, v201);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      v154 = sub_10005987C();
      sub_100026818(v154, v155, v156, v157, v154, v158, v159, v160, v173);
      _ConditionalContent<>.init(storage:)();
      break;
    default:
      v109 = *(a1 + 16);
      type metadata accessor for MessagesFlowViewModel();
      sub_1000136E0(v109);
      sub_10005907C();
      v167 = Environment.init<A>(_:)();
      v180 = v110 & 1;
      LOBYTE(v189) = 1;
      sub_1000136E0(v109);

      sub_100003768(&qword_10018C008, &qword_100126FB0);
      sub_1000590D4();
      v111 = sub_1000591B4();
      sub_100026818(v111, v112, &type metadata for MessagesStepCheckAppStatusView, v113, v111, v114, v115, v116, v167);
      v117 = _ConditionalContent<>.init(storage:)();
      sub_100059998(v117, v118, v119, v120, v121, v122, v123, v124, v168, v180, v109, v189, v195);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      v125 = sub_10005987C();
      sub_100026818(v125, v126, v127, v128, v125, v129, v130, v131, v169);
      _ConditionalContent<>.init(storage:)();

      sub_10003F67C(v109);
      break;
  }

  result = v200;
  *a2 = v200;
  a2[1].n128_u64[0] = v202;
  a2[1].n128_u16[4] = v203;
  a2[1].n128_u8[10] = v204;
  a2[1].n128_u8[11] = v205;
  return result;
}

uint64_t sub_100058B18(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      if (a2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 1:
      if (a2 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 2:
      if (a2 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 8:
      if (a2 == 8)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 9:
      if (a2 != 9)
      {
        goto LABEL_24;
      }

LABEL_23:
      result = 1;
      break;
    default:
      if (a2 < 0xA)
      {
LABEL_24:
        result = 0;
      }

      else
      {
        v2 = *(a1 + 16);
        v3 = *(a2 + 16);
        sub_1000136E0(v3);
        LOBYTE(v2) = sub_100058B18(v2, v3);
        sub_10003F67C(v3);
        result = v2 & 1;
      }

      break;
  }

  return result;
}

void sub_100058C3C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v3 = 0;
      goto LABEL_15;
    case 1:
      v3 = 1;
      goto LABEL_15;
    case 2:
      v3 = 2;
      goto LABEL_15;
    case 3:
      v3 = 3;
      goto LABEL_15;
    case 4:
      v3 = 4;
      goto LABEL_15;
    case 5:
      v3 = 5;
      goto LABEL_15;
    case 6:
      v3 = 6;
      goto LABEL_15;
    case 7:
      v3 = 7;
      goto LABEL_15;
    case 8:
      v3 = 8;
      goto LABEL_15;
    case 9:
      v3 = 9;
LABEL_15:
      Hasher._combine(_:)(v3);
      break;
    default:
      v4 = *(a2 + 16);
      Hasher._combine(_:)(0xAuLL);
      sub_1000136E0(v4);
      sub_100058C3C(a1, v4);

      sub_10003F67C(v4);
      break;
  }
}

Swift::Int sub_100058D40(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100058C3C(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_100058D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100058208(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100058DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100058C3C(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_100058E28()
{
  result = qword_10018BFD8;
  if (!qword_10018BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFD8);
  }

  return result;
}

unint64_t sub_100058EC4()
{
  result = qword_10018BFE0;
  if (!qword_10018BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFE0);
  }

  return result;
}

unint64_t sub_100058F18()
{
  result = qword_10018BFE8;
  if (!qword_10018BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFE8);
  }

  return result;
}

uint64_t sub_100058F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100058FD4()
{
  result = qword_10018BFF0;
  if (!qword_10018BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFF0);
  }

  return result;
}

unint64_t sub_100059028()
{
  result = qword_10018BFF8;
  if (!qword_10018BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFF8);
  }

  return result;
}

unint64_t sub_10005907C()
{
  result = qword_10018C000;
  if (!qword_10018C000)
  {
    type metadata accessor for MessagesFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C000);
  }

  return result;
}

unint64_t sub_1000590D4()
{
  result = qword_10018C010;
  if (!qword_10018C010)
  {
    sub_100004D48(&qword_10018C008, &qword_100126FB0);
    sub_100059160();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C010);
  }

  return result;
}

unint64_t sub_100059160()
{
  result = qword_10018C018;
  if (!qword_10018C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C018);
  }

  return result;
}

unint64_t sub_1000591B4()
{
  result = qword_10018C020;
  if (!qword_10018C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C020);
  }

  return result;
}

unint64_t sub_100059208()
{
  result = qword_10018C038;
  if (!qword_10018C038)
  {
    sub_100004D48(&qword_10018C028, &qword_100126FB8);
    sub_100059294();
    sub_100059588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C038);
  }

  return result;
}

unint64_t sub_100059294()
{
  result = qword_10018C040;
  if (!qword_10018C040)
  {
    sub_100004D48(&qword_10018C048, &qword_100126FC8);
    sub_100059320();
    sub_100059454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C040);
  }

  return result;
}

unint64_t sub_100059320()
{
  result = qword_10018C050;
  if (!qword_10018C050)
  {
    sub_100004D48(&qword_10018C058, &qword_100126FD0);
    sub_1000593AC();
    sub_100059400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C050);
  }

  return result;
}

unint64_t sub_1000593AC()
{
  result = qword_10018C060;
  if (!qword_10018C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C060);
  }

  return result;
}

unint64_t sub_100059400()
{
  result = qword_10018C068;
  if (!qword_10018C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C068);
  }

  return result;
}

unint64_t sub_100059454()
{
  result = qword_10018C070;
  if (!qword_10018C070)
  {
    sub_100004D48(&qword_10018C078, &qword_100126FD8);
    sub_1000594E0();
    sub_100059534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C070);
  }

  return result;
}

unint64_t sub_1000594E0()
{
  result = qword_10018C080;
  if (!qword_10018C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C080);
  }

  return result;
}

unint64_t sub_100059534()
{
  result = qword_10018C088;
  if (!qword_10018C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C088);
  }

  return result;
}

unint64_t sub_100059588()
{
  result = qword_10018C090;
  if (!qword_10018C090)
  {
    sub_100004D48(&qword_10018C098, &qword_100126FE0);
    sub_100059614();
    sub_100059748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C090);
  }

  return result;
}

unint64_t sub_100059614()
{
  result = qword_10018C0A0;
  if (!qword_10018C0A0)
  {
    sub_100004D48(&qword_10018C0A8, &qword_100126FE8);
    sub_1000596A0();
    sub_1000596F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0A0);
  }

  return result;
}

unint64_t sub_1000596A0()
{
  result = qword_10018C0B0;
  if (!qword_10018C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0B0);
  }

  return result;
}

unint64_t sub_1000596F4()
{
  result = qword_10018C0B8;
  if (!qword_10018C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0B8);
  }

  return result;
}

unint64_t sub_100059748()
{
  result = qword_10018C0C0;
  if (!qword_10018C0C0)
  {
    sub_100004D48(&qword_10018C0C8, &qword_100126FF0);
    sub_1000597D4();
    sub_100059828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0C0);
  }

  return result;
}

unint64_t sub_1000597D4()
{
  result = qword_10018C0D0;
  if (!qword_10018C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0D0);
  }

  return result;
}

unint64_t sub_100059828()
{
  result = qword_10018C0D8;
  if (!qword_10018C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0D8);
  }

  return result;
}

unint64_t sub_10005987C()
{
  result = qword_10018C0E0;
  if (!qword_10018C0E0)
  {
    sub_100004D48(&qword_10018C030, &qword_100126FC0);
    sub_1000590D4();
    sub_1000591B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0E0);
  }

  return result;
}

unint64_t sub_10005990C()
{
  result = qword_10018C0E8;
  if (!qword_10018C0E8)
  {
    sub_100004D48(&qword_10018C0F0, &qword_100126FF8);
    sub_100059208();
    sub_10005987C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0E8);
  }

  return result;
}

uint64_t sub_1000599C0()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000599FC()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100059A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188380;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5980;
  v9 = *algn_1001A5988;
  *(a4 + 40) = &type metadata for AirPodsStepProvider;
  v11 = sub_100004C8C();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_100059B50(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

unint64_t sub_100059C90@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_100059B50(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  a4[6] = sub_10001362C();
  a4[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a3;
  *a4 = v8;
  a4[1] = v10;
  a4[8] = 0;
  a4[9] = 0;
  a4[7] = 0;
  a4[10] = sub_100059EA4;
  a4[11] = v12;

  return sub_1000136E0(a3);
}

void *sub_100059D8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 32) = a3;

  sub_1000136E0(a3);
  sub_1001019B0(sub_100059F04, v8, v10);
  return memcpy(a4, v10, 0x50uLL);
}

uint64_t sub_100059E38(uint64_t a1, char a2, unint64_t a3)
{
  sub_100059B50(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_100059EBC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100059F20()
{
  result = qword_10018C0F8;
  if (!qword_10018C0F8)
  {
    sub_100004D48(&qword_10018C100, &unk_1001271A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0F8);
  }

  return result;
}

uint64_t sub_100059FB4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_10005A0F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v9 = type metadata accessor for ActionInfoType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - v16;
  __chkstk_darwin(v15);
  v19 = &v29 - v18;

  sub_100059FB4(a1, a2 & 1);
  sub_10008E36C();

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v20 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100121620;
  sub_10003F5BC(v19, v22 + v21);
  sub_10000B4E0(v33, v32);
  sub_10000B4E0(v32, v31);
  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v22 + v21, v17);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v17, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1000ED69C(v14, 1, sub_10005A438, v23);
  sub_10003F620(v17);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v24 = v30[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v25 = v30;
  sub_10000B4E0(v31, a5 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v26 = Environment.init<A>(_:)();
  LOBYTE(v22) = v27;
  sub_10001035C(v31);
  sub_10001035C(v32);
  sub_10001035C(v33);
  result = sub_10003F620(v19);
  *a5 = v26;
  *(a5 + 8) = v22 & 1;
  *(a5 + 16) = v29;
  *(a5 + 24) = a4;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = v25;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  return result;
}

uint64_t sub_10005A3F8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10005A444()
{
  result = qword_10018C110;
  if (!qword_10018C110)
  {
    sub_100004D48(&qword_10018C118, &qword_10012AB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C110);
  }

  return result;
}

uint64_t sub_10005A4A8()
{
  result = Color.init(_:bundle:)();
  qword_1001A5758 = result;
  return result;
}

uint64_t sub_10005A4EC()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  return Color.init(_:red:green:blue:opacity:)();
}

void sub_10005A5EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = type metadata accessor for FlowStepContentOption();
  v8 = sub_10000AF7C(v56);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018AB50, &qword_100125290);
  sub_10000ED84(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for ImageResource();
  v19 = sub_100008780(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  *&v55 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v54 - v26;
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v28 = type metadata accessor for FlowStepMainContentView();
  v29 = v28[5];
  *(a4 + v29) = swift_getKeyPath();
  sub_100003768(&qword_10018C120, &qword_100127308);
  swift_storeEnumTagMultiPayload();
  v30 = (a4 + v28[12]);
  v59 = sub_10005AC64();
  sub_100025778(0, &qword_10018B488, UIFont_ptr);
  State.init(wrappedValue:)();
  v31 = v61;
  *v30 = v60;
  v30[1] = v31;
  v32 = (a4 + v28[13]);
  v59 = 0;
  State.init(wrappedValue:)();
  v33 = v61;
  *v32 = v60;
  v32[1] = v33;
  v34 = a4 + v28[14];
  AccessibilityFocusState.init<>()();
  *(a4 + v28[6]) = a1;
  v35 = (a4 + v28[7]);
  *v35 = a2;
  v35[1] = a3;
  v36 = a1;

  v58 = a2;
  sub_1000FE780();
  v37 = sub_10000E5F0(v17, 1, v18);
  if (v37 == 1)
  {
    sub_10000ABCC(v17, &qword_10018AB50, &qword_100125290);
    v38 = 0uLL;
  }

  else
  {
    (*(v21 + 32))(v27, v17, v18);
    sub_100025778(0, &qword_10018C128, UIImage_ptr);
    (*(v21 + 16))(v55, v27, v18);
    v39 = UIImage.init(resource:)();
    [v39 size];
    v54 = v40;
    v55 = v41;

    (*(v21 + 8))(v27, v18);
    *&v38 = v54;
    *(&v38 + 1) = v55;
  }

  v42 = a4 + v28[8];
  *v42 = v38;
  *(v42 + 16) = v37 == 1;
  *(a4 + v28[9]) = v37 != 1;
  v43 = sub_10005CD84(v36, &selRef_title);
  v45 = v44;
  v46 = sub_10005CDE0(v36, &selRef_titleContent);
  LOBYTE(v43) = sub_10005AD3C(v43, v45, v46);

  *(a4 + v28[10]) = v43 & 1;
  v47 = v57;
  swift_storeEnumTagMultiPayload();
  sub_1000FF9FC();
  LOBYTE(v43) = v48;

  sub_10005DF00(v47, type metadata accessor for FlowStepContentOption);
  if (v43)
  {

    v49 = 0;
  }

  else
  {
    v50 = sub_10005CD84(v36, &selRef_bodyText);
    v52 = v51;
    v53 = sub_10005CDE0(v36, &selRef_bodyContent);

    v49 = sub_10005AD3C(v50, v52, v53);
  }

  *(a4 + v28[11]) = v49 & 1;
}

uint64_t sub_10005AA7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = sub_100008780(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018C120, &qword_100127308);
  sub_10000AF7C(v11);
  v13 = *(v12 + 64);
  sub_10000ED78();
  __chkstk_darwin(v14);
  v16 = (&v23 - v15);
  v17 = type metadata accessor for FlowStepMainContentView();
  sub_10000AB80(v1 + *(v17 + 20), v16, &qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for ContentSizeCategory();
    sub_10000AF7C(v18);
    return (*(v19 + 32))(a1, v16);
  }

  else
  {
    v21 = *v16;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v3);
  }
}

id sub_10005AC64()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (!v3)
  {
    return v1;
  }

  [v1 pointSize];
  v4 = [v0 fontWithDescriptor:v3 size:?];

  return v4;
}

uint64_t sub_10005AD3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v3 != 0;
  if (!a2)
  {
    v4 = 0;
  }

  return a3 || v4;
}

uint64_t sub_10005AD6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_10018C230, &qword_100127398);
  sub_10000AF7C(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  v9 = sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C(v9);
  v11 = *(v10 + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v15 = sub_100003768(&qword_10018C240, &qword_1001273A8);
  sub_100008780(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_10000ED78();
  __chkstk_darwin(v20);
  v22 = v27 - v21;
  v23 = *(v1 + *(type metadata accessor for FlowStepMainContentView() + 36));
  sub_10005AFBC(v14);
  if (v23 == 1)
  {
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v27[0] = v3;
    v27[1] = a1;
    v24 = sub_10005D3EC();
    View.containerRelativeFrame(_:alignment:)();
    sub_10005D720(v14);
    (*(v17 + 16))(v8, v22, v15);
    swift_storeEnumTagMultiPayload();
    v28 = v9;
    v29 = v24;
    sub_10005E27C();
    sub_10005E2A8();
    return (*(v17 + 8))(v22, v15);
  }

  else
  {
    sub_10005D388(v14, v8);
    swift_storeEnumTagMultiPayload();
    v26 = sub_10005D3EC();
    v28 = v9;
    v29 = v26;
    sub_10005E27C();
    sub_10005E2A8();
    return sub_10005D720(v14);
  }
}

uint64_t sub_10005AFBC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for FlowStepMainContentView();
  v3 = v2 - 8;
  v50 = *(v2 - 8);
  v56 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContentSizeCategory();
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018C260, &qword_1001273C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = sub_100003768(&qword_10018C258, &qword_1001273B8);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = sub_100003768(&qword_10018C250, &qword_1001273B0);
  v23 = *(v22 - 8);
  v46 = v22;
  v47 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v55 = &v43 - v25;
  v57 = v1;
  sub_100003768(&qword_10018C288, &qword_1001273D0);
  sub_10000AAEC(&qword_10018C280, &qword_10018C288, &qword_1001273D0);
  Section<>.init(content:)();
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_10005D584();
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v12, v43);
  sub_10000ABCC(v16, &qword_10018C260, &qword_1001273C0);
  v27 = *(v3 + 64);
  sub_100003768(&qword_10018C140, &unk_100127320);
  v28 = v54;
  AccessibilityFocusState.projectedValue.getter();
  v58 = v13;
  v59 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v44;
  View.accessibilityFocused(_:)();

  (*(v45 + 8))(v21, v30);
  v31 = v48;
  sub_10005AA7C(v48);
  v32 = v28;
  v33 = v49;
  sub_10005D788(v32, v49);
  v34 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v35 = swift_allocObject();
  sub_10003CF1C(v33, v35 + v34);
  v58 = v30;
  v59 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10005DEB8(&qword_10018C298, &type metadata accessor for ContentSizeCategory);
  v36 = v53;
  v37 = v46;
  v38 = v51;
  v39 = v55;
  View.onChange<A>(of:initial:_:)();

  (*(v52 + 8))(v31, v38);
  (*(v47 + 8))(v39, v37);
  sub_10005D788(v54, v33);
  v40 = swift_allocObject();
  sub_10003CF1C(v33, v40 + v34);
  result = sub_100003768(&qword_10018C238, &qword_1001273A0);
  v42 = (v36 + *(result + 36));
  *v42 = sub_10005D86C;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_10005B5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100003768(&qword_10018C2A8, &qword_1001273E0);
  return sub_10005B630(a1, a2 + *(v4 + 44));
}

uint64_t sub_10005B630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v74 = sub_100003768(&qword_10018C2B0, &qword_1001273E8);
  v3 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v73 = &v69 - v4;
  v5 = sub_100003768(&qword_10018C2B8, &qword_1001273F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v69 - v9;
  v10 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_100003768(&qword_10018C2C0, &qword_1001273F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v69 - v21;
  v71 = sub_100003768(&qword_10018C2C8, &qword_100127400);
  v23 = *(*(v71 - 8) + 64);
  v24 = __chkstk_darwin(v71);
  v77 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v78 = &v69 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v69 - v29;
  v31 = __chkstk_darwin(v28);
  v75 = &v69 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v69 - v34;
  __chkstk_darwin(v33);
  v82 = &v69 - v36;
  sub_10005BC90(v22);
  v37 = static Edge.Set.horizontal.getter();
  v38 = *(type metadata accessor for FlowStepMainContentView() + 28);
  *&v76 = a1;
  v39 = (a1 + v38);
  v40 = *v39;
  v41 = v39[1];
  sub_1000FE780();
  v42 = type metadata accessor for ImageResource();
  v43 = sub_10000E5F0(v16, 1, v42);
  sub_10000ABCC(v16, &qword_10018AB50, &qword_100125290);
  v44 = 0uLL;
  v81 = 0u;
  v45 = 0uLL;
  if (v43 == 1)
  {
    EdgeInsets.init(_all:)();
    *(&v45 + 1) = v46;
    *(&v44 + 1) = v47;
  }

  v69 = v45;
  v70 = v44;
  sub_10000AB34(v22, v35, &qword_10018C2C0, &qword_1001273F8);
  v48 = v71;
  v49 = &v35[*(v71 + 36)];
  *v49 = v37;
  v50 = v70;
  *(v49 + 24) = v69;
  *(v49 + 8) = v50;
  v49[40] = v43 != 1;
  sub_10000AB34(v35, v82, &qword_10018C2C8, &qword_100127400);
  v51 = v73;
  sub_10005C000(v73);
  sub_10005D8C8();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v51, &qword_10018C2B0, &qword_1001273E8);
  v52 = v72;
  sub_10005C544(v72);
  v53 = static Edge.Set.horizontal.getter();
  sub_1000FE780();
  v54 = sub_10000E5F0(v14, 1, v42);
  sub_10000ABCC(v14, &qword_10018AB50, &qword_100125290);
  v55 = 0uLL;
  if (v54 == 1)
  {
    EdgeInsets.init(_all:)();
    *(&v55 + 1) = v56;
    *(&v58 + 1) = v57;
    v81 = v58;
  }

  v76 = v55;
  sub_10000AB34(v52, v30, &qword_10018C2C0, &qword_1001273F8);
  v59 = &v30[*(v48 + 36)];
  *v59 = v53;
  *(v59 + 24) = v76;
  *(v59 + 8) = v81;
  v59[40] = v54 != 1;
  v60 = v75;
  sub_10000AB34(v30, v75, &qword_10018C2C8, &qword_100127400);
  v61 = v82;
  v62 = v78;
  sub_10000AB80(v82, v78, &qword_10018C2C8, &qword_100127400);
  v63 = v83;
  v64 = v79;
  sub_10000AB80(v83, v79, &qword_10018C2B8, &qword_1001273F0);
  v65 = v77;
  sub_10000AB80(v60, v77, &qword_10018C2C8, &qword_100127400);
  v66 = v80;
  sub_10000AB80(v62, v80, &qword_10018C2C8, &qword_100127400);
  v67 = sub_100003768(&qword_10018C378, &qword_100127468);
  sub_10000AB80(v64, v66 + *(v67 + 48), &qword_10018C2B8, &qword_1001273F0);
  sub_10000AB80(v65, v66 + *(v67 + 64), &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v60, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v63, &qword_10018C2B8, &qword_1001273F0);
  sub_10000ABCC(v61, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v65, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v64, &qword_10018C2B8, &qword_1001273F0);
  return sub_10000ABCC(v62, &qword_10018C2C8, &qword_100127400);
}

uint64_t sub_10005BC90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018C380, &unk_100127470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for FlowStepMainContentView();
  if (*(v1 + *(v11 + 40)) == 1)
  {
    v12 = v11;
    v13 = *(v1 + *(v11 + 24));
    v14 = [v13 title];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v17;
      v35 = v16;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v19 = [v13 titleContent];
    if (v19)
    {
      v20 = v19;
      sub_100003768(&qword_10018C130, &unk_100127310);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v21 = 0;
    }

    v22 = (v1 + *(v12 + 48));
    v24 = *v22;
    v23 = v22[1];
    *&v38 = v24;
    *(&v38 + 1) = v23;
    sub_100003768(&qword_10018C2A0, &qword_1001273D8);
    State.wrappedValue.getter();
    v25 = v36;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10005DEB8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
    v26 = Environment.init<A>(_:)();
    v28 = v27;
    v29 = *(v3 + 40);
    v30 = type metadata accessor for ConstellationContentParagraphStyle();
    sub_100003CE8(&v6[v29], 1, 1, v30);
    *v6 = v26;
    v6[8] = v28 & 1;
    type metadata accessor for CGSize(0);
    v36 = 0;
    v37 = 0;
    State.init(wrappedValue:)();
    v31 = v39;
    *(v6 + 1) = v38;
    v32 = v34;
    v33 = v35;
    *(v6 + 4) = v31;
    *(v6 + 5) = v33;
    *(v6 + 6) = v32;
    *(v6 + 7) = v21;
    *(v6 + 8) = v25;
    *(v6 + 9) = 0;
    static String.stepContentTitle.getter();
    sub_10005DEB8(&qword_10018C388, type metadata accessor for FlowStepTextView);
    View.accessibilityIdentifier(_:)();

    sub_10005DF00(v6, type metadata accessor for FlowStepTextView);
    sub_10000AB34(v10, a1, &qword_10018C380, &unk_100127470);
    return sub_100003CE8(a1, 0, 1, v7);
  }

  else
  {

    return sub_100003CE8(a1, 1, 1, v7);
  }
}

uint64_t sub_10005C000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FlowStepMainContentView();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018C2E0, &qword_100127408);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for ImageResource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(v4 + 28));
  v20 = *v19;
  v21 = v19[1];
  sub_1000FE780();
  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_10000ABCC(v13, &qword_10018AB50, &qword_100125290);
    v22 = 1;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_10005C9FC(v18);
    v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v24 = Color.init(_:)();
    v25 = static Edge.Set.all.getter();
    v63 = a1;
    v26 = v25;
    v27 = &v9[*(sub_100003768(&qword_10018C330, &qword_100127430) + 36)];
    *v27 = v24;
    v27[8] = v26;
    v28 = &v9[*(sub_100003768(&qword_10018C320, &qword_100127428) + 36)];
    v29 = type metadata accessor for RoundedRectangle();
    v62 = v15;
    v30 = v6;
    v31 = *(v29 + 20);
    v32 = enum case for RoundedCornerStyle.continuous(_:);
    v33 = type metadata accessor for RoundedCornerStyle();
    v34 = &v28[v31];
    v6 = v30;
    (*(*(v33 - 8) + 104))(v34, v32, v33);
    __asm { FMOV            V0.2D, #26.0 }

    *v28 = _Q0;
    *&v28[*(sub_100003768(&qword_10018C370, &qword_100127460) + 36)] = 256;
    v40 = (v2 + *(v4 + 52));
    v41 = *v40;
    v42 = v40[1];
    *&v67 = v41;
    *(&v67 + 1) = v42;
    sub_100003768(&qword_100189560, &qword_1001251F0);
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43 = &v9[*(sub_100003768(&qword_10018C310, &qword_100127420) + 36)];
    v44 = v68;
    *v43 = v67;
    *(v43 + 1) = v44;
    *(v43 + 2) = v69;
    v45 = v2;
    v46 = v65;
    sub_10005D788(v45, v65);
    v47 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v48 = swift_allocObject();
    sub_10003CF1C(v46, v48 + v47);
    v49 = &v9[*(sub_100003768(&qword_10018C300, &qword_100127418) + 36)];
    *v49 = sub_100015898;
    *(v49 + 1) = 0;
    *(v49 + 2) = sub_10005E138;
    *(v49 + 3) = v48;
    v66 = static Color.clear.getter();
    v50 = AnyView.init<A>(_:)();
    *&v9[*(sub_100003768(&qword_10018C2F0, &qword_100127410) + 36)] = v50;
    LOBYTE(v50) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    (*(v62 + 8))(v18, v14);
    v59 = &v9[*(v30 + 36)];
    *v59 = v50;
    a1 = v63;
    *(v59 + 1) = v52;
    *(v59 + 2) = v54;
    *(v59 + 3) = v56;
    *(v59 + 4) = v58;
    v59[40] = 0;
    sub_10000AB34(v9, a1, &qword_10018C2E0, &qword_100127408);
    v22 = 0;
  }

  return sub_100003CE8(a1, v22, 1, v6);
}

uint64_t sub_10005C544@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018C380, &unk_100127470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for FlowStepContentOption();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowStepMainContentView();
  if (*(v1 + *(v15 + 44)) == 1)
  {
    v16 = v15;
    v41 = a1;
    v17 = (v1 + *(v15 + 28));
    v18 = *v17;
    v19 = v17[1];
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v21 = v20;
    sub_10005DF00(v14, type metadata accessor for FlowStepContentOption);
    if (v21)
    {
      v22 = 1;
      a1 = v41;
    }

    else
    {
      v23 = *(v1 + *(v16 + 24));
      v24 = [v23 bodyText];
      if (v24)
      {
        v25 = v24;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v40 = 0;
        v27 = 0;
      }

      v28 = [v23 bodyContent];
      if (v28)
      {
        v29 = v28;
        sub_100003768(&qword_10018C130, &unk_100127310);
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v30 = 0;
      }

      v31 = static Color.secondary.getter();
      v32 = &v6[*(v3 + 40)];
      sub_1000FEA14();
      type metadata accessor for FlowViewDataProvider(0);
      sub_10005DEB8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
      v33 = Environment.init<A>(_:)();
      v35 = v34;
      v36 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      *v6 = v33;
      v6[8] = v35 & 1;
      type metadata accessor for CGSize(0);
      v42 = 0;
      v43 = 0;
      State.init(wrappedValue:)();
      v37 = v45;
      *(v6 + 1) = v44;
      v38 = v40;
      *(v6 + 4) = v37;
      *(v6 + 5) = v38;
      *(v6 + 6) = v27;
      *(v6 + 7) = v30;
      *(v6 + 8) = v36;
      *(v6 + 9) = v31;
      static String.stepContentDescription.getter();
      sub_10005DEB8(&qword_10018C388, type metadata accessor for FlowStepTextView);
      View.accessibilityIdentifier(_:)();

      sub_10005DF00(v6, type metadata accessor for FlowStepTextView);
      a1 = v41;
      sub_10000AB34(v10, v41, &qword_10018C380, &unk_100127470);
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return sub_100003CE8(a1, v22, 1, v7);
}

uint64_t sub_10005C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005AC64();
  v4 = (a3 + *(type metadata accessor for FlowStepMainContentView() + 48));
  v6 = *v4;
  v7 = v4[1];
  sub_100003768(&qword_10018C2A0, &qword_1001273D8);
  return State.wrappedValue.setter();
}

uint64_t sub_10005C99C()
{
  v0 = *(type metadata accessor for FlowStepMainContentView() + 56);
  sub_100003768(&qword_10018C140, &unk_100127320);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_10005C9FC(uint64_t a1)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageResource();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  (*(v10 + 16))(&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  Image.init(_:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v11 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  v16 = 1;
  v15 = 0;
  v13 = v11;
  LOWORD(v14[0]) = 257;
  memset(v14 + 8, 0, 33);
  static String.stepContentImage.getter();
  sub_100003768(&qword_10018C350, &unk_100127440);
  sub_10005DE00();
  View.accessibilityIdentifier(_:)();

  v17[0] = v13;
  v17[1] = v14[0];
  v18[0] = v14[1];
  *(v18 + 9) = *(&v14[1] + 9);
  return sub_10000ABCC(v17, &qword_10018C350, &unk_100127440);
}

uint64_t sub_10005CC60(double *a1, uint64_t a2)
{
  result = type metadata accessor for FlowStepMainContentView();
  v5 = a2 + *(result + 32);
  if ((*(v5 + 16) & 1) == 0)
  {
    v6 = *(v5 + 8) * (*a1 / *v5) + -32.0;
    v7 = (a2 + *(result + 52));
    v9 = v7[1];
    v8 = *v7;
    sub_100003768(&qword_100189560, &qword_1001251F0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10005CD04@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for FlowStepMainContentView()
{
  result = qword_10018C1A0;
  if (!qword_10018C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CD84(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000AFAC();
}

uint64_t sub_10005CDE0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100003768(&qword_10018C130, &unk_100127310);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10005CE5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_10000E5F0(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_100003768(&qword_10018C140, &unk_100127320);
    v8 = a3[14];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_10005CF58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return result;
    }

    v9 = sub_100003768(&qword_10018C140, &unk_100127320);
    v10 = a4[14];
  }

  return sub_100003CE8(a1 + v10, a2, a2, v9);
}

void sub_10005D03C()
{
  sub_10005D2C0(319, &qword_10018C1B0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10005D1F4(319, &qword_10018C1B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100025778(319, &qword_10018C1C0, TPSContent_ptr);
      if (v2 <= 0x3F)
      {
        sub_10005D1F4(319, &qword_10018C1C8, type metadata accessor for CGSize, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10005D258();
          if (v4 <= 0x3F)
          {
            sub_10005D2C0(319, &qword_100189478, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10005D314();
              if (v6 <= 0x3F)
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

void sub_10005D1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005D258()
{
  if (!qword_10018C1D0)
  {
    sub_100025778(255, &qword_10018B488, UIFont_ptr);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018C1D0);
    }
  }
}

void sub_10005D2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void sub_10005D314()
{
  if (!qword_10018C1D8)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10018C1D8);
    }
  }
}

uint64_t sub_10005D388(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C(v3);
  v5 = *(v4 + 16);
  v6 = sub_10000AFAC();
  v7(v6);
  return a2;
}

unint64_t sub_10005D3EC()
{
  result = qword_10018C248;
  if (!qword_10018C248)
  {
    sub_100004D48(&qword_10018C238, &qword_1001273A0);
    sub_100004D48(&qword_10018C250, &qword_1001273B0);
    type metadata accessor for ContentSizeCategory();
    sub_100004D48(&qword_10018C258, &qword_1001273B8);
    sub_100004D48(&qword_10018C260, &qword_1001273C0);
    sub_10005D584();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10005DEB8(&qword_10018C298, &type metadata accessor for ContentSizeCategory);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C248);
  }

  return result;
}

unint64_t sub_10005D584()
{
  result = qword_10018C268;
  if (!qword_10018C268)
  {
    sub_100004D48(&qword_10018C260, &qword_1001273C0);
    sub_10005D610();
    sub_10005D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C268);
  }

  return result;
}

unint64_t sub_10005D610()
{
  result = qword_10018C270;
  if (!qword_10018C270)
  {
    sub_100004D48(&qword_10018C278, &qword_1001273C8);
    sub_10000AAEC(&qword_10018C280, &qword_10018C288, &qword_1001273D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C270);
  }

  return result;
}

unint64_t sub_10005D6CC()
{
  result = qword_10018C290;
  if (!qword_10018C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C290);
  }

  return result;
}

uint64_t sub_10005D720(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10005D788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepMainContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D7F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FlowStepMainContentView();
  sub_10000ED84(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10005C92C(a1, a2, v7);
}

uint64_t sub_10005D86C()
{
  v0 = type metadata accessor for FlowStepMainContentView();
  sub_10000ED84(v0);
  v2 = *(v1 + 80);

  return sub_10005C99C();
}

unint64_t sub_10005D8C8()
{
  result = qword_10018C2D0;
  if (!qword_10018C2D0)
  {
    sub_100004D48(&qword_10018C2B0, &qword_1001273E8);
    sub_10005D94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2D0);
  }

  return result;
}

unint64_t sub_10005D94C()
{
  result = qword_10018C2D8;
  if (!qword_10018C2D8)
  {
    sub_100004D48(&qword_10018C2E0, &qword_100127408);
    sub_10005D9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2D8);
  }

  return result;
}

unint64_t sub_10005D9D8()
{
  result = qword_10018C2E8;
  if (!qword_10018C2E8)
  {
    sub_100004D48(&qword_10018C2F0, &qword_100127410);
    sub_10005DA90();
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2E8);
  }

  return result;
}

unint64_t sub_10005DA90()
{
  result = qword_10018C2F8;
  if (!qword_10018C2F8)
  {
    sub_100004D48(&qword_10018C300, &qword_100127418);
    sub_10005DB48();
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2F8);
  }

  return result;
}

unint64_t sub_10005DB48()
{
  result = qword_10018C308;
  if (!qword_10018C308)
  {
    sub_100004D48(&qword_10018C310, &qword_100127420);
    sub_10005DBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C308);
  }

  return result;
}

unint64_t sub_10005DBD4()
{
  result = qword_10018C318;
  if (!qword_10018C318)
  {
    sub_100004D48(&qword_10018C320, &qword_100127428);
    sub_10005DC8C();
    sub_10000AAEC(&qword_10018C368, &qword_10018C370, &qword_100127460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C318);
  }

  return result;
}

unint64_t sub_10005DC8C()
{
  result = qword_10018C328;
  if (!qword_10018C328)
  {
    sub_100004D48(&qword_10018C330, &qword_100127430);
    sub_10005DD44();
    sub_10000AAEC(&qword_10018C358, &qword_10018C360, &unk_10012F720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C328);
  }

  return result;
}

unint64_t sub_10005DD44()
{
  result = qword_10018C338;
  if (!qword_10018C338)
  {
    sub_100004D48(&qword_10018C340, &qword_100127438);
    sub_10005DE00();
    sub_10005DEB8(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C338);
  }

  return result;
}

unint64_t sub_10005DE00()
{
  result = qword_10018C348;
  if (!qword_10018C348)
  {
    sub_100004D48(&qword_10018C350, &unk_100127440);
    sub_100010DA8();
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C348);
  }

  return result;
}

uint64_t sub_10005DEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005DF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10005DF58()
{
  v1 = type metadata accessor for FlowStepMainContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_100010CC8(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_100003768(&qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ContentSizeCategory();
    sub_10000AF7C(v7);
    (*(v8 + 8))(v5 + v6);
  }

  else
  {
    v9 = *(v5 + v6);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = v5 + v1[12];

  v12 = *(v11 + 8);

  v13 = *(v5 + v1[13] + 8);

  v14 = v5 + v1[14];
  v15 = type metadata accessor for AccessibilityTechnologies();
  if (!sub_10000E5F0(v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v16 = *(v14 + *(sub_100003768(&qword_10018C140, &unk_100127320) + 40));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10005E138(double *a1)
{
  v3 = type metadata accessor for FlowStepMainContentView();
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10005CC60(a1, v5);
}

unint64_t sub_10005E1A8()
{
  result = qword_10018C390;
  if (!qword_10018C390)
  {
    sub_100004D48(&qword_10018C398, &unk_100127480);
    sub_100004D48(&qword_10018C238, &qword_1001273A0);
    sub_10005D3EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C390);
  }

  return result;
}

uint64_t sub_10005E27C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005E2A8()
{

  return _ConditionalContent<>.init(storage:)();
}

double sub_10005E2F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a2;
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = sub_10000AF7C(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v29 - v21;
  __chkstk_darwin(v20);
  v24 = &v29 - v23;
  *(&v29 - v23) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v24, 0, 1, v6);
  v34 = &type metadata for MailStepProvider;
  v35 = sub_1000257D8();
  v33[0] = a3;
  sub_10000EC9C(v24, v22, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v33, v31, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v22, v19, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v19, 1, v6) == 1)
  {
    v25 = v30;

    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v24, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v33, &qword_100189310, &qword_1001221A0);
    v26 = 0;
  }

  else
  {
    sub_10003F558(v19, v14);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v14, v12);
    v25 = v30;

    v26 = sub_1000ED69C(v12, 1, 0, 0);
    sub_10003F620(v14);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v24, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v33, &qword_100189310, &qword_1001221A0);
  }

  *a4 = v29;
  *(a4 + 8) = v25;
  *(a4 + 64) = 0;
  *(a4 + 72) = v26;
  result = *v31;
  v28 = v31[1];
  *(a4 + 16) = v31[0];
  *(a4 + 32) = v28;
  *(a4 + 48) = v32;
  *(a4 + 56) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

double sub_10005E628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v7 = type metadata accessor for ActionInfoType(0);
  v8 = sub_10000AF7C(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v33 - v22;
  __chkstk_darwin(v21);
  v25 = &v33 - v24;
  v26 = qword_100188380;
  v36 = a2;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *algn_1001A5988;
  v34 = qword_1001A5980;
  *v25 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v25, 0, 1, v7);
  v40 = &type metadata for MailStepProvider;
  v41 = sub_1000257D8();
  v39[0] = a3;
  sub_10000EC9C(v25, v23, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v39, v37, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v23, v20, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v20, 1, v7) == 1)
  {

    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v25, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v39, &qword_100189310, &qword_1001221A0);
    v28 = 0;
  }

  else
  {
    sub_10003F558(v20, v15);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v15, v13);

    v28 = sub_1000ED69C(v13, 1, 0, 0);
    sub_10003F620(v15);
    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v25, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v39, &qword_100189310, &qword_1001221A0);
  }

  v29 = v36;
  *a4 = v35;
  *(a4 + 8) = v29;
  *(a4 + 64) = v27;
  *(a4 + 72) = v28;
  result = *v37;
  v31 = v37[1];
  *(a4 + 16) = v37[0];
  *(a4 + 32) = v31;
  v32 = v34;
  *(a4 + 48) = v38;
  *(a4 + 56) = v32;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_10005E980(uint64_t result)
{
  v2 = *(*v1 + 144);
  if (*(v1 + v2) == (result & 1))
  {
    *(v1 + v2) = result & 1;
  }

  else
  {
    __chkstk_darwin(result);
    sub_100003768(&qword_10018A170, &unk_100127780);
    sub_10000737C();
    sub_100062878();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100114874();
  }

  return result;
}

uint64_t sub_10005EAA4()
{
  v1[167] = v0;
  type metadata accessor for MainActor();
  v1[173] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[179] = v3;
  v1[185] = v2;

  return _swift_task_switch(sub_10005EB40, v3, v2);
}

uint64_t sub_10005EB40()
{
  sub_10003DCD8();
  v1 = *(v0 + 1336);
  v2 = *(v1 + *(*v1 + 136));
  sub_1000925F0(v1 + qword_1001A57E0);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = &off_10017D108;
  swift_unknownObjectWeakAssign();
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  *(v0 + 1488) = v3;
  *(v3 + 16) = &unk_100127738;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = sub_100062FF0();

  return _swift_asyncLet_get_throwing(v4, v5, v6, v0 + 1296);
}

uint64_t sub_10005EC78()
{
  sub_10003DCD8();
  if (v0)
  {

    v3 = *(**(v1 + 1336) + 608);
    v16 = **(v1 + 1336) + 608;
    v17 = v3 + *v3;
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v1 + 1496) = v5;
    *v5 = v1;
    v13 = sub_100062EB4(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

    return v13();
  }

  else
  {

    return _swift_asyncLet_get(v1 + 656, v2, sub_10005EDB4, v1 + 1440);
  }
}

uint64_t sub_10005EDB4()
{
  sub_10003DCD8();
  v1 = *(**(v0 + 1336) + 608);
  v14 = **(v0 + 1336) + 608;
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 1496) = v3;
  *v3 = v0;
  v11 = sub_100062EB4(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_10005EEAC()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 1496);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v1 + 1480);
  v6 = *(v1 + 1432);

  return _swift_task_switch(sub_10005EFC0, v6, v5);
}

uint64_t sub_10005EFC0()
{
  sub_100025A94();
  v1 = *(v0 + 1336);
  sub_10005E980(1);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_10005F028, v0 + 1344);
}

uint64_t sub_10005F044()
{
  sub_100025A94();
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1336);

  v3 = sub_100062FF0();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 1392);
}

uint64_t sub_10005F0CC()
{
  sub_100025A94();
  v1 = *(v0 + 1384);

  sub_10000875C();

  return v2();
}

BOOL sub_10005F124()
{
  sub_1000619E8(v2);
  if (!v3)
  {
    return 0;
  }

  v0 = v2[2];
  sub_100044F98(v2, &qword_10018B388, &qword_100125C38);
  return (v0 - 3) < 0xFFFFFFFE;
}

uint64_t sub_10005F188(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  if (!(v9 >> 14))
  {
    v15 = *(a2 + 104);
    if ((v15 & 0xC000) == 0)
    {
      v16 = *(a2 + 96);
      v17 = *(a2 + 88);
      v18 = *(a2 + 80);
      v42[0] = *a1;
      v42[1] = v2;
      v42[2] = v3;
      v42[3] = v4;
      v42[4] = v5;
      v43 = v7;
      v44 = v6;
      v45 = BYTE2(v6);
      v19 = *(a2 + 16);
      v46[0] = *a2;
      v46[1] = v19;
      v20 = *(a2 + 48);
      v46[2] = *(a2 + 32);
      v46[3] = v20;
      v46[4] = *(a2 + 64);
      v47 = v18;
      v49 = BYTE2(v17);
      v48 = v17;
      if ((static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(v42, v46) & 1) != 0 && (sub_10004C210(v8, v16) & 1) != 0 && ((v9 ^ v15) & 1) == 0 && ((v9 >> 8) & 1) == (v15 & 0x100) >> 8)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (v9 >> 14 != 1)
  {
    v21 = vorrq_s8(vorrq_s8(v5, v3), vorrq_s8(v4, v2));
    if (v7 | *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v6 | v8 | *a1 | *(a1 + 8) || v9 != 0x8000)
    {
      v33 = *(a2 + 104);
      if ((v33 & 0xC000) == 0x8000 && v33 == 0x8000 && *a2 == 1)
      {
        v35 = sub_100062F74(a1, a2);
        if (!*&sub_100062F54(v35, v36, v37, v38, v39, v40))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v22 = *(a2 + 104);
      if ((v22 & 0xC000) == 0x8000 && v22 == 0x8000)
      {
        v23 = sub_100062F74(a1, a2);
        v25 = *v24;
        v31 = sub_100062F54(v23, v26, v27, v28, v29, v30);
        if (!(*&v31 | v32))
        {
          goto LABEL_31;
        }
      }
    }

LABEL_28:
    v14 = 0;
    return v14 & 1;
  }

  if ((*(a2 + 104) & 0xC000) != 0x4000)
  {
    goto LABEL_28;
  }

  v10 = *a2;
  v11 = *a1;
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_100062FA4();
  if (v9 == Error.localizedDescription.getter() && v8 == v12)
  {

LABEL_31:
    v14 = 1;
    return v14 & 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v14 & 1;
}

void *sub_10005F3C4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_10001ABA4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  memcpy(__dst, (v1 + qword_10018C3A0), 0x6AuLL);
  sub_100062DB4(__dst, &v4);
  return memcpy(a1, __dst, 0x6AuLL);
}

void *sub_10005F470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_10005F3C4(v5);
  return memcpy(a2, v5, 0x6AuLL);
}

uint64_t sub_10005F4B4(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x6AuLL);
  v3 = *a2;
  sub_100062DB4(__dst, &v5);
  return sub_10005F50C(__dst);
}

uint64_t sub_10005F50C(uint64_t *a1)
{
  v3 = qword_10018C3A0;
  memcpy(__dst, (v1 + qword_10018C3A0), 0x6AuLL);
  sub_100062DB4(__dst, v7);
  v4 = sub_100061C34(__dst, a1);
  sub_1000628FC(__dst);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100061BAC();
    sub_1000628FC(a1);
  }

  else
  {
    memcpy(v7, (v1 + v3), 0x6AuLL);
    memcpy((v1 + v3), a1, 0x6AuLL);
    return sub_1000628FC(v7);
  }
}

uint64_t sub_10005F618(uint64_t a1, const void *a2)
{
  v3 = (a1 + qword_10018C3A0);
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v15 = *(v3 + 7);
  v16 = *v3;
  v13 = *(v3 + 5);
  v14 = *(v3 + 4);
  v10 = *(v3 + 12);
  v11 = *(v3 + 52);
  memcpy(v3, a2, 0x6AuLL);
  sub_100062DB4(a2, v17);
  return sub_1000626C4(v16, v4, v5, v6, v7, v8, v9, v15, v14, *(&v14 + 1), v13, *(&v13 + 1), v10, v11);
}

uint64_t sub_10005F718()
{
  v1 = type metadata accessor for SupportFlowIdentifier();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + qword_10018C3A0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x8000;
  *(v0 + qword_10018C3A8) = 0;
  *(v0 + qword_10018C3B0) = xmmword_1001275B0;
  *(v0 + qword_10018C3B8) = xmmword_1001275C0;
  *(v0 + qword_10018C3C0) = 0;
  *(v0 + qword_10018C3C8) = 0;
  ObservationRegistrar.init()();
  (*(v4 + 104))(v8, enum case for SupportFlowIdentifier.wifi(_:), v1);

  sub_10010570C();
  v11 = v10;

  sub_100021124();
  sub_10002402C();

  return v11;
}

uint64_t sub_10005F8D0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100061BAC();
  }

  return result;
}

uint64_t sub_10005F9C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001ABA4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10005FA34()
{
  v0 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for Date();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  Defaults.lastNotifiedAboutVPN.getter(v3);
  if (sub_10000E5F0(v3, 1, v4) == 1)
  {
    sub_100044F98(v3, &qword_10018C850, &qword_1001277D0);
    v15 = 0;
  }

  else
  {
    (*(v7 + 32))(v14, v3, v4);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v16 = *(v7 + 8);
    v16(v12, v4);
    static Duration.seconds(_:)();
    sub_100062F98();
    v17 = static Duration.< infix(_:_:)();
    v16(v14, v4);
    v15 = v17 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_10005FC50()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_10005FCEC()
{
  sub_10003DCD8();
  sub_10004622C();
  v2 = v1;
  sub_1000461C8();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v0;
  sub_10000870C();
  *v9 = v8;

  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 48) = v11;
  *(v2 + 56) = v10;

  return _swift_task_switch(sub_10005FE1C, v11, v10);
}

uint64_t sub_10005FE1C()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  v2 = sub_100064BAC();
  sub_100107E70(v2);
  sub_10005F6F0(1);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_10005FED0;
  v4 = *(v0 + 16);

  return sub_10005EAA4();
}

uint64_t sub_10005FED0()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return _swift_task_switch(sub_10005FFE4, v6, v5);
}

uint64_t sub_10005FFE4()
{
  sub_100025A94();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  sub_10005F6F0(0);
  sub_10000875C();

  return v3();
}

uint64_t sub_100060048()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_1000600E4()
{
  sub_10003DCD8();
  sub_10004622C();
  v2 = v1;
  sub_1000461C8();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v0;
  sub_10000870C();
  *v9 = v8;

  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 48) = v11;
  *(v2 + 56) = v10;

  return _swift_task_switch(sub_100060214, v11, v10);
}

uint64_t sub_100060214()
{
  sub_100025A94();
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_100064BAC();
  sub_100107E70(v3);
  v0[8] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v4 = sub_100062F00();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100060298()
{
  sub_100025A94();
  v1 = v0[8];

  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_1000602F8, v2, v3);
}

uint64_t sub_1000602F8()
{
  sub_100025A94();
  v1 = *(v0 + 32);

  sub_10000875C();

  return v2();
}

uint64_t sub_100060350()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_1000603EC()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006050C()
{
  sub_10003DCD8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v2 + *(*v2 + 136));
  sub_1000605E8();
  sub_100085FE4();
  sub_10005F124();
  sub_100085FE4();
  sub_100060648();
  sub_100085FE4();
  sub_1000606C0();
  sub_100085FE4();
  sub_10000875C();

  return v4();
}

BOOL sub_1000605E8()
{
  sub_1000619E8(v2);
  if (!v3)
  {
    return 0;
  }

  v0 = v2[2];
  sub_100044F98(v2, &qword_10018B388, &qword_100125C38);
  return v0 != 1;
}

BOOL sub_100060648()
{
  static Bool.simulateHasConfiguredVPN.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 1;
  }

  sub_1000619E8(v4);
  if (!v5)
  {
    return 0;
  }

  v3 = *(v5 + 16);
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return v3 != 0;
}

uint64_t sub_1000606C0()
{
  static Bool.simulateConnectedVPN.getter();
  sub_100062FE4();
  if (v1 || (v0 & 1) == 0)
  {
    sub_1000619E8(v4);
    if (v4[12])
    {
      v2 = v5;
      sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_100060734()
{
  sub_100025A94();
  v1[345] = v0;
  type metadata accessor for MainActor();
  v1[346] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[347] = v3;
  v1[348] = v2;

  return _swift_task_switch(sub_1000607CC, v3, v2);
}

uint64_t sub_1000607CC()
{
  sub_10003DCD8();
  v1 = *(v0 + 2760);
  sub_10005F3C4((v0 + 2312));
  sub_1000628FC(v0 + 2312);
  *(v0 + 1976) = 1;
  *(v0 + 1984) = 0u;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 0u;
  *(v0 + 2032) = 0u;
  *(v0 + 2048) = 0u;
  *(v0 + 2064) = 0u;
  *(v0 + 2080) = 0x8000;
  v2 = *(v0 + 2416);
  if (v2 & 0xC000) == 0x8000 && (v2 == 0x8000 ? (v3 = *(v0 + 2312) == 1) : (v3 = 0), v3 && (v4 = vorrq_s8(vorrq_s8(*(v0 + 2352), *(v0 + 2384)), vorrq_s8(*(v0 + 2368), *(v0 + 2400))), !(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 2344) | *(v0 + 2336) | *(v0 + 2328) | *(v0 + 2320)))) || (v5 = *(v0 + 2760), (sub_10005F6DC()))
  {
    v6 = *(v0 + 2768);

    sub_10000875C();

    return v7();
  }

  else
  {
    v9 = *(v0 + 2760);
    sub_10005F50C((v0 + 1976));
    v10 = swift_task_alloc();
    *(v0 + 2792) = v10;
    *(v10 + 16) = &unk_100127798;
    *(v10 + 24) = v9;

    swift_asyncLet_begin();
    v11 = swift_task_alloc();
    *(v0 + 2800) = v11;
    *(v11 + 16) = &unk_1001277B0;
    *(v11 + 24) = v9;

    swift_asyncLet_begin();
    swift_asyncLet_begin();
    v12 = sub_100062FF0();

    return _swift_asyncLet_get(v12, v0 + 2082, v13, v0 + 1936);
  }
}

uint64_t sub_100060A30()
{
  sub_100025A94();
  v1 = *(v0 + 2760);
  sub_10005F8A8(*(v0 + 2082));

  return _swift_asyncLet_get(v0 + 656, v0 + 2083, sub_100060A9C, v0 + 1936);
}

uint64_t sub_100060AB8()
{
  sub_100025A94();
  v1 = *(v0 + 2760);
  sub_10005F974(*(v0 + 2083));

  return _swift_asyncLet_get_throwing(v0 + 1296, v0 + 2424, sub_100060B24, v0 + 1936);
}

uint64_t sub_100060B24()
{
  v1[351] = v0;
  if (v0)
  {
    return _swift_task_switch(sub_100060DB4, v1[347], v1[348]);
  }

  else
  {
    return _swift_task_switch(sub_100060B64, v1[347], v1[348]);
  }
}

uint64_t sub_100060B64()
{
  sub_100025A94();
  v1 = *(v0 + 2760);
  memcpy((v0 + 2536), (v0 + 2424), 0x6AuLL);
  v2 = *(v0 + 2544);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2576);
  v5 = *(v0 + 2592);
  v6 = *(v0 + 2632);
  v7 = *(v0 + 2552) & 1;
  v8 = *(v0 + 2568) & 1;
  v9 = *(v0 + 2584) & 1;
  v10 = *(v0 + 2600) & 1;
  v11 = *(v0 + 2624) & 0x10101;
  v12 = *(v0 + 2640) & 0x101;
  *(v0 + 2200) = *(v0 + 2536) & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 2208) = v2;
  *(v0 + 2216) = v7;
  *(v0 + 2224) = v3;
  *(v0 + 2232) = v8;
  *(v0 + 2240) = v4;
  *(v0 + 2248) = v9;
  *(v0 + 2256) = v5;
  *(v0 + 2264) = v10;
  *(v0 + 2272) = *(v0 + 2608);
  *(v0 + 2288) = v11;
  *(v0 + 2296) = v6;
  *(v0 + 2304) = v12;
  sub_100062C14(v0 + 2536, v0 + 2648);
  sub_10005F50C((v0 + 2200));
  v13 = sub_100062EE0();

  return _swift_asyncLet_finish(v13, v14, v15, v16);
}

uint64_t sub_100060CB8()
{
  sub_100025A94();
  v1 = *(v0 + 2800);
  v2 = *(v0 + 2760);

  v3 = sub_100062FF0();

  return _swift_asyncLet_finish(v3, v0 + 2082, v4, v0 + 656);
}

uint64_t sub_100060D44()
{
  sub_100025A94();
  v1 = v0[349];
  v2 = v0[346];
  v3 = v0[345];

  sub_10000875C();

  return v4();
}

uint64_t sub_100060DB4()
{
  sub_100025A94();
  v1 = *(v0 + 2760);
  *(v0 + 2088) = *(v0 + 2808) & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 2104) = 0;
  *(v0 + 2120) = 0;
  *(v0 + 2136) = 0;
  *(v0 + 2152) = 0;
  *(v0 + 2176) = 0;
  *(v0 + 2192) = 0x4000;
  swift_errorRetain();
  sub_10005F50C((v0 + 2088));

  v2 = sub_100062EE0();

  return _swift_asyncLet_finish(v2, v3, v4, v5);
}

uint64_t sub_100060E60()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 136)) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  v2 = DeviceEventCoordinator.hasRecentDeviceRestart()();
  v3 = *(v0 + 8);
  v4 = v2;

  return v3(v4);
}

uint64_t sub_100060F04()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 136)) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  v2 = DeviceEventCoordinator.hasRecentNetworkSettingsReset()();
  v3 = *(v0 + 8);
  v4 = v2;

  return v3(v4);
}

uint64_t sub_100060F88(uint64_t a1)
{
  *(v1 + 128) = a1;
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_100061024;

  return static WiFiDiagnosticsReport.runReport()(v1 + 16);
}

uint64_t sub_100061024()
{
  sub_10003DCD8();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;

  if (!v0)
  {
    memcpy(*(v3 + 128), (v3 + 16), 0x6AuLL);
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100061124(uint64_t a1)
{
  *(v1 + 128) = a1;
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_100062EB0;

  return sub_100060F88(v1 + 16);
}

uint64_t sub_1000611BC()
{
  sub_100025A94();
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  sub_100062F48(v2);

  return static WiFiDiagnosticsDataProvider.turnOnWiFi()();
}

uint64_t sub_100061260()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[17];
    v10 = v3[18];
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100062F98();
    v11 = sub_100062F00();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = swift_task_alloc();
    v3[21] = v14;
    *v14 = v7;
    v14[1] = sub_1000613D8;

    return static VPNDiagnosticsDataProvider.awaitNetworkReachability(timeout:)(0x8AC7230489E80000, 0);
  }
}

uint64_t sub_1000613D8()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;
  v4 = *(v1 + 168);
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  *(v2 + 176) = v6;
  *v6 = v5;
  v6[1] = sub_10006150C;
  v7 = *(v1 + 128);

  return sub_100060734();
}