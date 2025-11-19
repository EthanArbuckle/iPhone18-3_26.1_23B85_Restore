unint64_t sub_1005F694C()
{
  result = qword_100CCAE48;
  if (!qword_100CCAE48)
  {
    sub_10022E824(&qword_100CCAE50);
    sub_1000EA178(&qword_100CABDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAE48);
  }

  return result;
}

void sub_1005F6A08()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for ComputePinnedMapSizeViewModifier(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  sub_1005EE698(v2, v3);
}

uint64_t sub_1005F6A64()
{
  sub_10000C778();
  type metadata accessor for LocationViewPage(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v5 + 8))(v4);
  sub_10003BEA0();
  v7 = v4 + v6;
  v8 = type metadata accessor for ContentStatusBanner();
  if (!sub_100003EB0(v8))
  {
    sub_1000D4274();
    if (v9)
    {
    }

    v10 = *(v2 + 24);
    v11 = type metadata accessor for Date();
    if (!sub_1000865BC(v11))
    {
      sub_100019B68();
      (*(v12 + 8))(v7 + v10, v2);
    }
  }

  v13 = *(v0 + 36);
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v4 + v13))
    {
      sub_100003B20();
      (*(v15 + 8))(v4 + v13, v14);
    }
  }

  else
  {
  }

  sub_100037B34(*(v0 + 40));

  sub_10000536C();

  return swift_deallocObject();
}

unint64_t sub_1005F6C7C()
{
  result = qword_100CCAEC0;
  if (!qword_100CCAEC0)
  {
    sub_10022E824(&qword_100CCAE68);
    sub_1005F6F6C(&unk_100CCAEC8);
    sub_1005F6F6C(&unk_100CCAED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAEC0);
  }

  return result;
}

unint64_t sub_1005F6D60()
{
  result = qword_100CCAEE0;
  if (!qword_100CCAEE0)
  {
    sub_10022E824(&qword_100CCAEE8);
    sub_1005F6E18();
    sub_1005F6F6C(&qword_100CE0FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAEE0);
  }

  return result;
}

unint64_t sub_1005F6E18()
{
  result = qword_100CCAEF0;
  if (!qword_100CCAEF0)
  {
    sub_10022E824(&qword_100CCAEF8);
    sub_1005F6EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAEF0);
  }

  return result;
}

unint64_t sub_1005F6EA4()
{
  result = qword_100CCAF00;
  if (!qword_100CCAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCAF00);
  }

  return result;
}

unint64_t sub_1005F6EF8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1005F6F6C(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v4 = sub_100003A24(0, v3);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1005F6FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v79 = a3;
  v4 = type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v74 = v12;
  v75 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v72 = v14 - v13;
  v15 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037C4();
  v71 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v77 = v22;
  v24 = __chkstk_darwin(v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v66 - v27;
  v29 = type metadata accessor for ConditionDetailInput.Input(0);
  v78 = a1;
  sub_1001A5104();
  if (v30)
  {

    goto LABEL_3;
  }

  v67 = v26;
  v68 = v15;
  v70 = v20;
  v34 = v77;
  (*(v77 + 16))(v28, v78 + *(v29 + 32), v21);
  v69 = (*(v34 + 88))(v28, v21);
  v35 = enum case for DetailCondition.conditions(_:);
  v36 = v28;
  v37 = *(v34 + 8);
  v37(v36, v21);
  if (v69 != v35)
  {
    v38 = v67;
    (*(v34 + 104))(v67, enum case for DetailCondition.precipitationTotal(_:), v21);
    v39 = static DetailCondition.== infix(_:_:)();
    v37(v38, v21);
    if ((v39 & 1) == 0)
    {
LABEL_3:
      v31 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v32 = v79;
      v33 = 1;
      return sub_10001B350(v32, v33, 1, v31);
    }
  }

  v40 = v73[5];
  v77 = v73[6];
  v73 = sub_1000161C0(v73 + 2, v40);
  v41 = ConditionUnits.precipitationTotal.getter();
  v42 = v72;
  Location.timeZone.getter();
  dispatch thunk of PrecipitationTotalPlatterViewModelFactoryType.makeModel(currentWeather:dayWeather:unit:timeZone:)();

  (*(v74 + 8))(v42, v75);
  v43 = *(PrecipitationTotalPlatterViewModel.sections.getter() + 16);

  result = PrecipitationTotalPlatterViewModel.sections.getter();
  v45 = result;
  v46 = 0;
  v47 = *(result + 16);
  while (1)
  {
    if (v47 == v46)
    {

      if (v43 <= 1)
      {
        v49 = [objc_opt_self() mainBundle];
        v65 = 0x8000000100AD7400;
        v50 = 0xD000000000000027;
        v51 = 0x8000000100AD73B0;
        v55 = 0x8000000100AD73E0;
        v52 = 0xD000000000000073;
        v53.super.isa = v49;
        v54 = 0xD000000000000013;
      }

      else
      {
LABEL_12:
        v49 = [objc_opt_self() mainBundle];
        v65 = 0x8000000100AD7360;
        v50 = 0xD000000000000014;
        v51 = 0x8000000100AD7340;
        v52 = 0xD000000000000043;
        v53.super.isa = v49;
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v53, *&v54, *&v52);
      v57 = v79;
      v58 = v68;
      v60 = v70;
      v59 = v71;

      v61 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v62 = v61[6];
      v63 = type metadata accessor for WeatherDescription();
      sub_10001B350(v57 + v62, 1, 1, v63);
      (*(v59 + 32))(v57 + v61[7], v60, v58);
      v64 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v57 + v61[8], 1, 1, v64);
      *v57 = xmmword_100A3F980;
      *(v57 + 16) = 2;
      *(v57 + 24) = v56;
      *(v57 + v61[9]) = 0;
      *(v57 + v61[10]) = 0;
      v32 = v57;
      v33 = 0;
      v31 = v61;
      return sub_10001B350(v32, v33, 1, v31);
    }

    if (v46 >= *(v45 + 16))
    {
      break;
    }

    (*(v6 + 16))(v10, v45 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v46++, v4);
    v48 = *(PrecipitationTotalPlatterViewModel.SectionModel.rows.getter() + 16);

    result = (*(v6 + 8))(v10, v4);
    if (v48 > 1)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F760C()
{
  sub_100006F14(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F7690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61746144656D6974 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1005F7720(void *a1)
{
  v2 = sub_10022C350(&qword_100CCB088);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1005F7BA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_1005F7BFC(&qword_100CCB090);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1005F7878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData();
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CCB070);
  sub_1000037C4();
  v17 = v7;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1005F7BA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v18;
    sub_1005F7BFC(&qword_100CCB080);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v10, v6);
    sub_1001137B0(v15, v13, type metadata accessor for WeatherConditionBackgroundTimeData);
    sub_1001137B0(v13, v14, type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel);
  }

  return sub_100006F14(a1);
}

uint64_t sub_1005F7AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F7690(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1005F7AFC(uint64_t a1)
{
  v2 = sub_1005F7BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7B38(uint64_t a1)
{
  v2 = sub_1005F7BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005F7BA8()
{
  result = qword_100CCB078;
  if (!qword_100CCB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB078);
  }

  return result;
}

uint64_t sub_1005F7BFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherConditionBackgroundTimeData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1005F7CF0()
{
  result = qword_100CCB098;
  if (!qword_100CCB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB098);
  }

  return result;
}

unint64_t sub_1005F7D48()
{
  result = qword_100CCB0A0;
  if (!qword_100CCB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0A0);
  }

  return result;
}

unint64_t sub_1005F7DA0()
{
  result = qword_100CCB0A8;
  if (!qword_100CCB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0A8);
  }

  return result;
}

uint64_t sub_1005F7DF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1005F7E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005F7E98(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x656369746F6ELL;
  }

  else
  {
    v5 = 0x616D7269666E6F63;
  }

  if (v4)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2)
  {
    v7 = 0x656369746F6ELL;
  }

  else
  {
    v7 = 0x616D7269666E6F63;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEC0000006E6F6974;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a2 + 56);
    v19 = *(a2 + 64);

    v20 = sub_1005F8F50(v16, v17, v14, v18, v19, v15);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005F8064@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_100A3B020;
  *(inited + 32) = 0x6D496D6574737973;
  *(inited + 40) = 0xEF656D614E656761;
  v12 = *(v1 + 8);
  *(inited + 48) = v12;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v11 = *(v1 + 24);
  *(inited + 96) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6567617373656DLL;
  *(inited + 136) = 0xE700000000000000;
  v10 = *(v1 + 40);
  *(inited + 144) = *(v1 + 40);
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6E6F69746361;
  *(inited + 184) = 0xE600000000000000;
  v9 = *(v1 + 72);
  v8 = *(v1 + 56);
  v14 = v9;
  v13 = v8;
  if (v9)
  {
    sub_1005F9BE8(&v13, &v15);
    v7 = &unk_100C62070;
    sub_1005F9BE8(&v15, &v6);
    sub_100166170(&v6, (v4 + 192));
  }

  else
  {
    *(inited + 216) = &type metadata for String;
    *(inited + 192) = 7104878;
    *(inited + 200) = 0xE300000000000000;
  }

  sub_1005F9B78(&v8, &v6);
  sub_100358150(&v12, &v6);
  sub_100358150(&v11, &v6);
  sub_100358150(&v10, &v6);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB0C8);
  a1[4] = sub_10012EF24(&qword_100CCB0D0, &qword_100CCB0C8);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005F8290(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C449D8, v2);

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

uint64_t sub_1005F82E4(char a1)
{
  if (a1)
  {
    return 0x656369746F6ELL;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t sub_1005F8344@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005F8290(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005F8374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005F82E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1005F8450(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x747465536E65706FLL && a2 == 0xEC00000073676E69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1005F84EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_1005F85AC(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1005F85C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F8450(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1005F85F4(uint64_t a1)
{
  v2 = sub_1005F9CA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F8630(uint64_t a1)
{
  v2 = sub_1005F9CA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F84EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F869C(uint64_t a1)
{
  v2 = sub_1005F9CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F86D8(uint64_t a1)
{
  v2 = sub_1005F9CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F8714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F43746E65636361 && a2 == 0xEE00786548726F6CLL)
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

uint64_t sub_1005F8904(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6D496D6574737973;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6E6F69746361;
      break;
    case 5:
      result = 0x6F43746E65636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005F89C0(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCB158);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = *v3;
  v14 = 0;
  sub_1005F9EF4();
  sub_100019B78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_10001C77C(1);
    sub_10001C77C(2);
    sub_10001C77C(3);
    v12 = *(v3 + 56);
    v13 = *(v3 + 72);
    v14 = 4;
    sub_1005F9F48();
    sub_100019B78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001C77C(5);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1005F8B7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CCB138);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9DF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1005F9E4C();
  sub_100014AA4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v44;
  v12 = sub_100006300(1);
  v14 = v13;
  v40 = v12;
  v39 = sub_100006300(2);
  v42 = v15;
  v38 = sub_100006300(3);
  v41 = v16;
  LOBYTE(__src[0]) = 4;
  sub_1005F9EA0();
  sub_100014AA4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v56 = v11;
  v37 = v44;
  v36 = v45;
  v17 = v46;
  v57 = 5;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = *(v7 + 8);
  v20 = v18;
  v35 = v21;
  v19(v10, v5);
  v22 = v56;
  LOBYTE(__src[0]) = v56;
  __src[1] = v40;
  __src[2] = v14;
  sub_100074CDC();
  __src[3] = v24;
  __src[4] = v23;
  v25 = v41;
  __src[5] = v38;
  __src[6] = v41;
  sub_1000287CC();
  __src[7] = v27;
  __src[8] = v26;
  __src[9] = v17;
  __src[10] = v20;
  v28 = v35;
  __src[11] = v35;
  sub_1002B094C(__src, &v44);
  sub_100006F14(a1);
  LOBYTE(v44) = v22;
  v45 = v40;
  v46 = v14;
  sub_100074CDC();
  v47 = v30;
  v48 = v29;
  v49 = v38;
  v50 = v25;
  sub_1000287CC();
  v51 = v32;
  v52 = v31;
  v53 = v17;
  v54 = v20;
  v55 = v28;
  sub_100517C40(&v44);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_1005F8F50(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10033D034(a1);
  v13 = v12;
  if (v11 == sub_10033D034(a4) && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005F9058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F8714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F9080(uint64_t a1)
{
  v2 = sub_1005F9DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F90BC(uint64_t a1)
{
  v2 = sub_1005F9DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005F90F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005F8B7C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1005F917C()
{
  sub_1005F9C00();

  return ShortDescribable.description.getter();
}

uint64_t sub_1005F91B8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for SystemSettingLocation;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CCB0E0);
  a2[4] = sub_10012EF24(&qword_100CCB0E8, &qword_100CCB0E0);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005F92C8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v19[0] = a3;
  v6 = sub_10022C350(&qword_100CCB120);
  sub_1000037C4();
  v20 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_10022C350(&qword_100CCB128);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9CA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1005F9CFC();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v23 = a2;
  v22 = 0;
  sub_1005F9DA4();
  v17 = v19[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v17)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v20 + 8))(v10, v6);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1005F94EC(void *a1)
{
  v3 = sub_10022C350(&qword_100CCB0F8);
  sub_1000037C4();
  v34 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = sub_10022C350(&qword_100CCB100);
  sub_1000037C4();
  v35 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = a1[4];
  sub_1000161C0(a1, a1[3]);
  sub_1005F9CA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_7;
  }

  v32 = v7;
  v33 = a1;
  v12 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v12, 0);
  if (v14 == v15 >> 1)
  {
LABEL_6:
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_10022C350(&qword_100CA7610);
    *v23 = &unk_100C62070;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = sub_100008A50();
    v25(v24, v8);
    a1 = v33;
LABEL_7:
    sub_100006F14(a1);
    return v11;
  }

  if (v14 < (v15 >> 1))
  {
    v16 = sub_100618E7C(v14 + 1);
    v18 = v17;
    v11 = v19;
    swift_unknownObjectRelease();
    if (v18 == v11 >> 1)
    {
      v31[1] = v16;
      sub_1005F9CFC();
      v20 = v32;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = 0;
      sub_1005F9D50();
      v26 = v3;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v27 = v8;
      v11 = v38;
      v36 = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v28 = v34;
      swift_unknownObjectRelease();
      (*(v28 + 8))(v20, v26);
      v29 = sub_100008A50();
      v30(v29, v27);
      sub_100006F14(v33);
      return v11;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F994C()
{
  sub_1005F9C54();

  return ShortDescribable.description.getter();
}

uint64_t sub_1005F9988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005F94EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1005F99D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100759860();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  return result;
}

void sub_1005F9A28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1007599D4(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5]);
  if (!v9)
  {
    memcpy(a9, v11, 0x60uLL);
  }
}

unint64_t sub_1005F9ACC()
{
  result = qword_100CCB0B0;
  if (!qword_100CCB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0B0);
  }

  return result;
}

unint64_t sub_1005F9B24()
{
  result = qword_100CCB0B8;
  if (!qword_100CCB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0B8);
  }

  return result;
}

uint64_t sub_1005F9B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCB0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F9BE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *a2 = v2;
  return a2;
}

unint64_t sub_1005F9C00()
{
  result = qword_100CCB0D8;
  if (!qword_100CCB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0D8);
  }

  return result;
}

unint64_t sub_1005F9C54()
{
  result = qword_100CCB0F0;
  if (!qword_100CCB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB0F0);
  }

  return result;
}

unint64_t sub_1005F9CA8()
{
  result = qword_100CCB108;
  if (!qword_100CCB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB108);
  }

  return result;
}

unint64_t sub_1005F9CFC()
{
  result = qword_100CCB110;
  if (!qword_100CCB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB110);
  }

  return result;
}

unint64_t sub_1005F9D50()
{
  result = qword_100CCB118;
  if (!qword_100CCB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB118);
  }

  return result;
}

