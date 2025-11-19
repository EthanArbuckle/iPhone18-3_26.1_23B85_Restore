uint64_t sub_100180318(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  dispatch thunk of CustomStringConvertible.description.getter();
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_100022834(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v4);
}

void *sub_100180424@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018A674(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10018046C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1001804AC()
{
  swift_allocObject();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100180508()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10018053C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t sub_100180580@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t sub_1001805B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10018060C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100180660()
{
  v0 = sub_1000040A8(&qword_100362950);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F20);
  v4 = sub_10000F53C(v3, qword_100381F20);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100180790()
{
  v0 = sub_1000040A8(&qword_100362950);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F38);
  v4 = sub_10000F53C(v3, qword_100381F38);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001808C0()
{
  v0 = sub_1000040A8(&qword_100362950);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000885F4(v3, qword_100381F50);
  v4 = sub_10000F53C(v3, qword_100381F50);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001809F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000088DC(a1, a1[3]);
  v4 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353AF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = sub_10000F53C(v5, qword_100381F38);
  if (*(v4 + 16) && (v7 = sub_100186BBC(v6), (v8 & 1) != 0))
  {
    sub_100048F80(*(v4 + 56) + 32 * v7, &v13);

    sub_1000040A8(&qword_100362948);
    if (swift_dynamicCast())
    {
      if (*(&v15 + 1))
      {
        return sub_100008A18(&v14, a2);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_100008FA0(&v14, &qword_100362940);
  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, enum case for DecodingError.dataCorrupted(_:), v10);
  return swift_willThrow();
}

uint64_t sub_100180C04(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = HIBYTE(a2) & 0xF;
  v31 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(v2 + 24);
    v30 = *(v5 + 16);
    if (v30)
    {

      v6 = 0;
      v7 = v5 + 40;
      v29 = v5;
      while (1)
      {

        if (v6 >= *(v5 + 16))
        {
          break;
        }

        v11 = *(v2 + 16);

        v12 = v2;
        v13 = v3;
        v14 = String._bridgeToObjectiveC()();
        v15 = String._bridgeToObjectiveC()();
        v16 = String._bridgeToObjectiveC()();

        v17 = [v11 localizedStringForKey:v14 value:v15 table:v16];

        v3 = v13;
        v2 = v12;
        v5 = v29;

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v9 = 0xD000000000000024;
        if (v10 == 0xD000000000000024 && 0x80000001002A1690 == v19 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = v10, (v8 & 1) != 0))
        {
          ++v6;
          v7 += 16;
          v10 = v9;
          if (v30 != v6)
          {
            continue;
          }
        }

        if ((v10 != 0xD000000000000024 || 0x80000001002A1690 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return v10;
        }

        if (qword_100353AA8 == -1)
        {
LABEL_16:
          v20 = type metadata accessor for Logger();
          sub_10000F53C(v20, qword_100381E48);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v21, v22))
          {
            goto LABEL_23;
          }

          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v32 = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_10017C9E8(v31, v3, &v32);
          _os_log_impl(&_mh_execute_header, v21, v22, "No translation for '%s'", v23, 0xCu);
          sub_100008964(v24);

LABEL_22:

          goto LABEL_23;
        }

LABEL_28:
        swift_once();
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_28;
    }

    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F53C(v25, qword_100381E48);
    v21 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v26, "No tableNames provided", v27, 2u);
      goto LABEL_22;
    }

LABEL_23:
  }

  return v31;
}

uint64_t sub_100180FCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100181030(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x636E656772656D65 && a2 == 0xE900000000000079)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x6564697364616F72 && a2 == 0xE800000000000000)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181138(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 1852138867 && a2 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x6465726577736E61 && a2 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 0x64657070696B73 && a2 == 0xE700000000000000)
  {
LABEL_3:
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

  return v3;
}

uint64_t sub_100181310(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_1003220F0 + v4 + 32);
    if (*(&off_1003220F0 + v4 + 32) <= 4u)
    {
      v6 = 0xD000000000000025;
      if (v5 != 3)
      {
        v6 = 0xD000000000000026;
      }

      v7 = "asInvokedFromEmergency";
      if (v5 != 3)
      {
        v7 = "WasInvokedFromRoadside";
      }

      if (v5 == 2)
      {
        v6 = 0xD000000000000018;
        v7 = "emporarilyUnavailable";
      }

      v11 = "ContactsAvailable";
      v8 = 0xD000000000000019;
      if (*(&off_1003220F0 + v4 + 32))
      {
        v8 = 0xD000000000000021;
        v11 = "builtinRoadsideAvailable";
      }

      v12 = *(&off_1003220F0 + v4 + 32) <= 1u;
    }

    else
    {
      if (v5 == 9)
      {
        v6 = 0xD000000000000022;
      }

      else
      {
        v6 = 0xD000000000000021;
      }

      v7 = "artedFromExplorer";
      if (v5 != 9)
      {
        v7 = "ot have revison set.";
      }

      if (v5 == 8)
      {
        v6 = 0xD00000000000001BLL;
        v7 = "honeNumberSelected";
      }

      v8 = 0xD000000000000026;
      v9 = 0xD000000000000029;
      if (v5 == 6)
      {
        v9 = 0xD000000000000021;
        v10 = "roviderSelectionAvailable";
      }

      else
      {
        v10 = "builtinPhoneNumberAvailable";
      }

      if (v5 == 5)
      {
        v11 = "onversationActive";
      }

      else
      {
        v8 = v9;
        v11 = v10;
      }

      v12 = *(&off_1003220F0 + v4 + 32) <= 7u;
    }

    v13 = v12 ? v8 : v6;
    v14 = v12 ? v11 : v7;
    if (v13 == a1 && (v14 | 0x8000000000000000) == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v5;
    }

    if (++v4 == 11)
    {
      return 11;
    }
  }

  return v5;
}

uint64_t sub_100181510(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 6581857 && a2 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 29295 && a2 == 0xE200000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 7630702 && a2 == 0xE300000000000000)
  {
LABEL_3:
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

  return v3;
}

uint64_t sub_1001816C0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x6843656C676E6953 && a2 == 0xEC0000006563696FLL)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0x656C7069746C754DLL && a2 == 0xEE006563696F6843)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v3;
  }

  v3 = 2;
  if (a1 == 0x6D726F4665657246 && a2 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return v3;
  }

  v3 = 3;
  if (a1 == 0x6E49746C697542 && a2 == 0xE700000000000000)
  {
LABEL_3:
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

  return v3;
}

uint64_t sub_100181A08(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_100321FD8 + v4++ + 32);
    v6 = 0xD000000000000017;
    v7 = 0xD000000000000018;
    if (v5 != 6)
    {
      v7 = 0xD000000000000010;
    }

    v8 = "SummaryCountdown";
    if (v5 != 6)
    {
      v8 = "n: string expected: ";
    }

    v9 = 0xD000000000000016;
    v10 = 0xD000000000000019;
    if (v5 == 4)
    {
      v10 = 0xD000000000000016;
    }

    v11 = "SelectRoadsidePhoneNumber";
    if (v5 != 4)
    {
      v11 = "EnterRoadsidePhoneNumber";
    }

    if (v5 <= 5)
    {
      v7 = v10;
      v8 = v11;
    }

    if (v5 == 2)
    {
      v12 = "SwitchToEmergency";
    }

    else
    {
      v9 = 0xD000000000000011;
      v12 = "SelectRoadsideProvider";
    }

    if (v5)
    {
      v6 = 0xD000000000000010;
    }

    v13 = "NotifyAndSendTranscript";
    if (v5)
    {
      v13 = "SwitchToRoadsideFailed";
    }

    if (v5 <= 1)
    {
      v14 = v13;
    }

    else
    {
      v6 = v9;
      v14 = v12;
    }

    v15 = v5 <= 3 ? v6 : v7;
    v16 = v5 <= 3 ? v14 : v8;
    if (v15 == a1 && (v16 | 0x8000000000000000) == a2)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      return v5;
    }

    if (v4 == 8)
    {
      return 8;
    }
  }

  return v5;
}