unint64_t sub_1005F9DA4()
{
  result = qword_100CCB130;
  if (!qword_100CCB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB130);
  }

  return result;
}

unint64_t sub_1005F9DF8()
{
  result = qword_100CCB140;
  if (!qword_100CCB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB140);
  }

  return result;
}

unint64_t sub_1005F9E4C()
{
  result = qword_100CCB148;
  if (!qword_100CCB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB148);
  }

  return result;
}

unint64_t sub_1005F9EA0()
{
  result = qword_100CCB150;
  if (!qword_100CCB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB150);
  }

  return result;
}

unint64_t sub_1005F9EF4()
{
  result = qword_100CCB160;
  if (!qword_100CCB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB160);
  }

  return result;
}

unint64_t sub_1005F9F48()
{
  result = qword_100CCB168;
  if (!qword_100CCB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCoverViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MessageCoverViewModel.Action.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1005FA140(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005FA21C()
{
  result = qword_100CCB170;
  if (!qword_100CCB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB170);
  }

  return result;
}

unint64_t sub_1005FA274()
{
  result = qword_100CCB178;
  if (!qword_100CCB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB178);
  }

  return result;
}

unint64_t sub_1005FA2CC()
{
  result = qword_100CCB180;
  if (!qword_100CCB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB180);
  }

  return result;
}

unint64_t sub_1005FA324()
{
  result = qword_100CCB188;
  if (!qword_100CCB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB188);
  }

  return result;
}

unint64_t sub_1005FA37C()
{
  result = qword_100CCB190;
  if (!qword_100CCB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB190);
  }

  return result;
}

unint64_t sub_1005FA3D4()
{
  result = qword_100CCB198;
  if (!qword_100CCB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB198);
  }

  return result;
}

unint64_t sub_1005FA42C()
{
  result = qword_100CCB1A0;
  if (!qword_100CCB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB1A0);
  }

  return result;
}

unint64_t sub_1005FA484()
{
  result = qword_100CCB1A8;
  if (!qword_100CCB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB1A8);
  }

  return result;
}

unint64_t sub_1005FA4DC()
{
  result = qword_100CCB1B0;
  if (!qword_100CCB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB1B0);
  }

  return result;
}

unint64_t sub_1005FA534()
{
  result = qword_100CCB1B8;
  if (!qword_100CCB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB1B8);
  }

  return result;
}

unint64_t sub_1005FA588()
{
  result = qword_100CCB1C0;
  if (!qword_100CCB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB1C0);
  }

  return result;
}

void sub_1005FA630()
{
  sub_1005FA714(319, &qword_100CCB230, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1005FA714(319, &unk_100CCB238, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005FA714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1005FA810()
{
  sub_10000C778();
  v2 = v0;
  v4 = v3;
  v41 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v42 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v12);
  v37 = &v35 - v13;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for HourlyForecastComponentViewModel(0);
  v21 = v20;
  v22 = *(v2 + *(v20 + 20));
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_15;
  }

  v39 = v20;
  v40 = v2;
  v38 = v4;
  v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v36 = v1;
  v24 = v22 + v35;

  v25 = 0;
  v26 = v10;
  while (1)
  {
    if (v25 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v27 = v26;
    v1 = *(v26 + 72) * v25;
    sub_10001F2D4();
    sub_10011C7D0(v24 + v1, v19);
    v28 = sub_1000053B8();
    sub_10011A1F4(v28, v29);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100019B90();
      sub_10011CA44(v16, v32);
      goto LABEL_8;
    }

    sub_100004648();
    sub_10011A1F4(v16, v8);
    v30 = *(v8 + *(v41 + 60));
    sub_10001C7A0();
    sub_10011CA44(v8, v31);
    if (v30)
    {
      break;
    }

LABEL_8:
    ++v25;
    v26 = v27;
    if (v23 == v25)
    {
      v4 = v38;
      v21 = v39;
      v2 = v40;
      goto LABEL_15;
    }
  }

  if (v25 >= *(v22 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v37;
  sub_10011C7D0(v24 + v1, v37);
  v16 = v36;
  sub_1005FAD54(v36);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_18:
  sub_1008FBCEC();
  v22 = v34;
LABEL_13:
  v21 = v39;
  v2 = v40;
  sub_100019B90();
  sub_10011CA44(v19, v33);
  if (v25 >= *(v22 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1005FF2D0(v16, v22 + v35 + v1);
    v4 = v38;
LABEL_15:
    sub_1005FF260(v2, v4);
    *(v4 + *(v21 + 20)) = v22;
    sub_10000536C();
  }
}

double sub_1005FAAFC()
{
  v2 = v1;
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10001F2D4();
  sub_10011C7D0(v2, v8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    v11 = sub_1000053B8();
    sub_10011A1F4(v11, v12);
    if ((*(v0 + *(v3 + 60)) & 1) == 0)
    {
      v13 = *(v0 + 40);
      sub_10001C7A0();
      sub_10011CA44(v0, v14);
      return v13;
    }

    sub_10001C7A0();
    v10 = v0;
  }

  else
  {
    sub_100019B90();
    v10 = v8;
  }

  sub_10011CA44(v10, v9);
  return 0.0;
}

uint64_t sub_1005FAC18()
{
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10001F2D4();
  sub_10011C7D0(v1, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    v7 = sub_1000053B8();
    sub_10011A1F4(v7, v8);
    Precipitation.accessibilityDescription(with:)(*(v0 + 40));
    sub_10011CA44(v0, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
  }

  else
  {
    sub_10011CA44(v6, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  }

  return sub_100004464();
}

uint64_t sub_1005FAD54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011C7D0(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10011A1F4(v5, v8);
    v9 = v6[13];
    v10 = v6[14];
    v11 = Date.formattedHours(timeZone:forAccessibility:)();
    v39 = v12;
    v40 = v11;
    v13 = *(v8 + 4);
    v14 = *(v8 + 5);
    v38 = v8[48];
    v15 = v6[9];
    v16 = type metadata accessor for Precipitation();
    v17 = *(*(v16 - 8) + 16);
    v18 = *(v8 + 1);
    v37 = *v8;
    v41 = v18;
    v17(a1 + v15, &v8[v15], v16);
    v19 = &v8[v6[10]];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = v6[13];
    v23 = &v8[v6[12]];
    v24 = *(v23 + 1);
    v35 = *v23;
    v36 = v20;
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 16))(a1 + v22, &v8[v9], v25);
    v26 = v6[14];
    v27 = type metadata accessor for TimeZone();
    (*(*(v27 - 8) + 16))(a1 + v26, &v8[v10], v27);
    LOBYTE(v26) = v8[v6[15]];
    v28 = *&v8[v6[16]];

    sub_10011CA44(v8, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
    v29 = v41;
    *a1 = v37;
    *(a1 + 16) = v29;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    *(a1 + 48) = v38;
    v30 = (a1 + v6[10]);
    *v30 = v36;
    v30[1] = v21;
    v31 = (a1 + v6[11]);
    v32 = v39;
    *v31 = v40;
    v31[1] = v32;
    v33 = (a1 + v6[12]);
    *v33 = v35;
    v33[1] = v24;
    *(a1 + v6[15]) = v26;
    *(a1 + v6[16]) = v28;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10011CA44(v5, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    return sub_10011C7D0(v1, a1);
  }
}

uint64_t sub_1005FB09C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100AD7520 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74786554656D6974 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x8000000100AD7500 == a2)
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

unint64_t sub_1005FB248(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x74786554656D6974;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005FB2E8()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_100003C48(v0[5]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v0[7]);
  v4 = v4 && v2 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v0[8]);
  if (v4 && v5 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005FB3A8()
{
  v2 = sub_10022C350(&qword_100CCB5C0);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  sub_100014AE4();
  sub_1005FFB98();
  sub_1000B0278();
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v6, v7);
  sub_1000214AC();
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
    sub_100017810();
    type metadata accessor for TimeZone();
    sub_100008A60();
    sub_1005FE610(v8, v9);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CCC930);
    sub_100021064(&qword_100CCB5A8);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_1005FB5F8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v4, v5);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000717C0();
  type metadata accessor for TimeZone();
  sub_100008A60();
  sub_1005FE610(v6, v7);
  sub_100031E3C();
  sub_10016D390(a1, *(v1 + *(v3 + 24)));
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();

  return String.hash(into:)();
}

Swift::Int sub_1005FB6DC()
{
  sub_10003259C();
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  type metadata accessor for TimeZone();
  sub_100008A60();
  sub_1005FE610(v4, v5);
  dispatch thunk of Hashable.hash(into:)();
  sub_10016D390(v7, *(v0 + *(v3 + 24)));
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1005FB7E4()
{
  sub_10000E8AC();
  v46 = v1;
  v3 = v2;
  v38 = v4;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v41 = v6;
  v42 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for Date();
  sub_1000037C4();
  v39 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v43 = v14 - v13;
  v45 = sub_10022C350(&qword_100CCB5B0);
  sub_1000037C4();
  v40 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = v37 - v17;
  v19 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_10002429C();
  sub_1000161C0(v3, v3[3]);
  sub_1005FFB98();
  v44 = v18;
  v21 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_100006F14(v3);
  }

  else
  {
    v22 = v9;
    v23 = v41;
    v24 = v42;
    sub_100014AC0();
    sub_1005FE610(v25, v26);
    sub_1000214AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 32))(v0, v43, v10);
    sub_100017810();
    sub_100008A60();
    sub_1005FE610(v27, v28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37[1] = v10;
    (*(v23 + 32))(v0 + v19[5], v22, v24);
    sub_10022C350(&qword_100CCC930);
    sub_10001642C(&qword_100CCB588);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v0 + v19[6]) = v47;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = (v0 + v19[7]);
    *v30 = v29;
    v30[1] = v31;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v33;
    (*(v40 + 8))(v44, v45);
    v35 = (v0 + v19[8]);
    *v35 = v32;
    v35[1] = v34;
    sub_10011C7D0(v0, v38);
    sub_100006F14(v3);
    sub_10001052C();
    sub_10011CA44(v0, v36);
  }

  sub_10000C8F4();
}

uint64_t sub_1005FBCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FB09C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FBD20(uint64_t a1)
{
  v2 = sub_1005FFB98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FBD5C(uint64_t a1)
{
  v2 = sub_1005FFB98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1005FBDD4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1005FE610(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1005FE610(&qword_100CAC4C8, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  sub_10016D390(v5, *(v2 + *(a2 + 24)));
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005FBF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xED00006E6F63496ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AD74A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100AD74C0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000100AD74E0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74786554656D6974 && a2 == 0xE800000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100AD7500 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1702125924 && a2 == 0xE400000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x776F4E7369 && a2 == 0xE500000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x8000000100AD7520 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1005FC2F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7469706963657270;
      break;
    case 6:
      result = 0x74617265706D6574;
      break;
    case 7:
      result = 0x74786554656D6974;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 1702125924;
      break;
    case 10:
      result = 0x656E6F5A656D6974;
      break;
    case 11:
      result = 0x776F4E7369;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005FC47C()
{
  v2 = sub_10022C350(&qword_100CCB590);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000426CC();
  sub_100014AE4();
  sub_1005FFAD8();
  sub_1000B0278();
  sub_100004630();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100069734(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100069734(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10003BAE0(3);
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
    type metadata accessor for Precipitation();
    sub_10003C668();
    sub_1005FE610(v6, v7);
    sub_1000185A4();
    sub_100069734(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100069734(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100069734(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for Date();
    sub_100014AC0();
    sub_1005FE610(v8, v9);
    sub_1000185A4();
    type metadata accessor for TimeZone();
    sub_100008A60();
    sub_1005FE610(v10, v11);
    sub_1000185A4();
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10022C350(&qword_100CCC930);
    sub_100021064(&qword_100CCB5A8);
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1005FC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v14 = v13;
  v79 = v15;
  v84 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v82 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_1000426CC();
  v85 = type metadata accessor for Date();
  sub_1000037C4();
  v83 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for Precipitation();
  sub_1000037C4();
  v86 = v24;
  v87 = v23;
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_10000CC9C();
  v81 = sub_10022C350(&qword_100CCB568);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v79 - v28;
  v91 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000037D8();
  v88 = v14;
  v89 = (v32 - v31);
  v33 = v14[3];
  v34 = v14[4];
  v35 = sub_1000161C0(v14, v33);
  sub_1005FFAD8();
  v80 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    v90 = v10;
    v38 = 0;
    LODWORD(v22) = 0;
    LODWORD(v39) = 0;
    sub_100013A08();
  }

  else
  {
    v33 = v12;
    LODWORD(v34) = v26;
    v39 = v79;
    v36 = v81;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v89;
    *v89 = v37;
    sub_10003BAE0(1);
    v42[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42[2] = v43;
    sub_10003BAE0(2);
    v42[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v42[4] = v44;
    sub_10003BAE0(3);
    KeyedDecodingContainer.decode(_:forKey:)();
    v42[5] = v45;
    sub_10003BAE0(4);
    *(v42 + 48) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_10003C668();
    sub_1005FE610(v46, v47);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v36;
    v48 = v91;
    (*(v86 + 32))(v42 + v91[9], v11, v87);
    sub_10003BAE0(6);
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v50 = (v42 + v48[10]);
    *v50 = v49;
    v50[1] = v51;
    sub_10003BAE0(7);
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v11) = v34;
    v53 = (v42 + v48[11]);
    *v53 = v52;
    v53[1] = v54;
    sub_10003BAE0(8);
    v26 = v81;
    v55 = KeyedDecodingContainer.decode(_:forKey:)();
    v90 = 0;
    v57 = (v42 + v91[12]);
    *v57 = v55;
    v57[1] = v56;
    sub_100014AC0();
    sub_1005FE610(v58, v59);
    v60 = v90;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = v60;
    if (v60)
    {
      v61 = sub_100043A18();
      v62(v61);
      v35 = 0;
      sub_10000CD04();
      LODWORD(v34) = 1;
      LODWORD(v33) = 1;
      LODWORD(v11) = 1;
    }

    else
    {
      (*(v83 + 32))(v89 + v91[13], v22, v85);
      LOBYTE(a10) = 10;
      sub_100008A60();
      sub_1005FE610(v63, v64);
      v35 = v80;
      v65 = v90;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v90 = v65;
      if (v65)
      {
        v66 = sub_100043A18();
        v67(v66);
        sub_10000CD04();
        LODWORD(v34) = 1;
        LODWORD(v33) = 1;
        sub_1000C83A0();
      }

      else
      {
        (*(v82 + 32))(v89 + v91[14], v33, v84);
        sub_10003BAE0(11);
        v35 = v80;
        v68 = v90;
        v69 = KeyedDecodingContainer.decode(_:forKey:)();
        v90 = v68;
        if (!v68)
        {
          *(v89 + v91[15]) = v69 & 1;
          sub_10022C350(&qword_100CCC930);
          v92 = 12;
          sub_10001642C(&qword_100CCB588);
          v35 = v80;
          v72 = v90;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v90 = v72;
          if (!v72)
          {
            v75 = sub_100043A18();
            v76(v75);
            v77 = v89;
            *(v89 + v91[16]) = a10;
            sub_10011C7D0(v77, v39);
            sub_100006F14(v88);
            sub_10001C7A0();
            sub_10011CA44(v77, v78);
            goto LABEL_21;
          }

          v73 = sub_100043A18();
          v74(v73);
          sub_100006F14(v88);
          sub_10002C8B8();
          sub_1000C83A0();
          v26 = 1;
          v40 = v89;
LABEL_5:

          if (v22)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

        v70 = sub_100043A18();
        v71(v70);
        v38 = 1;
        sub_10002C8B8();
        sub_1000C83A0();
        v26 = 1;
      }
    }
  }

  v40 = v89;
  sub_100006F14(v88);
  if (v38)
  {
    goto LABEL_5;
  }

  if (v22)
  {
LABEL_6:

    if ((v39 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v39)
  {
LABEL_7:
    v41 = v91;
    if (v34)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v41 = v91;
  (*(v86 + 8))(v40 + v91[9], v87);
  if (v34)
  {
LABEL_8:

    if ((v33 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v33)
  {
LABEL_9:
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (v11)
  {
LABEL_10:

    if ((v35 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v35)
  {
LABEL_11:
    if (!v26)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  (*(v83 + 8))(v40 + v41[13], v85);
  if (v26)
  {
LABEL_20:
    (*(v82 + 8))(v40 + v41[14], v84);
  }

LABEL_21:
  sub_10000C8F4();
}

uint64_t sub_1005FD058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1920298856 && a2 == 0xE400000000000000)
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

uint64_t sub_1005FD164(char a1)
{
  if (!a1)
  {
    return 0x657369726E7573;
  }

  if (a1 == 1)
  {
    return 0x7465736E7573;
  }

  return 1920298856;
}

void sub_1005FD1B0()
{
  sub_10000C778();
  v40 = v1;
  v3 = v2;
  v4 = sub_100031708();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v39 = v6 - v5;
  v7 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = sub_10022C350(&qword_100CC41B0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v39 - v24;
  v27 = *(v26 + 56);
  v28 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem;
  sub_10011C7D0(v3, &v39 - v24);
  sub_10011C7D0(v40, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10001F2D4();
      sub_10011C7D0(v25, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100006324();
        sub_10011A1F4(&v25[v27], v11);
        sub_1005FB2E8();
        sub_100025290();
        sub_10011CA44(v11, v30);
        v31 = v18;
LABEL_13:
        sub_10011CA44(v31, v28);
        sub_100019B90();
        sub_10011CA44(v25, v38);
        goto LABEL_14;
      }

      sub_10001052C();
      v33 = v18;
    }

    else
    {
      sub_10001F2D4();
      v34 = sub_1000370B0();
      sub_10011C7D0(v34, v35);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100004648();
        v36 = v39;
        sub_10011A1F4(&v25[v27], v39);
        sub_1001C8C98(v0, v36);
        v28 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
        sub_10011CA44(v36, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
        v31 = v0;
        goto LABEL_13;
      }

      sub_10001C7A0();
      v33 = v0;
    }
  }

  else
  {
    sub_10001F2D4();
    sub_10011C7D0(v25, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100006324();
      sub_10011A1F4(&v25[v27], v14);
      sub_1005FB2E8();
      sub_100025290();
      sub_10011CA44(v14, v37);
      v31 = v21;
      goto LABEL_13;
    }

    sub_10001052C();
    v33 = v21;
  }

  sub_10011CA44(v33, v32);
  sub_1000180EC(v25, &qword_100CC41B0);
LABEL_14:
  sub_10000536C();
}

void sub_1005FD4F0()
{
  sub_10000E8AC();
  v71 = v1;
  v69 = v0;
  v4 = v3;
  sub_10022C350(&qword_100CCB538);
  sub_1000037C4();
  v66 = v6;
  v67 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v65 = v8;
  v63 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v64 = v11 - v10;
  sub_10022C350(&qword_100CCB540);
  sub_1000037C4();
  v61 = v13;
  v62 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v60 = v15;
  sub_10022C350(&qword_100CCB548);
  sub_1000037C4();
  v58 = v17;
  v59 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v57 = v19;
  v68 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v56 - v25;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v70 = sub_10022C350(&qword_100CCB550);
  sub_1000037C4();
  v32 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000426CC();
  sub_1000161C0(v4, v4[3]);
  sub_1005FF874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F2D4();
  sub_10011C7D0(v69, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = (v32 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10011A1F4(v30, v23);
      sub_100017810();
      sub_1005FFA30();
      v36 = v60;
      sub_10006974C();
      sub_100016C30();
      sub_1005FE610(v37, v38);
      v39 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v61 + 8))(v36, v39);
      sub_10001052C();
      v41 = v23;
    }

    else
    {
      v50 = v30;
      v51 = v64;
      sub_10011A1F4(v50, v64);
      sub_1005FF9DC();
      v52 = v65;
      sub_10006974C();
      sub_100030528();
      sub_1005FE610(v53, v54);
      v55 = v67;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v66 + 8))(v52, v55);
      sub_10001C7A0();
      v41 = v51;
    }

    sub_10011CA44(v41, v40);
    v49 = *v35;
    v47 = v2;
    v48 = v26;
  }

  else
  {
    sub_10011A1F4(v30, v26);
    sub_1005FFA84();
    v42 = v57;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100016C30();
    sub_1005FE610(v43, v44);
    v45 = v59;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v58 + 8))(v42, v45);
    sub_10001052C();
    sub_10011CA44(v26, v46);
    v47 = sub_10002C598();
  }

  v49(v47, v48);
  sub_10000C8F4();
}

void sub_1005FDA78()
{
  sub_100020DF0();
  v6 = v5;
  v7 = sub_100031708();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000426CC();
  sub_1000717C0();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v9 = sub_100016824();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  sub_10011C7D0(v0, v4);
  sub_100014AD8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100004648();
      sub_10011A1F4(v4, v3);
      Hasher._combine(_:)(2uLL);
      sub_100119FC0(v6);
      sub_10001C7A0();
      v18 = v3;
      goto LABEL_7;
    }

    sub_100006324();
    sub_1000AF5CC();
    v12 = 1;
  }

  else
  {
    sub_100006324();
    sub_1000AF5CC();
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v13, v14);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_100008A60();
  sub_1005FE610(v15, v16);
  sub_100031E3C();
  sub_10016D390(v6, *(v1 + *(v2 + 24)));
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  sub_10001052C();
  v18 = v1;
LABEL_7:
  sub_10011CA44(v18, v17);
  sub_1000212EC();
}

Swift::Int sub_1005FDC68(void (*a1)(_BYTE *))
{
  sub_10003259C();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1005FDCA8()
{
  sub_10000E8AC();
  v91 = v0;
  v3 = v2;
  v83 = v4;
  v89 = sub_10022C350(&qword_100CCB4E8);
  sub_1000037C4();
  v82 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v85 = v7;
  sub_10022C350(&qword_100CCB4F0);
  sub_1000037C4();
  v80 = v9;
  v81 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v86 = v11;
  sub_10022C350(&qword_100CCB4F8);
  sub_1000037C4();
  v78 = v13;
  v79 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v84 = v15;
  sub_10022C350(&qword_100CCB500);
  sub_1000037C4();
  v87 = v17;
  v88 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  v19 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  __chkstk_darwin(v27);
  sub_100021390();
  __chkstk_darwin(v28);
  v30 = &v72 - v29;
  v31 = v3[3];
  v90 = v3;
  sub_1000161C0(v3, v31);
  sub_1005FF874();
  v32 = v91;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_9;
  }

  v74 = v26;
  v75 = v1;
  v76 = v23;
  v77 = v30;
  v33 = v88;
  v91 = v19;
  v34 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v34, 0);
  if (v36 == v37 >> 1)
  {
LABEL_8:
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    sub_10022C350(&qword_100CA7610);
    *v50 = v91;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_1000202BC();
    v52(v51, v33);
LABEL_9:
    sub_100006F14(v90);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  if (v36 < (v37 >> 1))
  {
    v38 = *(v35 + v36);
    sub_100618E7C(v36 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          sub_100017810();
          sub_1005FFA30();
          sub_100022EA8();
          v43 = v77;
          type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
          sub_100016C30();
          sub_1005FE610(v44, v45);
          v46 = v74;
          v47 = v81;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v73 = 0;
          swift_unknownObjectRelease();
          v59 = sub_1000202BC();
          v60(v59, v47);
          v61 = sub_100010544();
        }

        else
        {
          sub_1005FF9DC();
          sub_100022EA8();
          v43 = v77;
          type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
          sub_100030528();
          sub_1005FE610(v57, v58);
          v46 = v76;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v73 = 0;
          swift_unknownObjectRelease();
          v69 = sub_1000523CC();
          v70(v69);
          v61 = sub_100014AD8();
        }

        v62(v61);
        swift_storeEnumTagMultiPayload();
        v68 = v46;
        v67 = v90;
      }

      else
      {
        sub_1005FFA84();
        sub_100022EA8();
        type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
        sub_100016C30();
        sub_1005FE610(v53, v54);
        v55 = v75;
        v56 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v73 = 0;
        swift_unknownObjectRelease();
        v63 = sub_1000202BC();
        v64(v63, v56);
        v65 = sub_100014AD8();
        v66(v65);
        swift_storeEnumTagMultiPayload();
        v67 = v90;
        v43 = v77;
        v68 = v55;
      }

      v71 = v83;
      sub_10011A1F4(v68, v43);
      sub_10011A1F4(v43, v71);
      sub_100006F14(v67);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1005FE4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FBF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FE4D4(uint64_t a1)
{
  v2 = sub_1005FFAD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE510(uint64_t a1)
{
  v2 = sub_1005FFAD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005FE6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FD058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FE6D0(uint64_t a1)
{
  v2 = sub_1005FF874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE70C(uint64_t a1)
{
  v2 = sub_1005FF874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE748(uint64_t a1)
{
  v2 = sub_1005FF9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE784(uint64_t a1)
{
  v2 = sub_1005FF9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE7C0(uint64_t a1)
{
  v2 = sub_1005FFA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE7FC(uint64_t a1)
{
  v2 = sub_1005FFA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE838(uint64_t a1)
{
  v2 = sub_1005FFA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE874(uint64_t a1)
{
  v2 = sub_1005FFA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1005FE92C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1005FE970(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000)
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

uint64_t sub_1005FEA2C(char a1)
{
  if (a1)
  {
    return 0x7372756F68;
  }

  else
  {
    return 25705;
  }
}

void sub_1005FEA54()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10000CC9C();
  v10 = sub_10022C350(&qword_100CC2B20);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000200F8();
  v12 = sub_10022C350(&qword_100CCB488);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000426CC();
  v15 = *(v14 + 56);
  sub_1005FF260(v5, v1);
  sub_1005FF260(v3, v1 + v15);
  sub_100003A40(v1);
  if (v18)
  {
    sub_100003A40(v1 + v15);
    if (v18)
    {
      sub_1000180EC(v1, &qword_100CC2B20);
LABEL_12:
      type metadata accessor for HourlyForecastComponentViewModel(0);
      sub_1009ECFBC();
      goto LABEL_13;
    }

LABEL_9:
    sub_1000180EC(v1, &qword_100CCB488);
    goto LABEL_13;
  }

  v16 = sub_10002C598();
  sub_1005FF260(v16, v17);
  sub_100003A40(v1 + v15);
  if (v18)
  {
    v19 = sub_100027E24();
    v20(v19);
    goto LABEL_9;
  }

  (*(v8 + 32))(v0, v1 + v15, v6);
  sub_1000248F4();
  sub_1005FE610(v21, v22);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v8 + 8);
  v24(v0, v6);
  v25 = sub_100027E24();
  (v24)(v25);
  sub_1000180EC(v1, &qword_100CC2B20);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_10000536C();
}

uint64_t sub_1005FECC0()
{
  v2 = sub_10022C350(&qword_100CCB4C8);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  sub_100014AE4();
  sub_1005FF784();
  sub_1000B0278();
  type metadata accessor for UUID();
  sub_1000248F4();
  sub_1005FE610(v6, v7);
  sub_1000214AC();
  sub_1000058DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel(0);
    sub_10022C350(&qword_100CCB4B0);
    sub_1005FF7D8(&qword_100CCB4D8, &qword_100CCB4E0);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1005FEE80()
{
  sub_10000E8AC();
  v3 = v2;
  v24 = v4;
  v5 = sub_10022C350(&qword_100CC2B20);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  sub_10022C350(&qword_100CCB498);
  sub_1000037C4();
  v25 = v10;
  v26 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_1000426CC();
  sub_1000161C0(v3, v3[3]);
  sub_1005FF784();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v3);
  }

  else
  {
    v23 = v14;
    v16 = v1;
    v17 = v25;
    type metadata accessor for UUID();
    sub_1000248F4();
    sub_1005FE610(v18, v19);
    sub_1000214AC();
    v20 = v26;
    sub_1001200E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100508840(v8, v16);
    sub_10022C350(&qword_100CCB4B0);
    sub_100017810();
    sub_1005FF7D8(&qword_100CCB4B8, &qword_100CCB4C0);
    sub_1001200E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v13, v20);
    v21 = v24;
    *(v16 + *(v23 + 20)) = v27;
    sub_10011C7D0(v16, v21);
    sub_100006F14(v3);
    sub_10011CA44(v16, type metadata accessor for HourlyForecastComponentViewModel);
  }

  sub_10000C8F4();
}

uint64_t sub_1005FF18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FE970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FF1B4(uint64_t a1)
{
  v2 = sub_1005FF784();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FF1F0(uint64_t a1)
{
  v2 = sub_1005FF784();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FF260(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC2B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FF2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1005FF37C()
{
  sub_10000C778();
  v4 = v3;
  sub_1000038D8();
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000CC9C();
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *(v4 + 16);
  v20 = v0;
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    v17 = (v7 + 32);
    v18 = (v7 + 8);
    do
    {
      sub_10011C7D0(v15, v13);
      sub_10011C7D0(v13, v2);
      if (sub_100024D10(v2, 1, v5) == 1)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        (*v17)(v1, v2, v5);
        Hasher._combine(_:)(0);
        sub_1005FE610(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature);
        dispatch thunk of Hashable.hash(into:)();
        (*v18)(v1, v5);
      }

      sub_10011CA44(v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  sub_10000536C();
}

void sub_1005FF6A8()
{
  sub_100020DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10008843C(v9, v7);
  if (v0)
  {
    v10 = *(v6(0) - 8);
    v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    sub_1005FE610(v4, v2);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v11 += v12;
      --v0;
    }

    while (v0);
  }

  sub_1000212EC();
}

unint64_t sub_1005FF784()
{
  result = qword_100CCB4A0;
  if (!qword_100CCB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB4A0);
  }

  return result;
}

uint64_t sub_1005FF7D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CCB4B0);
    sub_1005FE610(a2, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FF874()
{
  result = qword_100CCB508;
  if (!qword_100CCB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB508);
  }

  return result;
}

void sub_1005FF8C8()
{
  sub_100020DF0();
  v2 = v1;
  sub_10008843C(v3, v1);
  if (v0)
  {
    v4 = v2 + 64;
    do
    {
      v5 = *(v4 - 16);
      v4 += 40;

      v6 = v5;

      sub_100003940();
      String.hash(into:)();
      NSObject.hash(into:)();

      sub_1000370B0();
      String.hash(into:)();
      swift_bridgeObjectRelease_n();

      --v0;
    }

    while (v0);
  }

  sub_1000212EC();
}

void sub_1005FF974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_1005FF9DC()
{
  result = qword_100CCB510;
  if (!qword_100CCB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB510);
  }

  return result;
}

unint64_t sub_1005FFA30()
{
  result = qword_100CCB520;
  if (!qword_100CCB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB520);
  }

  return result;
}

unint64_t sub_1005FFA84()
{
  result = qword_100CCB530;
  if (!qword_100CCB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB530);
  }

  return result;
}

unint64_t sub_1005FFAD8()
{
  result = qword_100CCB570;
  if (!qword_100CCB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB570);
  }

  return result;
}

uint64_t sub_1005FFB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CCC930);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FFB98()
{
  result = qword_100CCB5B8;
  if (!qword_100CCB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1005FFF28(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1006000B4()
{
  result = qword_100CCB5C8;
  if (!qword_100CCB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5C8);
  }

  return result;
}

unint64_t sub_10060010C()
{
  result = qword_100CCB5D0;
  if (!qword_100CCB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5D0);
  }

  return result;
}

unint64_t sub_100600164()
{
  result = qword_100CCB5D8;
  if (!qword_100CCB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5D8);
  }

  return result;
}

unint64_t sub_1006001BC()
{
  result = qword_100CCB5E0;
  if (!qword_100CCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5E0);
  }

  return result;
}

unint64_t sub_100600214()
{
  result = qword_100CCB5E8;
  if (!qword_100CCB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5E8);
  }

  return result;
}

unint64_t sub_10060026C()
{
  result = qword_100CCB5F0;
  if (!qword_100CCB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5F0);
  }

  return result;
}

unint64_t sub_1006002C4()
{
  result = qword_100CCB5F8;
  if (!qword_100CCB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB5F8);
  }

  return result;
}

unint64_t sub_10060031C()
{
  result = qword_100CCB600;
  if (!qword_100CCB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB600);
  }

  return result;
}

unint64_t sub_100600374()
{
  result = qword_100CCB608;
  if (!qword_100CCB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB608);
  }

  return result;
}

unint64_t sub_1006003CC()
{
  result = qword_100CCB610;
  if (!qword_100CCB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB610);
  }

  return result;
}

unint64_t sub_100600424()
{
  result = qword_100CCB618;
  if (!qword_100CCB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB618);
  }

  return result;
}

unint64_t sub_10060047C()
{
  result = qword_100CCB620;
  if (!qword_100CCB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB620);
  }

  return result;
}

unint64_t sub_1006004D4()
{
  result = qword_100CCB628;
  if (!qword_100CCB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB628);
  }

  return result;
}

unint64_t sub_10060052C()
{
  result = qword_100CCB630;
  if (!qword_100CCB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB630);
  }

  return result;
}

unint64_t sub_100600584()
{
  result = qword_100CCB638;
  if (!qword_100CCB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB638);
  }

  return result;
}

unint64_t sub_1006005DC()
{
  result = qword_100CCB640;
  if (!qword_100CCB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB640);
  }

  return result;
}