uint64_t sub_100181BA4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x636E656772656D45 && a2 == 0xED00006570795479)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 0xD000000000000016 && 0x80000001002A15B0 == a2)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181CBC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 0x6F697463656C6553 && a2 == 0xE90000000000006ELL)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return v3;
  }

  v3 = 1;
  if (a1 == 1954047316 && a2 == 0xE400000000000000)
  {
LABEL_12:

    return v3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100181DBC(uint64_t a1, void *a2)
{
  result = sub_100181510(a1, a2);
  if (result == 3)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_100181EFC(uint64_t a1, void *a2)
{
  result = sub_1001816C0(a1, a2);
  if (result == 4)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_10018203C(uint64_t a1, void *a2)
{
  result = 0x726F7461646E614DLL;
  if (a1 != 0x726F7461646E614DLL || a2 != 0xE900000000000079)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      _StringGuts.grow(_:)(24);

      v9._countAndFlagsBits = a1;
      v9._object = a2;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 11815;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10018219C(uint64_t a1, void *a2)
{
  result = sub_100181A08(a1, a2);
  if (result == 8)
  {
    v5 = result;
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(24);

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 11815;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t sub_1001822DC(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (v5 != 2)
  {
    return v5 & 1;
  }

  v6 = type metadata accessor for DecodingError();
  swift_allocError();
  v8 = v7;
  _StringGuts.grow(_:)(24);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 11815;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.dataCorrupted(_:), v6);
  return swift_willThrow();
}

uint64_t sub_100182418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10018AF94(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10018246C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v11[1] = a3;
  v6 = sub_1000040A8(&qword_1003628A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key();
  sub_1001910F4(&qword_1003628A0, type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100182668@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018B230(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001826B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(*(v5 + 56) + 72 * (v13 | (v11 << 6)) + 64);
    if (*(v14 + 16))
    {

      v15 = sub_100186A08(a1, a2);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);

        return v17;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return 0;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100182810(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_1003628E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddy.Key();
  sub_1001910F4(&qword_1003628B8, type metadata accessor for QuestionnairePresentationBuddy.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v10 = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v10 = *(v3 + 8);
    inited = swift_initStaticObject();
    sub_1000040A8(&qword_1003628C0);
    sub_10018B860(&qword_1003628E8, sub_10018B8E4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if ((*(v3 + 40) & 1) == 0)
    {
      v10 = *(v3 + 16);
      v11 = *(v3 + 32);
      inited = swift_initStaticObject();
      sub_10018B938();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100182A94@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10018B464(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100182B14(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_100362958);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362908, type metadata accessor for QuestionPresentationBuddy.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  v19 = v3[5];
  v20 = v12;
  v13 = v3[7];
  v17 = v3[6];
  v18 = v13;
  v14 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (v23 = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v2))
  {
    v15 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 || (v23 = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v2))
    {
      if (!*(v20 + 16) || (v23 = v20, inited = swift_initStaticObject(), sub_1000040A8(&qword_10035AB90), sub_10018C2B0(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v2))
      {
        v23 = v3[8];
        inited = swift_initStaticObject();
        sub_1000040A8(&qword_100362910);
        sub_10018C388();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (!v2)
        {
          if (v19)
          {
            v23 = v19;
            inited = swift_initStaticObject();
            sub_1000040A8(&qword_100355E30);
            sub_10018C468(&qword_100362980);
            KeyedEncodingContainer.encode<A>(_:forKey:)();
          }

          if (v18)
          {
            v23 = swift_initStaticObject();
            KeyedEncodingContainer.encode(_:forKey:)();
          }
        }
      }
    }
  }

  return (*(v21 + 8))(v7, v5);
}

__n128 sub_100182EB4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018B98C(a1, v6);
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

uint64_t sub_100182F44(void *a1, void *a2)
{
  v4 = sub_1000040A8(&qword_100362998);
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v33 - v7;
  __chkstk_darwin(v8);
  v35 = &v33 - v9;
  __chkstk_darwin(v10);
  v36 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for OptionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362990, type metadata accessor for OptionPresentationBuddy.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2[3];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = a2[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    inited = swift_initStaticObject();
    v20 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v20;
    if (v20)
    {
      return (*(v37 + 8))(v17, v4);
    }
  }

  else
  {
    v21 = v38;
  }

  if (a2[5])
  {
    v38 = v21;
    inited = swift_initStaticObject();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v23 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v37 + 8);
    v24(v23, v4);
    v24(v14, v4);
    return (v24)(v17, v4);
  }

  else
  {
    if (!a2[7])
    {
      return (*(v37 + 8))(v17, v4);
    }

    v38 = v21;
    v36 = a2[6];
    inited = swift_initStaticObject();
    v25 = v4;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v26 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    inited = swift_initStaticObject();
    v27 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v27)
    {
      v28 = v25;
      v29 = *(v37 + 8);
      v29(v26, v28);
      v29(v35, v28);
      return (v29)(v17, v28);
    }

    else
    {
      v38 = v17;
      inited = swift_initStaticObject();
      v30 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      Color.description.getter();
      v31 = v25;
      inited = swift_initStaticObject();
      KeyedEncodingContainer.encode(_:forKey:)();

      v32 = *(v37 + 8);
      v32(v30, v31);
      v32(v26, v31);
      v32(v35, v31);
      return (v32)(v38, v31);
    }
  }
}

uint64_t sub_100183488@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018C4D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001834D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181030);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100183514(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

uint64_t sub_100183614(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_1003629D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa();
  sub_1001910F4(&qword_1003629A8, _s3KeyCMa);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 32);
    inited = swift_initStaticObject();
    sub_10018D378();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
    inited = *(v3 + 96);
    v11 = swift_initStaticObject();
    sub_1000040A8(&qword_1003629B8);
    sub_10018D3CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10018388C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 12);
  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = v2 & 0xC000000000000001;
    v41 = v2 + 32;
    v5 = &_swiftEmptyDictionarySingleton;
    v38 = i;
    while (1)
    {
      v45 = v5;
      if (!v43)
      {
        break;
      }

      v33 = v4;
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v33, 1);
      v13 = v33 + 1;
      if (v12)
      {
        goto LABEL_40;
      }

LABEL_9:
      v44 = v13;
      v14 = *(v46 + 40);
      if (!(v14 >> 62))
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }

      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
LABEL_11:
        v16 = 0;
        v48 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = v14 & 0xC000000000000001;
        v1 = &_swiftEmptyDictionarySingleton;
        v47 = v14;
        while (1)
        {
          if (v49)
          {
            v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v16 >= *(v48 + 16))
            {
              goto LABEL_37;
            }

            v2 = *(v14 + 8 * v16 + 32);

            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v50 = v17;
          v19 = *(v2 + 16);
          v18 = *(v2 + 24);
          v20 = *(v2 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v52[0] = v1;
          v23 = sub_100186A08(v19, v18);
          v24 = *(v1 + 2);
          v25 = (v22 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_38;
          }

          v27 = v22;
          if (*(v1 + 3) >= v26)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v22)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1000920DC();
              if (v27)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_10008FFCC(v26, isUniquelyReferenced_nonNull_native);
            v28 = sub_100186A08(v19, v18);
            if ((v27 & 1) != (v29 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v23 = v28;
            if (v27)
            {
LABEL_12:

              v1 = *&v52[0];
              *(*(*&v52[0] + 56) + 8 * v23) = v20;

              goto LABEL_13;
            }
          }

          v1 = *&v52[0];
          *(*&v52[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
          v30 = (*(v1 + 6) + 16 * v23);
          *v30 = v19;
          v30[1] = v18;
          *(*(v1 + 7) + 8 * v23) = v20;

          v31 = *(v1 + 2);
          v12 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v12)
          {
            goto LABEL_39;
          }

          *(v1 + 2) = v32;
LABEL_13:
          ++v16;
          v14 = v47;
          if (v50 == v15)
          {
            goto LABEL_5;
          }
        }
      }

LABEL_4:
      v1 = &_swiftEmptyDictionarySingleton;
LABEL_5:
      v6 = *(v46 + 16);
      v7 = *(v46 + 24);
      v8 = *(v46 + 88);
      v52[0] = *(v46 + 72);
      v52[1] = v8;
      v9 = *(v46 + 120);
      v53 = *(v46 + 104);
      v54 = v9;
      v55[2] = v53;
      v55[3] = v9;
      v55[0] = v52[0];
      v55[1] = v8;
      v56 = v1;

      sub_1000B4E30(v52, &v51);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v45;
      sub_100189770(v55, v6, v7, v10);

      v5 = v51;
      v2 = v39;
      v4 = v44;
      v1 = v40;
      if (v44 == v38)
      {
        goto LABEL_44;
      }
    }

    if (v4 >= *(v42 + 16))
    {
      goto LABEL_41;
    }

    v11 = v4;
    v46 = *(v41 + 8 * v4);

    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v5 = &_swiftEmptyDictionarySingleton;
LABEL_44:
  v34 = v1[80];
  if (v34)
  {
    v35 = 0;
    v36 = 0uLL;
  }

  else
  {
    v35 = *(v1 + 9);
    v36 = *(v1 + 56);
  }

  *a1 = *(v1 + 11);
  *(a1 + 8) = v5;
  *(a1 + 16) = v36;
  *(a1 + 32) = v35;
  *(a1 + 40) = v34;
}

uint64_t sub_100183C64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018CD44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100183CD8(void *a1)
{
  v3 = v1;
  v5 = sub_1000040A8(&qword_100362A48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_0();
  sub_1001910F4(&qword_1003629F8, _s3KeyCMa_0);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 32);
    inited = swift_initStaticObject();
    sub_10018F358();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (*(*(v3 + 56) + 16))
    {
      inited = *(v3 + 56);
      v12 = swift_initStaticObject();
      sub_1000040A8(&qword_10035AA88);
      sub_10018F3AC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    inited = *(v3 + 40);
    v12 = swift_initStaticObject();
    sub_1000040A8(&qword_100362A08);
    sub_10018F484();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 48);
    type metadata accessor for NoPrerequisites();
    if (!swift_dynamicCastClass())
    {
      inited = v10;
      v12 = swift_initStaticObject();
      type metadata accessor for Condition();
      sub_1001910F4(&qword_100362A78, type metadata accessor for Condition);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    if (*(v3 + 64) != 8)
    {
      LOBYTE(v12) = *(v3 + 64);
      inited = swift_initStaticObject();
      sub_1000040A8(&qword_100362A80);
      sub_10018F538();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10018408C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018E644(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001840DC(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

void *sub_10018420C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F6D0(a1, sub_100181EFC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100184280(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_10018431C(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

void *sub_100184490@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F6D0(a1, sub_10018219C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001844EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181BA4);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100184530(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

uint64_t sub_10018463C(void *a1, char a2)
{
  v4 = sub_1000040A8(&qword_100362AB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_1();
  sub_1001910F4(&qword_100362AA0, _s3KeyCMa_1);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = a2;
  v9[1] = swift_initStaticObject();
  sub_10018FACC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001847DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F8B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100184848(void *a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100362AD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v15 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_2();
  sub_1001910F4(&qword_100362AC8, _s3KeyCMa_2);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  v10 = v16;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v11 = v15;
  if ((*(v2 + 40) & 1) == 0)
  {
    return (*(v5 + 8))(v9, v4);
  }

  inited = swift_initStaticObject();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v17 = 1;
  inited = swift_initStaticObject();
  sub_1001901B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = *(v5 + 8);
  v12(v11, v4);
  return (v12)(v9, v4);
}

uint64_t sub_100184B00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018FB20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100184B50@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018F7C0(a1, sub_100181CBC);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100184B94(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100008964(v2);
}

char *sub_100184C8C()
{
  result = sub_100187254(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 6581857;
  v4[5] = 0xE300000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    result = sub_100187254((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 29295;
  v7[5] = 0xE200000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_100187254((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = 7630702;
  v10[5] = 0xE300000000000000;
  qword_100361D38 = _swiftEmptyArrayStorage;
  return result;
}

char *sub_100184E5C()
{
  result = sub_100187254(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 1852138867;
  v4[5] = 0xE400000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    result = sub_100187254((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x6465726577736E61;
  v7[5] = 0xE800000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_100187254((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = 0x64657070696B73;
  v10[5] = 0xE700000000000000;
  qword_100361D40 = _swiftEmptyArrayStorage;
  return result;
}

char *sub_100185068()
{
  result = sub_100187254(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  if (v2 >= v1 >> 1)
  {
    result = sub_100187254((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 1;
  v3 = &_swiftEmptyArrayStorage[2 * v2];
  v3[4] = 0x64657463656C6573;
  v3[5] = 0xE800000000000000;
  qword_100361D48 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100185110()
{
  sub_100187254(0, 11, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v2 = 0xD000000000000019;
  v3 = "ContactsAvailable";
  v4 = "emporarilyUnavailable";
  result = 0xD000000000000018;
  v6 = "asInvokedFromEmergency";
  v7 = "WasInvokedFromRoadside";
  v8 = "builtinRoadsideAvailable";
  v9 = "honeNumberSelected";
  v10 = 0xD00000000000001BLL;
  v11 = "artedFromExplorer";
  v12 = "ot have revison set.";
  do
  {
    v13 = *(&off_1003220F0 + v0 + 32);
    if (v13 <= 4)
    {
      v14 = 0xD000000000000025;
      if (v13 == 3)
      {
        v15 = v6;
      }

      else
      {
        v14 = 0xD000000000000026;
        v15 = v7;
      }

      if (v13 == 2)
      {
        v14 = result;
        v15 = v4;
      }

      if (*(&off_1003220F0 + v0 + 32))
      {
        v16 = 0xD000000000000021;
      }

      else
      {
        v16 = v2;
      }

      if (*(&off_1003220F0 + v0 + 32))
      {
        v19 = v8;
      }

      else
      {
        v19 = v3;
      }

      v20 = *(&off_1003220F0 + v0 + 32) <= 1u;
    }

    else
    {
      if (v13 == 9)
      {
        v14 = 0xD000000000000022;
      }

      else
      {
        v14 = 0xD000000000000021;
      }

      if (v13 == 9)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v13 == 8)
      {
        v14 = v10;
        v15 = v9;
      }

      v16 = 0xD000000000000026;
      v17 = 0xD000000000000029;
      if (v13 == 6)
      {
        v17 = 0xD000000000000021;
        v18 = "roviderSelectionAvailable";
      }

      else
      {
        v18 = "builtinPhoneNumberAvailable";
      }

      if (v13 == 5)
      {
        v19 = "onversationActive";
      }

      else
      {
        v16 = v17;
        v19 = v18;
      }

      v20 = *(&off_1003220F0 + v0 + 32) <= 7u;
    }

    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = v14;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v15;
    }

    v37 = v1;
    v24 = v1[2];
    v23 = v1[3];
    if (v24 >= v23 >> 1)
    {
      v32 = v6;
      v33 = result;
      v30 = v8;
      v31 = v7;
      v35 = v3;
      v36 = v2;
      v34 = v4;
      v28 = v10;
      v29 = v9;
      v26 = v12;
      v27 = v11;
      sub_100187254((v23 > 1), v24 + 1, 1);
      v12 = v26;
      v11 = v27;
      v10 = v28;
      v9 = v29;
      v8 = v30;
      v7 = v31;
      v6 = v32;
      result = v33;
      v4 = v34;
      v3 = v35;
      v2 = v36;
      v1 = v37;
    }

    ++v0;
    v1[2] = v24 + 1;
    v25 = &v1[2 * v24];
    v25[4] = v21;
    v25[5] = v22 | 0x8000000000000000;
  }

  while (v0 != 11);
  qword_100361D50 = v1;
  return result;
}

uint64_t sub_100185334(void *a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100362AE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - v6;
  v28 = v2;
  v8 = type metadata accessor for Condition();

  sub_1000040A8(&qword_100362AF0);
  if (swift_dynamicCast())
  {
    sub_100008A18(v23, v25);
    sub_1000088DC(a1, a1[3]);
    _s3KeyCMa_3();
    sub_1001910F4(&qword_100362B08, _s3KeyCMa_3);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v9 = v26;
    v10 = v27;
    sub_1000088DC(v25, v26);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = v26;
    v16 = v27;
    sub_1000088DC(v25, v26);
    v28 = v14;
    KeyedEncodingContainer.superEncoder(forKey:)();
    (*(v16 + 16))(v23, v15, v16);

    sub_100008964(v23);
    (*(v5 + 8))(v7, v4);
    return sub_100008964(v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_100008FA0(v23, &qword_100362AF8);
    v18 = type metadata accessor for EncodingError();
    swift_allocError();
    v20 = v19;
    sub_1000040A8(&qword_100362B00);
    v20[3] = v8;
    *v20 = v2;
    sub_1000088DC(a1, a1[3]);

    dispatch thunk of Encoder.codingPath.getter();
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v21._object = 0x80000001002A1600;
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v21);
    *&v23[0] = v2;
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for EncodingError.invalidValue(_:), v18);
    return swift_willThrow();
  }
}

uint64_t sub_100185724(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = a1;
    v9 = type metadata accessor for EncodingError();
    swift_allocError();
    v11 = v10;
    sub_1000040A8(&qword_100362B00);
    v11[3] = type metadata accessor for LogicalCondition();
    *v11 = v2;
    sub_1000088DC(v8, v8[3]);

    dispatch thunk of Encoder.codingPath.getter();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v12._object = 0x80000001002A1620;
    v12._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v12);
    v16 = v2;
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 8) + 104))(v11, enum case for EncodingError.invalidValue(_:), v9);
    return swift_willThrow();
  }

  v6 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if (*(v2 + 16) != 2)
  {
    v16 = v3;
    sub_100022834(v14, v15);
    sub_1000040A8(&qword_100362B10);
    sub_100190208();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    return sub_100008964(v14);
  }

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_12:
    v16 = v5;
    sub_100022834(v14, v15);
    type metadata accessor for Condition();
    sub_1001910F4(&qword_100362A78, type metadata accessor for Condition);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

    return sub_100008964(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_100185A64()
{
  if (!*(*v0 + 16))
  {
    return 6581857;
  }

  if (*(*v0 + 16) == 1)
  {
    return 29295;
  }

  return 7630702;
}

uint64_t sub_100185AC8()
{
  if (!*(*v0 + 16))
  {
    return 1852138867;
  }

  if (*(*v0 + 16) == 1)
  {
    return 0x6465726577736E61;
  }

  return 0x64657070696B73;
}

uint64_t sub_100185B1C(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_100185BD4(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100022834(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100008964(v2);
}

uint64_t sub_100185CCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100185D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a2;
  v8 = sub_1000040A8(&qword_100362B30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireStringsBundle.Key();
  sub_1001910F4(&qword_100362B28, type metadata accessor for QuestionnaireStringsBundle.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!a3 || (inited = swift_initStaticObject(), KeyedEncodingContainer.encode(_:forKey:)(), !v5))
  {
    inited = swift_initStaticObject();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100185F1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001902BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100185F90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000040A8(&qword_100362B78);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  if (a4)
  {
    v21 = v4;
    v22 = v10;
    sub_1000088DC(a1, a1[3]);
    type metadata accessor for QuestionnaireRepresentation.Key();
    sub_1001910F4(&qword_100362B40, type metadata accessor for QuestionnaireRepresentation.Key);

    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_1000040A8(&qword_100362B80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100279160;
    v14 = *(a4 + 40);
    v15 = *(a4 + 48);
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = v14;
    *(v13 + 56) = v15;
    *&v23 = a2;
    *(&v23 + 1) = a3;
    inited = swift_initStaticObject();
    sub_100190C18();

    v16 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v16)
    {

      return (*(v22 + 8))(v12, v9);
    }

    else
    {
      *&v23 = swift_initStaticObject();
      KeyedEncodingContainer.encode(_:forKey:)();
      *&v23 = a4;
      inited = swift_initStaticObject();
      type metadata accessor for Questionnaire();
      sub_1001910F4(&qword_100362B90, type metadata accessor for Questionnaire);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10018388C(&v25);
      v23 = v25;
      v24[0] = v26[0];
      *(v24 + 9) = *(v26 + 9);
      inited = swift_initStaticObject();
      sub_100190C6C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100190CC0(&v25);
      *&v23 = v13;
      inited = swift_initStaticObject();
      sub_1000040A8(&qword_100362B48);
      sub_100190CF0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v22 + 8))(v12, v9);
    }
  }

  else
  {
    v17 = type metadata accessor for EncodingError();
    swift_allocError();
    v19 = v18;
    sub_1000040A8(&qword_100362B00);
    *v19 = a2;
    v19[1] = a3;
    v19[2] = 0;
    v19[3] = &type metadata for QuestionnaireRepresentation;
    EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for EncodingError.invalidValue(_:), v17);
    return swift_willThrow();
  }
}

uint64_t sub_100186468@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100190514(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001864B8()
{
  swift_allocObject();
  type metadata accessor for StringCodingKey();
  swift_deallocPartialClassInstance();
  return 0;
}

__n128 sub_10018652C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100186540(uint64_t a1, int a2)
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

uint64_t sub_100186588(uint64_t result, int a2, int a3)
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

uint64_t sub_1001865F4(void *a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100362BE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireRegion.Key();
  sub_1001910F4(&qword_100362BB8, type metadata accessor for QuestionnaireRegion.Key);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[3] = a2;
  v9[1] = swift_initStaticObject();
  sub_1000040A8(&qword_100362BC0);
  sub_100191214();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001867A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100190E00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100186880(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100186C20(a1, v4);
}

unint64_t sub_1001868C8(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100186CE4(a1, v2);
}

unint64_t sub_100186934(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100186F28(a1, v2);
}

unint64_t sub_10018699C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100186D50(a1 & 1, v2);
}

unint64_t sub_100186A08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100186DC0(a1, a2, v4);
}

unint64_t sub_100186A84(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return sub_100186E78(a1, v2);
}

unint64_t sub_100186AF0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100186F98(a1, v2);
}

unint64_t sub_100186BBC(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10018709C(a1, v2);
}

unint64_t sub_100186C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1001912EC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100186CE4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186D50(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100186E78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100186F28(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100186F98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10018709C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_100187234(char *a1, int64_t a2, char a3)
{
  result = sub_100187374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187254(char *a1, int64_t a2, char a3)
{
  result = sub_100187478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187274(char *a1, int64_t a2, char a3)
{
  result = sub_100187584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187294(char *a1, int64_t a2, char a3)
{
  result = sub_100187690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001872B4(char *a1, int64_t a2, char a3)
{
  result = sub_10018779C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001872D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1001878C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001872F4(char *a1, int64_t a2, char a3)
{
  result = sub_100187AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187314(char *a1, int64_t a2, char a3)
{
  result = sub_100187BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187334(char *a1, int64_t a2, char a3)
{
  result = sub_100187CF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187354(char *a1, int64_t a2, char a3)
{
  result = sub_100187E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187374(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100187478(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100359B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187584(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187690(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018779C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001878C4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040A8(&qword_10035E428);
  v10 = *(sub_1000040A8(&qword_100356188) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000040A8(&qword_100356188) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100187AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187BD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187CF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100362C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100187F24@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10018699C(a1 & 1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100090CC8();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 72 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_100188248(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_100187FD8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100186BBC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10009224C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1000456C8((*(v9 + 56) + 32 * v7), a2);
    sub_100188588(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

Swift::Int sub_1001880B4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100188248(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 72 * v3;
        v15 = (v14 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v15 + 72 || v3 != v6)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1001883F4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100188588(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10018883C(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1001868C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008D44C(v16, a4 & 1);
      result = sub_1001868C8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for CTSubscriptionSlot(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000908BC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_10018899C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100186934(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008D95C(v14, a3 & 1);
      result = sub_100186934(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100090B6C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_100188AE8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_10018699C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008DBEC(v14, a3 & 1);
      result = sub_10018699C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100090CC8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    v21 = v19[7] + 72 * result;
    *v21 = *a1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    *(v21 + 64) = *(a1 + 64);
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 72 * result;

  return sub_100191EC0(a1, v20);
}

uint64_t sub_100188C58(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A84(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008E1DC(v16, a4 & 1);
      v11 = sub_100186A84(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for Question();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100090FFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v24 = v21[7] + 16 * v11;
  *v24 = a1;
  *(v24 + 8) = a2;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_100188DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A84(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008E48C(v16, a4 & 1);
      v11 = sub_100186A84(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for Option();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100091174();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v24 = (v21[7] + 16 * v11);
  *v24 = a1;
  v24[1] = a2;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

_OWORD *sub_100188F48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000912E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10008E734(v16, a4 & 1);
    v11 = sub_100186A08(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100008964(v22);

    return sub_1000456C8(a1, v22);
  }

  else
  {
    sub_100189AE8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100189098(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100186A84(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10008E9EC(v14, a3 & 1);
      v9 = sub_100186A84(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for Question();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_100091488();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

_OWORD *sub_1001891F8(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100186934(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1000915EC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10008EC84(v14, a3 & 1);
    v9 = sub_100186934(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_100008964(v20);

    return sub_1000456C8(a1, v20);
  }

  else
  {

    return sub_100189B54(v9, a2, a1, v19);
  }
}

uint64_t sub_100189324(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_100186A08(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_10008F1E0(v22, a7 & 1);
      v17 = sub_100186A08(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1000918FC();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;

    return sub_10000F4E8(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = v27[7] + 32 * v17;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  *(v33 + 24) = a4 & 1;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

uint64_t sub_1001894D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008F760(v16, a4 & 1);
      v11 = sub_100186A08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100091C60();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10018964C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100186B80(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100091DCC();
    result = v17;
    goto LABEL_8;
  }

  sub_10008FA04(v14, a3 & 1);
  result = sub_100186B80(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100189770(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100186A08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008FC68(v16, a4 & 1);
      v11 = sub_100186A08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100091F18();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_100190DC8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

_OWORD *sub_100189910(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100186BBC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10009224C();
      goto LABEL_7;
    }

    sub_100090274(v17, a3 & 1);
    v23 = sub_100186BBC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100189BBC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100008964(v21);

  return sub_1000456C8(a1, v21);
}

_OWORD *sub_100189AE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000456C8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100189B54(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1000456C8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100189BBC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000456C8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unsigned __int8 *sub_100189C7C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10018A200();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10018A200()
{
  v0 = String.subscript.getter();
  v4 = sub_10018A280(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10018A280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10017CE28(v9, 0), v12 = sub_10018A3D8(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10018A3D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10018A5F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10018A5F8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10018A5F8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10018A674(void *a1)
{
  v3 = sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_74;
  }

  sub_1000088DC(v42, v42[3]);
  v40 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v41 = v4;
  sub_100031770();
  v5 = StringProtocol.components<A>(separatedBy:)();

  result = v5;
  if (v5[2] <= 1uLL)
  {

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
LABEL_73:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    sub_100008964(v42);
LABEL_74:
    sub_100008964(a1);
    return v3;
  }

  v10 = v5[4];
  v11 = v5[5];
  v12 = HIBYTE(v11) & 0xF;
  v13 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_68:

    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v31;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    goto LABEL_73;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v32 = v5;

    v3 = sub_100189C7C(v10, v11, 10);
    v34 = v33;

    result = v32;
    if ((v34 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v40 = v5[4];
    v41 = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v10 == 43)
    {
      if (v12)
      {
        v15 = v12 - 1;
        if (v12 != 1)
        {
          v3 = 0;
          v26 = &v40 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v20 = __CFADD__(10 * v3, v27);
            v3 = 10 * v3 + v27;
            if (v20)
            {
              break;
            }

            ++v26;
            if (!--v15)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (v10 != 45)
      {
        if (v12)
        {
          v3 = 0;
          v29 = &v40;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v20 = __CFADD__(10 * v3, v30);
            v3 = 10 * v3 + v30;
            if (v20)
            {
              break;
            }

            v29 = (v29 + 1);
            if (!--v12)
            {
LABEL_65:
              LOBYTE(v15) = 0;
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v12)
      {
        v15 = v12 - 1;
        if (v12 != 1)
        {
          v3 = 0;
          v21 = &v40 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v20 = 10 * v3 >= v22;
            v3 = 10 * v3 - v22;
            if (!v20)
            {
              break;
            }

            ++v21;
            if (!--v15)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v10 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  v15 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    v16 = *v15;
    if (v16 == 43)
    {
      if (v13 < 1)
      {
        goto LABEL_81;
      }

      v23 = v13 - 1;
      if (v13 != 1)
      {
        v3 = 0;
        if (!v15)
        {
          goto LABEL_67;
        }

        v24 = (v15 + 1);
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v20 = __CFADD__(10 * v3, v25);
          v3 = 10 * v3 + v25;
          if (v20)
          {
            break;
          }

          ++v24;
          if (!--v23)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v16 == 45)
    {
      if (v13 < 1)
      {
        __break(1u);
        goto LABEL_80;
      }

      v17 = v13 - 1;
      if (v13 != 1)
      {
        v3 = 0;
        if (!v15)
        {
          goto LABEL_67;
        }

        v18 = (v15 + 1);
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v20 = 10 * v3 >= v19;
          v3 = 10 * v3 - v19;
          if (!v20)
          {
            break;
          }

          ++v18;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v13)
    {
      v3 = 0;
      if (!v15)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v28 = *v15 - 48;
        if (v28 > 9)
        {
          break;
        }

        if (!is_mul_ok(v3, 0xAuLL))
        {
          break;
        }

        v20 = __CFADD__(10 * v3, v28);
        v3 = 10 * v3 + v28;
        if (v20)
        {
          break;
        }

        ++v15;
        if (!--v13)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_66:
    v3 = 0;
    LOBYTE(v15) = 1;
LABEL_67:
    if (v15)
    {
      goto LABEL_68;
    }

LABEL_70:
    if (result[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    v39 = result;
    v15 = _StringObject.sharedUTF8.getter();
    result = v39;
  }

  v35 = result[6];
  v36 = result[7];

  sub_100180018(v35, v36);
  if (v37)
  {
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v38;
    v3 = sub_1000088DC(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    goto LABEL_73;
  }

  sub_100008964(v42);
  sub_100008964(a1);
  return v3;
}

uint64_t sub_10018AC1C(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  v2 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353AF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = sub_10000F53C(v3, qword_100381F20);
  if (*(v2 + 16) && (v5 = sub_100186BBC(v4), (v6 & 1) != 0))
  {
    sub_100048F80(*(v2 + 56) + 32 * v5, v11);

    type metadata accessor for QuestionnaireRevisionContainer();
    if (swift_dynamicCast())
    {
      return v11[5];
    }
  }

  else
  {
  }

  v8 = type metadata accessor for DecodingError();
  swift_allocError();
  v10 = v9;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
  return swift_willThrow();
}

uint64_t sub_10018ADD8(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  v2 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_100353B00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = sub_10000F53C(v3, qword_100381F50);
  if (*(v2 + 16) && (v5 = sub_100186BBC(v4), (v6 & 1) != 0))
  {
    sub_100048F80(*(v2 + 56) + 32 * v5, v11);

    type metadata accessor for QuestionnairePresentationBuddyContainer();
    if (swift_dynamicCast())
    {
      return v11[5];
    }
  }

  else
  {
  }

  v8 = type metadata accessor for DecodingError();
  swift_allocError();
  v10 = v9;
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
  return swift_willThrow();
}

uint64_t sub_10018AF94(void *a1)
{
  v3 = a1[3];
  sub_1000088DC(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    sub_1000088DC(v6, v6[3]);
    sub_1000040A8(&qword_100362C10);
    sub_1001920B4();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    sub_100008964(v6);
    sub_100008964(a1);
  }

  return v3;
}

uint64_t sub_10018B230(void *a1)
{
  v2 = sub_1000040A8(&qword_100362898);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key();
  sub_1001910F4(&qword_1003628A0, type metadata accessor for QuestionnairePresentationBuddyAutoSendPolicy.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  inited = swift_initStaticObject();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedDecodingContainer.decode(_:forKey:)();
  inited = swift_initStaticObject();
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100008964(a1);
  return v6;
}

uint64_t sub_10018B464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = sub_1000040A8(&qword_1003628B0);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - v6;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnairePresentationBuddy.Key();
  sub_1001910F4(&qword_1003628B8, type metadata accessor for QuestionnairePresentationBuddy.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008964(a1);
  }

  v8 = v5;
  inited = swift_initStaticObject();
  v9 = v19;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000040A8(&qword_1003628C0);
  v23 = swift_initStaticObject();
  sub_10018B860(&qword_1003628C8, sub_10018B7B8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = inited;
  v11 = swift_initStaticObject();
  inited = v11;
  v12 = KeyedDecodingContainer.contains(_:)();
  if (v12)
  {
    v23 = v11;
    sub_10018B80C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v7, v9);
    v13 = inited;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  result = sub_100008964(a1);
  v16 = v17;
  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = (v12 & 1) == 0;
  return result;
}

unint64_t sub_10018B7B8()
{
  result = qword_1003628D0;
  if (!qword_1003628D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628D0);
  }

  return result;
}

unint64_t sub_10018B80C()
{
  result = qword_1003628D8;
  if (!qword_1003628D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628D8);
  }

  return result;
}

uint64_t sub_10018B860(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(&qword_1003628C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018B8E4()
{
  result = qword_1003628F0;
  if (!qword_1003628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628F0);
  }

  return result;
}

unint64_t sub_10018B938()
{
  result = qword_1003628F8;
  if (!qword_1003628F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003628F8);
  }

  return result;
}

uint64_t sub_10018B98C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1000040A8(&qword_100362900);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = a1;
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362908, type metadata accessor for QuestionPresentationBuddy.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008964(a1);
  }

  v44 = v5;
  v9 = v45;
  inited = swift_initStaticObject();
  v51[0] = inited;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = inited;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v42 = v11;
  }

  else
  {
    v42 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = swift_initStaticObject();
  v51[0] = v14;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = v14;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v15;
  }

  else
  {
    v40 = 0;
    v43 = 0xE000000000000000;
  }

  v16 = swift_initStaticObject();
  v51[0] = v16;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1000040A8(&qword_10035AB90);
    *&v46 = v16;
    sub_10018C1D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v51[0];
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v41 = v17;
  v18 = swift_initStaticObject();
  v51[0] = v18;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1000040A8(&qword_100355E30);
    *&v46 = v18;
    sub_10018C468(&qword_100362928);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v51[0];
  }

  else
  {
    v39 = 0;
  }

  v20 = swift_initStaticObject();
  v51[0] = v20;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v51[0] = v20;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v22;
    v38 = v21;
  }

  else
  {
    v38 = 0;
    v23 = 0;
  }

  v24 = v44;
  sub_1001809F0(v8, v52);
  v37 = v23;
  sub_1000088DC(v52, v53);
  v44 = sub_100180C04(v42, v13);
  v36 = v25;

  sub_1000088DC(v52, v53);
  v40 = sub_100180C04(v40, v43);
  v42 = v26;

  sub_1000040A8(&qword_100362910);
  v51[9] = swift_initStaticObject();
  sub_10018C0C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v7, v4);
  v27 = v54;
  sub_100008964(v52);
  *&v46 = v44;
  v28 = v36;
  *(&v46 + 1) = v36;
  *&v47 = v40;
  v29 = v41;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  v30 = v39;
  v31 = v38;
  *(&v48 + 1) = v39;
  *&v49 = v38;
  v32 = v37;
  *(&v49 + 1) = v37;
  v50 = v27;
  sub_100092850(&v46, v51);
  sub_100008964(v8);
  v51[0] = v44;
  v51[1] = v28;
  v51[2] = v40;
  v51[3] = v42;
  v51[4] = v29;
  v51[5] = v30;
  v51[6] = v31;
  v51[7] = v32;
  v51[8] = v27;
  result = sub_10018C1A8(v51);
  v33 = v49;
  *(v9 + 32) = v48;
  *(v9 + 48) = v33;
  *(v9 + 64) = v50;
  v34 = v47;
  *v9 = v46;
  *(v9 + 16) = v34;
  return result;
}

unint64_t sub_10018C0C8()
{
  result = qword_100362918;
  if (!qword_100362918)
  {
    sub_100008CF0(&qword_100362910);
    sub_10018C154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362918);
  }

  return result;
}

unint64_t sub_10018C154()
{
  result = qword_100362920;
  if (!qword_100362920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362920);
  }

  return result;
}

unint64_t sub_10018C1D8()
{
  result = qword_100362930;
  if (!qword_100362930)
  {
    sub_100008CF0(&qword_10035AB90);
    sub_10018C25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362930);
  }

  return result;
}

unint64_t sub_10018C25C()
{
  result = qword_100362938;
  if (!qword_100362938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362938);
  }

  return result;
}

unint64_t sub_10018C2B0()
{
  result = qword_100362960;
  if (!qword_100362960)
  {
    sub_100008CF0(&qword_10035AB90);
    sub_10018C334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362960);
  }

  return result;
}

unint64_t sub_10018C334()
{
  result = qword_100362968;
  if (!qword_100362968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362968);
  }

  return result;
}

unint64_t sub_10018C388()
{
  result = qword_100362970;
  if (!qword_100362970)
  {
    sub_100008CF0(&qword_100362910);
    sub_10018C414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362970);
  }

  return result;
}

unint64_t sub_10018C414()
{
  result = qword_100362978;
  if (!qword_100362978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362978);
  }

  return result;
}

uint64_t sub_10018C468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(&qword_100355E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018C4D4(void *a1)
{
  v2 = sub_1000040A8(&qword_100362988);
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = a1[3];
  v70 = a1;
  v17 = sub_1000088DC(a1, v16);
  type metadata accessor for OptionPresentationBuddy.Key();
  sub_1001910F4(&qword_100362990, type metadata accessor for OptionPresentationBuddy.Key);
  v18 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v19 = v70;
    goto LABEL_3;
  }

  v61 = v6;
  v62 = v9;
  v68 = 0;
  v63 = v12;
  v21 = v66;
  inited = swift_initStaticObject();
  v69[0] = inited;
  v23 = v67;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v69[0] = inited;
    v17 = v15;
    v24 = v68;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v70;
    if (v24)
    {
      (*(v21 + 8))(v15, v23);
      goto LABEL_3;
    }

    v27 = v25;
    v68 = 0;
    v64 = v26;
  }

  else
  {
    v27 = 0;
    v64 = 0xE000000000000000;
    v19 = v70;
  }

  v70 = static Color.clear.getter();
  v28 = swift_initStaticObject();
  v69[0] = v28;
  if (KeyedDecodingContainer.contains(_:)())
  {
    v69[0] = v28;
    v29 = v63;
    v17 = v15;
    v30 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v30;
    if (v30)
    {

      (*(v21 + 8))(v15, v23);
      goto LABEL_3;
    }

    v40 = v29;
    v41 = swift_initStaticObject();
    v69[0] = v41;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v69[0] = v41;
      v42 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v40;
      if (v42)
      {

        v17 = *(v21 + 8);
        (v17)(v43, v23);
        v44 = v15;
LABEL_20:
        (v17)(v44, v23);
        goto LABEL_3;
      }

      v69[0] = swift_initStaticObject();
      v49 = v62;
      KeyedDecodingContainer.decode(_:forKey:)();
      v68 = 0;
      v53 = v49;
      v31 = v27;
      v60 = v15;

      v33 = v21;
      v54 = *(v21 + 8);
      v54(v53, v23);
      v54(v40, v23);
      goto LABEL_29;
    }

    v60 = v15;
    v45 = swift_initStaticObject();
    v69[0] = v45;
    v46 = v40;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      v31 = v27;
      v33 = v21;
      (*(v21 + 8))(v40, v23);
LABEL_29:
      v17 = 0;
      v32 = 0;
      goto LABEL_14;
    }

    v69[0] = v45;
    v47 = v61;
    v48 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v48;
    if (v48)
    {

      v17 = *(v21 + 8);
      (v17)(v46, v23);
LABEL_28:
      v44 = v60;
      goto LABEL_20;
    }

    v69[0] = swift_initStaticObject();
    v50 = v68;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = v50;
    if (v50)
    {

      v17 = *(v21 + 8);
      (v17)(v47, v23);
      (v17)(v46, v23);
      goto LABEL_28;
    }

    v32 = v52;
    v62 = v51;
    v69[0] = swift_initStaticObject();
    v55 = v68;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v55)
    {

      v17 = *(v21 + 8);
      (v17)(v61, v23);
      (v17)(v46, v23);
      v44 = v60;
      goto LABEL_20;
    }

    v69[0] = swift_initStaticObject();
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v68 = 0;
    v31 = v27;
    v58 = sub_10009AE94(v56, v57);

    v33 = v21;
    if (!v58)
    {
      v58 = static Color.clear.getter();
    }

    v70 = v58;
    v59 = *(v21 + 8);
    v59(v65, v23);
    v59(v61, v23);
    v59(v63, v23);
    v17 = v62;
  }

  else
  {
    v31 = v27;
    v60 = v15;
    v17 = 0;
    v32 = 0;
    v33 = v21;
  }

LABEL_14:
  v34 = v68;
  sub_1001809F0(v19, v69);
  if (!v34)
  {
    sub_1000088DC(v69, v69[3]);
    v68 = v32;
    v35 = v17;
    v36 = sub_100180C04(v31, v64);
    v38 = v37;

    (*(v33 + 8))(v60, v23);
    type metadata accessor for OptionPresentation();
    v17 = swift_allocObject();
    *(v17 + 16) = v36;
    *(v17 + 24) = v38;
    v39 = v68;
    *(v17 + 48) = v35;
    *(v17 + 56) = v39;
    *(v17 + 64) = v70;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    sub_100008964(v69);
    sub_100008964(v19);
    return v17;
  }

  (*(v33 + 8))(v60, v23);

LABEL_3:
  sub_100008964(v19);
  return v17;
}

uint64_t sub_10018CD44(void *a1)
{
  v3 = sub_1000040A8(&qword_1003629A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  _s3KeyCMa();
  sub_1001910F4(&qword_1003629A8, _s3KeyCMa);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    sub_10018D270();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v31;
    inited = swift_initStaticObject();
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    v13 = sub_10018ADD8(a1);
    if (*(v13 + 24))
    {
      v15 = *(v13 + 48);
      v29 = *(v13 + 40);
      v30 = v15;
      v28 = *(v13 + 32);
      HIDWORD(v27) = *(v13 + 56);

      v32[0] = v8;
      v16 = v28;
      v17 = v29;
      if ((v27 & 0x100000000) != 0)
      {
        v16 = 0;
        v17 = 0;
      }

      v18 = v30;
      if ((v27 & 0x100000000) != 0)
      {
        v18 = 0;
      }

      v33 = v12;
      v34 = v11;
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = BYTE4(v27) & 1;
      v19 = sub_10018AC1C(a1);
      if ((*(v19 + 32) & 1) == 0)
      {
        v23 = *(v19 + 16);
        v29 = *(v19 + 24);
        v30 = v23;

        inited = swift_initStaticObject();
        v24 = KeyedDecodingContainer.decode(_:forKey:)();
        v25 = v30;
        v28 = v24;
        sub_1000040A8(&qword_1003629B8);
        v31 = swift_initStaticObject();
        sub_10018D2C4();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v26 = inited;
        type metadata accessor for Questionnaire();
        swift_allocObject();
        v7 = sub_10008B90C(v25, v29, v32, v28, v26);
        (*(v4 + 8))(v6, v3);
        sub_100008964(a1);
        return v7;
      }

      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v20;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v7 = v29;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:));
      swift_willThrow();
    }

    else
    {
      v30 = v13;

      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v22;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v7 = v29;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v21);
      swift_willThrow();
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_10018D270()
{
  result = qword_1003629B0;
  if (!qword_1003629B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629B0);
  }

  return result;
}

unint64_t sub_10018D2C4()
{
  result = qword_1003629C0;
  if (!qword_1003629C0)
  {
    sub_100008CF0(&qword_1003629B8);
    sub_1001910F4(&qword_1003629C8, type metadata accessor for Question);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629C0);
  }

  return result;
}

unint64_t sub_10018D378()
{
  result = qword_1003629D8;
  if (!qword_1003629D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629D8);
  }

  return result;
}

unint64_t sub_10018D3CC()
{
  result = qword_1003629E0;
  if (!qword_1003629E0)
  {
    sub_100008CF0(&qword_1003629B8);
    sub_1001910F4(&qword_1003629E8, type metadata accessor for Question);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003629E0);
  }

  return result;
}

uint64_t sub_10018D480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = sub_100181138(a1, a2);
  if (v10 == 3)
  {
    v11 = type metadata accessor for DecodingError();
    v12 = swift_allocError();
    v14 = v13;
    _StringGuts.grow(_:)(24);

    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 11815;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v14, enum case for DecodingError.dataCorrupted(_:), v11);
LABEL_6:
    v18 = v12;
    swift_willThrow();
    return v18;
  }

  if (a5 != 2)
  {
    v19 = type metadata accessor for DecodingError();
    v12 = swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(39);

    sub_10018F33C(a3, a4, a5);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
    goto LABEL_6;
  }

  v17 = v10;
  type metadata accessor for QuestionCondition();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;

  return v18;
}

uint64_t sub_10018D6FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a1 == 0x64657463656C6573 && a2 == 0xE800000000000000;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v18 = type metadata accessor for DecodingError();
    v13 = swift_allocError();
    v20 = v19;
    _StringGuts.grow(_:)(24);

    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 11815;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.dataCorrupted(_:), v18);
    goto LABEL_10;
  }

  if (a5 != 2)
  {
    v12 = type metadata accessor for DecodingError();
    v13 = swift_allocError();
    v15 = v14;
    _StringGuts.grow(_:)(39);

    sub_10018F33C(a3, a4, a5);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v15, enum case for DecodingError.dataCorrupted(_:), v12);
LABEL_10:
    v11 = v13;
    swift_willThrow();
    return v11;
  }

  type metadata accessor for OptionCondition();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  return v11;
}

uint64_t sub_10018D99C(uint64_t a1, void *a2)
{
  v4 = sub_100181310(a1, a2);
  if (v4 == 11)
  {
    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    _StringGuts.grow(_:)(24);

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 11815;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v5);
    return swift_willThrow();
  }

  else
  {
    v11 = v4;
    type metadata accessor for BuiltInCondition();
    result = swift_allocObject();
    *(result + 16) = v11;
  }

  return result;
}

uint64_t sub_10018DAEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = sub_100181DBC(a1, a2);
  if (v5)
  {
    return v6;
  }

  if (a5 == 1)
  {
    v6 = result;
    sub_1000040A8(&qword_1003681A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100281610;
    type metadata accessor for Condition();
    *(v12 + 32) = sub_10018DF68(a3, a4, 1);
    result = v6;
    v16 = v6;
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_16:
    type metadata accessor for AndCondition();
    v6 = swift_allocObject();
    v6[16] = 0;
    *(v6 + 3) = v12;
    return v6;
  }

  if (a5)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    _StringGuts.grow(_:)(48);

LABEL_14:
    sub_10018F33C(a3, a4, a5);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.dataCorrupted(_:), v17);
    swift_willThrow();
    return v6;
  }

  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v26 = a4;
    v27 = result;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for Condition();
    v6 = (a3 + 48);
    do
    {
      v13 = *(v6 - 2);
      v14 = *(v6 - 1);
      v15 = *v6;
      sub_10018F33C(v13, v14, *v6);
      sub_10018DF68(v13, v14, v15);
      v6 += 24;
      sub_10018F248(v13, v14, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
    a4 = v26;
    v12 = _swiftEmptyArrayStorage;
    result = v27;
  }

  v16 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v16 == 1)
  {
    type metadata accessor for OrCondition();
    v6 = swift_allocObject();
    v6[16] = 1;
    *(v6 + 3) = v12;
    return v6;
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
LABEL_26:

    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v24;
    _StringGuts.grow(_:)(58);
    v25._countAndFlagsBits = 0xD000000000000037;
    v25._object = 0x80000001002A1460;
    String.append(_:)(v25);
    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v12 + 32);

LABEL_22:

    type metadata accessor for NotCondition();
    v6 = swift_allocObject();
    sub_1000040A8(&qword_1003681A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100281610;
    *(v23 + 32) = v22;
    v6[16] = 2;
    *(v6 + 3) = v23;
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10018DF68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(39);

    v48 = 0xD000000000000024;
    v49 = 0x80000001002A13B0;
    v45 = a1;
    v46 = a2;
    v47 = a3;
    sub_10018F33C(a1, a2, a3);
LABEL_12:
    v23._countAndFlagsBits = String.init<A>(describing:)();
    v24 = &v48;
    String.append(_:)(v23);

    v25._countAndFlagsBits = 46;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
    goto LABEL_13;
  }

  if (*(a1 + 16) != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v22;
    _StringGuts.grow(_:)(48);

    v48 = 0xD00000000000002DLL;
    v49 = 0x80000001002A13E0;
    v45 = a1;
    v46 = a2;
    v47 = 1;

    goto LABEL_12;
  }

  result = sub_1000FA5AC(a1);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (qword_100353B08 != -1)
    {
      result = swift_once();
    }

    v45 = v7;
    v46 = v8;
    __chkstk_darwin(result);
    v44 = &v45;
    v10 = sub_1000FA628(sub_10001D8F0, v43, v9);
    if (v10)
    {
      if (*(a1 + 16))
      {
        v11 = sub_100186A08(v7, v8);
        if (v12)
        {
          v13 = *(a1 + 56) + 24 * v11;
          v14 = *v13;
          v15 = *(v13 + 8);
          v16 = *(v13 + 16);
          sub_10018F33C(*v13, v15, v16);
          v17 = sub_10018DAEC(v7, v8, v14, v15, v16);
LABEL_30:
          v24 = v17;

          sub_10018F248(v14, v15, v16);
          return v24;
        }

        __break(1u);
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (qword_100353B10 == -1)
    {
LABEL_16:
      v45 = v7;
      v46 = v8;
      __chkstk_darwin(v10);
      v44 = &v45;
      v27 = sub_1000FA628(sub_1001921CC, v43, v26);
      if ((v27 & 1) == 0)
      {
        if (qword_100353B18 == -1)
        {
LABEL_21:
          v45 = v7;
          v46 = v8;
          __chkstk_darwin(v27);
          v44 = &v45;
          v32 = sub_1000FA628(sub_1001921CC, v43, v31);
          if ((v32 & 1) == 0)
          {
            if (qword_100353B20 == -1)
            {
LABEL_26:
              v45 = v7;
              v46 = v8;
              __chkstk_darwin(v32);
              v44 = &v45;
              result = sub_1000FA628(sub_1001921CC, v43, v35);
              if (result)
              {
                if (*(a1 + 16))
                {
                  result = sub_100186A08(v7, v8);
                  if (v36)
                  {
                    v37 = *(a1 + 56) + 24 * result;
                    v14 = *v37;
                    v15 = *(v37 + 8);
                    v16 = *(v37 + 16);
                    sub_10018F33C(*v37, v15, v16);
                    v17 = sub_10018D99C(v7, v8);
                    goto LABEL_30;
                  }

                  goto LABEL_42;
                }

LABEL_41:
                __break(1u);
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              v38 = type metadata accessor for DecodingError();
              swift_allocError();
              v40 = v39;
              v45 = 0;
              v46 = 0xE000000000000000;
              v24 = &v45;
              _StringGuts.grow(_:)(27);

              v45 = 0xD000000000000018;
              v46 = 0x80000001002A1410;
              v41._countAndFlagsBits = v7;
              v41._object = v8;
              String.append(_:)(v41);

              v42._countAndFlagsBits = 46;
              v42._object = 0xE100000000000000;
              String.append(_:)(v42);
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.dataCorrupted(_:), v38);
LABEL_13:
              swift_willThrow();
              return v24;
            }

LABEL_39:
            v32 = swift_once();
            goto LABEL_26;
          }

          if (*(a1 + 16))
          {
            result = sub_100186A08(v7, v8);
            if (v33)
            {
              v34 = *(a1 + 56) + 24 * result;
              v14 = *v34;
              v15 = *(v34 + 8);
              v16 = *(v34 + 16);
              sub_10018F33C(*v34, v15, v16);
              v17 = sub_10018D6FC(v7, v8, v14, v15, v16);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_36:
        v27 = swift_once();
        goto LABEL_21;
      }

      if (*(a1 + 16))
      {
        v28 = sub_100186A08(v7, v8);
        if (v29)
        {
          v30 = *(a1 + 56) + 24 * v28;
          v14 = *v30;
          v15 = *(v30 + 8);
          v16 = *(v30 + 16);
          sub_10018F33C(*v30, v15, v16);
          v17 = sub_10018D480(v7, v8, v14, v15, v16);
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = swift_once();
    goto LABEL_16;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10018E644(void *a1)
{
  v3 = sub_1000040A8(&qword_1003629F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - v5;
  sub_1000088DC(a1, a1[3]);
  v7 = _s3KeyCMa_0();
  sub_1001910F4(&qword_1003629F8, _s3KeyCMa_0);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v60 = v8;
    v12 = swift_initStaticObject();
    inited = v12;
    v13 = KeyedDecodingContainer.contains(_:)();
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      sub_1000040A8(&qword_10035AA88);
      v62 = v12;
      sub_10018F264();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v14 = inited;
    }

    v61 = v14;
    v15 = swift_initStaticObject();
    inited = v15;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v62 = v15;
      sub_10018F1F4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v59 = v11;
      v17 = inited;
      v18 = v64;
      v19 = v65;
      v58 = sub_10018DF68(inited, v64, v65);
      sub_10018F248(v17, v18, v19);
      v29 = v58;
    }

    else
    {
      v59 = v11;
      type metadata accessor for NoPrerequisites();
      v29 = swift_allocObject();
    }

    v16 = swift_initStaticObject();
    inited = v16;
    if (KeyedDecodingContainer.contains(_:)())
    {
      inited = v16;
      sub_10018F1A0();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v58 = v29;
      v20 = v62;
    }

    else
    {
      v58 = v29;
      v20 = 8;
    }

    v21 = *(sub_10018ADD8(a1) + 24);
    if (v21)
    {

      if (*(v21 + 16))
      {
        v22 = sub_100186A08(v60, v59);
        if (v23)
        {
          v24 = (*(v21 + 56) + 72 * v22);
          v26 = v24[2];
          v25 = v24[3];
          v27 = v24[1];
          v66 = *v24;
          v67 = v27;
          v68 = v26;
          v69 = v25;
          sub_1000B4E30(&v66, &inited);

          inited = swift_initStaticObject();
          sub_10018F098();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v28 = v70;
          sub_1000040A8(&qword_100362A08);
          inited = swift_initStaticObject();
          sub_10018F0EC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v36 = v62;
          type metadata accessor for Question();
          v7 = swift_allocObject();
          v37 = v67;
          *(v7 + 72) = v66;
          *(v7 + 88) = v37;
          v38 = v69;
          *(v7 + 104) = v68;
          v39 = v59;
          *(v7 + 16) = v60;
          *(v7 + 24) = v39;
          *(v7 + 32) = v28;
          v40 = v36;
          *(v7 + 40) = v36;
          v41 = v58;
          v42 = v61;
          *(v7 + 48) = v58;
          *(v7 + 56) = v42;
          *(v7 + 64) = v20;
          *(v7 + 120) = v38;
          sub_1000B4E30(&v66, &inited);

          v58 = v41;

          v43 = sub_1000924D0(v40, &v66);
          *(v7 + 136) = v43;
          v57 = v40;
          if (*(&v68 + 1))
          {
            v44 = v43;
            v45 = _swiftEmptyArrayStorage;
            inited = _swiftEmptyArrayStorage;
            v46 = *(v43 + 2);
            v40 = 0;
            v47 =  + 40;
LABEL_22:
            v48 = (v47 + 16 * v40);
            while (1)
            {
              if (v46 == v40)
              {

                v40 = v57;
                goto LABEL_31;
              }

              if (v40 >= *(v44 + 2))
              {
                break;
              }

              v49 = v48 + 16;
              ++v40;
              v50 = *v48;
              v48 += 16;
              if (v50 == 1)
              {
                v60 = v47;
                v61 = v46;
                v59 = *(v49 - 3);

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v56 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v45 = inited;
                v47 = v60;
                v46 = v61;
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
          }

          else
          {

            v45 = v40;
LABEL_31:
            *(v7 + 144) = v45;
            v61 = *(&v69 + 1);
            if (!*(&v69 + 1))
            {
LABEL_48:

              sub_1000B4E8C(&v66);
LABEL_54:
              v53 = 0;
LABEL_55:
              *(v7 + 152) = v53;
              (*(v4 + 8))(v6, v3);
              sub_100008964(a1);
              return v7;
            }

            v45 = v69;
            if (!(v40 >> 62))
            {
              v51 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v60 = v69;
              if (!v51)
              {
LABEL_53:
                sub_1000B4E8C(&v66);

                goto LABEL_54;
              }

LABEL_34:
              v52 = 0;
              v59 = (v40 & 0xC000000000000001);
              v56 = v40 & 0xFFFFFFFFFFFFFF8;
              v55 = v51;
              while (1)
              {
                if (v59)
                {
                  v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v45 = (v52 + 1);
                  if (__OFADD__(v52, 1))
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v52 >= *(v56 + 16))
                  {
                    goto LABEL_51;
                  }

                  v53 = *(v40 + 8 * v52 + 32);

                  v45 = (v52 + 1);
                  if (__OFADD__(v52, 1))
                  {
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }
                }

                v54 = *(v53 + 16) == v60 && v61 == *(v53 + 24);
                if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                ++v52;
                v40 = v57;
                if (v45 == v55)
                {
                  goto LABEL_53;
                }
              }

              sub_1000B4E8C(&v66);
              goto LABEL_55;
            }
          }

          v51 = _CocoaArrayWrapper.endIndex.getter();
          v60 = v45;
          if (!v51)
          {
            goto LABEL_53;
          }

          goto LABEL_34;
        }
      }

      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v61 = v30;
      sub_1000088DC(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      inited = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      inited = 0xD000000000000023;
      v64 = 0x80000001002A1380;
      v31._countAndFlagsBits = v60;
      v31._object = v59;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 11815;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v33 = v61;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v33, enum case for DecodingError.dataCorrupted(_:), v7);
      swift_willThrow();
    }

    else
    {

      v61 = type metadata accessor for DecodingError();
      swift_allocError();
      v60 = v34;
      v7 = a1[3];
      sub_1000088DC(a1, v7);
      dispatch thunk of Decoder.codingPath.getter();
      v35 = v60;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v61 - 8) + 104))(v35, enum case for DecodingError.dataCorrupted(_:));
      swift_willThrow();
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_10018F098()
{
  result = qword_100362A00;
  if (!qword_100362A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A00);
  }

  return result;
}

unint64_t sub_10018F0EC()
{
  result = qword_100362A10;
  if (!qword_100362A10)
  {
    sub_100008CF0(&qword_100362A08);
    sub_1001910F4(&qword_100362A18, type metadata accessor for Option);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A10);
  }

  return result;
}

unint64_t sub_10018F1A0()
{
  result = qword_100362A20;
  if (!qword_100362A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A20);
  }

  return result;
}

unint64_t sub_10018F1F4()
{
  result = qword_100362A28;
  if (!qword_100362A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A28);
  }

  return result;
}

uint64_t sub_10018F248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10018F264()
{
  result = qword_100362A30;
  if (!qword_100362A30)
  {
    sub_100008CF0(&qword_10035AA88);
    sub_10018F2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A30);
  }

  return result;
}

unint64_t sub_10018F2E8()
{
  result = qword_100362A38;
  if (!qword_100362A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A38);
  }

  return result;
}

uint64_t sub_10018F33C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10018F358()
{
  result = qword_100362A50;
  if (!qword_100362A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A50);
  }

  return result;
}

unint64_t sub_10018F3AC()
{
  result = qword_100362A58;
  if (!qword_100362A58)
  {
    sub_100008CF0(&qword_10035AA88);
    sub_10018F430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A58);
  }

  return result;
}

unint64_t sub_10018F430()
{
  result = qword_100362A60;
  if (!qword_100362A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A60);
  }

  return result;
}

unint64_t sub_10018F484()
{
  result = qword_100362A68;
  if (!qword_100362A68)
  {
    sub_100008CF0(&qword_100362A08);
    sub_1001910F4(&qword_100362A70, type metadata accessor for Option);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A68);
  }

  return result;
}

unint64_t sub_10018F538()
{
  result = qword_100362A88;
  if (!qword_100362A88)
  {
    sub_100008CF0(&qword_100362A80);
    sub_10018F5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A88);
  }

  return result;
}

unint64_t sub_10018F5BC()
{
  result = qword_100362A90;
  if (!qword_100362A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362A90);
  }

  return result;
}

uint64_t sub_10018F610(void *a1)
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_1000088DC(v6, v6[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_10018203C(v3, v4);

    sub_100008964(v6);
  }

  return sub_100008964(a1);
}

void *sub_10018F6D0(void *a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_1000088DC(v8, v8[3]);
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v5 = a2(v6);

    sub_100008964(v8);
  }

  sub_100008964(a1);
  return v5;
}

uint64_t sub_10018F7C0(void *a1, uint64_t (*a2)(void))
{
  sub_1000088DC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100008964(a1);
  }

  sub_1000088DC(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = sub_1001822DC(v5, v6, a2);

  sub_100008964(v9);
  sub_100008964(a1);
  return v7 & 1;
}

unint64_t sub_10018F8B0(void *a1)
{
  v3 = sub_1000040A8(&qword_100362A98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  _s3KeyCMa_1();
  sub_1001910F4(&qword_100362AA0, _s3KeyCMa_1);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    v9[1] = swift_initStaticObject();
    sub_10018FA78();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
    sub_100008964(a1);
  }

  return v7;
}

unint64_t sub_10018FA78()
{
  result = qword_100362AA8;
  if (!qword_100362AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AA8);
  }

  return result;
}

unint64_t sub_10018FACC()
{
  result = qword_100362AB8;
  if (!qword_100362AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AB8);
  }

  return result;
}

uint64_t sub_10018FB20(void *a1)
{
  v3 = sub_1000040A8(&qword_100362AC0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v37 = a1;
  sub_1000088DC(a1, v10);
  _s3KeyCMa_2();
  sub_1001910F4(&qword_100362AC8, _s3KeyCMa_2);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v13 = v37;
  }

  else
  {
    inited = swift_initStaticObject();
    v11 = v8;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v34 = v12;
    v17 = swift_initStaticObject();
    inited = v17;
    if (KeyedDecodingContainer.contains(_:)())
    {
      inited = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v11;
      inited = swift_initStaticObject();
      sub_100190160();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v27 = v45;
      inited = swift_initStaticObject();
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v36 + 8))(v5, v3);
    }

    else
    {
      v35 = v11;
      v27 = 0;
      v33 = 40;
    }

    v18 = v37;
    v19 = sub_10018ADD8(v37);
    v20 = *(v19 + 24);
    if (v20)
    {
      v21 = *(v19 + 56);
      v22 = *(v19 + 48);
      v40 = *(v19 + 16);
      v41 = v20;
      v42 = *(v19 + 32);
      v43 = v22;
      v44 = v21 & 1;

      v23 = sub_1001826B8(v34, v16);

      if (v23)
      {
        (*(v36 + 8))(v35, v3);
        type metadata accessor for Option();
        v9 = swift_allocObject();
        *(v9 + 16) = v34;
        *(v9 + 24) = v16;
        *(v9 + 32) = v23;
        *(v9 + 40) = v27;
        *(v9 + 48) = v33;
        sub_100008964(v18);
        return v9;
      }

      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_1000088DC(v18, v18[3]);
      dispatch thunk of Decoder.codingPath.getter();
      inited = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      inited = 0xD000000000000021;
      v39 = 0x80000001002A15D0;
      v31._countAndFlagsBits = v34;
      v31._object = v16;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 11815;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.dataCorrupted(_:), v28);
      swift_willThrow();
    }

    else
    {

      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      sub_1000088DC(v18, v18[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.dataCorrupted(_:), v24);
      swift_willThrow();
    }

    v9 = v36 + 8;
    (*(v36 + 8))(v35, v3);
    v13 = v18;
  }

  sub_100008964(v13);
  return v9;
}

unint64_t sub_100190160()
{
  result = qword_100362AD0;
  if (!qword_100362AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AD0);
  }

  return result;
}

unint64_t sub_1001901B4()
{
  result = qword_100362AE0;
  if (!qword_100362AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362AE0);
  }

  return result;
}

unint64_t sub_100190208()
{
  result = qword_100362B18;
  if (!qword_100362B18)
  {
    sub_100008CF0(&qword_100362B10);
    sub_1001910F4(&qword_100362A78, type metadata accessor for Condition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B18);
  }

  return result;
}

uint64_t sub_1001902BC(void *a1)
{
  v3 = sub_1000040A8(&qword_100362B20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireStringsBundle.Key();
  sub_1001910F4(&qword_100362B28, type metadata accessor for QuestionnaireStringsBundle.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
  }

  else
  {
    inited = swift_initStaticObject();
    v11 = inited;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v11 = inited;
      v7 = KeyedDecodingContainer.decode(_:forKey:)();
    }

    else
    {
      v7 = 0;
    }

    v11 = swift_initStaticObject();
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100008964(a1);
  }

  return v7;
}

uint64_t sub_100190514(void *a1)
{
  v3 = sub_1000040A8(&qword_100362B38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = a1[3];
  sub_1000088DC(a1, v7);
  type metadata accessor for QuestionnaireRepresentation.Key();
  sub_1001910F4(&qword_100362B40, type metadata accessor for QuestionnaireRepresentation.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    inited = swift_initStaticObject();
    v41 = inited;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v47[0] = inited;
      sub_100190BC4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v7 = v41;
      v9 = v42;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_10018AC1C(a1);
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = 0;

    if (v7 == 2)
    {
      sub_1001809F0(a1, v47);
      sub_1000040A8(&qword_100362B48);
      v48 = swift_initStaticObject();
      sub_100190A98();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v33 = 2;
      v38 = v3;
      v12 = v41;
      v13 = sub_1000088DC(v47, v47[3]);
      v14 = v13;
      v15 = v12[2];
      if (v15)
      {
        v35 = v13;
        v36 = v9;
        v37 = v4;
        v41 = _swiftEmptyArrayStorage;
        v16 = v12;
        sub_100187254(0, v15, 0);
        v17 = v41;
        v34 = v16;
        v18 = v16 + 7;
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          v41 = v17;
          v22 = v17[2];
          v21 = v17[3];
          v39 = v19;
          v40 = v22 + 1;

          if (v22 >= v21 >> 1)
          {
            sub_100187254((v21 > 1), v40, 1);
            v17 = v41;
          }

          v23 = v39;
          v17[2] = v40;
          v24 = &v17[2 * v22];
          v24[4] = v23;
          v24[5] = v20;
          v18 += 4;
          --v15;
        }

        while (v15);

        v9 = v36;
        v4 = v37;
        v14 = v35;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      *(*v14 + 24) = v17;

      v41 = swift_initStaticObject();
      KeyedDecodingContainer.decode(_:forKey:)();
      v48 = swift_initStaticObject();
      sub_100190B70();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v36 = v9;
      v37 = v4;
      v26 = v41;
      v25 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      LODWORD(v40) = v46;
      v30 = sub_10018ADD8(a1);
      v39 = *(v30 + 24);
      *(v30 + 16) = v26;
      *(v30 + 24) = v25;
      *(v30 + 32) = v27;
      *(v30 + 40) = v28;
      *(v30 + 48) = v29;
      *(v30 + 56) = v40;

      type metadata accessor for Questionnaire();
      v48 = swift_initStaticObject();
      sub_1001910F4(&qword_100362B68, type metadata accessor for Questionnaire);
      v31 = v38;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v37 + 8))(v6, v31);
      sub_100008964(v47);
      v7 = v33;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  sub_100008964(a1);
  return v7;
}

unint64_t sub_100190A98()
{
  result = qword_100362B50;
  if (!qword_100362B50)
  {
    sub_100008CF0(&qword_100362B48);
    sub_100190B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B50);
  }

  return result;
}

unint64_t sub_100190B1C()
{
  result = qword_100362B58;
  if (!qword_100362B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B58);
  }

  return result;
}

unint64_t sub_100190B70()
{
  result = qword_100362B60;
  if (!qword_100362B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B60);
  }

  return result;
}

unint64_t sub_100190BC4()
{
  result = qword_100362B70;
  if (!qword_100362B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B70);
  }

  return result;
}

unint64_t sub_100190C18()
{
  result = qword_100362B88;
  if (!qword_100362B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B88);
  }

  return result;
}

unint64_t sub_100190C6C()
{
  result = qword_100362B98;
  if (!qword_100362B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362B98);
  }

  return result;
}

unint64_t sub_100190CF0()
{
  result = qword_100362BA0;
  if (!qword_100362BA0)
  {
    sub_100008CF0(&qword_100362B48);
    sub_100190D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BA0);
  }

  return result;
}

unint64_t sub_100190D74()
{
  result = qword_100362BA8;
  if (!qword_100362BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BA8);
  }

  return result;
}

uint64_t sub_100190E00(void *a1)
{
  v3 = sub_1000040A8(&qword_100362BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_1000088DC(a1, a1[3]);
  type metadata accessor for QuestionnaireRegion.Key();
  sub_1001910F4(&qword_100362BB8, type metadata accessor for QuestionnaireRegion.Key);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008964(a1);
    return v7;
  }

  else
  {
    sub_1000040A8(&qword_100362BC0);
    inited = swift_initStaticObject();
    sub_10019113C();
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v4;
    v9 = 0;
    v10 = v29;
    v11 = v29[2];
    v7 = _swiftEmptyArrayStorage;
    v12 = 48;
LABEL_5:
    v13 = v12 + 24 * v9;
    while (1)
    {
      if (v11 == v9)
      {

        (*(v27 + 8))(v6, v3);
        sub_100008964(a1);
        return v7;
      }

      if (v9 >= v10[2])
      {
        break;
      }

      ++v9;
      v14 = v13 + 24;
      v15 = *(v10 + v13);
      v13 += 24;
      if (v15)
      {
        v16 = *(v10 + v14 - 32);
        v25 = *(v10 + v14 - 40);
        v26 = v12;
        v24 = v16;

        result = swift_isUniquelyReferenced_nonNull_native();
        v29 = v7;
        if ((result & 1) == 0)
        {
          result = sub_100187334(0, v7[2] + 1, 1);
          v7 = v29;
        }

        v18 = v7[2];
        v17 = v7[3];
        v19 = v18 + 1;
        v12 = v26;
        if (v18 >= v17 >> 1)
        {
          v22 = v7[2];
          v23 = v18 + 1;
          result = sub_100187334((v17 > 1), v18 + 1, 1);
          v18 = v22;
          v19 = v23;
          v12 = v26;
          v7 = v29;
        }

        v7[2] = v19;
        v20 = &v7[3 * v18];
        v20[4] = v25;
        v20[5] = v24;
        v20[6] = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001910F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10019113C()
{
  result = qword_100362BC8;
  if (!qword_100362BC8)
  {
    sub_100008CF0(&qword_100362BC0);
    sub_1001911C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BC8);
  }

  return result;
}

unint64_t sub_1001911C0()
{
  result = qword_100362BD0;
  if (!qword_100362BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BD0);
  }

  return result;
}

unint64_t sub_100191214()
{
  result = qword_100362BE8;
  if (!qword_100362BE8)
  {
    sub_100008CF0(&qword_100362BC0);
    sub_100191298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BE8);
  }

  return result;
}

unint64_t sub_100191298()
{
  result = qword_100362BF0;
  if (!qword_100362BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BF0);
  }

  return result;
}

unint64_t sub_1001912EC()
{
  result = qword_10035CF30;
  if (!qword_10035CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035CF30);
  }

  return result;
}

uint64_t sub_100191338(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v52 = a1;
  v53 = a2;
  v57 = type metadata accessor for String.Encoding();
  v51 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CodingUserInfoKey();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder.KeyDecodingStrategy();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONDecoder.DataDecodingStrategy();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v15 = JSONDecoder.init()();
  (*(v12 + 104))(v14, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v11);
  v16 = v15;
  dispatch thunk of JSONDecoder.dataDecodingStrategy.setter();
  (*(v8 + 104))(v10, enum case for JSONDecoder.KeyDecodingStrategy.useDefaultKeys(_:), v7);
  dispatch thunk of JSONDecoder.keyDecodingStrategy.setter();
  if (qword_100353AF0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000F53C(v4, qword_100381F20);
  v18 = *(v48 + 16);
  v18(v6, v17, v4);
  v19 = type metadata accessor for QuestionnaireRevisionContainer();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  v56 = v19;
  v55[0] = v20;
  v21 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v55, v6);
  v21(v54, 0);
  if (qword_100353B00 != -1)
  {
    swift_once();
  }

  v22 = sub_10000F53C(v4, qword_100381F50);
  v18(v6, v22, v4);
  v23 = type metadata accessor for QuestionnairePresentationBuddyContainer();
  v24 = swift_allocObject();
  v24[1] = 0u;
  v24[2] = 0u;
  *(v24 + 41) = 0u;
  v56 = v23;
  v55[0] = v24;
  v25 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v55, v6);
  v25(v54, 0);
  if (qword_100353AF8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000F53C(v4, qword_100381F38);
  v18(v6, v26, v4);
  v27 = v49[3];
  v28 = sub_1000088DC(v49, v27);
  v56 = v27;
  v29 = sub_10007E56C(v55);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v30 = dispatch thunk of JSONDecoder.userInfo.modify();
  sub_10017FDC8(v55, v6);
  v30(v54, 0);
  v31 = v50;
  static String.Encoding.utf8.getter();
  v32 = String.data(using:allowLossyConversion:)();
  v34 = v33;
  (*(v51 + 8))(v31, v57);
  if (v34 >> 60 == 15)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.dataCorrupted(_:), v35);
    swift_willThrow();
LABEL_20:

    return v35;
  }

  sub_100191E6C();
  v35 = v16;
  v38 = v47[1];
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v38)
  {
LABEL_19:
    sub_10000F4D4(v32, v34);
    goto LABEL_20;
  }

  v39 = v55[0];
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000F53C(v40, qword_100381E48);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Successfully created questionnaire region instance from JSON", v43, 2u);
  }

  if (!*(v39 + 16))
  {

    goto LABEL_18;
  }

  v35 = *(v39 + 48);

  if (!v35)
  {
LABEL_18:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v35);
    swift_willThrow();
    goto LABEL_19;
  }

  sub_10000F4D4(v32, v34);

  return v35;
}

id sub_100191B10(id a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 pathForResource:v8 ofType:v9];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v11 = String.init(contentsOfFile:encoding:)();
    if (v3)
    {
    }

    else
    {
      v21 = v12;
      v22 = v11;

      v23 = type metadata accessor for BundleTranslationProvider();
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = _swiftEmptyArrayStorage;
      v27[3] = v23;
      v27[4] = &off_100334598;
      v27[0] = v24;
      v25 = a1;
      a1 = sub_100191338(v22, v21, v27);

      sub_100008964(v27);
    }
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381E48);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_10017C9E8(a2, a3, v27);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_10017C9E8(1852797802, 0xE400000000000000, v27);
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve resource file name for %{public}s.%{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    a1 = [a1 bundlePath];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_100091C0C();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 16;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_100191E6C()
{
  result = qword_100362BF8;
  if (!qword_100362BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362BF8);
  }

  return result;
}

uint64_t sub_100191F28(uint64_t a1, unsigned int a2)
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

uint64_t sub_100191F70(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100191FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100192014(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1001920B4()
{
  result = qword_100362C18;
  if (!qword_100362C18)
  {
    sub_100008CF0(&qword_100362C10);
    sub_10018F1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362C18);
  }

  return result;
}

unint64_t sub_100192138()
{
  result = qword_100362C28;
  if (!qword_100362C28)
  {
    sub_100008CF0(&qword_100362C20);
    sub_10018F1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100362C28);
  }

  return result;
}

uint64_t sub_1001921F8(uint64_t result, unint64_t a2)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    v5 = v2;
    v6 = result;
    v7 = *(v2 + 48) == result && v4 == a2;
    if (v7 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (qword_100353A10 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000F53C(v8, qword_100381C80);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v21 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_10017C9E8(v6, a2, &v21);
        _os_log_impl(&_mh_execute_header, v9, v10, "Canceling alert with id == %s", v11, 0xCu);
        sub_100008964(v12);
      }

      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v13 = *(v5 + 64);
      v19[0] = *(v5 + 48);
      v19[1] = v13;
      v19[2] = *(v5 + 80);
      v20 = *(v5 + 96);
      sub_100006C20(v19, v18, &qword_1003618C8);
      sub_100192AEC(&v21);
      v14 = *(v5 + 48);
      v15 = *(v5 + 56);
      v16 = v22;
      v17 = v23;
      *(v5 + 48) = v21;
      *(v5 + 64) = v16;
      *(v5 + 80) = v17;
      *(v5 + 96) = v24;
      sub_10017E0BC(v14, v15);
      sub_100192D88(v19);
      return sub_100193518(v19);
    }
  }

  return result;
}

void sub_100192410()
{
  v1 = v0;
  if (qword_100353A18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelAllAlerts", v5, 2u);
  }

  v6 = *(v1 + 56);
  if (v6)
  {
    v7 = *(v1 + 48);

    sub_1001921F8(v7, v6);
  }
}

uint64_t sub_100192534(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100192564@<X0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  _StringGuts.grow(_:)(22);

  v30 = 0xD000000000000014;
  v31 = 0x80000001002A17D0;
  v4 = a1[2];
  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  v32 = v5;
  v33 = v4 == 0;
  sub_1000040A8(&qword_100358098);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7 = v31;
  v29 = v30;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v34._object = 0x80000001002A1810;
  v10._object = 0x80000001002A17F0;
  v11.value._object = 0x80000001002962C0;
  v34._countAndFlagsBits = 0xD000000000000067;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11.value._countAndFlagsBits = 0xD000000000000012;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v34);

  v14 = [v8 mainBundle];
  v35._object = 0x80000001002A18C0;
  v15._countAndFlagsBits = 0xD000000000000038;
  v15._object = 0x80000001002A1880;
  v16.value._object = 0x80000001002962C0;
  v35._countAndFlagsBits = 0xD00000000000006ALL;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v19 = [v8 mainBundle];
  v20._countAndFlagsBits = 0xD000000000000011;
  v36._object = 0x80000001002A1930;
  v20._object = 0x80000001002988E0;
  v21.value._object = 0x80000001002962C0;
  v36._countAndFlagsBits = 0xD000000000000030;
  v21.value._countAndFlagsBits = 0xD000000000000012;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v36);

  sub_1000040A8(&qword_100362D18);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100279160;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = *(a1 + 1);
  *(v26 + 24) = *a1;
  *(v26 + 16) = v25;
  *(v26 + 40) = v27;
  *(v26 + 56) = a1[4];
  *(v26 + 64) = v29;
  *(v26 + 72) = v7;
  *(v24 + 32) = v23;
  *(v24 + 48) = sub_100193508;
  *(v24 + 56) = v26;
  sub_100006C20(a1, &v30, &qword_1003580C0);
  a2->_countAndFlagsBits = v29;
  a2->_object = v7;
  a2[1] = v13;
  a2[2] = v18;
  a2[3]._countAndFlagsBits = v24;
}

void *sub_100192888@<X0>(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x80000001002A1990;
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001002A1970;
  v5.value._object = 0x80000001002962C0;
  v21._countAndFlagsBits = 0xD000000000000067;
  v5.value._countAndFlagsBits = 0xD000000000000012;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v21);

  v8 = [v2 mainBundle];
  v22._object = 0x80000001002A1A40;
  v9._countAndFlagsBits = 0xD000000000000038;
  v9._object = 0x80000001002A1A00;
  v10.value._object = 0x80000001002962C0;
  v22._countAndFlagsBits = 0xD00000000000006ALL;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v22);

  v13 = [v2 mainBundle];
  v23._object = 0x80000001002A1AD0;
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x80000001002A1AB0;
  v15.value._object = 0x80000001002962C0;
  v23._countAndFlagsBits = 0xD00000000000002FLL;
  v15.value._countAndFlagsBits = 0xD000000000000012;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v23);

  sub_1000040A8(&qword_100362D18);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100279160;
  v19 = swift_allocObject();
  swift_weakInit();
  result = swift_allocObject();
  result[2] = v19;
  result[3] = 0xD000000000000013;
  result[4] = 0x80000001002945E0;
  *(v18 + 32) = v17;
  *(v18 + 48) = sub_100193624;
  *(v18 + 56) = result;
  a1->_countAndFlagsBits = 0xD000000000000013;
  a1->_object = 0x80000001002945E0;
  a1[1] = v7;
  a1[2] = v12;
  a1[3]._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_100192AEC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = a1[1];
  if (!v4)
  {
    if (!v5)
    {
      sub_100193580(*(v1 + 48), 0);
      sub_100006C20(a1, v12, &qword_1003618C8);
      v6 = v3;
      v7 = 0;
      return sub_10017E0BC(v6, v7);
    }

    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_7:
    v10 = *a1;
    sub_100193580(*(v1 + 48), *(v1 + 56));
    sub_100006C20(a1, v12, &qword_1003618C8);
    sub_10017E0BC(v3, v4);
    sub_10017E0BC(v10, v5);
    goto LABEL_8;
  }

  if (v3 == *a1 && v4 == v5)
  {
    sub_100193580(v3, v4);
    sub_100006C20(a1, v12, &qword_1003618C8);
    sub_10017E0BC(v3, v4);
    v6 = v3;
    v7 = v4;
    return sub_10017E0BC(v6, v7);
  }

  v11 = *a1;
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100193580(v3, v4);
  sub_100006C20(a1, v12, &qword_1003618C8);
  sub_10017E0BC(v11, v5);
  result = sub_10017E0BC(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_8:
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_100192D88(uint64_t a1)
{
  v2 = v1;
  v4 = v1[6];
  v5 = v1[7];
  v6 = *(a1 + 8);
  if (!v5)
  {
    if (!v6)
    {
      sub_100193580(v4, 0);
      sub_100006C20(a1, &v32, &qword_1003618C8);
      v7 = v4;
      v8 = 0;
      return sub_10017E0BC(v7, v8);
    }

    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    v28 = *a1;
    sub_100193580(v4, v5);
    sub_100006C20(a1, &v32, &qword_1003618C8);
    sub_10017E0BC(v4, v5);
    sub_10017E0BC(v28, v6);
LABEL_8:
    if (qword_100353A18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381C98);
    sub_100006C20(a1, &v32, &qword_1003618C8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    sub_100193518(a1);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v12 = 136446466;
      v13 = *(a1 + 16);
      v32 = *a1;
      v33 = v13;
      v34 = *(a1 + 32);
      v35 = *(a1 + 48);
      sub_100006C20(a1, v30, &qword_1003618C8);
      sub_1000040A8(&qword_1003618C8);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v31);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = v2[7];
      v18 = v2[8];
      v19 = v2[9];
      v20 = v2[10];
      v21 = v2[11];
      v22 = v2[12];
      *&v32 = v2[6];
      *(&v32 + 1) = v17;
      *&v33 = v18;
      *(&v33 + 1) = v19;
      *&v34 = v20;
      *(&v34 + 1) = v21;
      v35 = v22;
      sub_100193580(v32, v17);
      v23 = String.init<A>(describing:)();
      v25 = sub_10017C9E8(v23, v24, &v31);

      *(v12 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v11, "activeAlert changed from: %{public}s to: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    return Subject<>.send()();
  }

  if (v4 == *a1 && v5 == v6)
  {
    sub_100193580(v4, v5);
    sub_100006C20(a1, &v32, &qword_1003618C8);
    sub_10017E0BC(v4, v5);
    v7 = v4;
    v8 = v5;
    return sub_10017E0BC(v7, v8);
  }

  v29 = *a1;
  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100193580(v4, v5);
  sub_100006C20(a1, &v32, &qword_1003618C8);
  sub_10017E0BC(v29, v6);
  result = sub_10017E0BC(v4, v5);
  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10019321C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PassthroughSubject.send(_:)();
    sub_1001921F8(a3, a4);
  }

  return result;
}

uint64_t sub_1001932CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();

    sub_1001921F8(a2, a3);
  }

  return result;
}

uint64_t sub_100193384()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_10017E0BC(v1, v2);
}

uint64_t sub_1001933C8()
{

  sub_10017E0BC(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10019347C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001934B4()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100193518(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003618C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100193580(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001935E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_100193690(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10019D0A4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10019D0B8(v5);
  *a1 = v2;
  return result;
}

BOOL sub_100193700(uint64_t a1, uint64_t a2)
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
  return sub_10019E10C(v7, v9);
}

BOOL static CMQuaternion.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1001937BC()
{
  if (*(v0 + 16) != 1)
  {
    v8 = *(v0 + 8);

    return v8;
  }

  v1 = [*v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_9;
  }

  v5 = sub_100186A08(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_100048F80(*(v2 + 56) + 32 * v5, v11);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001938F8()
{
  if (*(v0 + 16) != 1)
  {
    v8 = *(v0 + 24);

    return v8;
  }

  v1 = [*v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_9;
  }

  v5 = sub_100186A08(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_100048F80(*(v2 + 56) + 32 * v5, v11);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}