unint64_t sub_100600634()
{
  result = qword_100CCB648;
  if (!qword_100CCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB648);
  }

  return result;
}

unint64_t sub_10060068C()
{
  result = qword_100CCB650;
  if (!qword_100CCB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB650);
  }

  return result;
}

unint64_t sub_1006006E4()
{
  result = qword_100CCB658;
  if (!qword_100CCB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB658);
  }

  return result;
}

unint64_t sub_10060073C()
{
  result = qword_100CCB660;
  if (!qword_100CCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB660);
  }

  return result;
}

unint64_t sub_100600794()
{
  result = qword_100CCB668;
  if (!qword_100CCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB668);
  }

  return result;
}

uint64_t sub_1006007F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100035AD0(v1 + *(v13 + 40), v12, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1006009D0()
{
  type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_10022C350(&qword_100CCB838);
  State.wrappedValue.getter();
  sub_100166DD4(0);
}

uint64_t sub_100600A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  result = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  if ((*(a3 + *(result + 28)) & 1) == 0)
  {
    v19 = result;
    v20 = *(result + 24);
    v21 = *(v6 + 16);
    v31 = a3;
    v21(v17, a3 + v20, v5);
    sub_10001B350(v17, 0, 1, v5);
    v22 = *(v9 + 48);
    v30 = a2;
    sub_100035AD0(a2, v11, &qword_100CADBA0);
    sub_100035AD0(v17, &v11[v22], &qword_100CADBA0);
    if (sub_100024D10(v11, 1, v5) == 1)
    {
      sub_1000180EC(v17, &qword_100CADBA0);
      if (sub_100024D10(&v11[v22], 1, v5) == 1)
      {
        sub_1000180EC(v11, &qword_100CADBA0);
        v23 = v31;
        return sub_100166F44(*(v23 + 80), v30);
      }
    }

    else
    {
      sub_100035AD0(v11, v14, &qword_100CADBA0);
      if (sub_100024D10(&v11[v22], 1, v5) != 1)
      {
        (*(v6 + 32))(v8, &v11[v22], v5);
        sub_100061E3C(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v6 + 8);
        v28(v8, v5);
        sub_1000180EC(v17, &qword_100CADBA0);
        v28(v14, v5);
        sub_1000180EC(v11, &qword_100CADBA0);
        v23 = v31;
        if (v27)
        {
          return sub_100166F44(*(v23 + 80), v30);
        }

LABEL_8:
        v24 = (v23 + *(v19 + 36));
        v26 = *v24;
        v25 = v24[1];
        v32 = v26;
        v33 = v25;
        sub_10022C350(&qword_100CCB838);
        State.wrappedValue.getter();
        sub_100166DD4(0);
      }

      sub_1000180EC(v17, &qword_100CADBA0);
      (*(v6 + 8))(v14, v5);
    }

    sub_1000180EC(v11, &qword_100CADD58);
    v23 = v31;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100600E64(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = *(a1 + 80);
  v6 = type metadata accessor for Location.Identifier();
  sub_10001B350(v4, 1, 1, v6);
  sub_100166F44(v5, v4);
  return sub_1000180EC(v4, &qword_100CADBA0);
}

uint64_t sub_100600F28(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = *a2;
  v7 = type metadata accessor for Location.Identifier();
  sub_10001B350(v5, 1, 1, v7);
  sub_100166F44(v6, v5);
  return sub_1000180EC(v5, &qword_100CADBA0);
}

uint64_t sub_100601010()
{
  v0 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v0);
  v1 = sub_1000081A4();

  return sub_100600A44(v1, v2, v3);
}

uint64_t sub_100601094()
{
  v0 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v0);
  v1 = sub_1000081A4();

  return sub_100600F28(v1, v2);
}

void sub_100601100(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10011E564();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_10011E564();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
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

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_100601700((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1006015D4(&v84, *a1, a3);
LABEL_89:
}

uint64_t sub_1006015D4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100308E24();
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
    sub_100601700((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_100601700(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1006A06F8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1006A06F8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_100601884(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2338 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2348 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2340 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2330 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2328 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1006019F0(char a1, char a2, uint64_t a3)
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
  v37 = sub_100601884(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_100602074(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality);
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle);
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

void sub_10060294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A2C3F0;
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
  v15[1] = xmmword_100A3BB80;
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
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D90528 = v8;
}

void sub_100602A74()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
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
  v8[1] = xmmword_100A3BB80;
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
  sub_100556A74();
  qword_100D90530 = v0;
}

void sub_100602B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC30;
  v28 = v27;
  v29 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBA0;
  v24[0] = xmmword_100A3BBD0;
  v24[1] = xmmword_100A3BB80;
  v30 = v25;
  v31 = v24;
  v22[0] = 0;
  v22[1] = 4;
  v23 = xmmword_100A3BBD0;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v32 = v22;
  v33 = v21;
  v18 = 2;
  v19 = xmmword_100A3F980;
  v20 = 2;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BB80;
  v34 = &v18;
  v35 = v17;
  v15[0] = 2;
  v15[1] = 4;
  v16 = xmmword_100A3BC40;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v36 = v15;
  v37 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v38 = v13;
  v39 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v40 = v11;
  v41 = &v10;
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D90538 = v8;
}

void sub_100602CDC()
{
  v15[0] = 2;
  v15[1] = 4;
  v16 = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC40;
  v14[1] = xmmword_100A3BB80;
  v17 = v15;
  v18 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3AEB0;
  v12[0] = xmmword_100A3BBD0;
  v12[1] = xmmword_100A3BC50;
  v19 = v13;
  v20 = v12;
  v11[0] = xmmword_100A3BC80;
  v11[1] = xmmword_100A2C3F0;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v21 = v11;
  v22 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBD0;
  v23 = v9;
  v24 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v25 = v7;
  v26 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v29 = v3;
  v30 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v31 = v1;
  sub_100556A74();
  qword_100D90540 = v0;
}

void sub_100602E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBB0;
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
  v15[1] = xmmword_100A3BBD0;
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
  sub_100017704(a2, a3, a4, a5, a6, a7, a8, &v9, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D90548 = v8;
}

uint64_t sub_100602F2C(uint64_t a1, void (*a2)(char *))
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_newsArticle);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiSevereNewsContent._Storage(0);
  swift_allocObject();
  sub_1002BEF38();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

uint64_t sub_1006032C0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB850);
  a1[4] = sub_1006033EC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100603358()
{
  sub_100603450();

  return ShortDescribable.description.getter();
}

unint64_t sub_100603398()
{
  result = qword_100CCB848;
  if (!qword_100CCB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB848);
  }

  return result;
}

unint64_t sub_1006033EC()
{
  result = qword_100CCB858;
  if (!qword_100CCB858)
  {
    sub_10022E824(&qword_100CCB850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB858);
  }

  return result;
}

unint64_t sub_100603450()
{
  result = qword_100CCB860;
  if (!qword_100CCB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityDetailViewAction(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100603554()
{
  result = qword_100CCB868;
  if (!qword_100CCB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB868);
  }

  return result;
}

uint64_t sub_1006035D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000100ABB010 == a2;
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

uint64_t sub_1006036F0(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6552656372756F73;
}

BOOL sub_100603750(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomeAndWorkRefinementViewState();
  if ((static LocationOfInterest.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 32);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    return (*(v8 + 32) & 1) == 0 && CGRectEqualToRect(*v6, *v8);
  }

  return (*(v8 + 32) & 1) != 0;
}

uint64_t sub_1006037EC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCB920);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100604130();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  type metadata accessor for Location();
  sub_100010570();
  sub_1006042A8(v11, v12);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for HomeAndWorkRefinementViewState();
    LOBYTE(v23) = 1;
    type metadata accessor for LocationOfInterest();
    sub_10001C7B8();
    sub_1006042A8(v14, v15);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + *(v13 + 24));
    v17 = *(v16 + 32);
    v18 = v16[1];
    v23 = *v16;
    v24 = v18;
    v25 = v17;
    v22[15] = 2;
    type metadata accessor for CGRect(0);
    sub_10000633C();
    sub_1006042A8(v19, v20);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100603A18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v46 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v43 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Location();
  sub_1000037C4();
  v44 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v47 = v12 - v11;
  v48 = sub_10022C350(&qword_100CCB910);
  sub_1000037C4();
  v45 = v13;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for HomeAndWorkRefinementViewState();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  sub_1000161C0(a1, a1[3]);
  sub_100604130();
  v49 = v16;
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100006F14(a1);
  }

  v50 = a1;
  v22 = v20;
  v24 = v45;
  v23 = v46;
  LOBYTE(v51) = 0;
  sub_100010570();
  sub_1006042A8(v25, v26);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v44 + 32);
  v41 = v22;
  v28 = v47;
  v47 = v8;
  v27(v22, v28, v8);
  LOBYTE(v51) = 1;
  sub_10001C7B8();
  sub_1006042A8(v29, v30);
  v31 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v41;
  (*(v43 + 32))(v41 + *(v17 + 20), v7, v31);
  type metadata accessor for CGRect(0);
  v54 = 2;
  sub_10000633C();
  sub_1006042A8(v33, v34);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v32;
  v36 = v50;
  v37 = v35 + *(v17 + 24);
  (*(v24 + 8))(v49, v48);
  v38 = v53;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  *(v37 + 32) = v38;
  sub_100604184(v35, v42);
  sub_100006F14(v36);
  return sub_1006041E8(v35);
}

uint64_t sub_100603EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006035D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100603ED8(uint64_t a1)
{
  v2 = sub_100604130();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100603F14(uint64_t a1)
{
  v2 = sub_100604130();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100603FB4@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB928);
  a1[4] = sub_100604244();
  sub_100042FB0(a1);
  type metadata accessor for HomeAndWorkRefinementViewState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10060407C()
{
  sub_1006042A8(&qword_100CCB938, type metadata accessor for HomeAndWorkRefinementViewState);

  return ShortDescribable.description.getter();
}

unint64_t sub_100604130()
{
  result = qword_100CCB918;
  if (!qword_100CCB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB918);
  }

  return result;
}

uint64_t sub_100604184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementViewState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006041E8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAndWorkRefinementViewState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100604244()
{
  result = qword_100CCB930;
  if (!qword_100CCB930)
  {
    sub_10022E824(&qword_100CCB928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB930);
  }

  return result;
}

uint64_t sub_1006042A8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for HomeAndWorkRefinementViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1006043D0()
{
  result = qword_100CCB940;
  if (!qword_100CCB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB940);
  }

  return result;
}

unint64_t sub_100604428()
{
  result = qword_100CCB948;
  if (!qword_100CCB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB948);
  }

  return result;
}

unint64_t sub_100604480()
{
  result = qword_100CCB950;
  if (!qword_100CCB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB950);
  }

  return result;
}

uint64_t sub_1006044D4(uint64_t a1, uint64_t a2)
{
  sub_1000BA6B4();
  if ((v4 & 1) == 0)
  {
    goto LABEL_24;
  }

  type metadata accessor for NotificationsOptInInput();
  sub_100003CE8();
  if (!v13)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = v5[6];
  v8 = *(a2 + v7);
  v9 = LocationAuthorizationState.rawValue.getter(*(a1 + v7));
  v11 = v10;
  v13 = v9 == LocationAuthorizationState.rawValue.getter(v8) && v11 == v12;
  if (v13)
  {
  }

  else
  {
    v14 = sub_10001C7D0();

    if ((v14 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (sub_1000BA238(*(a1 + v6[7]), *(a2 + v6[7])))
  {
    v15 = v6[8];
    v16 = *(a2 + v15);
    v17 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + v15));
    v19 = v18;
    if (v17 == PredictedLocationsAuthorizationState.rawValue.getter(v16) && v19 == v20)
    {
    }

    else
    {
      v22 = sub_10001C7D0();

      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    sub_100003CE8();
    if (v13)
    {
      sub_100003CE8();
      if (v13)
      {
        sub_100003CE8();
        if (v13)
        {
          v23 = *(a1 + v6[12]) ^ *(a2 + v6[12]) ^ 1;
          return v23 & 1;
        }
      }
    }
  }

LABEL_24:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_100604644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC8AC(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v6, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(*v6 + 22);
  }

  else
  {
    sub_10037B08C(v6);
    v7 = 0;
  }

  sub_1000BC8AC(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, a2, type metadata accessor for ViewState);
  v8 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v9 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v10 = *(v8 + 1);
  LOBYTE(v8) = *(v8 + 2);
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v12 = type metadata accessor for NotificationsOptInState();
  v13 = *(v11 + v12[15]);
  v14 = *(v11 + v12[18]);
  v15 = *(v11 + v12[16]);
  LOBYTE(v11) = *(v11 + v12[17]);
  v16 = type metadata accessor for NotificationsOptInInput();
  *(a2 + v16[5]) = v7;
  *(a2 + v16[6]) = v10;
  *(a2 + v16[7]) = v9;
  *(a2 + v16[8]) = v8;
  *(a2 + v16[9]) = v13;
  *(a2 + v16[10]) = v14;
  *(a2 + v16[11]) = v15;
  *(a2 + v16[12]) = v11;
  return sub_10001B350(a2, 0, 1, v16);
}

id sub_100604878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_100604930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10030DC80;
  v12[3] = &unk_100C62980;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

uint64_t sub_100604A38()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  sub_10000C70C(0, &qword_100CB4670);
  static DispatchQoS.background.getter();
  sub_10060CE70(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58);
  sub_100006F64(&qword_100CA2E60, &qword_100CA2E58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100604C7C(const char *a1, void *a2, uint64_t a3)
{
  v49 = a2;
  v5 = type metadata accessor for DebugModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_10060C6BC;
  v8[1] = a3;
  v9 = enum case for DebugModel.action(_:);
  v10 = *(v6 + 104);
  (v10)(v8, enum case for DebugModel.action(_:), v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  *v8 = sub_10060C6C4;
  v8[1] = a3;
  v44 = v9;
  (v10)(v8, v9, v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v11(v8, v5);
  *v8 = sub_100606904;
  v8[1] = 0;
  (v10)(v8, enum case for DebugModel.modalPopover(_:), v5);
  v42[2] = 0xD000000000000012;
  v12 = a1;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v11(v8, v5);
  *v8 = sub_100606A78;
  v8[1] = 0;
  v43 = enum case for DebugModel.modal(_:);
  v10(v8);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v11(v8, v5);
  v13 = v49;
  sub_100035B30(v49, v54);
  v14 = swift_allocObject();
  sub_100013188(v54, v14 + 16);
  *v8 = sub_10060C6CC;
  v8[1] = v14;
  v15 = enum case for DebugModel.page(_:);
  (v10)(v8, enum case for DebugModel.page(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v11(v8, v5);
  sub_100035B30(v13, v54);
  v16 = swift_allocObject();
  sub_100013188(v54, v16 + 16);
  *v8 = sub_10060C6F4;
  v8[1] = v16;
  v46 = v15;
  v47 = v10;
  v50 = v6 + 104;
  (v10)(v8, v15, v5);
  v17 = v12;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v48 = v11;
  v51 = v6 + 8;
  v11(v8, v5);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Features.locationIntelligence.getter();
  LOBYTE(v13) = SettingReader.isEnabled(_:with:)();

  if (v13)
  {
    sub_100035B30(v49, v54);
    v18 = swift_allocObject();
    sub_100013188(v54, v18 + 16);
    *v8 = sub_10060C79C;
    v8[1] = v18;
    (v47)(v8, v46, v5);
    dispatch thunk of DebugDataSource.add(_:_:)();
    v48(v8, v5);
  }

  v19 = v49;
  sub_100035B30(v49, v54);
  v20 = swift_allocObject();
  sub_100013188(v54, v20 + 16);
  *v8 = sub_10060C71C;
  v8[1] = v20;
  v21 = v46;
  v22 = v47;
  (v47)(v8, v46, v5);
  v23 = v22;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v24 = v48;
  v48(v8, v5);
  sub_100035B30(v19, v54);
  v25 = swift_allocObject();
  sub_100013188(v54, v25 + 16);
  *v8 = sub_10060C724;
  v8[1] = v25;
  (v22)(v8, v21, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v24(v8, v5);
  v45 = "Location Syncing Playground";
  sub_100035B30(v19, v54);
  v26 = swift_allocObject();
  sub_100013188(v54, v26 + 16);
  *v8 = sub_10060C72C;
  v8[1] = v26;
  (v22)(v8, v21, v5);
  v45 = v17;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v24(v8, v5);
  v27 = v24;
  type metadata accessor for DebugDataSource();
  swift_allocObject();
  v28 = DebugDataSource.init()();
  sub_100035B30(v19, v54);
  v29 = swift_allocObject();
  sub_100013188(v54, v29 + 16);
  *v8 = sub_10060C754;
  v8[1] = v29;
  (v23)(v8, v21, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v27(v8, v5);
  sub_100035B30(v19, v54);
  v30 = swift_allocObject();
  sub_100013188(v54, v30 + 16);
  *v8 = sub_10060C77C;
  v8[1] = v30;
  (v23)(v8, v21, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v27(v8, v5);
  *v8 = sub_1006071E4;
  v8[1] = 0;
  (v23)(v8, v21, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v27(v8, v5);
  *v8 = sub_100607274;
  v8[1] = 0;
  (v23)(v8, v21, v5);
  v31 = v28;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v27(v8, v5);
  v32 = v49;
  sub_1000161C0(v49, v49[3]);
  sub_10022C350(&qword_100CCBB68);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v53)
  {
    sub_100013188(&v52, v54);
    sub_100035B30(v54, &v52);
    v33 = swift_allocObject();
    sub_100013188(&v52, v33 + 16);
    *v8 = sub_10060C794;
    v8[1] = v33;
    v34 = v47;
    (v47)(v8, v46, v5);
    dispatch thunk of DebugDataSource.add(_:_:)();
    v48(v8, v5);
    sub_100006F14(v54);
    v35 = v34;
  }

  else
  {
    sub_1000180EC(&v52, &qword_100CCBB70);
    v35 = v47;
  }

  *v8 = v31;
  v42[1] = v31;
  (v35)(v8, enum case for DebugModel.dataSource(_:), v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v36 = v48;
  v48(v8, v5);
  v47 = "Browse Weather & System Data";
  sub_100035B30(v32, v54);
  v37 = swift_allocObject();
  sub_100013188(v54, v37 + 16);
  *v8 = sub_10060C784;
  v8[1] = v37;
  v38 = v43;
  (v35)(v8, v43, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v36(v8, v5);
  sub_100035B30(v32, v54);
  v39 = swift_allocObject();
  sub_100013188(v54, v39 + 16);
  *v8 = sub_10060C78C;
  v8[1] = v39;
  (v35)(v8, v38, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v36(v8, v5);
  *v8 = sub_100609458;
  v8[1] = 0;
  v40 = v44;
  (v35)(v8, v44, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v36(v8, v5);
  *v8 = sub_100609464;
  v8[1] = 0;
  (v35)(v8, v40, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v36(v8, v5);
  *v8 = sub_100609470;
  v8[1] = 0;
  (v35)(v8, v40, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v36(v8, v5);
  *v8 = sub_100487718;
  v8[1] = 0;
  (v35)(v8, v40, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();

  return (v36)(v8, v5);
}

uint64_t sub_1006059D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100CA2560 != -1)
    {
      swift_once();
    }

    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v0, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.AppConfig.clearConfigCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v1, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearAQIScalesCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v2, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherDataCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v3, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherAvailableDataSetsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v4, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v5, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v6, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v7, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v8, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearCachedJWTTokenOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v9, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearReverseGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v10, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v11, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Settings.Geocoding.clearCurrentLocationCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v13, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  return result;
}

uint64_t sub_1006061B4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100CA2560 != -1)
    {
      swift_once();
    }

    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v0, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearAQIScalesCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v1, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherDataCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v2, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherAvailableDataSetsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v3, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v4, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v5, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v6, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v7, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.mangleCachedJWTTokenOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v8, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearReverseGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v9, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v10, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Settings.Geocoding.clearCurrentLocationCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v12, type metadata accessor for DebugAssembly);
    Updatable.save<A>(setting:value:)();
  }

  return result;
}

void sub_100606904()
{
  v0 = [objc_allocWithZone(type metadata accessor for DiagnosticFileProvider()) init];
  v1 = DiagnosticFileProvider.files()();

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 40;
  v5 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v2)
    {

      v9 = objc_allocWithZone(UIActivityViewController);
      sub_10060B3B8(v5, &_swiftEmptyArrayStorage);
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v11 = type metadata accessor for URL();
    sub_100042FB0(&v10);

    URL.init(fileURLWithPath:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069FE04();
      v5 = v7;
    }

    v6 = v5[2];
    if (v6 >= v5[3] >> 1)
    {
      sub_10069FE04();
      v5 = v8;
    }

    v5[2] = v6 + 1;
    sub_100166170(&v10, &v5[4 * v6 + 4]);
    v4 += 16;
    ++v2;
  }

  __break(1u);
}

id sub_100606A78()
{
  sub_10000C70C(0, &qword_100CAC5F8);
  v0 = sub_100604878(0x6557207465736552, 0xED00007265687461, 0xD0000000000000C1, 0x8000000100AD7A30, 1);
  sub_10000C70C(0, &qword_100CAC600);
  v1 = sub_100604930(19279, 0xE200000000000000, 0, 0, 0);
  [v0 addAction:v1];

  return v0;
}

uint64_t sub_100606B48(void *a1)
{
  v2 = type metadata accessor for DebugLocationIntelligenceView();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCBB80);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      sub_1002F0A20(&v9, &v7, v4);
      v6 = objc_allocWithZone(sub_10022C350(&qword_100CCBB88));
      return UIHostingController.init(rootView:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100606C88(void *a1)
{
  v2 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBBA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_10094A358(&v8, v4);
    v6 = objc_allocWithZone(sub_10022C350(&qword_100CCBC68));
    return UIHostingController.init(rootView:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100606D74(void *a1)
{
  v2 = sub_10022C350(&qword_100CA34C8);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for DebugWeatherClockView();
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v9 = v22;
  if (v22)
  {
    v10 = v23;
    v19[1] = 0;
    v19[2] = 0xE000000000000000;
    State.init(wrappedValue:)();
    v11 = v21;
    *v7 = v20;
    *(v7 + 2) = v11;
    static Settings.Daemon.enableWeatherClockOverrides.getter();
    UISettingProperty.init(_:)();
    v12 = *(v5 + 24);
    sub_10000C70C(0, &qword_100CB6C30);
    v13 = [objc_opt_self() currentRunLoop];
    v14 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_10001B350(v4, 1, 1, v14);
    v15 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000180EC(v4, &qword_100CA34C8);
    *&v20 = v15;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_10060CE70(&qword_100CCBC58, 255, &type metadata accessor for NSTimer.TimerPublisher);
    v16 = ConnectablePublisher.autoconnect()();

    *&v7[v12] = v16;
    v17 = &v7[*(v5 + 28)];
    *v17 = v9;
    *(v17 + 1) = v10;
    v18 = objc_allocWithZone(sub_10022C350(&qword_100CCBC60));
    return UIHostingController.init(rootView:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10060701C(void *a1, void (*a2)(uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  v3 = sub_1000038D8();
  a2(v3);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100607074(void *a1)
{
  v2 = type metadata accessor for JSONText();
  __chkstk_darwin(v2 - 8);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_100013188(&v6, v9);
    sub_1000161C0(v9, v9[3]);
    v7 = type metadata accessor for AppConfiguration();
    v8 = sub_10060CE70(&qword_100CCBC50, 255, &type metadata accessor for AppConfiguration);
    sub_100042FB0(&v6);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    JSONText.init(_:)();
    v4 = objc_allocWithZone(type metadata accessor for JSONTextViewController());
    v5 = JSONTextViewController.init(jsonText:)();
    sub_100006F14(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006071E4()
{
  v0 = type metadata accessor for DebugWeatherCacheTestingView();
  __chkstk_darwin(v0 - 8);
  sub_100328F54(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = objc_allocWithZone(sub_10022C350(&qword_100CCBC48));
  return UIHostingController.init(rootView:)();
}

uint64_t sub_100607274()
{
  v30 = sub_10022C350(&qword_100CCBBD8);
  v27 = *(v30 - 8);
  v0 = v27;
  v1 = __chkstk_darwin(v30);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = sub_10022C350(&qword_100CCBBE0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v26 - v9);
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  v15 = Locale.identifier.getter();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  sub_10000C70C(0, &qword_100CCBBE8);
  static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
  *v10 = sub_10060C91C;
  v10[1] = v18;
  sub_10022C350(&qword_100CCBBF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A3BBA0;
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
  static Measurement<>.FormatStyle.UnitWidth.wide.getter();
  v10[2] = v19;
  v20 = v30;
  (*(v0 + 16))(v28, v4, v30);
  State.init(wrappedValue:)();
  (*(v0 + 8))(v4, v20);
  v21 = v10 + *(v6 + 52);
  v31 = 0;
  State.init(wrappedValue:)();
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  sub_1005C1F54(v10, v29, &qword_100CCBBE0);
  v23 = objc_allocWithZone(sub_10022C350(&qword_100CCBBF8));
  v24 = UIHostingController.init(rootView:)();
  sub_1000180EC(v10, &qword_100CCBBE0);
  return v24;
}

uint64_t sub_10060763C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v11 = type metadata accessor for JSON();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  static Locale.availableIdentifiers.getter();
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a1;
  v19[7] = a4;
  v19[8] = a5;
  sub_1008EF3C0();
  v17 = v16;

  *(v15 + 16) = sub_1006083D4(v17);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for JSON.object(_:), v11);
  return JSONView.init(value:)();
}

uint64_t sub_1006077AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v92 = a2;
  v93 = a6;
  v91 = a4;
  v89 = a7;
  v95 = sub_10022C350(&qword_100CCBC18);
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v11 = &v77 - v10;
  v12 = sub_10022C350(&qword_100CCBBD8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for UnitDefaults();
  v83 = *(v17 - 8);
  v84 = v17;
  __chkstk_darwin(v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v96 = a1[1];
  v21 = v20;
  if (!a3)
  {

    v92 = v21;
  }

  Locale.init(identifier:)();
  UnitDefaults.init(locale:)();
  v22 = *(v13 + 16);
  v86 = v12;
  v22(v15, v91, v12);
  v23 = v96;
  v24 = v21 == a5 && v96 == v93;
  v94 = v19;
  v85 = v13;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v97 = 8234;
    v98 = 0xE200000000000000;
    v25._countAndFlagsBits = v21;
    v25._object = v23;
    String.append(_:)(v25);
    v26 = v97;
    v27 = v98;
  }

  else
  {

    v26 = v21;
    v27 = v23;
  }

  v28 = sub_10022C350(&qword_100CCBC08);
  v29 = *(v28 + 48);
  v80 = v29;
  v30 = v28;
  v93 = v28;
  v31 = v89;
  *v89 = v26;
  v31[1] = v27;
  v82 = swift_allocObject();
  sub_10022C350(&qword_100CCBC20);
  v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
  v91 = *(*(v30 - 8) + 72);
  v33 = v91;
  v34 = swift_allocObject();
  v81 = v34;
  *(v34 + 16) = xmmword_100A3F990;
  v35 = (v34 + v32);
  *v35 = 0x6572757373657270;
  v35[1] = 0xE800000000000000;
  v36 = v34 + v32;
  UnitDefaults.pressure.getter();
  v90 = sub_10000C70C(0, &qword_100CCBBE8);
  Measurement.init(value:unit:)();
  v37 = v36;
  v92 = v36;
  sub_100607FC4(v11, v15, v21, v96, (v36 + v29));
  v38 = *(v99 + 8);
  v99 += 8;
  v87 = v15;
  v38(v11, v95);
  v39 = v38;
  v40 = (v37 + v33);
  v41 = v93;
  v42 = *(v93 + 48);
  *v40 = 0x6C6C61666E696172;
  v40[1] = 0xE800000000000000;
  UnitDefaults.precipitationRainfall.getter();
  Measurement.init(value:unit:)();
  v43 = (v40 + v42);
  v44 = v96;
  sub_100607FC4(v11, v15, v21, v96, v43);
  v39(v11, v95);
  v45 = v39;
  v79 = v39;
  v46 = (v92 + 2 * v91);
  v47 = *(v41 + 48);
  *v46 = 0x6C6C6166776F6E73;
  v46[1] = 0xE800000000000000;
  UnitDefaults.precipitationSnowfall.getter();
  Measurement.init(value:unit:)();
  v48 = (v46 + v47);
  v49 = v87;
  v50 = v21;
  v88 = v21;
  sub_100607FC4(v11, v87, v21, v44, v48);
  v51 = v95;
  v45(v11, v95);
  v52 = v91;
  v53 = v92;
  v54 = (v92 + 3 * v91);
  v55 = v93;
  v78 = *(v93 + 48);
  *v54 = 0x74617265706D6574;
  v54[1] = 0xEB00000000657275;
  UnitDefaults.temperature.getter();
  Measurement.init(value:unit:)();
  v56 = v49;
  v57 = v96;
  sub_100607FC4(v11, v56, v50, v96, (v54 + v78));
  v58 = v51;
  v59 = v79;
  v79(v11, v58);
  v60 = (v53 + 4 * v52);
  v61 = *(v55 + 48);
  *v60 = 0x696C696269736976;
  v60[1] = 0xEA00000000007974;
  UnitDefaults.visibility.getter();
  Measurement.init(value:unit:)();
  v62 = (v60 + v61);
  v64 = v87;
  v63 = v88;
  sub_100607FC4(v11, v87, v88, v57, v62);
  v65 = v95;
  v59(v11, v95);
  v66 = (v92 + 5 * v91);
  v78 = *(v93 + 48);
  *v66 = 0x65657053646E6977;
  v66[1] = 0xE900000000000064;
  UnitDefaults.windSpeed.getter();
  Measurement.init(value:unit:)();
  v67 = v96;
  sub_100607FC4(v11, v64, v63, v96, (v66 + v78));
  v59(v11, v65);
  v68 = (v92 + 6 * v91);
  v69 = v94;
  v70 = *(v93 + 48);
  *v68 = 0x74737547646E6977;
  v68[1] = 0xE800000000000000;
  UnitDefaults.windGust.getter();
  Measurement.init(value:unit:)();
  sub_100607FC4(v11, v64, v88, v67, (v68 + v70));
  v59(v11, v95);
  (*(v85 + 8))(v64, v86);
  v71 = type metadata accessor for JSON();
  v72 = Dictionary.init(dictionaryLiteral:)();
  (*(v83 + 8))(v69, v84);
  v73 = v82;
  *(v82 + 16) = v72;
  v74 = v80;
  v75 = v89;
  *(v89 + v80) = v73;
  return (*(*(v71 - 8) + 104))(v75 + v74, enum case for JSON.object(_:), v71);
}

uint64_t sub_100607FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28[1] = a2;
  v28[2] = a4;
  v30 = a3;
  v32 = a1;
  v33 = a5;
  v31 = type metadata accessor for Locale();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CCBC28);
  __chkstk_darwin(v7 - 8);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CCBC30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - v12;
  v14 = sub_10022C350(&qword_100CCBC38);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v28 - v19;
  v28[0] = swift_allocObject();
  sub_10000C70C(0, &qword_100CCBBE8);
  static MeasurementFormatUnitUsage.asProvided.getter();
  v21 = sub_10022C350(&qword_100CAECF0);
  sub_10001B350(v9, 1, 1, v21);
  static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
  sub_1000180EC(v9, &qword_100CCBC28);
  (*(v11 + 8))(v13, v10);

  Locale.init(identifier:)();
  Measurement<>.FormatStyle.locale(_:)();
  (*(v29 + 8))(v6, v31);
  v22 = *(v15 + 8);
  v22(v18, v14);
  sub_10022C350(&qword_100CCBC18);
  sub_100006F64(&qword_100CCBC40, &qword_100CCBC38);
  v23 = v28[0];
  Measurement<>.formatted<A>(_:)();
  v22(v20, v14);
  v24 = v33;
  *v33 = v23;
  v25 = enum case for JSON.string(_:);
  v26 = type metadata accessor for JSON();
  return (*(*(v26 - 8) + 104))(v24, v25, v26);
}

void *sub_1006083D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10022C350(&qword_100CCBC00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_10060BDCC(a1, 1, &v4);
  return v4;
}

uint64_t sub_10060847C(void *a1)
{
  v2 = type metadata accessor for JSONText();
  __chkstk_darwin(v2 - 8);
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  sub_10022C350(&qword_100CA64A8);
  sub_10060C7A4();
  JSONText.init(_:)();
  v3 = objc_allocWithZone(type metadata accessor for JSONTextViewController());
  return JSONTextViewController.init(jsonText:)();
}

id sub_100608564(uint64_t a1)
{
  sub_10000C70C(0, &qword_100CAC5F8);
  v2 = sub_100604878(0xD000000000000023, 0x8000000100AD7940, 0xD000000000000057, 0x8000000100AD7970, 1);
  sub_10000C70C(0, &qword_100CAC600);
  sub_100035B30(a1, v7);
  v3 = swift_allocObject();
  sub_100013188(v7, v3 + 16);
  v4 = sub_100604930(0x7465736552, 0xE500000000000000, 2, sub_10060C864, v3);
  [v2 addAction:v4];

  v5 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 0, 0, 0);
  [v2 addAction:v5];

  return v2;
}

uint64_t sub_1006086C4(uint64_t a1, void *a2)
{
  v3 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_100013188(&v9, v11);
    v7 = type metadata accessor for TaskPriority();
    sub_10001B350(v5, 1, 1, v7);
    sub_100035B30(v11, &v9);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_100013188(&v9, v8 + 32);
    sub_1006C0138();

    return sub_100006F14(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100608818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for SyncedData();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1006088D8, 0, 0);
}

uint64_t sub_1006088D8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000161C0(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100608994;
  v5 = v0[5];

  return dispatch thunk of CoherenceDataManagerType.removeAll()(v5, v2, v3);
}

uint64_t sub_100608994()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100608AEC, 0, 0);
}

id sub_100608B1C(uint64_t a1)
{
  sub_10000C70C(0, &qword_100CAC5F8);
  v2 = sub_100604878(0xD00000000000001FLL, 0x8000000100AD77A0, 0xD0000000000000DCLL, 0x8000000100AD7840, 1);
  sub_10000C70C(0, &qword_100CAC600);
  sub_100035B30(a1, v7);
  v3 = swift_allocObject();
  sub_100013188(v7, v3 + 16);
  v4 = sub_100604930(0x65756E69746E6F43, 0xE800000000000000, 2, sub_10060C85C, v3);
  [v2 addAction:v4];

  v5 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 0, 0, 0);
  [v2 addAction:v5];

  return v2;
}

uint64_t sub_100608C80(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CRCodableVersion();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MergeResult();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CCBB98);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v49 = type metadata accessor for SyncedData();
  v13 = *(v49 - 8);
  v14 = __chkstk_darwin(v49);
  v54 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v38 - v16;
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v59)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_100013188(&v58, v60);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!*(&v56 + 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v8;
  sub_100013188(&v55, &v58);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!*(&v56 + 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v6;
  v40 = v5;
  v39 = v3;
  sub_1000180EC(&v55, &qword_100CCBBB0);
  sub_1000161C0(v60, v60[3]);
  dispatch thunk of CoherenceDataManagerType.getSyncedData()();
  v19 = v49;
  result = sub_100024D10(v12, 1, v49);
  v20 = v45;
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_10060CE70(&qword_100CCBBB8, 255, &type metadata accessor for SyncedData);
  CRType.copy()();
  v21 = *(v13 + 8);
  v43 = v13 + 8;
  v42 = v21;
  v21(v12, v19);
  SyncedData.init()();
  v50 = sub_10060CE70(&qword_100CCBBC0, 255, &type metadata accessor for SyncedData);
  v22 = 0;
  v23 = 0;
  v24 = (v48 + 8);
  LODWORD(v48) = enum case for CRCodableVersion.version2(_:);
  v47 = (v18 + 104);
  v46 = (v18 + 8);
  v25 = 0x100000;
  v26 = v44;
  do
  {
    v27 = v51;
    CRStruct_2.merge(_:)();
    (*v24)(v27, v52);
    if (v25 != 0x100000 && !(v23 + 1000 * (v22 / 0x3E8)))
    {
      type metadata accessor for CRContext();
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v28 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
      sub_1000180EC(&v55, &qword_100CCBBC8);
      (*v47)(v20, v48, v26);
      sub_10060CE70(&qword_100CCBBD0, 255, &type metadata accessor for SyncedData);
      v29 = v26;
      v30 = CRDT.serializedData(_:version:)();
      v32 = v31;
      (*v46)(v20, v29);

      switch(v32 >> 62)
      {
        case 1uLL:
          LODWORD(v33) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            sub_1000161C0(&v58, v59);
            dispatch thunk of SyncedDataContextProviderType.coherenceDataStorageURL.getter();
            Data.write(to:options:)();
            (*(v41 + 8))(v40, v39);
            exit(0);
          }

          v33 = v33;
LABEL_12:
          if (v33 >= 0x100000)
          {
            goto LABEL_18;
          }

LABEL_13:
          sub_10030F778(v30, v32);
          v26 = v44;
          v20 = v45;
          v19 = v49;
          break;
        case 2uLL:
          v35 = *(v30 + 16);
          v34 = *(v30 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (!v36)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        default:
          goto LABEL_13;
      }
    }

    --v23;
    ++v22;
    --v25;
  }

  while (v25);
  v37 = v42;
  v42(v54, v19);
  v37(v53, v19);
  sub_100006F14(&v58);
  return sub_100006F14(v60);
}

void sub_10060947C(SEL *a1)
{
  v2 = [objc_allocWithZone(TFCrashSimulator) init];
  [v2 *a1];
}

uint64_t sub_1006094DC()
{
  v0 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:13 inDomains:1];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002B30C(v15, v2);

  result = sub_100024D10(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v4 + 32))(v12, v2, v3);
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    type metadata accessor for AppGroup();
    static AppGroup.weather.getter();
    AppGroup.containerURL.getter();

    URL.appendingPathComponent(_:isDirectory:)();
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    v17 = *(v4 + 8);
    v17(v7, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    v17(v7, v3);
    v17(v10, v3);
    return (v17)(v12, v3);
  }

  return result;
}

uint64_t sub_1006097C0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v15;
  if (v15 != 3)
  {
    v4 = sub_100604A38();
    v5 = sub_10002D7F8(v18, v19);
    __chkstk_darwin(v5);
    v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = sub_10002D7F8(v16, v17);
    __chkstk_darwin(v9);
    v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v11);
    v13 = sub_10060C4D0(*v7, *v11, v3, v4);
    sub_100006F14(v16);
    sub_100006F14(v18);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100609A40()
{
  type metadata accessor for DebugLocationViewController();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for LocalPresetsViewController();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for DebugLocationManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBB50);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBB58);
  RegistrationContainer.register<A>(_:name:factory:)();
}

id sub_100609B88(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for DebugLocationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v5 = objc_allocWithZone(type metadata accessor for DebugLocationViewController());
    return sub_100863AF4(v3, v4, v6, v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100609CA0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    v2 = objc_allocWithZone(type metadata accessor for LocalPresetsViewController());
    return sub_100396FB0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100609D40(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    type metadata accessor for DebugLocationManager();
    swift_allocObject();
    return sub_10068E5A4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100609DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DiagnosticRecorder();
  swift_allocObject();
  result = sub_1009A2110();
  a1[3] = v2;
  a1[4] = &off_100C78B10;
  *a1 = result;
  return result;
}

uint64_t sub_100609E28@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DiagnosticSummaryFactory();
  v3 = swift_allocObject();
  sub_10022C350(&qword_100CCBB60);
  swift_allocObject();
  result = Cache.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_100C4EA00;
  *a1 = v3;
  return result;
}

id sub_100609EA8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NotificationStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5[3])
  {
    v4 = objc_allocWithZone(type metadata accessor for DebugNotificationSubscriptionsViewController());
    return sub_100485DEC(v6, v3, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10060A068()
{
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10060A0C8()
{
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_10060A12C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for NavigationView();
  sub_10022E824(&qword_100CCBD18);
  sub_10022E824(&qword_100CCBD20);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1000833D8(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_10060A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a4;
  v7 = sub_10022C350(&qword_100CB66A0);
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v88 = &v68 - v8;
  v91 = sub_10022C350(&qword_100CCBD20);
  __chkstk_darwin(v91);
  v93 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v68 - v11;
  __chkstk_darwin(v12);
  v92 = &v68 - v13;
  v14 = type metadata accessor for SegmentedPickerStyle();
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  __chkstk_darwin(v14);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CCBD28);
  __chkstk_darwin(v17 - 8);
  v68 = &v68 - v18;
  v19 = sub_10022C350(&qword_100CCBD30);
  v20 = *(v19 - 8);
  v70 = v19;
  v71 = v20;
  __chkstk_darwin(v19);
  v22 = &v68 - v21;
  v23 = sub_10022C350(&qword_100CCBD38);
  v76 = *(v23 - 8);
  v77 = v23;
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  v95 = sub_10022C350(&qword_100CCBD18);
  __chkstk_darwin(v95);
  v86 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v75 = &v68 - v28;
  __chkstk_darwin(v29);
  v85 = &v68 - v30;
  v31 = type metadata accessor for NavigationView();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v68 - v36;
  v99 = a2;
  v100 = a3;
  v101 = a1;
  NavigationView.init(content:)();
  WitnessTable = swift_getWitnessTable();
  v83 = v37;
  v78 = WitnessTable;
  sub_1000833D8(v34, v31, WitnessTable);
  v79 = v32;
  v39 = *(v32 + 8);
  v84 = v34;
  v69 = v31;
  v80 = v39;
  v81 = v32 + 8;
  v39(v34, v31);
  v40 = type metadata accessor for UnitWidthView();
  sub_10060A014(v40, &State.projectedValue.getter);
  v106 = xmmword_100A6B330;
  LOBYTE(v107) = 0;
  v108 = _swiftEmptyArrayStorage;
  v96 = a2;
  v97 = a3;
  v82 = a1;
  v98 = a1;
  sub_10022C350(&qword_100CCBBD8);
  sub_10022C350(&qword_100CCBD40);
  sub_100006F64(&qword_100CCBD48, &qword_100CCBBD8);
  sub_10060CB4C();
  Picker.init(selection:label:content:)();
  v41 = v72;
  SegmentedPickerStyle.init()();
  sub_100006F64(&qword_100CCBD58, &qword_100CCBD30);
  v42 = v70;
  v43 = v73;
  View.pickerStyle<A>(_:)();
  (*(v74 + 8))(v41, v43);
  (*(v71 + 8))(v22, v42);
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v32) = static Edge.Set.leading.getter();
  *(inited + 32) = v32;
  v45 = static Edge.Set.trailing.getter();
  *(inited + 33) = v45;
  v46 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v45)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  v47 = v88;
  v48 = v85;
  v49 = v75;
  (*(v76 + 32))(v75, v25, v77);
  v50 = v49 + *(v95 + 36);
  *v50 = v46;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 1;
  sub_1002005E4(v49, v48);
  sub_10060A0C8();
  Toggle.init(isOn:label:)();
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_100A3BBA0;
  v52 = static Edge.Set.leading.getter();
  *(v51 + 32) = v52;
  v53 = static Edge.Set.trailing.getter();
  *(v51 + 33) = v53;
  v54 = static Edge.Set.bottom.getter();
  *(v51 + 34) = v54;
  v55 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v52)
  {
    v55 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v53)
  {
    v55 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v56 = v48;
  if (Edge.Set.init(rawValue:)() != v54)
  {
    v55 = Edge.Set.init(rawValue:)();
  }

  v57 = v87;
  (*(v89 + 32))(v87, v47, v90);
  v59 = v91;
  v58 = v92;
  v60 = v57 + *(v91 + 36);
  *v60 = v55;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  sub_10060CBC8(v57, v58);
  v61 = v83;
  v62 = v84;
  v63 = v69;
  (*(v79 + 16))(v84, v83, v69);
  *&v106 = v62;
  v64 = v86;
  sub_100200648(v56, v86);
  *(&v106 + 1) = v64;
  v65 = v93;
  sub_1005C1F54(v58, v93, &qword_100CCBD20);
  v107 = v65;
  v105[0] = v63;
  v105[1] = v95;
  v105[2] = v59;
  v102 = v78;
  v103 = sub_10060CC38();
  v104 = sub_10060CD54();
  sub_10012E24C(&v106, 3, v105);
  sub_1000180EC(v58, &qword_100CCBD20);
  sub_1002006AC(v56);
  v66 = v80;
  v80(v61, v63);
  sub_1000180EC(v65, &qword_100CCBD20);
  sub_1002006AC(v64);
  return v66(v62, v63);
}

uint64_t sub_10060AD78@<X0>(void (**a1)(char *, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v27 = a4;
  v26 = sub_10022C350(&qword_100CCBBD8);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v24 - v7;
  v9 = *(a2 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = type metadata accessor for UnitWidthView();
  sub_10060A014(v17, &State.wrappedValue.getter);
  v18 = sub_10060A068();
  if (v18)
  {
    v19 = 0x53555F6E65;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0;
  }

  v16(v8, v19, v20);

  (*(v6 + 8))(v8, v26);
  v21 = v25;
  sub_1000833D8(v12, a2, v25);
  v22 = *(v9 + 8);
  v22(v12, a2);
  sub_1000833D8(v15, a2, v21);
  return (v22)(v15, a2);
}

uint64_t sub_10060AFC4()
{
  swift_getKeyPath();

  sub_10022C350(&qword_100CCBD70);
  sub_100006F64(&qword_100CCBD78, &qword_100CCBD70);
  sub_100006F64(&qword_100CCBD48, &qword_100CCBBD8);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10060B0E0@<X0>(uint64_t a1@<X8>)
{
  sub_10060B13C();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10060B13C()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CCBBD8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  (*(v4 + 16))(&v20 - v8, v1, v2, v7);
  sub_10000C70C(0, &qword_100CCBBE8);
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  sub_100006F64(&qword_100CCBD80, &qword_100CCBBD8);
  v9 = sub_100004660();
  v10 = *(v4 + 8);
  v11 = sub_100021CEC();
  v10(v11);
  if (v9)
  {
    v12 = sub_100003940();
    v10(v12);
    return 0x776F7272614ELL;
  }

  else
  {
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    v14 = sub_100004660();
    v15 = sub_100021CEC();
    v10(v15);
    if (v14)
    {
      v16 = sub_100003940();
      v10(v16);
      return 0x6169766572626241;
    }

    else
    {
      static Measurement<>.FormatStyle.UnitWidth.wide.getter();
      v17 = sub_100004660();
      v18 = sub_100021CEC();
      v10(v18);
      v19 = sub_100003940();
      v10(v19);
      if (v17)
      {
        return 1701079383;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }
  }
}

void sub_10060B384(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000100AD7B00;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

id sub_10060B3B8(uint64_t a1, uint64_t a2)
{
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    sub_10000C70C(0, &qword_100CCBC70);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [v2 initWithActivityItems:v4.super.isa applicationActivities:v5.super.isa];

  return v6;
}

void sub_10060B464(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1000038D8();
  v5 = type metadata accessor for ElevationData();
  __chkstk_darwin(v5 - 8);
  sub_1000037D8();
  v48 = v7 - v6;
  v8 = type metadata accessor for Date();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v47 = v13 - v12;
  v14 = *v2;
  sub_10022C350(&qword_100CCBD90);
  sub_100003940();
  v44 = a2;
  v15 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v14 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v15;
    return;
  }

  v41 = v2;
  v16 = 0;
  v17 = v14;
  sub_100008A78();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v42 = v10;
  v45 = (v10 + 32);
  v23 = v15 + 8;
  v43 = v14;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v16 >= v22)
      {
        break;
      }

      v25 = v17[v16];
      ++v24;
      if (v25)
      {
        v20 = (v25 - 1) & v25;
        goto LABEL_9;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_30;
    }

    v40 = 1 << *(v14 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      sub_10004E798(v40);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v14 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v20 &= v20 - 1;
LABEL_9:
    v46 = *(v10 + 72);
    v26 = sub_1000287E0();
    v27(v26);
    v28 = sub_100022EE8();
    if (v44)
    {
      sub_10060CEB8(v28, v29);
    }

    else
    {
      sub_10060CE0C(v28, v29);
    }

    sub_10060CE70(&qword_100CA39C8, 255, &type metadata accessor for Date);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_100016C48();
    v33 = (v32 << v30) & ~v23[v31];
    if (!v33)
    {
      break;
    }

    v34 = __clz(__rbit64(v33)) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v23 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    (*v45)(v15[6] + v46 * v34, v47, v8);
    sub_10060CEB8(v48, v15[7] + v14 * v34);
    ++v15[2];
    v10 = v42;
    v14 = v43;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_100022F00();
  while (++v35 != v37 || (v36 & 1) == 0)
  {
    v38 = v35 == v37;
    if (v35 == v37)
    {
      v35 = 0;
    }

    v36 |= v38;
    v39 = v23[v35];
    if (v39 != -1)
    {
      v34 = __clz(__rbit64(~v39)) + (v35 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10060B828(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for JSON();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10022C350(&qword_100CCBC00);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1006A76B8(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10060BBA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10022C350(&qword_100CCBD88);
  sub_100021CEC();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v31 = v3;
  v7 = 0;
  sub_100008A78();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 8;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = *(v5 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_29;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_10004E798(v30);
    }

    else
    {
      *v5 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = v14 | (v7 << 6);
    v18 = *(*(v5 + 48) + 8 * v17);
    v19 = *(*(v5 + 56) + 8 * v17);
    if ((a2 & 1) == 0)
    {
    }

    static Hasher._hash(seed:_:)();
    sub_100016C48();
    v23 = (v22 << v20) & ~v13[v21];
    if (!v23)
    {
      break;
    }

    v24 = __clz(__rbit64(v23)) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(v6[6] + 8 * v24) = v18;
    *(v6[7] + 8 * v24) = v19;
    ++v6[2];
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  sub_100022F00();
  while (++v25 != v27 || (v26 & 1) == 0)
  {
    v28 = v25 == v27;
    if (v25 == v27)
    {
      v25 = 0;
    }

    v26 |= v28;
    v29 = v13[v25];
    if (v29 != -1)
    {
      v24 = __clz(__rbit64(~v29)) + (v25 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_10060BDCC(uint64_t a1, char a2, void *a3)
{
  v50 = a3;
  v6 = type metadata accessor for JSON();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CCBC08);
  v11 = __chkstk_darwin(v10);
  v48 = v40 - v13;
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v40[1] = v3;
  v41 = a1;
  v14 = 0;
  v46 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v44 = v7;
  v45 = v15;
  v49 = (v7 + 32);
  v42 = v9;
  v43 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v48;
    sub_1005C1F54(v46 + *(v12 + 72) * v14, v48, &qword_100CCBC08);
    v18 = *v17;
    v19 = *(v17 + 1);
    v53 = *v17;
    v54 = v19;
    v20 = *v49;
    (*v49)(v9, &v17[v45], v6);
    v21 = *v50;
    v23 = sub_100031B34();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10022C350(&qword_100CCBC10);
      _NativeDictionary.copy()();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = *v50;
    *(*v50 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    v6 = v43;
    v32 = v30[7] + *(v44 + 72) * v23;
    v9 = v42;
    v20(v32, v42, v43);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v14;
    v30[2] = v35;
    a2 = 1;
    a1 = v41;
    v12 = v16;
    if (v47 == v14)
    {
    }
  }

  sub_10060B828(v26, a2 & 1);
  v28 = sub_100031B34();
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();

  v55 = v36;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 8))(v42, v43);
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v38._object = 0x8000000100AD7A10;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10060C258(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v10);
  v15 = type metadata accessor for DiagnosticRecorder();
  v16 = &off_100C78B10;
  v14[0] = a1;
  v13[3] = type metadata accessor for DiagnosticSummaryFactory();
  v13[4] = &off_100C4EA00;
  v13[0] = a2;
  sub_10022C350(&qword_100CA2D40);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10060CE70(&qword_100CA2D48, 255, &type metadata accessor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50);
  sub_100006F64(&qword_100CA2D58, &qword_100CA2D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(a5 + 104) = UnfairLock.init(options:)();
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  sub_100035B30(v14, a5 + 16);
  sub_100035B30(v13, a5 + 56);
  *(a5 + 121) = a3;
  *(a5 + 96) = a4;
  sub_1000161C0(v14, v15);
  v11 = a4;
  sub_1009A1B40();

  sub_100006F14(v13);
  sub_100006F14(v14);
  return a5;
}

uint64_t sub_10060C4D0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v23 = type metadata accessor for DiagnosticRecorder();
  v24 = &off_100C78B10;
  v22[0] = a1;
  v20 = type metadata accessor for DiagnosticSummaryFactory();
  v21 = &off_100C4EA00;
  v19[0] = a2;
  type metadata accessor for DiagnosticManager();
  v8 = swift_allocObject();
  v9 = sub_10002D7F8(v22, v23);
  __chkstk_darwin(v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10002D7F8(v19, v20);
  __chkstk_darwin(v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10060C258(*v11, *v15, a3, a4, v8);
  sub_100006F14(v19);
  sub_100006F14(v22);
  return v17;
}